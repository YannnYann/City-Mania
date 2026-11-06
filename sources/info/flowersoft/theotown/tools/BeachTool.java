package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Colors;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class BeachTool extends TwoModesTool {
    public final BuildingDraft beachDraft;
    public final GroundDraft beachGroundDraft;
    public final BuildingDraft beachNearWaterDraft;
    public long price;

    public BeachTool(BuildingDraft buildingDraft) {
        this.beachDraft = buildingDraft;
        String str = buildingDraft.id;
        this.beachNearWaterDraft = (BuildingDraft) Drafts.ALL.get(((Object) str.subSequence(0, str.length() - 2)) + "nearwater" + str.substring(str.length() - 2));
        this.beachGroundDraft = (GroundDraft) Drafts.ALL.get("$beach_gnd00");
        addUndoButton();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "Beach:" + this.beachDraft.id;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public void build(int i, int i2, int i3, int i4) {
        captureState(i, i2, i3, i4);
        for (int iMin = Math.min(i2, i4); iMin <= Math.max(i2, i4); iMin++) {
            for (int iMin2 = Math.min(i, i3); iMin2 <= Math.max(i, i3); iMin2++) {
                if (!this.city.getTiles().isGroundWater(iMin2, iMin) && isNearWater(iMin2, iMin)) {
                    if (this.modifier.isBuildable(this.beachDraft, iMin2, iMin) && this.modifier.getWaterMask(iMin2, iMin) == 0) {
                        this.modifier.build(this.beachDraft, iMin2, iMin, -1, (LuaValue) null);
                    }
                    this.city.getTiles().getGround(iMin2, iMin).setDraft(this.beachGroundDraft);
                }
            }
        }
        getBudget().spend(this.price, "build " + this.beachDraft.id);
        issueMovement();
        endCaptureState();
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2) {
        return isNearWater(i, i2);
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2, int i3, int i4) {
        this.price = 0L;
        if ((Math.max(Math.abs(i3 - i), Math.abs(i4 - i2)) >= 8 && !infiniteRange()) || !isValid(i, i2) || !isValid(i3, i4)) {
            return false;
        }
        int i5 = 0;
        int i6 = 0;
        for (int iMin = Math.min(i2, i4); iMin <= Math.max(i2, i4); iMin++) {
            for (int iMin2 = Math.min(i, i3); iMin2 <= Math.max(i, i3); iMin2++) {
                if (!this.city.getTiles().isGroundWater(iMin2, iMin) && isNearWater(iMin2, iMin)) {
                    Ground ground = this.city.getTiles().getGround(iMin2, iMin);
                    if (this.modifier.isBuildable(this.beachDraft, iMin2, iMin)) {
                        ground.isBorder();
                        i5++;
                    }
                    if (ground.getDraft() != this.beachGroundDraft) {
                        i6++;
                    }
                }
            }
        }
        this.price += this.modifier.getPrice(this.beachDraft, i5);
        if (i5 == 0 && i6 == 0) {
            return false;
        }
        return getBudget().canSpend(this.price);
    }

    public final boolean isNearWater(int i, int i2) {
        for (int iMax = Math.max(i2 - 4, 0); iMax <= Math.min(i2 + 4, this.city.getHeight() - 1); iMax++) {
            for (int iMax2 = Math.max(i - 4, 0); iMax2 <= Math.min(i + 4, this.city.getWidth() - 1); iMax2++) {
                Ground ground = this.tiles.getGround(iMax2, iMax);
                Building building = this.tiles.getBuilding(iMax2, iMax);
                if (ground.isWater() || (ground.isBorder() && (this.modifier.isBuildable(this.beachDraft, i, i2) || (building != null && (building.getDraft() == this.beachDraft || building.getDraft() == this.beachNearWaterDraft))))) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        Ground ground = this.city.getTiles().getGround(i, i2);
        int i3 = this.mode;
        if (i3 == 0) {
            if (isValid(i, i2)) {
                return;
            }
            drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_RED_DOTTED);
            return;
        }
        if (i3 != 1) {
            return;
        }
        int i4 = this.selectedX;
        if (i == i4 && i2 == this.selectedY) {
            if (this.drawnTarget && !this.drawnTargetValid) {
                drawer.engine.setColor(Colors.RED);
            }
            drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_CHECKER);
            drawer.engine.setColor(Colors.WHITE);
            return;
        }
        if (isValid(i4, this.selectedY, i, i2) && isTileInvolved(i, i2)) {
            drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_GREEN_DOTTED);
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_PARK;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return new DraftLocalizer(this.city).getTitle(this.beachDraft);
    }
}
