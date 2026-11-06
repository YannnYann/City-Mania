package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.draft.AnimationSpot;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.tools.BuildTool;
import info.flowersoft.theotown.tools.BuildingTool;
import info.flowersoft.theotown.tools.FindBuildingTool;
import info.flowersoft.theotown.tools.PostponedCharger;
import info.flowersoft.theotown.tools.ToolResolver;
import info.flowersoft.theotown.ui.BuyOrVideoDialog;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableBuildingDraft extends SelectableDraft {
    public DefaultBudget budget;
    public int currentFrame;
    public BuildingDraft draft;
    public int maxX;
    public int maxY;
    public int minX;
    public int minY;

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public boolean chargeDiamondsImmediately() {
        return false;
    }

    public SelectableBuildingDraft(City city, BuildingDraft buildingDraft) {
        super(city);
        this.draft = buildingDraft;
        this.currentFrame = 0;
        this.budget = (DefaultBudget) city.getComponent(0);
        calculateBB();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void build(Panel panel) {
        super.build(panel);
        if (Settings.useToolbarBuildtool) {
            final Getter<String> getter = new Getter<String>() { // from class: info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft.1
                public int lastCtr = -1;
                public String lastResult;

                @Override // io.blueflower.stapel2d.util.Getter
                public String get() {
                    int size = SelectableBuildingDraft.this.city.getBuildings().getBuildingsOfDraft(SelectableBuildingDraft.this.draft).size();
                    if (size != this.lastCtr) {
                        this.lastCtr = size;
                        String str = StringFormatter.format(SelectableBuildingDraft.this.city.getTranslator().translate(2360), Integer.valueOf(size));
                        this.lastResult = str;
                        return str;
                    }
                    return this.lastResult;
                }
            };
            new IconButton(Resources.ICON_EYE, getter.get(), 0, 0, 0, this.line.getClientHeight(), this.line.getFirstPart()) { // from class: info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft.2
                @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
                public void onUpdate() {
                    super.onUpdate();
                    setText((String) getter.get());
                }

                @Override // io.blueflower.stapel2d.gui.Gadget
                public boolean isVisible() {
                    return SelectableBuildingDraft.this.city.getBuildings().getBuildingsOfDraft(SelectableBuildingDraft.this.draft).size() > 0;
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    Runnable runnable = SelectableBuildingDraft.this.onSelect;
                    if (runnable != null) {
                        runnable.run();
                    }
                    SelectableBuildingDraft selectableBuildingDraft = SelectableBuildingDraft.this;
                    City city = selectableBuildingDraft.city;
                    city.applyComponent(new FindBuildingTool(city, selectableBuildingDraft.draft));
                }
            };
        }
    }

    public final void calculateBB() {
        Image image = Resources.IMAGE_WORLD;
        int[] iArr = this.draft.frames;
        int i = iArr[this.currentFrame % iArr.length];
        int iRound = Math.round(image.getHandleX(i));
        int iRound2 = Math.round(image.getHandleY(i));
        this.minX = 0;
        this.minY = 0;
        this.maxX = Math.round(image.getWidth(i));
        this.maxY = Math.round(image.getHeight(i));
        List<AnimationSpot> list = this.draft.animationSpots;
        if (list != null) {
            for (AnimationSpot animationSpot : list) {
                for (int i2 : animationSpot.draft.frames) {
                    int iRound3 = Math.round(-image.getHandleX(i2));
                    int iRound4 = Math.round(-image.getHandleY(i2));
                    int iRound5 = Math.round(image.getWidth(i2));
                    int iRound6 = Math.round(image.getHeight(i2));
                    this.minX = Math.min(this.minX, animationSpot.x + iRound + iRound3);
                    this.minY = Math.min(this.minY, animationSpot.y + iRound2 + iRound4);
                    this.maxX = Math.max(this.maxX, animationSpot.x + iRound + iRound3 + iRound5);
                    this.maxY = Math.max(this.maxY, animationSpot.y + iRound2 + iRound4 + iRound6);
                }
            }
        }
        BuildingDraft buildingDraft = this.draft;
        if (buildingDraft.composition != null) {
            int width = buildingDraft.getWidth(this.currentFrame);
            int height = this.draft.getHeight(this.currentFrame);
            this.maxX = Math.max(this.maxX, ((width + height) * 32) / 2);
            this.maxY = Math.max(this.maxY, (width * 16) / 2);
            this.minY = Math.min(this.minY, Math.min(((-height) * 16) / 2, Math.min(((width - height) * 16) / 2, 0) - (this.draft.buildHeight * 8)));
        }
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return this.budget.getPrice(this.draft, 1);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public int getDiamondPrice() {
        if (this.draft.diamondPrice.get() <= 0 || !this.draft.isBoughtInFeature(this.city)) {
            return this.draft.diamondPrice.get();
        }
        return 0;
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

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public int getUpgrades() {
        if (this.draft.hasUpgrades()) {
            return this.draft.upgrades.size();
        }
        return 0;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public BuildingDraft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public int getMaxCount() {
        return this.draft.maxCount;
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public int getActualCount() {
        return this.city.getBuildings().getBuildingsOfDraft(this.draft).size();
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        BuildTool buildToolResolve;
        super.select();
        if (countFrames() > 1) {
            buildToolResolve = new ToolResolver(this.city).resolve(this.draft, this.currentFrame);
        } else {
            buildToolResolve = new ToolResolver(this.city).resolve(this.draft);
        }
        if ((buildToolResolve instanceof BuildingTool) && getDiamondPrice() > 0 && !chargeDiamondsImmediately()) {
            ((BuildingTool) buildToolResolve).setPostponedCharger(new AnonymousClass3());
        }
        this.city.applyComponent(buildToolResolve);
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft$3, reason: invalid class name */
    public class AnonymousClass3 implements PostponedCharger {
        public AnonymousClass3() {
        }

        @Override // info.flowersoft.theotown.tools.PostponedCharger
        public boolean canBeBuilt() {
            return GameHandler.getInstance().getDiamonds() >= SelectableBuildingDraft.this.getDiamondPrice();
        }

        @Override // info.flowersoft.theotown.tools.PostponedCharger
        public void charge(final Getter<Building> getter, final Runnable runnable) {
            new BuyOrVideoDialog(Resources.ICON_BUILD, SelectableDraft.context.getTranslator().translate(2994), SelectableDraft.context.getTranslator().translate(1154), SelectableBuildingDraft.this.getMaster(), SelectableBuildingDraft.this.getDiamondPrice(), (Getter<Boolean>) new Getter() { // from class: info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft$3$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return SelectableBuildingDraft.AnonymousClass3.m2402$r8$lambda$zkvdXbsMEDFwyoVaTeSRyfwNnI(this.f$0, getter, runnable);
                }
            }, (Setter<Stage>) null, SelectableDraft.context, SelectableBuildingDraft.this.draft.id, (String) null, false).setVisible(true);
        }

        /* JADX INFO: renamed from: $r8$lambda$zkvd-XbsMEDFwyoVaTeSRyfwNnI, reason: not valid java name */
        public static /* synthetic */ Boolean m2402$r8$lambda$zkvdXbsMEDFwyoVaTeSRyfwNnI(AnonymousClass3 anonymousClass3, Getter getter, Runnable runnable) {
            anonymousClass3.getClass();
            Building building = (Building) getter.get();
            if (building != null) {
                building.setSpentDiamondsOn(true);
                runnable.run();
            } else {
                GameHandler.getInstance().earnDiamonds(SelectableBuildingDraft.this.getDiamondPrice(), false, "revert build process " + SelectableBuildingDraft.this.draft.id);
            }
            return Boolean.TRUE;
        }
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewWidth() {
        return this.draft.previewFrames != null ? super.getPreviewWidth() : this.maxX - this.minX;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewHeight() {
        return this.draft.previewFrames != null ? super.getPreviewHeight() : this.maxY - this.minY;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x021e  */
    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void drawPreview(io.blueflower.stapel2d.drawing.Engine r39, int r40, int r41) {
        /*
            Method dump skipped, instruction units count: 720
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft.drawPreview(io.blueflower.stapel2d.drawing.Engine, int, int):void");
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int countFrames() {
        BuildingDraft buildingDraft = this.draft;
        int[] iArr = buildingDraft.frames;
        if (iArr.length <= 1 || buildingDraft.animation || !buildingDraft.selectableFrames) {
            return 1;
        }
        return iArr.length;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getFrame() {
        return this.currentFrame;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void setFrame(int i) {
        this.currentFrame = i;
        calculateBB();
    }
}
