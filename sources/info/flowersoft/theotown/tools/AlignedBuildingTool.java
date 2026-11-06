package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.modifier.ZoneBuilder;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.components.soundsource.BuildingSoundSource;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.SoundType;
import io.blueflower.stapel2d.drawing.Colors;
import java.util.List;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class AlignedBuildingTool extends TwoModesTool {
    public final BuildingDraft buildingDraft;
    public final int frame;
    public long price;
    public ZoneBuilder zoneBuilder;

    public static boolean inArea(int i, int i2, int i3, int i4, int i5, int i6) {
        return i3 <= i && i <= i5 && i4 <= i2 && i2 <= i6;
    }

    public AlignedBuildingTool(BuildingDraft buildingDraft, int i) {
        if (!buildingDraft.isSquare()) {
            throw new IllegalArgumentException("Only square buildings are supported");
        }
        this.buildingDraft = buildingDraft;
        setLineWidth(buildingDraft.width);
        setHasToBeLine(!buildingDraft.frameAlignmentArea);
        this.frame = i;
        addUndoButton();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "AlignedBuilding:" + this.buildingDraft.id;
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public boolean drawBuildingOpaque(Building building) {
        return super.drawBuildingOpaque(building) || building.getDraft() == this.buildingDraft;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        this.zoneBuilder = new ZoneBuilder(city);
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public void build(int i, int i2, int i3, int i4) {
        int i5;
        boolean z;
        boolean z2;
        captureState(i, i2, i3, i4);
        int i6 = i3 - i;
        int i7 = i4 - i2;
        BuildingDraft buildingDraft = this.buildingDraft;
        if (buildingDraft.buildZone) {
            ZoneDraft zoneDraft = buildingDraft.zone;
            if (zoneDraft.placeable) {
                this.zoneBuilder.setZone(zoneDraft);
                this.zoneBuilder.setArea(i, i2, i3, i4);
                this.zoneBuilder.build();
            }
        }
        BuildingDraft buildingDraft2 = this.buildingDraft;
        boolean z3 = true;
        boolean z4 = buildingDraft2.frames.length >= 16 && buildingDraft2.alignable;
        int i8 = i6 < 0 ? -1 : 1;
        int i9 = i7 >= 0 ? 1 : -1;
        int iAbs = Math.abs(i6) + 1;
        int iAbs2 = Math.abs(i7) + 1;
        int i10 = 0;
        Building building = null;
        int i11 = 0;
        while (i11 < iAbs2) {
            int size = i10;
            Building building2 = building;
            int i12 = 0;
            while (i12 < iAbs) {
                int i13 = (i12 * i8) + i;
                boolean z5 = z3;
                int i14 = i2 + (i11 * i9);
                if (this.modifier.isBuildable(this.buildingDraft, i13, i14)) {
                    i5 = i12;
                    List<Building> listBuild = this.modifier.build(this.buildingDraft, i13, i14, z4 ? getVirtualAlignMask(i13, i14, i, i2, i3, i4) : this.frame, (LuaValue) null);
                    if (listBuild != null) {
                        for (Building building3 : listBuild) {
                            if (this.city.getGameMode().buildImmediately()) {
                                z2 = z4;
                                this.modifier.finishBuilding(building3, null);
                            } else {
                                z2 = z4;
                            }
                            building2 = building3;
                            z4 = z2;
                        }
                        z = z4;
                        size += listBuild.size();
                    }
                    i12 = i5 + 1;
                    z4 = z;
                    z3 = z5;
                } else {
                    i5 = i12;
                }
                z = z4;
                i12 = i5 + 1;
                z4 = z;
                z3 = z5;
            }
            i11++;
            i10 = size;
            building = building2;
            z4 = z4;
        }
        boolean z6 = z4;
        boolean z7 = z3;
        this.price = this.modifier.getPrice(this.buildingDraft, i10);
        getBudget().spend(this.price, i3, i4, "build " + this.buildingDraft.id);
        if (z6) {
            int iMin = Math.min(i, i3);
            int iMin2 = Math.min(i2, i4);
            int iMax = Math.max(i, i3);
            int iMax2 = Math.max(i2, i4);
            int iMax3 = Math.max(iMin - 1, 0);
            int iMin3 = Math.min(iMax + 1, this.city.getWidth() - 1);
            int iMin4 = Math.min(iMax2 + 1, this.city.getHeight() - 1);
            for (int iMax4 = Math.max(iMin2 - 1, 0); iMax4 <= iMin4; iMax4++) {
                for (int i15 = iMax3; i15 <= iMin3; i15++) {
                    align(i15, iMax4, z7);
                }
            }
        }
        if (building != null) {
            this.soundManager.playOnce(Resources.SOUND_BUILD, SoundType.GAME, new BuildingSoundSource(this.city, building));
        }
        issueMovement();
        endCaptureState();
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        drawHelperLines(i, i2, drawer);
        Ground ground = this.city.getTiles().getGround(i, i2);
        if (this.mode != 1) {
            return;
        }
        int i3 = this.selectedX;
        if (i3 == i && this.selectedY == i2) {
            if (this.drawnTarget && !this.drawnTargetValid) {
                drawer.engine.setColor(Colors.RED);
            }
            drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_CHECKER);
            drawer.engine.setColor(Colors.WHITE);
            return;
        }
        if (isValid(i3, this.selectedY, i, i2) && isTileInvolved(i, i2)) {
            int iMax = Math.max(Math.abs(this.selectedX - i), Math.abs(this.selectedY - i2));
            if (!this.hasToBeLine) {
                iMax = -1;
            }
            drawOverlay(drawer, i, i2, Resources.FRAME_TOOLMARK_GREEN_DOTTED, iMax);
        }
    }

    public final void align(int i, int i2, boolean z) {
        Building building;
        if (this.city.isValid(i, i2) && (building = this.tiles.getBuilding(i, i2)) != null && building.getDraft() == this.buildingDraft) {
            int alignMask = getAlignMask(i, i2);
            if (z || alignMask != building.getFrame()) {
                building.setFrame(alignMask);
                this.modifier.callEventMethod(building.getDraft(), building.getX(), building.getY(), 0, 10, null);
            }
        }
    }

    public final int getVirtualAlignMask(int i, int i2, int i3, int i4, int i5, int i6) {
        int iMin = Math.min(i3, i5);
        int iMax = Math.max(i3, i5);
        int iMin2 = Math.min(i4, i6);
        int iMax2 = Math.max(i4, i6);
        return getAlignMask(i, i2) | (inArea(i + 1, i2, iMin, iMin2, iMax, iMax2) ? 1 : 0) | (inArea(i, i2 + 1, iMin, iMin2, iMax, iMax2) ? 2 : 0) | (inArea(i + (-1), i2, iMin, iMin2, iMax, iMax2) ? 4 : 0) | (inArea(i, i2 + (-1), iMin, iMin2, iMax, iMax2) ? 8 : 0);
    }

    public final int getAlignMask(int i, int i2) {
        return isConnectable(i + 1, i2) + (isConnectable(i, i2 + 1) * 2) + (isConnectable(i - 1, i2) * 4) + (isConnectable(i, i2 - 1) * 8);
    }

    public final int isConnectable(int i, int i2) {
        Building building;
        return (this.city.isValid(i, i2) && (building = this.tiles.getBuilding(i, i2)) != null && building.getDraft() == this.buildingDraft) ? 1 : 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2, int i3, int i4) {
        this.price = 0L;
        int i5 = 0;
        if (!super.isValid(i, i2, i3, i4)) {
            return false;
        }
        if (!isValid(i, i2) || !isValid(i3, i4)) {
            return false;
        }
        int i6 = i3 - i;
        int i7 = i4 - i2;
        int i8 = i6 < 0 ? -1 : 1;
        int i9 = i7 >= 0 ? 1 : -1;
        int iAbs = Math.abs(i6) + 1;
        int iAbs2 = Math.abs(i7) + 1;
        if (Math.max(iAbs, iAbs2) > 16) {
            return false;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < iAbs2; i11++) {
            int i12 = i5;
            while (i12 < iAbs) {
                int i13 = i5;
                if (this.modifier.isBuildable(this.buildingDraft, (i12 * i8) + i, (i11 * i9) + i2)) {
                    i10++;
                }
                i12++;
                i5 = i13;
            }
        }
        boolean z = i5;
        BuildingDraft buildingDraft = this.buildingDraft;
        ZoneDraft zoneDraft = buildingDraft.zone;
        if (zoneDraft.placeable && buildingDraft.buildZone) {
            this.zoneBuilder.setZone(zoneDraft);
            this.zoneBuilder.setArea(i, i2, i3, i4);
            if (!this.zoneBuilder.isBuildable()) {
                return z;
            }
            this.price += this.zoneBuilder.getPrice();
        }
        this.price += this.modifier.getPrice(this.buildingDraft, i10);
        return getBudget().canSpend(this.price);
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2) {
        return this.modifier.isBuildable(this.buildingDraft, i, i2);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return this.buildingDraft.getIcon();
    }
}
