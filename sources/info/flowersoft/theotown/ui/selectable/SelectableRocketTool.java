package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.RocketAimTool;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.SafeListAccessor;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableRocketTool extends SelectableDraft {
    public Draft draft;
    public BuildingDraft launcherDraft;

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return 0L;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public boolean hasRequirement() {
        return true;
    }

    public SelectableRocketTool(City city) {
        super(city);
        this.launcherDraft = (BuildingDraft) Drafts.ALL.get("$mltry_rocketlauncher00");
        Draft draft = new Draft();
        this.draft = draft;
        draft.id = this.launcherDraft.id;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public boolean isUnlocked() {
        return !this.city.getBuildings().getBuildingsOfDraft(this.launcherDraft).isEmpty();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getSelectIcon() {
        return Resources.ICON_RED_BUTTON;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectText() {
        return new DraftLocalizer(this.city).getTitle("launch_rocket");
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        RocketAimTool rocketAimTool = new RocketAimTool();
        Iterator it = new SafeListAccessor(this.city.getBuildings().getBuildingsOfDraft(this.launcherDraft)).iterator();
        while (it.hasNext()) {
            rocketAimTool.addLauncher((Building) it.next());
        }
        this.city.applyComponent(rocketAimTool);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getPreviewFrame() {
        return Resources.ICON_ROCKETAIMTOOL;
    }
}
