package info.flowersoft.theotown.components.notification;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Notification;
import info.flowersoft.theotown.city.components.NotificationAction;
import info.flowersoft.theotown.city.components.Requirement;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.draft.requirement.FeatureRequirement;
import info.flowersoft.theotown.draft.requirement.RankRequirement;
import info.flowersoft.theotown.draft.requirement.SingleRequirement;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.ToolResolver;
import info.flowersoft.theotown.ui.selectable.SelectableDraft;
import info.flowersoft.theotown.ui.selectable.SelectableResolver;
import info.flowersoft.theotown.ui.toolbar.ToolBar;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.SortedList;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Panel;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RequirementFulfilledNotification extends Notification {
    public Draft currentDraft;
    public final ToolResolver resolver;

    public RequirementFulfilledNotification(City city) {
        super(city);
        this.resolver = new ToolResolver(city);
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getID() {
        if (this.currentDraft != null) {
            return "$requirementdraft_" + this.currentDraft.getUnifiedId();
        }
        return "$requirementnone";
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public int getIconID() {
        return Resources.PEOPLE_MAYOR;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public String getMessage() {
        Translator translator = this.city.getTranslator();
        DraftLocalizer draftLocalizer = new DraftLocalizer(this.city);
        Draft draft = this.currentDraft;
        if (draft instanceof BuildingDraft) {
            return StringFormatter.format(translator.translate(1972), draftLocalizer.getTitle(this.currentDraft));
        }
        if (draft instanceof UpgradeDraft) {
            return StringFormatter.format(translator.translate(3141), draftLocalizer.getTitle(this.currentDraft), draftLocalizer.getTitle(((UpgradeDraft) this.currentDraft).parent));
        }
        return "Requirement fulfilled for " + draftLocalizer.getTitle(this.currentDraft);
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public boolean checkCondition() {
        if (this.currentDraft == null) {
            Requirement requirement = (Requirement) this.city.getComponent(11);
            while (requirement.hasNewUnlockedDraft() && this.currentDraft == null) {
                Draft newUnlockedDraft = requirement.getNewUnlockedDraft();
                if ((newUnlockedDraft instanceof BuildingDraft) && !newUnlockedDraft.hidden && newUnlockedDraft.active) {
                    boolean z = true;
                    for (int i = 0; i < newUnlockedDraft.getRequirement().getSingleRequirements().size() && z; i++) {
                        SingleRequirement singleRequirement = newUnlockedDraft.getRequirement().getSingleRequirements().get(i);
                        if ((singleRequirement instanceof RankRequirement) || (singleRequirement instanceof FeatureRequirement)) {
                            z = false;
                        }
                    }
                    SortedList<Building> buildingsOfDraft = this.city.getBuildings().getBuildingsOfDraft((BuildingDraft) newUnlockedDraft);
                    if (buildingsOfDraft != null && !buildingsOfDraft.isEmpty()) {
                        z = false;
                    }
                    if (z) {
                        this.currentDraft = newUnlockedDraft;
                    }
                }
            }
        }
        return this.currentDraft != null;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public void onClose() {
        super.onClose();
        this.currentDraft = null;
    }

    @Override // info.flowersoft.theotown.city.components.Notification
    public List<NotificationAction> getActions() {
        List<NotificationAction> actions = super.getActions();
        Draft draft = this.currentDraft;
        if ((draft instanceof BuildingDraft) && !draft.hidden && draft.active) {
            final NotificationAction notificationAction = new NotificationAction(Resources.ICON_BUILD, null);
            notificationAction.setAction(new Runnable() { // from class: info.flowersoft.theotown.components.notification.RequirementFulfilledNotification.1
                @Override // java.lang.Runnable
                public void run() {
                    Button button = notificationAction.getButton();
                    if (button != null) {
                        SelectableDraft selectableDraftResolve = new SelectableResolver(RequirementFulfilledNotification.this.city).resolve(RequirementFulfilledNotification.this.currentDraft, false, null);
                        Panel panel = new Panel(100000, 100000, 0, 0, button.getAbsoluteParent());
                        selectableDraftResolve.build(panel);
                        selectableDraftResolve.select();
                        Gadget gadgetFindChildWithId = panel.getAbsoluteParent().findChildWithId("roottoolbar");
                        if (gadgetFindChildWithId != null) {
                            ((ToolBar) gadgetFindChildWithId).registerForUse(selectableDraftResolve);
                        }
                        panel.free();
                        RequirementFulfilledNotification.this.close();
                        return;
                    }
                    RequirementFulfilledNotification.this.city.applyComponent(RequirementFulfilledNotification.this.resolver.resolve((BuildingDraft) RequirementFulfilledNotification.this.currentDraft));
                    RequirementFulfilledNotification.this.close();
                }
            });
            actions.add(notificationAction);
        }
        return actions;
    }
}
