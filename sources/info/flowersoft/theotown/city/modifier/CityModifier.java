package info.flowersoft.theotown.city.modifier;

import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.buildability.NotBuildableReason;
import info.flowersoft.theotown.city.components.BuildMask;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Pipe;
import info.flowersoft.theotown.city.objects.Rail;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.city.objects.Wire;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultInfluence;
import info.flowersoft.theotown.components.transition.TransitionRunner;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.draft.Composition;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.FenceDraft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.draft.PipeDraft;
import info.flowersoft.theotown.draft.RailDraft;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.TreeDraft;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.draft.WireDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.GlobalTransitionVariables;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class CityModifier {
    public final City city;
    public final boolean events;
    public DefaultInfluence influence;
    public final RoadBuilder roadBuilder;
    public final Tiles tiles;
    public final AnimationDraft WASTE_ON_ROAD = (AnimationDraft) Drafts.get("$animationwaste00", AnimationDraft.class);
    public final TerrainBuilder terrainBuilder = new TerrainBuilder(this);

    public CityModifier(City city, boolean z) {
        this.city = city;
        this.tiles = city.getTiles();
        this.roadBuilder = new RoadBuilder(this, z);
        this.events = z;
    }

    public RoadBuilder getRoadBuilder() {
        return this.roadBuilder;
    }

    public TerrainBuilder getTerrainBuilder() {
        return this.terrainBuilder;
    }

    public boolean isValid(int i, int i2) {
        return this.city.isValid(i, i2);
    }

    public boolean isWater(int i, int i2) {
        return isValid(i, i2) && this.tiles.getGround(i, i2).isWater();
    }

    public boolean isLand(int i, int i2) {
        return isValid(i, i2) && !this.tiles.getGround(i, i2).isWater();
    }

    public boolean isTree(int i, int i2) {
        return isValid(i, i2) && this.tiles.getTree(i, i2) != null;
    }

    public boolean isRoad(int i, int i2) {
        return isValid(i, i2) && this.tiles.hasVisibleRoad(i, i2);
    }

    public boolean isZone(int i, int i2) {
        return isValid(i, i2) && this.tiles.getZone(i, i2) != null;
    }

    public boolean isWire(int i, int i2) {
        return isValid(i, i2) && this.tiles.hasWire(i, i2);
    }

    public boolean isPipe(int i, int i2) {
        return isValid(i, i2) && this.tiles.getPipe(i, i2) != null;
    }

    public boolean isBuilding(int i, int i2) {
        return isValid(i, i2) && this.tiles.getBuilding(i, i2) != null;
    }

    public boolean isTerrainBuildable(boolean z, int i, int i2) {
        if (!isValid(i, i2)) {
            return false;
        }
        Building building = this.tiles.getBuilding(i, i2);
        Ground ground = this.tiles.getGround(i, i2);
        if (z && ground.getDraft().dry) {
            return false;
        }
        if (building != null && (building.isLocked() || !building.getDraft().buildingType.isRCIOrDeco())) {
            return false;
        }
        if (z) {
            return isLand(i, i2) && isWaterPlaceable(i, i2);
        }
        return isWater(i, i2);
    }

    public boolean isWaterPlaceable(int i, int i2) {
        if (isValid(i, i2)) {
            return !isNearSlope(i, i2);
        }
        return false;
    }

    public boolean isNearSlope(int i, int i2) {
        if (this.city.isValid(i, i2) && !this.tiles.getGround(i, i2).isFlat()) {
            return true;
        }
        for (int i3 = 1; i3 <= 8; i3 *= 2) {
            int iDifferenceX = Direction.differenceX(i3) + i;
            int iDifferenceY = Direction.differenceY(i3) + i2;
            if (this.city.isValid(iDifferenceX, iDifferenceY) && !this.tiles.getGround(iDifferenceX, iDifferenceY).isFlat()) {
                return true;
            }
        }
        return false;
    }

    public boolean haveAccess(int i, int i2) {
        BuildMask buildMask = (BuildMask) this.city.getComponent(14);
        return buildMask == null || buildMask.accessGranted(i, i2);
    }

    public void setBridge(Road road, int i) {
        int i2;
        int i3;
        int iCountBridges = i % road.draft.countBridges();
        LinkedList linkedList = new LinkedList();
        road.bridgeType = iCountBridges;
        linkedList.add(road);
        while (!linkedList.isEmpty()) {
            Road road2 = (Road) linkedList.poll();
            Ground ground = this.tiles.getGround(road2.x, road2.y);
            int align = road2.getAlign();
            if (road2.draft.oneWay) {
                align |= 15;
            }
            for (int i4 = 1; i4 <= 8; i4 *= 2) {
                if (Direction.isIn(i4, align)) {
                    int iDifferenceX = road2.x + Direction.differenceX(i4);
                    int iDifferenceY = road2.y + Direction.differenceY(i4);
                    if (this.city.isValid(iDifferenceX, iDifferenceY)) {
                        int baseTerrainHeight = road2.level + ground.getBaseTerrainHeight();
                        if (road2.dLevel == i4) {
                            baseTerrainHeight++;
                        }
                        Road absoluteRoad = this.tiles.getAbsoluteRoad(iDifferenceX, iDifferenceY, baseTerrainHeight);
                        if (absoluteRoad != null ? !((i2 = absoluteRoad.dLevel) == 0 || i2 == i4) : !((absoluteRoad = this.tiles.getAbsoluteRoad(iDifferenceX, iDifferenceY, baseTerrainHeight - 1)) == null || absoluteRoad.dLevel == Direction.opposite(i4))) {
                            absoluteRoad = null;
                        }
                        if (absoluteRoad != null && absoluteRoad.draft == road2.draft && absoluteRoad.bridgeType != iCountBridges && ((i3 = absoluteRoad.level) > 0 || (absoluteRoad.dLevel != 0 && i3 == 0))) {
                            absoluteRoad.bridgeType = iCountBridges;
                            linkedList.add(absoluteRoad);
                        }
                    }
                }
            }
        }
    }

    public Ground buildTerrain(boolean z, int i, int i2, LuaValue luaValue) {
        int i3;
        Ground ground = this.tiles.getGround(i, i2);
        if (z && !ground.isWater()) {
            for (int i4 = 0; i4 < 3; i4++) {
                Wire wire = this.tiles.getWire(i, i2, i4);
                if (wire != null) {
                    removePunch(wire, i, i2);
                }
            }
            if (this.tiles.getRoad(i, i2, 0) != null) {
                this.roadBuilder.remove(i, i2, 0);
            }
            Tree tree = this.tiles.getTree(i, i2);
            if (tree != null) {
                remove(tree, i, i2);
            }
            Building building = this.tiles.getBuilding(i, i2);
            if (building != null) {
                BuildingDraft draft = building.getDraft();
                if (!draft.needsWater && draft.needsLand) {
                    remove(building, luaValue);
                }
            }
            markZone(null, i, i2);
        }
        GroundDraft groundDraft = (GroundDraft) Drafts.ALL.get(z ? "$water00" : "$ground00");
        int iNextInt = Resources.RND.nextInt(groundDraft.frames.length);
        City city = this.city;
        city.setWaterTiles((city.getWaterTiles() - (ground.isWater() ? 1 : 0)) + (z ? 1 : 0));
        ground.setDraft(groundDraft);
        ground.setFrame(iNextInt);
        this.tiles.setTree(i, i2, null);
        int i5 = -1;
        while (true) {
            if (i5 > 1) {
                break;
            }
            for (int i6 = -1; i6 <= 1; i6++) {
                adjustGroundWaterBorder(i + i6, i2 + i5);
            }
            i5++;
        }
        if (z && this.tiles.hasFence(i, i2)) {
            for (i3 = 1; i3 <= 8; i3 *= 2) {
                int iDifferenceX = Direction.differenceX(i3) + i;
                int iDifferenceY = Direction.differenceY(i3) + i2;
                int index = Direction.toIndex(i3);
                if (this.tiles.getFence(i, i2, index) != null) {
                    if (this.city.isValid(iDifferenceX, iDifferenceY)) {
                        if (isWater(iDifferenceX, iDifferenceY)) {
                            removeFence(i, i2, index);
                        }
                    } else {
                        removeFence(i, i2, index);
                    }
                }
            }
        }
        return ground;
    }

    public boolean isBuildable(TreeDraft treeDraft, int i, int i2) {
        if (!treeDraft.active || !isValid(i, i2) || !haveAccess(i, i2)) {
            return false;
        }
        if (!isLand(i, i2) && !treeDraft.water) {
            return false;
        }
        if (!isWater(i, i2) && !treeDraft.land) {
            return false;
        }
        Ground ground = this.tiles.getGround(i, i2);
        Building building = this.tiles.getBuilding(i, i2);
        Road road = this.tiles.getRoad(i, i2, -1);
        Road road2 = this.tiles.getRoad(i, i2, 0);
        Road road3 = this.tiles.getRoad(i, i2, 1);
        Rail rail = this.tiles.getRail(i, i2);
        for (int i3 = treeDraft.buildHeight; i3 <= 16; i3++) {
            Road road4 = this.tiles.getRoad(i, i2, i3);
            if (road4 != null && road4.isPile()) {
                return false;
            }
        }
        return (road == null || road.dLevel == 0) && road2 == null && road3 == null && building == null && (rail == null || (!rail.isPile() && treeDraft.buildHeight <= 2)) && ((ground.getUpDirs() == 0 || treeDraft.supportsSlope) && !this.tiles.hasOvergroundWire(i, i2));
    }

    public boolean isBuildable(WireDraft wireDraft, int i, int i2, int i3, int i4) {
        if (!wireDraft.active) {
            return false;
        }
        int i5 = i3 - i;
        int iSignum = (int) Math.signum(i5);
        int i6 = i4 - i2;
        int iSignum2 = (int) Math.signum(i6);
        int iMax = Math.max(Math.abs(i5), Math.abs(i6));
        int iFromDifferential = Direction.fromDifferential(iSignum, iSignum2);
        int i7 = wireDraft.level;
        if ((iSignum != 0 && iSignum2 != 0) || !isWirePileBuildable(i, i2, i7) || !isWirePileBuildable(i3, i4, i7)) {
            return false;
        }
        for (int i8 = 0; i8 <= iMax; i8++) {
            int i9 = (i8 * iSignum) + i;
            int i10 = (i8 * iSignum2) + i2;
            Wire wire = this.tiles.getWire(i9, i10, i7);
            Road road = this.tiles.getRoad(i9, i10, 0);
            if (wire != null && !isWirePileBuildable(i9, i10, i7) && !Direction.isIn(iFromDifferential, wire.getFrame())) {
                return false;
            }
            if (road != null && road.dLevel != 0 && i7 == 0) {
                return false;
            }
            if (((isZone(i9, i10) || isBuilding(i9, i10)) && i7 >= 0) || !haveAccess(i9, i10)) {
                return false;
            }
        }
        return true;
    }

    public final boolean isWirePileBuildable(int i, int i2, int i3) {
        if (this.city.isValid(i, i2)) {
            return i3 < 0 || (isLand(i, i2) && this.tiles.getRoad(i, i2, 0) == null && !((i3 > 0 && (this.tiles.getRoad(i, i2, 1) != null || this.tiles.getRail(i, i2) != null)) || isBuilding(i, i2) || isZone(i, i2)));
        }
        return false;
    }

    public boolean isBuildable(PipeDraft pipeDraft, int i, int i2, int i3, int i4) {
        if (!pipeDraft.active) {
            return false;
        }
        int i5 = i3 - i;
        int iSignum = (int) Math.signum(i5);
        int i6 = i4 - i2;
        int iSignum2 = (int) Math.signum(i6);
        int iMax = Math.max(Math.abs(i5), Math.abs(i6));
        if ((iSignum != 0 && iSignum2 != 0) || !isValid(i, i2) || !isValid(i3, i4)) {
            return false;
        }
        for (int i7 = 0; i7 <= iMax; i7++) {
            if (!haveAccess((i7 * iSignum) + i, (i7 * iSignum2) + i2)) {
                return false;
            }
        }
        return true;
    }

    public boolean isBuildable(RailDraft railDraft, int i, int i2, int i3, int i4) {
        boolean z;
        boolean z2 = false;
        if (!railDraft.active) {
            return false;
        }
        if (i != i3 && i2 != i4) {
            return false;
        }
        if (!isValid(i, i2) || !isValid(i3, i4)) {
            return false;
        }
        if (isWater(i, i2) || isWater(i3, i4)) {
            return false;
        }
        if (isRoad(i, i2) || isRoad(i3, i4)) {
            return false;
        }
        if (this.tiles.hasOvergroundWire(i, i2) || this.tiles.hasOvergroundWire(i3, i4)) {
            return false;
        }
        Ground ground = this.tiles.getGround(i, i2);
        int i5 = i3 - i;
        int iSignum = (int) Math.signum(i5);
        int i6 = i4 - i2;
        int iSignum2 = (int) Math.signum(i6);
        int iMax = Math.max(Math.abs(i5), Math.abs(i6));
        int iFromDifferential = Direction.fromDifferential(iSignum, iSignum2);
        int baseTerrainHeight = ground.getBaseTerrainHeight();
        int i7 = 0;
        while (i7 <= iMax) {
            int i8 = (i7 * iSignum) + i;
            int i9 = (i7 * iSignum2) + i2;
            Ground ground2 = this.tiles.getGround(i8, i9);
            if ((!ground2.isFlat() || ground2.getBaseTerrainHeight() != baseTerrainHeight) && !railDraft.supportsSlope) {
                return z2;
            }
            Building building = this.tiles.getBuilding(i8, i9);
            if (isRail(i8, i9) || building == null) {
                z = z2;
            } else {
                z = z2;
                if (building.getZone() == Zones.getInstance().OTHER || building.isUntouchable() || building.isLocked()) {
                    return z;
                }
            }
            Wire wire = this.tiles.getWire(i8, i9, 1);
            if (this.tiles.getRoad(i8, i9, 2) != null) {
                return z;
            }
            Road road = this.tiles.getRoad(i8, i9, 1);
            if (road != null && road.dLevel != 0) {
                return z;
            }
            if (wire != null && wire.isPunch()) {
                return z;
            }
            if ((isRail(i8, i9) && Direction.countDirections(Direction.union(getRailMask(i8, i9), Direction.union(iFromDifferential, Direction.opposite(iFromDifferential)))) > 2 && (isRoad(i8, i9) || this.tiles.hasOvergroundWire(i8, i9))) || this.tiles.getZone(i8, i9) == Zones.getInstance().MILITARY) {
                return z;
            }
            i7++;
            z2 = z;
        }
        return true;
    }

    public List<Rail> build(RailDraft railDraft, int i, int i2, int i3, int i4, LuaValue luaValue) {
        int iOpposite;
        ArrayList arrayList = new ArrayList();
        int i5 = i3 - i;
        int iSignum = (int) Math.signum(i5);
        int i6 = i4 - i2;
        int iSignum2 = (int) Math.signum(i6);
        int iMax = Math.max(Math.abs(i5), Math.abs(i6));
        int iFromDifferential = Direction.fromDifferential(iSignum, iSignum2);
        boolean z = false;
        if (iMax == 0) {
            iFromDifferential = 0;
        }
        int i7 = 0;
        int i8 = 0;
        while (i7 <= iMax) {
            int i9 = i + (i7 * iSignum);
            int i10 = i2 + (i7 * iSignum2);
            for (int i11 = 3; i11 <= 16; i11++) {
                this.roadBuilder.removePile(i9, i10, i11);
            }
            removeTileInfluence(i9, i10);
            this.tiles.setTree(i9, i10, null);
            Building building = this.tiles.getBuilding(i9, i10);
            if (building != null && building.getBuildingType() != BuildingType.RAILWAY_STATION) {
                remove(building, luaValue);
            }
            markZone(null, i9, i10);
            if (i7 == 0) {
                iOpposite = iFromDifferential;
            } else {
                iOpposite = Direction.opposite(iFromDifferential);
                if (i7 < iMax) {
                    iOpposite |= iFromDifferential;
                }
            }
            Rail rail = this.tiles.getRail(i9, i10);
            if (rail == null) {
                rail = new Rail(railDraft, i9, i10);
                rail.setPile(z);
                this.city.getRails().add(rail);
                this.tiles.setRail(i9, i10, rail);
                rail.setFrame(iOpposite);
            } else {
                rail.setFrame(iOpposite | rail.getFrame());
            }
            if (i7 == 0 || i7 == iMax) {
                rail.setPile(true);
            } else if (i7 - i8 >= railDraft.pileDistance && !isRoad(i9, i10) && !isWater(i9, i10) && !this.tiles.hasOvergroundWire(i9, i10)) {
                rail.setPile(true);
            }
            if (rail.isPile()) {
                i8 = i7;
            }
            arrayList.add(rail);
            addTileInfluence(i9, i10);
            i7++;
            z = false;
        }
        return null;
    }

    public boolean isBuildable(BuildingDraft buildingDraft, int i, int i2) {
        return isBuildable(buildingDraft, i, i2, false, false, 0) == null;
    }

    public NotBuildableReason isBuildable(BuildingDraft buildingDraft, int i, int i2, boolean z, boolean z2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        ZoneDraft zoneDraft;
        if (buildingDraft == null || !buildingDraft.active || !this.city.isValid(i, i2)) {
            return NotBuildableReason.Generic;
        }
        int width = buildingDraft.getWidth(i3);
        int height = buildingDraft.getHeight(i3);
        Composition composition = buildingDraft.composition;
        if (composition == null) {
            if (buildingDraft.maxCount >= 0 && this.city.getBuildings().getBuildingsOfDraft(buildingDraft).size() >= buildingDraft.maxCount) {
                return NotBuildableReason.MaxCount;
            }
            if (i < 0 || i2 < 0 || (i7 = i + width) > this.city.getWidth() || (i8 = i2 + height) > this.city.getHeight()) {
                return NotBuildableReason.Generic;
            }
            int baseTerrainHeight = this.tiles.getGround(i, i2).getBaseTerrainHeight();
            int i9 = 0;
            int i10 = 0;
            for (int i11 = i2; i11 < i8; i11++) {
                int i12 = i;
                while (i12 < i7) {
                    if (isWater(i12, i11)) {
                        i10++;
                    } else {
                        i9++;
                    }
                    if (!this.city.isValid(i12, i11)) {
                        return NotBuildableReason.Generic;
                    }
                    Ground ground = this.tiles.getGround(i12, i11);
                    ZoneDraft zone = this.tiles.getZone(i12, i11);
                    Building building = this.tiles.getBuilding(i12, i11);
                    int i13 = i7;
                    if ((!ground.isFlat() || ground.getBaseTerrainHeight() != baseTerrainHeight) && !buildingDraft.supportsTerrain) {
                        return NotBuildableReason.Terrain;
                    }
                    if (ground.isBorder() && !buildingDraft.supportsShoreline) {
                        return NotBuildableReason.Terrain;
                    }
                    if (this.tiles.hasVisibleRoad(i12, i11) || !haveAccess(i12, i11)) {
                        return NotBuildableReason.Blocked;
                    }
                    ZoneDraft zoneDraft2 = buildingDraft.zone;
                    if (zoneDraft2 != null && zone != null && !zoneDraft2.isSimilar(zone) && buildingDraft.buildZone && !z) {
                        return NotBuildableReason.Zone;
                    }
                    ZoneDraft zoneDraft3 = buildingDraft.zone;
                    if (zoneDraft3 != null && !zoneDraft3.isSuperiorTo(zone) && (zone == null || zone.persistent)) {
                        return NotBuildableReason.Zone;
                    }
                    if (building != null && building.getZone().persistent) {
                        return NotBuildableReason.Blocked;
                    }
                    if (building != null && (building.isLocked() || building.isUntouchable() || !building.getDraft().easyRemove)) {
                        return NotBuildableReason.Blocked;
                    }
                    i12++;
                    i7 = i13;
                }
            }
            boolean z3 = buildingDraft.needsWater;
            if (z3 && !buildingDraft.needsLand && i9 > 0) {
                return NotBuildableReason.Water;
            }
            boolean z4 = buildingDraft.needsLand;
            if (z4 && !z3 && i10 > 0) {
                return NotBuildableReason.Land;
            }
            if (z3 && z4 && (i10 == 0 || i9 == 0)) {
                if (i10 == 0) {
                    return NotBuildableReason.Water;
                }
                return NotBuildableReason.Land;
            }
            int i14 = buildingDraft.minWaterTiles;
            if (i14 > -1 && i14 > i10) {
                return NotBuildableReason.Water;
            }
            if (!buildingDraft.needsRoad || (zoneDraft = buildingDraft.zone) == null || !zoneDraft.rci || z2) {
                i4 = i;
                i5 = i2;
            } else {
                i4 = i;
                i5 = i2;
                if (!hasRoadTransfer(i, i2, width, height, getMinTerrainLevel(i, i2, width, height) - 1, getMaxTerrainLevel(i, i2, width, height), buildingDraft.roadFlags)) {
                    return NotBuildableReason.Generic;
                }
            }
        } else {
            i4 = i;
            i5 = i2;
            int i15 = i3 < 0 ? 0 : i3;
            int[] iArrListXY = composition.listXY(i15);
            int i16 = (4 - i15) % 4;
            int baseTerrainHeight2 = this.tiles.getGround(i4, i5).getBaseTerrainHeight();
            for (int i17 = i5; i17 < buildingDraft.composition.getHeight(i16) + i5; i17++) {
                for (int i18 = i4; i18 < buildingDraft.composition.getWidth(i16) + i4; i18++) {
                    if (!this.city.isValid(i18, i17)) {
                        return NotBuildableReason.Generic;
                    }
                    Ground ground2 = this.tiles.getGround(i18, i17);
                    if ((!ground2.isFlat() || ground2.getBaseTerrainHeight() != baseTerrainHeight2) && !buildingDraft.supportsSlope) {
                        return NotBuildableReason.Terrain;
                    }
                }
            }
            int i19 = 0;
            while (i19 < iArrListXY.length) {
                int i20 = iArrListXY[i19];
                int i21 = iArrListXY[i19 + 1];
                Composition.CompositeBuilding building2 = buildingDraft.composition.getBuilding(i20, i21);
                if (building2 != null) {
                    int visualX = buildingDraft.composition.toVisualX(i20, i21, i16);
                    int visualY = buildingDraft.composition.toVisualY(i20, i21, i16);
                    BuildingDraft buildingDraft2 = building2.draft;
                    int i22 = i16;
                    boolean zIsPivot = Building.isPivot(i20, i21, i22, buildingDraft2, buildingDraft2.rotationAware ? building2.frame % 4 : 0, building2.x, building2.y, 0, 0);
                    i6 = i22;
                    if (zIsPivot) {
                        BuildingDraft buildingDraft3 = building2.draft;
                        NotBuildableReason notBuildableReasonIsBuildable = isBuildable(buildingDraft3, i4 + visualX, i5 + visualY, z, z2, buildingDraft3.rotationAware ? ((i15 % 4) + building2.frame) % buildingDraft3.frames.length : building2.frame);
                        if (notBuildableReasonIsBuildable != null) {
                            return notBuildableReasonIsBuildable;
                        }
                    } else {
                        continue;
                    }
                } else {
                    i6 = i16;
                }
                i19 += 2;
                i16 = i6;
            }
            int i23 = i16;
            for (int i24 = 0; i24 < buildingDraft.composition.roads.size(); i24++) {
                Composition.CompositeRoad compositeRoad = buildingDraft.composition.roads.get(i24);
                this.roadBuilder.setDraft(compositeRoad.draft, null);
                this.roadBuilder.setLine(buildingDraft.composition.toVisualX(compositeRoad.x0, compositeRoad.y0, i23) + i4, buildingDraft.composition.toVisualY(compositeRoad.x0, compositeRoad.y0, i23) + i5, buildingDraft.composition.toVisualX(compositeRoad.x1, compositeRoad.y1, i23) + i4, buildingDraft.composition.toVisualY(compositeRoad.x1, compositeRoad.y1, i23) + i5);
                if (!this.roadBuilder.isBuildable()) {
                    return NotBuildableReason.Generic;
                }
            }
            for (int i25 = 0; i25 < buildingDraft.composition.trees.size(); i25++) {
                Composition.CompositeTree compositeTree = buildingDraft.composition.trees.get(i25);
                if (!isBuildable(compositeTree.draft, buildingDraft.composition.toVisualX(compositeTree.x, compositeTree.y, i23) + i4, buildingDraft.composition.toVisualY(compositeTree.x, compositeTree.y, i23) + i5)) {
                    return NotBuildableReason.Generic;
                }
            }
        }
        MethodCluster methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("isBuildable", buildingDraft);
        if (methodClusterOrNull == null || methodClusterOrNull.invoke(i4, i5, 0)) {
            return null;
        }
        return NotBuildableReason.Generic;
    }

    public boolean hasRoadTransfer(Building building) {
        return hasRoadTransfer(building.getX(), building.getY(), building.getWidth(), building.getHeight(), building.getMinTerrainLevel() - 1, building.getMaxTerrainLevel(), building.getDraft().roadFlags);
    }

    public boolean hasRoadTransfer(int i, int i2, int i3, int i4, int i5, int i6, long j) {
        boolean z = false;
        for (int i7 = 0; i7 < i3 && !z; i7++) {
            int i8 = i7 + i;
            z = hasRoadTransfer(i8, i2 + (-1), i5, i6, j) || hasRoadTransfer(i8, i2 + i4, i5, i6, j);
        }
        for (int i9 = 0; i9 < i4 && !z; i9++) {
            int i10 = i9 + i2;
            z = hasRoadTransfer(i + (-1), i10, i5, i6, j) || hasRoadTransfer(i + i3, i10, i5, i6, j);
        }
        return z;
    }

    public final boolean hasRoadTransfer(int i, int i2, int i3, int i4, long j) {
        if (!isValid(i, i2) || !this.tiles.hasRoad(i, i2)) {
            return false;
        }
        while (i3 <= i4) {
            Road absoluteRoad = this.tiles.getAbsoluteRoad(i, i2, i3);
            if (absoluteRoad != null) {
                RoadDraft roadDraft = absoluteRoad.draft;
                if (roadDraft.allowTransfer && (roadDraft.flags & j) != 0) {
                    return true;
                }
            }
            i3++;
        }
        return false;
    }

    public boolean isBuildable(ZoneDraft zoneDraft, int i, int i2) {
        if (!zoneDraft.active || !isLand(i, i2) || !haveAccess(i, i2) || ((isRoad(i, i2) || isRail(i, i2)) && !zoneDraft.persistent)) {
            return false;
        }
        ZoneDraft zone = this.tiles.getZone(i, i2);
        if (zone != null && !zoneDraft.isSuperiorTo(zone)) {
            return false;
        }
        Building building = this.tiles.getBuilding(i, i2);
        if (building != null && building.getZone().persistent) {
            ZoneDraft zoneDraft2 = building.getDraft().zone;
            if (!zoneDraft.isSuperiorTo(zoneDraft2) && zoneDraft != zoneDraft2) {
                return false;
            }
        }
        return true;
    }

    public boolean isBuildable(BusStopDraft busStopDraft, int i, int i2) {
        Road topRoad;
        int i3;
        if (busStopDraft.active && isValid(i, i2) && haveAccess(i, i2) && (topRoad = this.tiles.getTopRoad(i, i2)) != null && (i3 = topRoad.level) >= 0) {
            for (i3 = topRoad.level; i3 >= 0; i3--) {
                if (isBuildable(busStopDraft, this.tiles.getRoad(i, i2, i3))) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isBuildable(BusStopDraft busStopDraft, int i, int i2, int i3) {
        if (busStopDraft.active && isValid(i, i2) && haveAccess(i, i2)) {
            return isBuildable(busStopDraft, this.tiles.getRoad(i, i2, i3));
        }
        return false;
    }

    public final boolean isBuildable(BusStopDraft busStopDraft, Road road) {
        return road != null && road.getBusStop() == null && road.draft.allowBusStop && road.dLevel == 0 && busStopDraft.fitsRoad(road.getFlags(), road.getAlign());
    }

    public Tree build(TreeDraft treeDraft, int i, int i2) {
        removeTileInfluence(i, i2);
        Tree tree = new Tree(treeDraft, Resources.RND.nextInt(treeDraft.frames.length / treeDraft.framesPerTree), i, i2);
        this.tiles.setTree(i, i2, tree);
        addTileInfluence(i, i2);
        if (!this.city.isReadonly()) {
            GlobalTransitionVariables.getInstance().add("!_treeplantcounter", 1L, 0L);
        }
        return tree;
    }

    public List<Pipe> build(PipeDraft pipeDraft, int i, int i2, int i3, int i4) {
        int connectionDir;
        ArrayList arrayList = new ArrayList();
        int i5 = i3 - i;
        int iSignum = (int) Math.signum(i5);
        int i6 = i4 - i2;
        int iSignum2 = (int) Math.signum(i6);
        int iMax = Math.max(Math.abs(i5), Math.abs(i6));
        for (int i7 = 0; i7 <= iMax; i7++) {
            int i8 = (i7 * iSignum) + i;
            int i9 = (i7 * iSignum2) + i2;
            Pipe pipe = this.tiles.getPipe(i8, i9);
            if (pipe != null) {
                connectionDir = pipe.getConnectionDir();
                this.city.getPipes().remove(pipe);
            } else {
                connectionDir = 0;
            }
            Pipe pipe2 = new Pipe(pipeDraft, i8, i9, 0);
            pipe2.setConnection(connectionDir);
            this.tiles.setPipe(i8, i9, pipe2);
            this.city.getPipes().add(pipe2);
        }
        alignPipes(Math.min(i, i3), Math.min(i2, i4), Math.max(i, i3), Math.max(i2, i4));
        return arrayList;
    }

    public final void alignPipes(int i, int i2) {
        alignPipes(i, i2, i, i2);
    }

    public final void alignPipes(int i, int i2, int i3, int i4) {
        Pipe pipe;
        for (int i5 = i - 1; i5 <= i3 + 1; i5++) {
            for (int i6 = i2 - 1; i6 <= i4 + 1; i6++) {
                if (this.city.isValid(i5, i6) && (pipe = this.tiles.getPipe(i5, i6)) != null) {
                    pipe.setFrame(getPipeMask(pipe.getDraft(), i5, i6));
                }
            }
        }
    }

    public List<Wire> build(WireDraft wireDraft, int i, int i2, int i3, int i4) {
        Ground ground;
        boolean z;
        ArrayList arrayList = new ArrayList();
        int i5 = i3 - i;
        int iSignum = (int) Math.signum(i5);
        int i6 = i4 - i2;
        int iSignum2 = (int) Math.signum(i6);
        int iFromDifferential = Direction.fromDifferential(iSignum, iSignum2);
        int iMax = Math.max(Math.abs(i5), Math.abs(i6));
        int i7 = wireDraft.level;
        boolean z2 = i7 >= 0;
        int i8 = 0;
        int i9 = 0;
        while (i9 <= iMax) {
            int i10 = i + (i9 * iSignum);
            int i11 = iSignum;
            int i12 = i2 + (i9 * iSignum2);
            int i13 = iSignum2;
            Ground ground2 = this.tiles.getGround(i10, i12);
            if (z2 && isTree(i10, i12)) {
                ground = ground2;
                remove(this.tiles.getTree(i10, i12), i10, i12);
            } else {
                ground = ground2;
            }
            if (z2 && isRail(i10, i12)) {
                removeRailPile(this.tiles.getRail(i10, i12));
            }
            Wire wire = this.tiles.getWire(i10, i12, i7);
            if (wire == null) {
                z = z2;
                Wire wire2 = new Wire(wireDraft, i10, i12, 0);
                this.tiles.setWire(i10, i12, i7, wire2);
                this.city.getWires().add(wire2);
                if (iMax > 0) {
                    if (i9 == 0) {
                        wire2.setFrame(iFromDifferential);
                    } else if (i9 == iMax) {
                        wire2.setFrame(Direction.opposite(iFromDifferential));
                    } else {
                        wire2.setFrame(Direction.axis(iFromDifferential));
                    }
                }
                if (z) {
                    if ((i8 >= wireDraft.spacing || i9 == 0 || i9 == iMax || !ground.isFlat()) && isWirePileBuildable(i10, i12, i7)) {
                        wire2.setPunch(true);
                        i8 = 0;
                    } else {
                        wire2.setPunch(false);
                        i8++;
                        arrayList.add(wire2);
                    }
                }
                arrayList.add(wire2);
            } else {
                z = z2;
                if (z && wire.isPunch()) {
                    i8 = 0;
                }
                arrayList.add(wire);
            }
            i9++;
            iSignum2 = i13;
            iSignum = i11;
            z2 = z;
        }
        alignWires(Math.min(i, i3), Math.min(i2, i4), Math.max(i, i3), Math.max(i2, i4), i7);
        return arrayList;
    }

    public final void alignWires(int i, int i2, int i3, int i4, int i5) {
        int i6;
        Wire wire;
        Wire wire2;
        Wire wire3;
        int i7 = i - 1;
        int i8 = i7;
        while (true) {
            i6 = i3 + 1;
            if (i8 > i6) {
                break;
            }
            for (int i9 = i2 - 1; i9 <= i4 + 1; i9++) {
                if (this.city.isValid(i8, i9) && (wire3 = this.tiles.getWire(i8, i9, i5)) != null) {
                    int wireMask = getWireMask(wire3.getDraft(), i8, i9);
                    if ((Direction.countDirections(wireMask) <= 2 && !Direction.isCorner(wireMask)) || isWirePileBuildable(i8, i9, i5)) {
                        wire3.setFrame(wireMask);
                    }
                }
            }
            i8++;
        }
        while (i7 <= i6) {
            for (int i10 = i2 - 1; i10 <= i4 + 1; i10++) {
                if (this.city.isValid(i7, i10) && (wire = this.tiles.getWire(i7, i10, i5)) != null) {
                    int frame = wire.getFrame();
                    for (int i11 = 1; i11 <= 8; i11 *= 2) {
                        if (Direction.isIn(i11, frame)) {
                            int iDifferenceX = Direction.differenceX(i11) + i7;
                            int iDifferenceY = Direction.differenceY(i11) + i10;
                            if (this.city.isValid(iDifferenceX, iDifferenceY) && ((wire2 = this.tiles.getWire(iDifferenceX, iDifferenceY, i5)) == null || !Direction.isIn(Direction.opposite(i11), wire2.getFrame()))) {
                                frame &= ~i11;
                            }
                        }
                    }
                    if (Direction.countDirections(frame) > 2 || Direction.isCorner(frame)) {
                        wire.setPunch(true);
                    }
                    wire.setFrame(frame);
                }
            }
            i7++;
        }
    }

    public List<Building> build(BuildingDraft buildingDraft, int i, int i2, int i3, LuaValue luaValue) {
        Road road;
        int[] iArr;
        int i4;
        int length;
        FenceDraft fenceDraft;
        int i5 = i3;
        int width = buildingDraft.getWidth(i5);
        int height = buildingDraft.getHeight(i5);
        int i6 = 0;
        if (buildingDraft.composition == null) {
            remove(i, i2, width, height, luaValue);
            ZoneDraft zoneDraft = buildingDraft.zone;
            if (zoneDraft == null || zoneDraft == Zones.getInstance().OTHER) {
                for (int i7 = i2; i7 < i2 + height; i7++) {
                    for (int i8 = i; i8 < i + width; i8++) {
                        markZone(null, i8, i7);
                    }
                }
            }
            removeTileInfluence(i, i2, width, height);
            removeFenceWithin(i, i2, width, height);
            String[] strArr = buildingDraft.useFence;
            if (strArr != null && strArr.length > 0 && (fenceDraft = (FenceDraft) Drafts.get(strArr[Resources.RND.nextInt(strArr.length)], FenceDraft.class)) != null) {
                buildFenceAround(fenceDraft, i, i2, width, height);
            }
            int iMax = (!buildingDraft.randomFrame || i5 >= 0) ? Math.max(i5, 0) : Resources.RND.nextInt(buildingDraft.frames.length);
            int[] iArr2 = buildingDraft.decoFrames;
            Building building = new Building(buildingDraft, i, i2, iMax, iArr2 != null ? Resources.RND.nextInt(iArr2.length) : -1, ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay(), false);
            building.setTerrainLevels(getMinTerrainLevel(building.getX(), building.getY(), building.getWidth(), building.getHeight()), getMaxTerrainLevel(building.getX(), building.getY(), building.getWidth(), building.getHeight()));
            for (int i9 = i2; i9 < i2 + height; i9++) {
                for (int i10 = i; i10 < i + width; i10++) {
                    this.tiles.setBuilding(i10, i9, building);
                }
            }
            this.city.getBuildings().add(building);
            updateZoneSizeForInfluencedTiles(i, i2, width, height);
            addTileInfluence(i, i2, width, height);
            callEventMethod(buildingDraft, i, i2, 0, 0, luaValue);
            if (buildingDraft.buildTime == 0) {
                finishBuilding(building, luaValue);
            }
            return Collections.singletonList(building);
        }
        CityModifier cityModifier = this;
        if (i5 < 0) {
            i5 = 0;
        }
        ArrayList arrayList = new ArrayList();
        int i11 = (4 - i5) % 4;
        int[] iArrListXY = buildingDraft.composition.listXY(i11);
        int i12 = 0;
        while (i12 < iArrListXY.length) {
            int i13 = iArrListXY[i12];
            int i14 = iArrListXY[i12 + 1];
            Composition.CompositeBuilding building2 = buildingDraft.composition.getBuilding(i13, i14);
            if (building2 != null) {
                int visualX = buildingDraft.composition.toVisualX(i13, i14, i11);
                int visualY = buildingDraft.composition.toVisualY(i13, i14, i11);
                BuildingDraft buildingDraft2 = building2.draft;
                boolean z = buildingDraft2.rotationAware;
                int i15 = z ? building2.frame : i6;
                if (z) {
                    int i16 = building2.frame;
                    length = ((((i5 % 4) + i16) % 4) + ((i16 / 4) * 4)) % buildingDraft2.frames.length;
                } else {
                    length = building2.frame;
                }
                int i17 = length;
                if (Building.isPivot(i13, i14, i11, buildingDraft2, i15, building2.x, building2.y, 0, 0) && (building2.draft.diamondPrice.get() == 0 || buildingDraft.isPrivileged())) {
                    i4 = i12;
                    iArr = iArrListXY;
                    cityModifier = this;
                    List<Building> listBuild = cityModifier.build(building2.draft, i + visualX, i2 + visualY, i17, luaValue);
                    if (listBuild != null) {
                        arrayList.addAll(listBuild);
                    }
                } else {
                    cityModifier = this;
                    iArr = iArrListXY;
                    i4 = i12;
                }
            } else {
                iArr = iArrListXY;
                i4 = i12;
            }
            i12 = i4 + 2;
            iArrListXY = iArr;
            i6 = 0;
        }
        for (int i18 = 0; i18 < buildingDraft.composition.roads.size(); i18++) {
            Composition.CompositeRoad compositeRoad = buildingDraft.composition.roads.get(i18);
            cityModifier.roadBuilder.setDraft(compositeRoad.draft, luaValue);
            cityModifier.roadBuilder.setLine(buildingDraft.composition.toVisualX(compositeRoad.x0, compositeRoad.y0, i11) + i, buildingDraft.composition.toVisualY(compositeRoad.x0, compositeRoad.y0, i11) + i2, buildingDraft.composition.toVisualX(compositeRoad.x1, compositeRoad.y1, i11) + i, buildingDraft.composition.toVisualY(compositeRoad.x1, compositeRoad.y1, i11) + i2);
            int iMin = 0;
            for (int i19 = 0; i19 < compositeRoad.length; i19++) {
                int i20 = compositeRoad.levels[i19];
                cityModifier.roadBuilder.setRelativeLevel(i20, i19);
                iMin = Math.min(iMin, i20);
            }
            if (iMin >= 0 || buildingDraft.isPrivileged()) {
                boolean z2 = Settings.roadAutoJoin;
                Settings.roadAutoJoin = compositeRoad.join;
                if (cityModifier.roadBuilder.isBuildable()) {
                    cityModifier.roadBuilder.build();
                }
                Settings.roadAutoJoin = z2;
            }
        }
        for (int i21 = 0; i21 < buildingDraft.composition.roadDecorations.size(); i21++) {
            Composition.CompositeRoadDecoration compositeRoadDecoration = buildingDraft.composition.roadDecorations.get(i21);
            int visualX2 = buildingDraft.composition.toVisualX(compositeRoadDecoration.x, compositeRoadDecoration.y, i11) + i;
            int visualY2 = buildingDraft.composition.toVisualY(compositeRoadDecoration.x, compositeRoadDecoration.y, i11) + i2;
            if (cityModifier.city.isValid(visualX2, visualY2) && (road = cityModifier.tiles.getRoad(visualX2, visualY2, compositeRoadDecoration.level)) != null) {
                cityModifier.buildRoadDecoration(compositeRoadDecoration.draft, road, -1, luaValue, true);
            }
        }
        for (int i22 = 0; i22 < buildingDraft.composition.busStops.size(); i22++) {
            Composition.CompositeBusStop compositeBusStop = buildingDraft.composition.busStops.get(i22);
            int visualX3 = buildingDraft.composition.toVisualX(compositeBusStop.x, compositeBusStop.y, i11) + i;
            int visualY3 = buildingDraft.composition.toVisualY(compositeBusStop.x, compositeBusStop.y, i11) + i2;
            if (cityModifier.city.isValid(visualX3, visualY3) && cityModifier.tiles.getRoad(visualX3, visualY3, compositeBusStop.level) != null) {
                cityModifier.build(compositeBusStop.draft, visualX3, visualY3, compositeBusStop.level);
            }
        }
        for (int i23 = 0; i23 < buildingDraft.composition.trees.size(); i23++) {
            Composition.CompositeTree compositeTree = buildingDraft.composition.trees.get(i23);
            int visualX4 = buildingDraft.composition.toVisualX(compositeTree.x, compositeTree.y, i11) + i;
            int visualY4 = buildingDraft.composition.toVisualY(compositeTree.x, compositeTree.y, i11) + i2;
            if (cityModifier.isBuildable(compositeTree.draft, visualX4, visualY4)) {
                cityModifier.build(compositeTree.draft, visualX4, visualY4).setFrame(compositeTree.frame);
            }
        }
        return arrayList;
    }

    public void callEventMethod(Draft draft, int i, int i2, int i3, int i4, LuaValue luaValue) {
        MethodCluster methodClusterOrNull;
        if (!this.events || (methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("event", draft)) == null) {
            return;
        }
        methodClusterOrNull.invoke(i, i2, i3, i4, luaValue);
    }

    public void finishBuildings(List<Building> list, LuaValue luaValue) {
        Iterator<Building> it = list.iterator();
        while (it.hasNext()) {
            finishBuilding(it.next(), luaValue);
        }
    }

    public void finishBuilding(Building building, LuaValue luaValue) {
        Building building2;
        if (building.inConstruction()) {
            removeTileInfluence(building.getX(), building.getY(), building.getWidth(), building.getHeight());
            building.setBuilt();
            building.setBuildDay(((DefaultDate) this.city.getComponent(1)).getAbsoluteDay() - ((long) building.getDraft().buildTime));
            addTileInfluence(building.getX(), building.getY(), building.getWidth(), building.getHeight());
            if (building.getDraft().onBuiltTransitions != null) {
                TransitionRunner transitionRunner = new TransitionRunner(this.city);
                building2 = building;
                transitionRunner.accept(building.getDraft().onBuiltTransitions, building2, "finish " + building.getDraftId(), building.getDraftId(), building.getDraft().luaRepr, building.getDraft().isPrivileged());
                transitionRunner.run();
            } else {
                building2 = building;
            }
            this.city.getBuildings().onBuildingFinished(building2);
            callEventMethod(building2.getDraft(), building2.getX(), building2.getY(), 0, 1, luaValue);
            return;
        }
        if (building.hasPendingUpgrades()) {
            finishUpgrade(building, luaValue);
        }
    }

    public BusStop build(BusStopDraft busStopDraft, int i, int i2) {
        int i3;
        Road road;
        Road topRoad = this.tiles.getTopRoad(i, i2);
        if (topRoad == null || (i3 = topRoad.level) < 0) {
            return null;
        }
        while (true) {
            if (i3 < 0) {
                road = null;
                break;
            }
            road = this.tiles.getRoad(i, i2, i3);
            if (isBuildable(busStopDraft, road)) {
                break;
            }
            i3--;
        }
        if (road == null) {
            return null;
        }
        return build(busStopDraft, i, i2, road.level);
    }

    public BusStop build(BusStopDraft busStopDraft, int i, int i2, int i3) {
        BusStop busStop;
        removeTileInfluence(i, i2);
        Road road = this.tiles.getRoad(i, i2, i3);
        if (road == null || road.getBusStop() != null || road.dLevel != 0 || road.getAlign() == 15) {
            busStop = null;
        } else {
            busStop = new BusStop(busStopDraft, i, i2, road.level);
            road.setBusStop(busStop);
            this.city.getBusStops().add(busStop);
        }
        addTileInfluence(i, i2);
        return busStop;
    }

    public void destroy(int i, int i2, boolean z, LuaValue luaValue) {
        if (this.city.isValid(i, i2)) {
            Building building = this.tiles.getBuilding(i, i2);
            if (building == null || destroyBuilding(building, z, luaValue)) {
                boolean z2 = false;
                for (int i3 = 16; i3 >= 0; i3--) {
                    Road road = this.tiles.getRoad(i, i2, i3);
                    if (road != null && i3 == 0 && road.dLevel == 0 && Resources.RND.nextFloat() < 0.8f) {
                        road.setOccupation(this.WASTE_ON_ROAD);
                        z2 = false;
                    } else if (road != null) {
                        this.roadBuilder.remove(i, i2, i3);
                        z2 = true;
                    }
                }
                if (z2) {
                    setTileDestroyed(i, i2, z, false, false, true, luaValue);
                }
                boolean zIsTree = isTree(i, i2);
                if (zIsTree || this.tiles.hasOvergroundWire(i, i2) || this.tiles.getRail(i, i2) != null || this.tiles.hasFence(i, i2)) {
                    remove(i, i2, luaValue);
                    removeFences(i, i2);
                    setTileDestroyed(i, i2, z, zIsTree, false, false, luaValue);
                }
            }
        }
    }

    public boolean destroyTree(Tree tree, boolean z, LuaValue luaValue) {
        remove(tree, tree.getX(), tree.getY());
        setTileDestroyed(tree.getX(), tree.getY(), z, true, false, false, luaValue);
        return true;
    }

    public boolean destroyBuilding(Building building, boolean z, LuaValue luaValue) {
        if (!building.getDraft().destroyable) {
            return false;
        }
        int x = building.getX();
        int y = building.getY();
        int width = building.getWidth();
        int height = building.getHeight();
        LuaValue luaValue2 = luaValue;
        remove(building, luaValue2);
        BuildingDraft buildingDraft = building.getDraft().destruction;
        if (buildingDraft == null) {
            int i = y;
            while (i < y + height) {
                int i2 = x;
                while (i2 < x + width) {
                    setTileDestroyed(i2, i, z, false, true, false, luaValue2);
                    i2++;
                    luaValue2 = luaValue;
                }
                i++;
                luaValue2 = luaValue;
            }
        } else if (buildingDraft.getWidth(0) == 1 && buildingDraft.getHeight(0) == 1) {
            for (int i3 = y; i3 < y + height; i3++) {
                for (int i4 = x; i4 < x + width; i4++) {
                    BuildingDraft buildingDraft2 = buildingDraft;
                    setTileDestroyed(i4, i3, Resources.RND.nextInt(buildingDraft.frames.length), buildingDraft2, luaValue);
                    buildingDraft = buildingDraft2;
                }
            }
        } else {
            setTileDestroyed(x, y, Resources.RND.nextInt(buildingDraft.frames.length), buildingDraft, luaValue);
        }
        return true;
    }

    public void tryToPlaceCrater(BuildingDraft buildingDraft, int i, int i2, LuaValue luaValue) {
        int width = buildingDraft.getWidth(0);
        int height = buildingDraft.getHeight(0);
        if (!this.city.isValid(i, i2)) {
            return;
        }
        int baseTerrainHeight = this.tiles.getGround(i, i2).getBaseTerrainHeight();
        int i3 = i;
        while (true) {
            int i4 = i + width;
            if (i3 >= i4) {
                for (int i5 = i; i5 < i4; i5++) {
                    for (int i6 = i2; i6 < i2 + height; i6++) {
                        remove(i5, i6, luaValue);
                    }
                }
                build(buildingDraft, i, i2, 0, luaValue);
                return;
            }
            for (int i7 = i2; i7 < i2 + height; i7++) {
                if (!this.city.isValid(i3, i7)) {
                    return;
                }
                Ground ground = this.tiles.getGround(i3, i7);
                Building building = this.tiles.getBuilding(i3, i7);
                if ((!ground.isFlat() || baseTerrainHeight != ground.getBaseTerrainHeight()) && !buildingDraft.supportsSlope) {
                    return;
                }
                if (ground.isWater() && buildingDraft.needsLand) {
                    return;
                }
                if (building != null && !building.getDraft().destroyable) {
                    return;
                }
            }
            i3++;
        }
    }

    public final void setTileDestroyed(int i, int i2, boolean z, boolean z2, boolean z3, boolean z4, LuaValue luaValue) {
        String str;
        if (isWater(i, i2)) {
            return;
        }
        if (z2) {
            str = "destroyed tree";
        } else if (z3) {
            str = "destroyed building";
        } else if (z4) {
            str = "destroyed road";
        } else {
            str = "destroyed plain";
        }
        if (z) {
            str = str + " radioactive";
        }
        BuildingDraft buildingDraft = (BuildingDraft) Drafts.getRandomDraftWithTag(str, BuildingDraft.class);
        if (buildingDraft == null) {
            buildingDraft = (BuildingDraft) Drafts.ALL.get(z ? "$destroyedtileradioactive00" : "$destroyedtile");
        }
        BuildingDraft buildingDraft2 = buildingDraft;
        setTileDestroyed(i, i2, Resources.RND.nextInt(buildingDraft2.frames.length), buildingDraft2, luaValue);
    }

    public final void setTileDestroyed(int i, int i2, int i3, BuildingDraft buildingDraft, LuaValue luaValue) {
        int width = buildingDraft.getWidth(i3);
        int height = buildingDraft.getHeight(i3);
        for (int i4 = i; i4 < i + width; i4++) {
            for (int i5 = i2; i5 < i2 + height; i5++) {
                Ground ground = this.tiles.getGround(i4, i5);
                if (ground.isWater()) {
                    return;
                }
                if (!ground.isFlat() && !buildingDraft.supportsSlope) {
                    return;
                }
            }
        }
        build(buildingDraft, i, i2, i3, luaValue);
    }

    public void remove(int i, int i2, LuaValue luaValue) {
        if (isTree(i, i2)) {
            remove(this.tiles.getTree(i, i2), i, i2);
        }
        for (int i3 = 16; i3 >= 0; i3--) {
            if (this.tiles.getRoad(i, i2, i3) != null) {
                this.roadBuilder.remove(i, i2, i3);
            }
        }
        Building building = this.tiles.getBuilding(i, i2);
        if (building != null) {
            remove(building, luaValue);
        }
        for (int i4 = 2; i4 >= 0; i4--) {
            Wire wire = this.tiles.getWire(i, i2, i4);
            if (wire != null) {
                remove(wire, i, i2);
            }
        }
        Rail rail = this.tiles.getRail(i, i2);
        if (rail != null) {
            remove(rail);
        }
    }

    public void remove(int i, int i2, int i3, int i4, LuaValue luaValue) {
        for (int i5 = i2; i5 < i2 + i4; i5++) {
            for (int i6 = i; i6 < i + i3; i6++) {
                remove(i6, i5, luaValue);
            }
        }
    }

    public void remove(Tree tree, int i, int i2) {
        removeTileInfluence(i, i2);
        this.tiles.setTree(i, i2, null);
        addTileInfluence(i, i2);
    }

    public void removePunch(Wire wire, int i, int i2) {
        int frame = wire.getFrame();
        Ground ground = this.tiles.getGround(i, i2);
        if (Direction.opposite(frame) == frame && frame != 15 && ground.isFlat() && frame != 0) {
            wire.setPunch(false);
        } else {
            remove(wire, i, i2);
        }
    }

    public void remove(Wire wire, int i, int i2) {
        wire.setPunch(false);
        int i3 = wire.getDraft().level;
        LinkedList linkedList = new LinkedList();
        linkedList.add(Integer.valueOf((this.city.getWidth() * i2) + i));
        int iMin = i;
        int iMax = iMin;
        int iMin2 = i2;
        int iMax2 = iMin2;
        while (!linkedList.isEmpty()) {
            int iIntValue = ((Integer) linkedList.remove()).intValue();
            int width = iIntValue % this.city.getWidth();
            int width2 = iIntValue / this.city.getWidth();
            Wire wire2 = this.tiles.getWire(width, width2, i3);
            if (wire2 != null && (!wire2.isPunch() || getWireMask(wire2.getDraft(), width, width2) == 0)) {
                for (int i4 = 1; i4 <= 8; i4 *= 2) {
                    if (Direction.isIn(i4, wire2.getFrame()) && i3 >= 0) {
                        linkedList.add(Integer.valueOf(Direction.differenceX(i4) + width + ((Direction.differenceY(i4) + width2) * this.city.getWidth())));
                    }
                }
                iMin = Math.min(iMin, width);
                iMin2 = Math.min(iMin2, width2);
                iMax = Math.max(iMax, width);
                iMax2 = Math.max(iMax2, width2);
                this.city.getWires().remove(wire2);
                this.tiles.setWire(width, width2, i3, null);
            }
        }
        alignWires(iMin, iMin2, iMax, iMax2, i3);
    }

    public void removeRoad(int i, int i2, int i3) {
        this.roadBuilder.remove(i, i2, i3);
    }

    public void removeRoadDecoration(int i, int i2, int i3, int i4, LuaValue luaValue) {
        Road road = this.tiles.getRoad(i, i2, i3);
        if (road == null || i4 < 0 || i4 >= road.countDecorations()) {
            return;
        }
        RoadDecorationDraft decoration = road.getDecoration(i4);
        callEventMethod(decoration, i, i2, road.level, 6, luaValue);
        if (road.countDecorations() <= i4 || road.getDecoration(i4) != decoration) {
            return;
        }
        road.removeDecoration(i4);
    }

    public void removeAllRoadDecorations(int i, int i2, int i3, LuaValue luaValue) {
        Road road = this.tiles.getRoad(i, i2, i3);
        if (road != null) {
            int iCountDecorations = road.countDecorations() - 1;
            while (iCountDecorations >= 0) {
                RoadDecorationDraft decoration = road.getDecoration(iCountDecorations);
                int i4 = i;
                int i5 = i2;
                LuaValue luaValue2 = luaValue;
                callEventMethod(decoration, i4, i5, road.level, 6, luaValue2);
                if (road.countDecorations() > iCountDecorations && road.getDecoration(iCountDecorations) == decoration) {
                    road.removeDecoration(iCountDecorations);
                }
                iCountDecorations--;
                i = i4;
                i2 = i5;
                luaValue = luaValue2;
            }
        }
    }

    public void remove(Pipe pipe, int i, int i2) {
        Pipe pipe2 = this.tiles.getPipe(i, i2);
        if (pipe2 != null) {
            this.city.getPipes().remove(pipe2);
            this.tiles.setPipe(i, i2, null);
            alignPipes(i, i2);
        }
    }

    public void remove(BusStop busStop, int i, int i2) {
        removeTileInfluence(i, i2);
        Road road = this.tiles.getRoad(i, i2, busStop.level);
        if (road != null && road.getBusStop() == busStop) {
            road.setBusStop(null);
            this.city.getBusStops().remove(busStop);
        }
        addTileInfluence(i, i2);
    }

    public void rebuildAfterReUndo(Building building) {
        buildRaw(building);
        callEventMethod(building.getDraft(), building.getX(), building.getY(), 0, 9, LuaValue.NIL);
    }

    public void buildRaw(Building building) {
        if (building.getX() < 0 || building.getY() < 0 || building.getX() + building.getWidth() > this.city.getWidth() || building.getY() + building.getHeight() > this.city.getHeight()) {
            return;
        }
        building.setTerrainLevels(getMinTerrainLevel(building.getX(), building.getY(), building.getWidth(), building.getHeight()), getMaxTerrainLevel(building.getX(), building.getY(), building.getWidth(), building.getHeight()));
        this.city.getBuildings().add(building);
        for (int i = 0; i < building.getHeight(); i++) {
            for (int i2 = 0; i2 < building.getWidth(); i2++) {
                this.tiles.setBuilding(building.getX() + i2, building.getY() + i, building);
            }
        }
    }

    public void remove(Building building, LuaValue luaValue) {
        Building building2;
        int x = building.getX();
        int y = building.getY();
        BuildingDraft draft = building.getDraft();
        callEventMethod(draft, x, y, 0, 6, luaValue);
        if (draft.onDestroyTransitions != null) {
            TransitionRunner transitionRunner = new TransitionRunner(this.city);
            building2 = building;
            transitionRunner.accept(draft.onDestroyTransitions, building2, "remove " + building.getDraftId(), building.getDraftId(), draft.luaRepr, draft.isPrivileged());
            transitionRunner.run();
        } else {
            building2 = building;
        }
        removeTileInfluence(x, y, building2.getWidth(), building2.getHeight());
        for (int i = y; i < building2.getHeight() + y; i++) {
            for (int i2 = x; i2 < building2.getWidth() + x; i2++) {
                this.tiles.setBuilding(i2, i, null);
            }
        }
        this.city.getBuildings().remove(building2);
        addTileInfluence(x, y, building2.getWidth(), building2.getHeight());
    }

    public void removeRailPile(Rail rail) {
        if (!rail.isPile() || rail.getDraft().onGround) {
            return;
        }
        int align = rail.getAlign();
        if (Direction.countDirections(Direction.axis(align)) > 2 || Direction.countDirections(align) <= 1) {
            remove(rail);
        } else {
            rail.setPile(false);
        }
    }

    public void remove(Rail rail) {
        Rail rail2;
        this.tiles.setRail(rail.getX(), rail.getY(), null);
        this.city.getRails().remove(rail);
        for (int i = 1; i <= 8; i *= 2) {
            if (Direction.isIn(i, rail.getAlign())) {
                int i2 = 1;
                while (true) {
                    if (i2 < this.city.getWidth()) {
                        int x = rail.getX() + (Direction.differenceX(i) * i2);
                        int y = rail.getY() + (Direction.differenceY(i) * i2);
                        if (this.city.isValid(x, y) && (rail2 = this.tiles.getRail(x, y)) != null) {
                            rail2.setAlign(getRailMask(x, y) & rail2.getAlign());
                            if (!rail2.isPile()) {
                                if (this.tiles.hasOvergroundWire(x, y) || isRoad(x, y) || isTree(x, y) || isWater(x, y)) {
                                    this.city.getRails().remove(rail2);
                                    i2++;
                                } else {
                                    rail2.setPile(true);
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public void upgrade(Building building, UpgradeDraft upgradeDraft, LuaValue luaValue) {
        building.appendUpgrade(upgradeDraft, ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay());
        if (upgradeDraft.buildTime <= 0) {
            finishUpgrade(building, luaValue);
        }
    }

    public void finishUpgrade(Building building, LuaValue luaValue) {
        if (building.hasPendingUpgrades()) {
            removeTileInfluence(building.getX(), building.getY(), building.getWidth(), building.getHeight());
            UpgradeDraft pendingUpgrade = building.getPendingUpgrade();
            building.finalizeUpgrade(pendingUpgrade);
            this.city.getBuildings().onBuildingUpgraded(building, pendingUpgrade);
            addTileInfluence(building.getX(), building.getY(), building.getWidth(), building.getHeight());
            callEventMethod(building.getDraft(), building.getX(), building.getY(), 0, 7, luaValue);
        }
    }

    public void removeUpgrade(Building building, UpgradeDraft upgradeDraft) {
        if (!building.getUpgrades().isEmpty() || building.hasPendingUpgrades()) {
            removeTileInfluence(building.getX(), building.getY(), building.getWidth(), building.getHeight());
            building.finalizeUpgrade(upgradeDraft);
            building.removeUpgrade(upgradeDraft);
            addTileInfluence(building.getX(), building.getY(), building.getWidth(), building.getHeight());
        }
    }

    public boolean markZone(ZoneDraft zoneDraft, int i, int i2) {
        ZoneDraft zone;
        if (!this.city.isValid(i, i2) || (zone = this.tiles.getZone(i, i2)) == zoneDraft) {
            return false;
        }
        int[] zoneCounter = this.city.getZoneCounter();
        if (zone != null) {
            int i3 = zone.tempId;
            zoneCounter[i3] = zoneCounter[i3] - 1;
        }
        if (zoneDraft != null) {
            int i4 = zoneDraft.tempId;
            zoneCounter[i4] = zoneCounter[i4] + 1;
        }
        removeTileInfluence(i, i2);
        for (int i5 = 0; i5 < 3; i5++) {
            Wire wire = this.tiles.getWire(i, i2, i5);
            if (wire != null) {
                remove(wire, i, i2);
            }
        }
        if (isTree(i, i2)) {
            this.tiles.setTree(i, i2, null);
        }
        this.tiles.setZone(i, i2, zoneDraft);
        updateZoneSizeForInfluencedTiles(i, i2, 1, 1);
        addTileInfluence(i, i2);
        return true;
    }

    public boolean isNearWater(int i, int i2) {
        int i3 = i - 1;
        if (!isWater(i3, i2)) {
            int i4 = i + 1;
            if (!isWater(i4, i2)) {
                int i5 = i2 - 1;
                if (!isWater(i, i5)) {
                    int i6 = i2 + 1;
                    if (!isWater(i, i6) && !isWater(i3, i5) && !isWater(i4, i5) && !isWater(i3, i6) && !isWater(i4, i6)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public boolean isNearLand(int i, int i2) {
        return isLand(i + 1, i2) || isLand(i, i2 + 1) || isLand(i + (-1), i2) || isLand(i, i2 - 1);
    }

    public int getWaterMask(int i, int i2) {
        return (isWater(i + 1, i2) ? 1 : 0) + (isWater(i, i2 + 1) ? 2 : 0) + (isWater(i + (-1), i2) ? 4 : 0) + (isWater(i, i2 + (-1)) ? 8 : 0);
    }

    public int getWireMask(WireDraft wireDraft, int i, int i2) {
        return (isWireJoinable(wireDraft, i + 1, i2) ? 1 : 0) + (isWireJoinable(wireDraft, i, i2 + 1) ? 2 : 0) + (isWireJoinable(wireDraft, i + (-1), i2) ? 4 : 0) + (isWireJoinable(wireDraft, i, i2 + (-1)) ? 8 : 0);
    }

    public boolean isWireJoinable(WireDraft wireDraft, int i, int i2) {
        Wire wire;
        return this.city.isValid(i, i2) && (wire = this.tiles.getWire(i, i2, wireDraft.level)) != null && wire.getDraft() == wireDraft;
    }

    public int getPipeMask(PipeDraft pipeDraft, int i, int i2) {
        return (isPipeJoinable(pipeDraft, i + 1, i2) ? 1 : 0) + (isPipeJoinable(pipeDraft, i, i2 + 1) ? 2 : 0) + (isPipeJoinable(pipeDraft, i + (-1), i2) ? 4 : 0) + (isPipeJoinable(pipeDraft, i, i2 + (-1)) ? 8 : 0);
    }

    public boolean isPipeJoinable(PipeDraft pipeDraft, int i, int i2) {
        Pipe pipe;
        return this.city.isValid(i, i2) && (pipe = this.tiles.getPipe(i, i2)) != null && pipe.getDraft() == pipeDraft;
    }

    public void setBuildingPerformance(Building building, float f) {
        if (Math.abs(f - building.getPerformance()) > 0.001f) {
            removeTileInfluence(building.getX(), building.getY(), building.getWidth(), building.getHeight());
            building.setPerformance(f);
            addTileInfluence(building.getX(), building.getY(), building.getWidth(), building.getHeight());
        }
    }

    public int getRailMask(int i, int i2) {
        return (isRail(i + 1, i2) ? 1 : 0) + (isRail(i, i2 + 1) ? 2 : 0) + (isRail(i + (-1), i2) ? 4 : 0) + (isRail(i, i2 + (-1)) ? 8 : 0);
    }

    public boolean isRail(int i, int i2) {
        return isValid(i, i2) && this.tiles.getRail(i, i2) != null;
    }

    public int getZoneMask(int i, int i2, ZoneDraft zoneDraft) {
        int i3 = i + 1;
        int i4 = i2 + 1;
        int i5 = i - 1;
        int i6 = (isZone(i3, i2, zoneDraft) ? 1 : 0) + (isZone(i, i4, zoneDraft) ? 2 : 0) + (isZone(i5, i2, zoneDraft) ? 4 : 0);
        int i7 = i2 - 1;
        int i8 = i6 + (isZone(i, i7, zoneDraft) ? 8 : 0);
        if (i8 == 15) {
            return (!isZone(i3, i4, zoneDraft) ? 3 : 0) + (!isZone(i5, i4, zoneDraft) ? 6 : 0) + (!isZone(i5, i7, zoneDraft) ? 12 : 0) + (isZone(i3, i7, zoneDraft) ? 0 : 9);
        }
        return i8;
    }

    public boolean isZone(int i, int i2, ZoneDraft zoneDraft) {
        return isValid(i, i2) && this.tiles.getZone(i, i2) == zoneDraft;
    }

    public void adjustGroundWaterBorder(int i, int i2, int i3, int i4) {
        for (int i5 = i2; i5 < i2 + i4; i5++) {
            for (int i6 = i; i6 < i + i3; i6++) {
                adjustGroundWaterBorder(i6, i5);
            }
        }
    }

    public void adjustGroundWaterBorder(int i, int i2) {
        if (isValid(i, i2)) {
            Ground ground = this.tiles.getGround(i, i2);
            if (!ground.isWater() && isNearWater(i, i2)) {
                ground.setBorder(getWaterMask(i, i2));
            } else {
                ground.setBorder(-1);
            }
        }
    }

    public void updateZoneSizeForInfluencedTiles(int i, int i2, int i3, int i4) {
        calculateZoneSize(i - 17, i2 - 17, i3 + 18, i4 + 18);
    }

    public void calculateZoneSize(int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < i3; i5++) {
            for (int i6 = 0; i6 < i4; i6++) {
                int i7 = i + i5;
                int i8 = i2 + i6;
                if (this.city.isValid(i7, i8)) {
                    calculateZoneSize(i7, i8);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v13, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v22 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v9 */
    public void calculateZoneSize(int i, int i2) {
        int i3;
        int i4;
        int i5;
        ?? r7;
        int i6;
        if (this.city.isValid(i, i2)) {
            Ground ground = this.tiles.getGround(i, i2);
            int iFloor = (int) Math.floor(ground.getTerrainAverageHeight());
            int iCeil = (int) Math.ceil(ground.getTerrainAverageHeight());
            ZoneDraft zone = this.tiles.getZone(i, i2);
            if (zone != null) {
                int i7 = 1;
                int iMin = 16;
                int i8 = 1;
                int iMax = 0;
                for (int i9 = 16; i8 <= i9; i9 = 16) {
                    ?? r72 = i7;
                    int i10 = 0;
                    while (i10 < i8 - 1 && r72 != 0) {
                        int i11 = i + i10;
                        int i12 = (i2 + i8) - i7;
                        ?? IsValid = this.city.isValid(i11, i12);
                        if (IsValid != 0) {
                            Ground ground2 = this.tiles.getGround(i11, i12);
                            int i13 = this.tiles.getZone(i11, i12) == zone ? i7 : 0;
                            i6 = i7;
                            iFloor = Math.min(iFloor, (int) Math.floor(ground2.getTerrainAverageHeight()));
                            iCeil = Math.max(iCeil, (int) Math.ceil(ground2.getTerrainAverageHeight()));
                            IsValid = i13;
                        } else {
                            i6 = i7;
                        }
                        i10++;
                        i7 = i6;
                        r72 = IsValid;
                    }
                    int i14 = i7;
                    int iMax2 = iCeil;
                    int iMin2 = iFloor;
                    int i15 = 0;
                    ?? r73 = r72;
                    while (i15 < i8 && r73 != 0) {
                        int i16 = (i + i8) - 1;
                        int i17 = i2 + i15;
                        boolean zIsValid = this.city.isValid(i16, i17);
                        if (zIsValid) {
                            Ground ground3 = this.tiles.getGround(i16, i17);
                            r7 = this.tiles.getZone(i16, i17) == zone ? i14 : 0;
                            iMin2 = Math.min(iMin2, (int) Math.floor(ground3.getTerrainAverageHeight()));
                            iMax2 = Math.max(iMax2, (int) Math.ceil(ground3.getTerrainAverageHeight()));
                        } else {
                            r7 = zIsValid;
                        }
                        i15++;
                        r73 = r7;
                    }
                    if (r73 == 0) {
                        break;
                    }
                    if (zone.rci && zone.needsRoad) {
                        i5 = i8;
                        if (hasRoadTransfer(i, i2, i5, i5, iMin2 - 1, iMax2, 29360356L)) {
                        }
                        i8 = i5 + 1;
                        iCeil = iMax2;
                        iFloor = iMin2;
                        i7 = i14;
                    } else {
                        i5 = i8;
                    }
                    iMin = Math.min(iMin, i5);
                    iMax = Math.max(iMax, i5);
                    i8 = i5 + 1;
                    iCeil = iMax2;
                    iFloor = iMin2;
                    i7 = i14;
                }
                i3 = iMin;
                i4 = iMax;
            } else {
                i3 = 16;
                i4 = 0;
            }
            this.tiles.setMinMaxZoneSizes(i, i2, i3, i4);
        }
    }

    public void addTileInfluence(int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < i3; i5++) {
            for (int i6 = 0; i6 < i4; i6++) {
                addTileInfluence(i + i5, i2 + i6);
            }
        }
    }

    public void addTileInfluence(int i, int i2) {
        if (this.city.isValid(i, i2) && ensureInfluence()) {
            int modifyCounter = this.tiles.getModifyCounter(i, i2);
            if (modifyCounter == 1) {
                this.influence.addBaseInfluenceFromTile(i, i2);
            } else {
                Gdx.app.error("CityModifier", "Wrong modify counter on adding! " + modifyCounter);
                if (TheoTown.DEBUG) {
                    throw new IllegalStateException("Wrong modify counter on adding! " + modifyCounter);
                }
            }
            this.tiles.setModifyCounter(i, i2, modifyCounter - 1);
        }
    }

    public void removeTileInfluence(int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < i3; i5++) {
            for (int i6 = 0; i6 < i4; i6++) {
                removeTileInfluence(i + i5, i2 + i6);
            }
        }
    }

    public void removeTileInfluence(int i, int i2) {
        if (this.city.isValid(i, i2) && ensureInfluence()) {
            int modifyCounter = this.tiles.getModifyCounter(i, i2);
            if (modifyCounter == 0) {
                this.influence.removeBaseInfluenceFromTile(i, i2);
            } else {
                Gdx.app.error("CityModifier", "Wrong modify counter on removing! " + modifyCounter);
                if (TheoTown.DEBUG) {
                    throw new IllegalStateException("Wrong modify counter on removing! " + modifyCounter);
                }
            }
            this.tiles.setModifyCounter(i, i2, modifyCounter + 1);
        }
    }

    public long getPrice(ZoneDraft zoneDraft, int i) {
        return ((DefaultBudget) this.city.getComponent(0)).getPrice(zoneDraft, i);
    }

    public long getPrice(BuildingDraft buildingDraft, int i) {
        return ((DefaultBudget) this.city.getComponent(0)).getPrice(buildingDraft, i);
    }

    public long getPrice(WireDraft wireDraft, int i, int i2, int i3, int i4) {
        Wire wire;
        int i5 = i3 - i;
        int iSignum = (int) Math.signum(i5);
        int i6 = i4 - i2;
        int iSignum2 = (int) Math.signum(i6);
        int iMax = Math.max(Math.abs(i5), Math.abs(i6));
        int i7 = wireDraft.level;
        int i8 = 0;
        for (int i9 = 0; i9 <= iMax; i9++) {
            int i10 = (i9 * iSignum) + i;
            int i11 = (i9 * iSignum2) + i2;
            if (this.city.isValid(i10, i11) && ((wire = this.tiles.getWire(i10, i11, i7)) == null || wire.getDraft() != wireDraft)) {
                i8++;
            }
        }
        return ((DefaultBudget) this.city.getComponent(0)).getPrice(wireDraft, i8);
    }

    public long getPrice(PipeDraft pipeDraft, int i, int i2, int i3, int i4) {
        Pipe pipe;
        int i5 = i3 - i;
        int iSignum = (int) Math.signum(i5);
        int i6 = i4 - i2;
        int iSignum2 = (int) Math.signum(i6);
        int iMax = Math.max(Math.abs(i5), Math.abs(i6));
        int i7 = 0;
        for (int i8 = 0; i8 <= iMax; i8++) {
            int i9 = (i8 * iSignum) + i;
            int i10 = (i8 * iSignum2) + i2;
            if (this.city.isValid(i9, i10) && ((pipe = this.tiles.getPipe(i9, i10)) == null || pipe.getDraft() != pipeDraft)) {
                i7++;
            }
        }
        return ((DefaultBudget) this.city.getComponent(0)).getPrice(pipeDraft, i7);
    }

    public long getPrice(TreeDraft treeDraft, int i, int i2) {
        if (!this.city.isValid(i, i2)) {
            return 0L;
        }
        Tree tree = this.tiles.getTree(i, i2);
        if (tree == null || tree.getDraft() != treeDraft) {
            return ((DefaultBudget) this.city.getComponent(0)).getPrice(treeDraft);
        }
        return 0L;
    }

    public long getPrice(BusStopDraft busStopDraft, int i, int i2) {
        return ((DefaultBudget) this.city.getComponent(0)).getPrice(busStopDraft);
    }

    public long getPriceForTerrain(boolean z) {
        return ((DefaultBudget) this.city.getComponent(0)).getPriceForTerrain(z);
    }

    public long getPrice(RailDraft railDraft, int i, int i2, int i3, int i4) {
        return ((DefaultBudget) this.city.getComponent(0)).getPrice(railDraft, Math.max(Math.abs(i3 - i), Math.abs(i4 - i2)), 0);
    }

    public boolean isTerrainHeightUnlocked(int i, int i2) {
        if (this.city.isValid(i, i2)) {
            return this.tiles.getBuilding(i, i2) == null && !this.tiles.hasVisibleRoad(i, i2) && this.tiles.getRail(i, i2) == null;
        }
        return true;
    }

    public void setTerrainHeight(int i, int i2, int i3, int i4, int i5) {
        if (this.city.isValid(i, i2) && isTerrainHeightUnlocked(i, i2)) {
            this.tiles.getGround(i, i2).setTerrainHeight(i4, i5, (byte) i3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setTerrainHeight(int r18, int r19, int r20, vm2.LuaValue r21) {
        /*
            Method dump skipped, instruction units count: 307
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.city.modifier.CityModifier.setTerrainHeight(int, int, int, vm2.LuaValue):void");
    }

    public boolean isRoadDecorationBuildable(RoadDecorationDraft roadDecorationDraft, Road road) {
        return road != null && road.dLevel == 0 && roadDecorationDraft != null && roadDecorationDraft.fitsRoad(road.getFlags(), road.getAlign());
    }

    public void buildRoadDecoration(RoadDecorationDraft roadDecorationDraft, Road road, int i, LuaValue luaValue, boolean z) {
        if (!z || (roadDecorationDraft != null && roadDecorationDraft.exclusive)) {
            removeAllRoadDecorations(road.getX(), road.getY(), road.level, luaValue);
        }
        if (roadDecorationDraft != null) {
            for (int iCountDecorations = road.countDecorations() - 1; iCountDecorations >= 0; iCountDecorations--) {
                RoadDecorationDraft decoration = road.getDecoration(iCountDecorations);
                if (decoration != null && (decoration.occupationGroup.equals(roadDecorationDraft.occupationGroup) || decoration.exclusive || decoration == roadDecorationDraft)) {
                    removeRoadDecoration(road.getX(), road.getY(), road.level, iCountDecorations, luaValue);
                }
            }
            if (i >= 0) {
                road.addDecoration(roadDecorationDraft, i);
            } else {
                road.addDecoration(roadDecorationDraft);
            }
            if (roadDecorationDraft.onBuiltTransitions != null) {
                TransitionRunner transitionRunner = new TransitionRunner(this.city);
                transitionRunner.accept(roadDecorationDraft.onBuiltTransitions, road, "build " + roadDecorationDraft.id, roadDecorationDraft.luaRepr, roadDecorationDraft.isPrivileged());
                transitionRunner.run();
            }
            callEventMethod(roadDecorationDraft, road.getX(), road.getY(), road.level, 0, luaValue);
        }
    }

    public int getMaxTerrainLevel(int i, int i2, int i3, int i4) {
        int iMax = 0;
        for (int i5 = i2; i5 < i2 + i4; i5++) {
            for (int i6 = i; i6 < i + i3; i6++) {
                if (this.city.isValid(i6, i5)) {
                    iMax = Math.max(iMax, (int) Math.ceil(this.tiles.getGround(i6, i5).getTerrainAverageHeight()));
                }
            }
        }
        return iMax;
    }

    public int getMinTerrainLevel(int i, int i2, int i3, int i4) {
        int iMin = 15;
        for (int i5 = i2; i5 < i2 + i4; i5++) {
            for (int i6 = i; i6 < i + i3; i6++) {
                if (this.city.isValid(i6, i5)) {
                    iMin = Math.min(iMin, (int) Math.floor(this.tiles.getGround(i6, i5).getTerrainAverageHeight()));
                }
            }
        }
        return iMin;
    }

    public boolean containsFenceWithin(int i, int i2, int i3, int i4) {
        int i5 = i2;
        while (true) {
            int i6 = i2 + i4;
            if (i5 >= i6) {
                while (i2 < i6 - 1) {
                    for (int i7 = i; i7 < i + i3; i7++) {
                        if (this.city.isValid(i7, i2) && this.tiles.getFence(i7, i2, 1) != null) {
                            return true;
                        }
                    }
                    i2++;
                }
                return false;
            }
            for (int i8 = i; i8 < (i + i3) - 1; i8++) {
                if (this.city.isValid(i8, i5) && this.tiles.getFence(i8, i5, 0) != null) {
                    return true;
                }
            }
            i5++;
        }
    }

    public void removeFenceWithin(int i, int i2, int i3, int i4) {
        int i5;
        if (i == 0) {
            i--;
            i3++;
        }
        if (i2 == 0) {
            i2--;
            i4++;
        }
        if (i + i3 == this.city.getWidth()) {
            i3++;
        }
        if (i2 + i4 == this.city.getHeight()) {
            i4++;
        }
        int i6 = i2;
        while (true) {
            i5 = i2 + i4;
            if (i6 >= i5) {
                break;
            }
            int i7 = i;
            while (i7 < (i + i3) - 1) {
                if (this.city.isValid(i7, i6)) {
                    this.tiles.setFence(i7, i6, 0, null);
                }
                i7++;
                if (this.city.isValid(i7, i6)) {
                    this.tiles.setFence(i7, i6, 2, null);
                }
            }
            i6++;
        }
        while (i2 < i5 - 1) {
            for (int i8 = i; i8 < i + i3; i8++) {
                if (this.city.isValid(i8, i2)) {
                    this.tiles.setFence(i8, i2, 1, null);
                }
                int i9 = i2 + 1;
                if (this.city.isValid(i8, i9)) {
                    this.tiles.setFence(i8, i9, 3, null);
                }
            }
            i2++;
        }
    }

    public void buildFenceAround(FenceDraft fenceDraft, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = i + i5;
            if (canBuildFence(fenceDraft, i6, i2, 3)) {
                buildFence(fenceDraft, i6, i2, 3);
            }
            int i7 = (i2 + i4) - 1;
            if (canBuildFence(fenceDraft, i6, i7, 1)) {
                buildFence(fenceDraft, i6, i7, 1);
            }
        }
        for (int i8 = 0; i8 < i4; i8++) {
            int i9 = i2 + i8;
            if (canBuildFence(fenceDraft, i, i9, 2)) {
                buildFence(fenceDraft, i, i9, 2);
            }
            int i10 = (i + i3) - 1;
            if (canBuildFence(fenceDraft, i10, i9, 0)) {
                buildFence(fenceDraft, i10, i9, 0);
            }
        }
    }

    public void buildFence(FenceDraft fenceDraft, int i, int i2, int i3) {
        int iFromIndex = Direction.fromIndex(i3);
        int iDifferenceX = Direction.differenceX(iFromIndex);
        int iDifferenceY = Direction.differenceY(iFromIndex);
        if (this.city.isValid(i, i2)) {
            this.tiles.setFence(i, i2, i3, fenceDraft);
        }
        int i4 = i + iDifferenceX;
        int i5 = i2 + iDifferenceY;
        if (this.city.isValid(i4, i5)) {
            this.tiles.setFence(i4, i5, (i3 + 2) % 4, fenceDraft);
        }
    }

    public boolean hasFence(int i, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            if (getFence(i, i2, i3) != null) {
                return true;
            }
        }
        return false;
    }

    public FenceDraft getFence(int i, int i2, int i3) {
        int iFromIndex = Direction.fromIndex(i3);
        int iDifferenceX = Direction.differenceX(iFromIndex);
        int iDifferenceY = Direction.differenceY(iFromIndex);
        if (this.city.isValid(i, i2)) {
            return this.tiles.getFence(i, i2, i3);
        }
        int i4 = i + iDifferenceX;
        int i5 = i2 + iDifferenceY;
        if (this.city.isValid(i4, i5)) {
            return this.tiles.getFence(i4, i5, (i3 + 2) % 4);
        }
        return null;
    }

    public boolean canBuildFence(FenceDraft fenceDraft, int i, int i2, int i3) {
        int iFromIndex = Direction.fromIndex(i3);
        int iDifferenceX = Direction.differenceX(iFromIndex);
        int iDifferenceY = Direction.differenceY(iFromIndex);
        if (!this.city.isValid(i, i2)) {
            int i4 = i + iDifferenceX;
            int i5 = i2 + iDifferenceY;
            return this.city.isValid(i4, i5) && !this.tiles.getGround(i4, i5).isWater();
        }
        Ground ground = this.tiles.getGround(i, i2);
        Building building = this.tiles.getBuilding(i, i2);
        Road road = this.tiles.getRoad(i, i2, 0);
        if (road != null && Direction.isIn(iFromIndex, road.getAlign())) {
            return false;
        }
        int i6 = i + iDifferenceX;
        int i7 = i2 + iDifferenceY;
        if (this.city.isValid(i6, i7)) {
            Ground ground2 = this.tiles.getGround(i6, i7);
            Building building2 = this.tiles.getBuilding(i6, i7);
            Road road2 = this.tiles.getRoad(i6, i7, 0);
            if (road2 != null && Direction.isIn(Direction.opposite(iFromIndex), road2.getAlign())) {
                return false;
            }
            if (building != null && building2 == building) {
                return false;
            }
            if (ground.isWater() && ground2.isWater()) {
                return false;
            }
        } else if (ground.isWater()) {
            return false;
        }
        return true;
    }

    public void removeFences(int i, int i2) {
        removeFence(i, i2, 0);
        removeFence(i, i2, 1);
        removeFence(i, i2, 2);
        removeFence(i, i2, 3);
    }

    public void removeFence(int i, int i2, int i3) {
        int iFromIndex = Direction.fromIndex(i3);
        int iDifferenceX = Direction.differenceX(iFromIndex);
        int iDifferenceY = Direction.differenceY(iFromIndex);
        if (this.city.isValid(i, i2)) {
            this.tiles.setFence(i, i2, i3, null);
        }
        int i4 = i + iDifferenceX;
        int i5 = i2 + iDifferenceY;
        if (this.city.isValid(i4, i5)) {
            this.tiles.setFence(i4, i5, (i3 + 2) % 4, null);
        }
    }

    public void updateFenceOnTile(int i, int i2) {
        if (this.city.isValid(i, i2)) {
            for (int i3 = 0; i3 < 4; i3++) {
                FenceDraft fence = this.tiles.getFence(i, i2, i3);
                if (fence != null && !canBuildFence(fence, i, i2, i3)) {
                    removeFence(i, i2, i3);
                }
            }
        }
    }

    public final boolean ensureInfluence() {
        if (this.influence == null) {
            CityComponent component = this.city.getComponent(2);
            if (component instanceof DefaultInfluence) {
                this.influence = (DefaultInfluence) component;
            }
        }
        return this.influence != null;
    }
}
