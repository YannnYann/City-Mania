package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultRequirement;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.TextFrame;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableUpgrade extends SelectableDraft {
    public final Building building;
    public final UpgradeDraft draft;
    public final BuildingDraft parent;
    public final DefaultRequirement requirement;
    public final SelectableBuildingDraft selectableBuildingDraft;

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public boolean allowEasySelect() {
        return false;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public int getUpgrades() {
        return 0;
    }

    public SelectableUpgrade(City city, UpgradeDraft upgradeDraft, Building building) {
        super(city);
        BuildingDraft buildingDraft = (BuildingDraft) upgradeDraft.parent;
        this.parent = buildingDraft;
        this.draft = upgradeDraft;
        this.building = building;
        this.selectableBuildingDraft = new SelectableBuildingDraft(city, buildingDraft);
        this.requirement = (DefaultRequirement) city.getComponent(11);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public boolean isActive() {
        return !this.draft.hidden;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return this.draft.price;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public int getDiamondPrice() {
        return this.draft.diamondPrice.get();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getMonthlyPrice() {
        return this.draft.monthlyPrice;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getWater() {
        return this.draft.water;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPower() {
        return this.draft.power;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public boolean isSelectable() {
        DefaultBudget defaultBudget = (DefaultBudget) this.city.getComponent(0);
        Building building = this.building;
        return (building == null || building.hasUpgrade(this.draft) || this.building.hasPendingUpgrade(this.draft) || !defaultBudget.canSpend(this.draft.price) || !this.requirement.checkUpgrade(this.draft, this.building)) ? false : true;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Object getReqContext() {
        return this.building;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        if (this.building != null) {
            DefaultBudget defaultBudget = (DefaultBudget) this.city.getComponent(0);
            if (defaultBudget.canSpend(this.draft.price)) {
                defaultBudget.spend(this.draft.price, ((this.building.getWidth() - 1) / 2.0f) + this.building.getX(), this.building.getY() + ((this.building.getHeight() - 1) / 2.0f), "upgrade " + this.building.getDraftId());
                new CityModifier(this.city, true).upgrade(this.building, this.draft, null);
            }
            Runnable runnable = this.onSelect;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void build(Panel panel) {
        Gadget parent;
        super.build(panel);
        Building building = this.building;
        if (building != null) {
            if ((building.hasUpgrade(this.draft) || !((DefaultBudget) this.city.getComponent(0)).canSpend(this.draft.price)) && (parent = this.cmdBuild.getParent()) != null) {
                TextFrame textFrame = new TextFrame("Alphabet", this.cmdBuild.getX(), this.cmdBuild.getY(), this.cmdBuild.getWidth(), this.cmdBuild.getHeight(), parent);
                textFrame.setAlignment(0.5f, 0.5f);
                parent.removeChild(this.cmdBuild);
                Translator translator = this.city.getTranslator();
                if (this.building.hasUpgrade(this.draft) || this.building.hasPendingUpgrade(this.draft)) {
                    textFrame.setText(translator.translate(2992));
                    textFrame.setColor(Resources.skin.cTextGreen);
                } else {
                    textFrame.setText(translator.translate(1962));
                    textFrame.setColor(Resources.skin.cTextRed);
                }
            }
        }
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectText() {
        return this.city.getTranslator().translate(867);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getSelectIcon() {
        return Resources.ICON_UPGRADE;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewWidth() {
        return this.draft.previewFrames != null ? super.getPreviewWidth() : this.selectableBuildingDraft.getPreviewWidth();
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewHeight() {
        return this.draft.previewFrames != null ? super.getPreviewHeight() : this.selectableBuildingDraft.getPreviewHeight();
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void drawPreview(Engine engine, int i, int i2) {
        Building building;
        if (this.draft.previewFrames != null) {
            super.drawPreview(engine, i, i2);
            return;
        }
        Image image = Resources.IMAGE_WORLD;
        engine.setTransparency(50);
        this.selectableBuildingDraft.drawPreview(engine, i, i2);
        int i3 = this.parent.frames[0];
        int iRound = Math.round(image.getHandleX(i3) - this.selectableBuildingDraft.minX);
        int iRound2 = Math.round(image.getHandleY(i3) - this.selectableBuildingDraft.minY);
        Drawer drawer = this.city.getDrawer();
        drawer.resetShift();
        float f = i + iRound;
        drawer.x = f;
        float f2 = i2 + iRound2;
        drawer.y = f2;
        for (int i4 = 0; i4 < 2; i4++) {
            Iterator<UpgradeDraft> it = this.parent.upgrades.iterator();
            while (it.hasNext()) {
                UpgradeDraft next = it.next();
                if (next == this.draft || ((building = this.building) != null && building.hasUpgrade(next))) {
                    engine.setTransparency(next == this.draft ? 255 : 50);
                    int[] iArr = next.frames;
                    if (iArr.length > i4) {
                        engine.drawImage(image, f, f2, iArr[i4]);
                    }
                    if (next.animationSpots != null && i4 == 1) {
                        Building building2 = this.building;
                        int frame = building2 != null ? building2.getFrame() : 0;
                        Drawing.getInstance().drawAnimations(drawer, next.animationSpots, next.animationSpotIndices, frame, frame, ((DefaultDate) this.city.getComponent(1)).getAnimationTime() / 200.0f, 0, null, null, null, false);
                    }
                }
            }
        }
        engine.setTransparency(255);
        engine.setColor(Colors.WHITE);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.Selectable
    public String getTitle() {
        return new DraftLocalizer(this.city).getTitle(this.draft);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getText() {
        return new DraftLocalizer(this.city).getText(this.draft);
    }
}
