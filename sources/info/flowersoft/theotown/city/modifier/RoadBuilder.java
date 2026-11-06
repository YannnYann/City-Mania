package info.flowersoft.theotown.city.modifier;

import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Wire;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import java.util.ArrayList;
import java.util.List;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class RoadBuilder extends LineBuilder {
    public final List<Road> addedRoads;
    public int bridgeTiles0;
    public int bridgeTiles1;
    public RoadDraft draft;
    public MethodCluster eventMethods;
    public final boolean events;
    public MethodCluster isBuildableCluster;
    public int landTiles;
    public final List<Road> removedRoads;
    public LuaValue sender;
    public int tunnelTiles;

    @Override // info.flowersoft.theotown.city.modifier.LineBuilder
    public void beginDestroy() {
    }

    @Override // info.flowersoft.theotown.city.modifier.LineBuilder
    public void endDestroy() {
    }

    public RoadBuilder(CityModifier cityModifier, boolean z) {
        super(cityModifier);
        this.addedRoads = new ArrayList();
        this.removedRoads = new ArrayList();
        this.events = z;
        setMinLevel(-2);
        setMaxLevel(16);
    }

    public void setDraft(RoadDraft roadDraft, LuaValue luaValue) {
        this.draft = roadDraft;
        this.sender = luaValue;
        if (roadDraft != null) {
            setMinLevel(roadDraft.minLevel);
            setMaxLevel(roadDraft.maxLevel);
            this.eventMethods = ScriptingEnvironment.getInstance().getMethodClusterOrNull("event", roadDraft);
            this.isBuildableCluster = ScriptingEnvironment.getInstance().getMethodClusterOrNull("isBuildable", roadDraft);
            return;
        }
        this.eventMethods = null;
        this.isBuildableCluster = null;
    }

    public final int getUpDir(int i) {
        if (i > 0) {
            return this.dir;
        }
        if (i < 0) {
            return Direction.opposite(this.dir);
        }
        return 0;
    }

    @Override // info.flowersoft.theotown.city.modifier.LineBuilder
    public void beginBuild() {
        this.addedRoads.clear();
        this.removedRoads.clear();
    }

    @Override // info.flowersoft.theotown.city.modifier.LineBuilder
    public boolean canBuildOnTile(int i, int i2, int i3, int i4, int i5) {
        int i6;
        Ground ground = this.city.getTiles().getGround(i2, i3);
        if (i4 == 0 && ground.isWater()) {
            return false;
        }
        if ((i4 > 0 && !this.draft.hasBridge()) || i4 < -2 || i4 > 16) {
            return false;
        }
        if (!ground.isFlat() && !this.draft.supportsSlope) {
            return false;
        }
        if (!ground.isFlat() && i4 == 0 && (Direction.cut(Direction.inverse(Direction.axis(this.dir)), ground.getUpDirs()) != 0 || this.tiles.getRoad(i2, i3, i4 + 1) != null)) {
            return false;
        }
        if (!ground.isFlat() && i4 == 0 && ground.getPotentialUpDirs() == 15) {
            return false;
        }
        if (i > 0 && i5 != 0 && getDLevel(i - 1) == (-i5) && i4 >= 0) {
            return false;
        }
        if ((i4 == -1 || i4 == 0) && i5 > 0 && Direction.isIn(Direction.opposite(this.dir), ground.getUpDirs())) {
            return false;
        }
        if ((i4 == -1 || i4 == 0) && i5 < 0 && Direction.isIn(this.dir, ground.getUpDirs())) {
            return false;
        }
        if (i4 == 0 && ground.isRift()) {
            return false;
        }
        if (!ground.isFlat() && this.draft.bridgeFrames == null && (getUpDir(i5) != ground.getUpDirs() || Direction.countDirections(ground.getUpDirs()) != 1)) {
            return false;
        }
        if (!ground.isFlat() && i4 == 0 && !Direction.isIn(this.dir, Direction.axis(ground.getPotentialUpDirs()))) {
            return false;
        }
        if (i4 == -1 && i5 != 0 && !ground.isFlat() && !Direction.isIn(getUpDir(i5), ground.getUpDirs())) {
            return false;
        }
        Road road = this.tiles.getRoad(i2, i3, i4);
        if (road != null && road.draft.joinGroup != this.draft.joinGroup) {
            return false;
        }
        if (i4 > 0 && ((i == 0 || i == this.length - 1) && this.tiles.hasVisibleRoad(i2, i3) && road == null)) {
            return false;
        }
        Building building = this.tiles.getBuilding(i2, i3);
        if (building != null && ((i4 >= 0 || (i4 == -1 && i5 != 0)) && (!building.getDraft().easyRemove || building.isLocked() || building.isUntouchable()))) {
            return false;
        }
        if (this.tiles.getRail(i2, i3) != null && (i4 == 2 || (i4 == 1 && i5 != 0))) {
            return false;
        }
        if (i4 >= 0 || (i4 == -1 && i5 != 0)) {
            ZoneDraft zone = this.tiles.getZone(i2, i3);
            Road topRoad = this.tiles.getTopRoad(i2, i3);
            if ((topRoad == null || (((i6 = topRoad.absLevel) < 0 && (i6 != -1 || topRoad.dLevel == 0)) || allowedByZone(topRoad.draft, zone))) && !allowedByZone(this.draft, zone)) {
                return false;
            }
        }
        if (i5 == 0) {
            Road road2 = this.tiles.getRoad(i2, i3, i4 - 1);
            if (road2 != null && road2.dLevel != 0) {
                return false;
            }
            Road road3 = this.tiles.getRoad(i2, i3, i4);
            if (road3 != null && road3.dLevel != 0) {
                return false;
            }
        } else {
            if (i4 >= 16) {
                return false;
            }
            if (i4 == -1 && (ground.isWater() || ground.isBorder())) {
                return false;
            }
            Road road4 = this.tiles.getRoad(i2, i3, i4);
            Road road5 = this.tiles.getRoad(i2, i3, i4 + 1);
            if ((road4 != null && road4.dLevel != getUpDir(i5)) || road5 != null) {
                return false;
            }
        }
        Wire wire = this.tiles.getWire(i2, i3, 1);
        if (wire != null && wire.isPunch()) {
            return false;
        }
        MethodCluster methodCluster = this.isBuildableCluster;
        return methodCluster == null || methodCluster.invoke(i2, i3, i4);
    }

    public final boolean allowedByZone(RoadDraft roadDraft, ZoneDraft zoneDraft) {
        ZoneDraft zoneDraft2 = roadDraft.zone;
        if (zoneDraft2 == null || zoneDraft2.isSuperiorTo(zoneDraft)) {
            return (roadDraft.zone == null && zoneDraft != null && zoneDraft.persistent) ? false : true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:136:0x0230  */
    @Override // info.flowersoft.theotown.city.modifier.LineBuilder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void buildOnTile(int r24, int r25, int r26, int r27, int r28) {
        /*
            Method dump skipped, instruction units count: 701
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.city.modifier.RoadBuilder.buildOnTile(int, int, int, int, int):void");
    }

    public final void applyDecorations(List<RoadDraft.AutoDecoration> list, Road road, int i) {
        Road road2;
        int i2 = 0;
        while (i2 < list.size()) {
            RoadDraft.AutoDecoration autoDecoration = list.get(i2);
            if (autoDecoration.check(road.getX(), road.getY(), i)) {
                road2 = road;
                this.modifier.buildRoadDecoration(autoDecoration.draft, road2, -1, this.sender, Settings.multiRoadDecorationSupport);
            } else {
                road2 = road;
            }
            i2++;
            road = road2;
        }
    }

    public int getRoadMask(int i, int i2, int i3, boolean z, boolean z2) {
        return (isRoadJoinable(i + 1, i2, 4, i3, z, z2) ? 1 : 0) + (isRoadJoinable(i, i2 + 1, 8, i3, z, z2) ? 2 : 0) + (isRoadJoinable(i + (-1), i2, 1, i3, z, z2) ? 4 : 0) + (isRoadJoinable(i, i2 + (-1), 2, i3, z, z2) ? 8 : 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x006c, code lost:
    
        if (r6 == info.flowersoft.theotown.city.Direction.opposite(r8)) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isRoadJoinable(int r6, int r7, int r8, int r9, boolean r10, boolean r11) {
        /*
            r5 = this;
            info.flowersoft.theotown.city.City r0 = r5.city
            boolean r0 = r0.isValid(r6, r7)
            r1 = 0
            if (r0 == 0) goto L81
            info.flowersoft.theotown.city.City r0 = r5.city
            info.flowersoft.theotown.city.Tiles r0 = r0.getTiles()
            int r0 = r0.getBaseTerrainHeight(r6, r7)
            int r0 = r9 - r0
            info.flowersoft.theotown.city.Tiles r2 = r5.tiles
            info.flowersoft.theotown.city.objects.Road r2 = r2.getRoad(r6, r7, r0)
            r3 = 1
            if (r2 != 0) goto L2f
            r4 = -2
            if (r0 <= r4) goto L2f
            info.flowersoft.theotown.city.Tiles r2 = r5.tiles
            int r0 = r0 - r3
            info.flowersoft.theotown.city.objects.Road r2 = r2.getRoad(r6, r7, r0)
            if (r2 == 0) goto L2f
            int r6 = r2.dLevel
            if (r6 == r8) goto L2f
            r2 = 0
        L2f:
            if (r2 == 0) goto L81
            info.flowersoft.theotown.draft.RoadDraft r6 = r5.draft
            if (r6 == 0) goto L3e
            info.flowersoft.theotown.draft.RoadDraft r7 = r2.draft
            int r7 = r7.joinGroup
            int r6 = r6.joinGroup
            if (r7 == r6) goto L3e
            return r1
        L3e:
            info.flowersoft.theotown.draft.RoadDraft r6 = r2.draft
            boolean r7 = r6.autoJoin
            if (r7 == 0) goto L48
            boolean r7 = info.flowersoft.theotown.resources.Settings.roadAutoJoin
            if (r7 != 0) goto L4c
        L48:
            boolean r6 = r6.devoted
            if (r6 == 0) goto L4e
        L4c:
            if (r11 != 0) goto L5a
        L4e:
            if (r10 == 0) goto L5a
            int r6 = r2.getAlign()
            boolean r6 = info.flowersoft.theotown.city.Direction.isIn(r8, r6)
            if (r6 == 0) goto L81
        L5a:
            int r6 = r2.dLevel
            if (r6 == 0) goto L6e
            int r7 = r2.absLevel
            int r10 = r7 + 1
            if (r9 != r10) goto L66
            if (r6 == r8) goto L6e
        L66:
            if (r9 != r7) goto L81
            int r7 = info.flowersoft.theotown.city.Direction.opposite(r8)
            if (r6 != r7) goto L81
        L6e:
            info.flowersoft.theotown.city.objects.BusStop r6 = r2.getBusStop()
            if (r6 == 0) goto L80
            int r6 = r2.getAlign()
            boolean r6 = info.flowersoft.theotown.city.Direction.isIn(r8, r6)
            if (r6 == 0) goto L7f
            goto L80
        L7f:
            return r1
        L80:
            return r3
        L81:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.city.modifier.RoadBuilder.isRoadJoinable(int, int, int, int, boolean, boolean):boolean");
    }

    @Override // info.flowersoft.theotown.city.modifier.LineBuilder
    public long getPriceForTile(int i, int i2, int i3, int i4, int i5) {
        Road road = this.tiles.getRoad(i2, i3, i4);
        if (road != null && !this.draft.canReplace(road.draft)) {
            return 0L;
        }
        if (i4 == 0) {
            this.landTiles++;
        } else if (i4 == 1) {
            this.bridgeTiles0++;
        } else if (i4 >= 2) {
            this.bridgeTiles1++;
        } else {
            this.tunnelTiles++;
        }
        if (GameHandler.getInstance().getTimedEffectManager().tunnelsAreFree()) {
            this.bridgeTiles1 += this.tunnelTiles;
            this.tunnelTiles = 0;
        }
        return 0L;
    }

    @Override // info.flowersoft.theotown.city.modifier.LineBuilder
    public long getDiamondPriceForTile(int i, int i2, int i3, int i4, int i5) {
        Road road = this.tiles.getRoad(i2, i3, i4);
        if (GameHandler.getInstance().getTimedEffectManager().tunnelsAreFree()) {
            return 0L;
        }
        int i6 = (road == null || i4 >= 0) ? 0 : (-i4) * road.draft.tunnelDiamondPrice;
        if (i4 < 0) {
            return Math.max(((-i4) * this.draft.tunnelDiamondPrice) - i6, 0);
        }
        return 0L;
    }

    @Override // info.flowersoft.theotown.city.modifier.LineBuilder
    public void beforePriceCalculation() {
        this.tunnelTiles = 0;
        this.bridgeTiles1 = 0;
        this.bridgeTiles0 = 0;
        this.landTiles = 0;
    }

    @Override // info.flowersoft.theotown.city.modifier.LineBuilder
    public long afterPriceCalculation() {
        return ((DefaultBudget) this.city.getComponent(0)).getPrice(this.draft, this.landTiles, this.bridgeTiles0, this.bridgeTiles1, this.tunnelTiles);
    }

    @Override // info.flowersoft.theotown.city.modifier.LineBuilder
    public void processBuiltTile(int i, int i2, int i3, int i4, int i5) {
        if (i4 < 0 && (i4 != -1 || i5 == 0)) {
            return;
        }
        while (true) {
            i4++;
            if (i4 > 16) {
                return;
            }
            if (this.tiles.getRoad(i2, i3, i4) != null) {
                removePile(i2, i3, i4);
            }
        }
    }

    @Override // info.flowersoft.theotown.city.modifier.LineBuilder
    public void processNeighborOfBuiltTile(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int iUnion;
        MethodCluster methodClusterOrNull;
        Road road = this.tiles.getRoad(i2, i3, i4);
        if (road != null) {
            int iFromDifferential = Direction.fromDifferential(i6 - i2, i7 - i3);
            Road absoluteRoad = this.tiles.getAbsoluteRoad(i6, i7, road.absLevel);
            int i9 = road.dLevel;
            if (i9 != 0 && i9 == iFromDifferential) {
                absoluteRoad = this.tiles.getAbsoluteRoad(i6, i7, road.absLevel + 1);
            }
            if (absoluteRoad == null && road.dLevel == 0 && (absoluteRoad = this.tiles.getAbsoluteRoad(i6, i7, road.absLevel - 1)) != null && absoluteRoad.dLevel != Direction.opposite(iFromDifferential)) {
                absoluteRoad = null;
            }
            if (absoluteRoad == null || !Direction.isIn(iFromDifferential, road.getAlign()) || (iUnion = Direction.union(absoluteRoad.getAlign(), Direction.opposite(iFromDifferential))) == absoluteRoad.getAlign()) {
                return;
            }
            absoluteRoad.alignTo(iUnion);
            if (this.events) {
                if (absoluteRoad.draft == this.draft) {
                    methodClusterOrNull = this.eventMethods;
                } else {
                    methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("event", absoluteRoad.draft);
                }
                if (methodClusterOrNull != null) {
                    methodClusterOrNull.invoke(i6, i7, absoluteRoad.level, 10);
                }
            }
        }
    }

    @Override // info.flowersoft.theotown.city.modifier.LineBuilder
    public void endBuild() {
        if (this.removedRoads.isEmpty()) {
            return;
        }
        this.city.getRoads().removeAll(this.removedRoads);
    }

    @Override // info.flowersoft.theotown.city.modifier.LineBuilder
    public void destroyTile(int i, int i2, int i3) {
        Road road = this.tiles.getRoad(i, i2, i3);
        if (road != null) {
            callRoadRemoveEvent(road, i, i2, i3);
            this.city.getRoads().remove(road);
            this.tiles.setRoad(i, i2, i3, null);
            return;
        }
        int i4 = i3 - 1;
        Road road2 = this.tiles.getRoad(i, i2, i4);
        if (road2 == null || road2.dLevel == 0) {
            return;
        }
        callRoadRemoveEvent(road2, i, i2, i3);
        this.city.getRoads().remove(road2);
        this.tiles.setRoad(i, i2, i4, null);
    }

    public final void callRoadRemoveEvent(Road road, int i, int i2, int i3) {
        for (int iCountDecorations = road.countDecorations() - 1; iCountDecorations >= 0; iCountDecorations--) {
            RoadDecorationDraft decoration = road.getDecoration(iCountDecorations);
            if (decoration != null) {
                this.modifier.callEventMethod(decoration, i, i2, road.absLevel, 6, this.sender);
            }
        }
        this.modifier.callEventMethod(road.draft, i, i2, road.absLevel, 6, this.sender);
    }

    @Override // info.flowersoft.theotown.city.modifier.LineBuilder
    public boolean processNeighborOfDestroyedTile(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        int i8;
        int i9;
        Road road = this.tiles.getRoad(i4, i5, i6);
        int iFromDifferential = Direction.fromDifferential(i - i4, i2 - i5);
        if (road == null) {
            return true;
        }
        if (road.dLevel == 0) {
            i8 = i4;
            i9 = i5;
            road.alignTo(Direction.cut(road.getAlign(), getRoadMask(i8, i9, road.absLevel, false, true)));
        } else {
            i8 = i4;
            i9 = i5;
        }
        if (i6 <= 0 || isSupported(i8, i9, i6) || tryToSetPile(i8, i9, i6)) {
            return (i3 > 0 && road.dLevel == iFromDifferential && road.absLevel - 1 == i7) ? false : true;
        }
        return false;
    }

    public final boolean isSupported(int i, int i2, int i3) {
        Road road = this.tiles.getRoad(i, i2, i3);
        if (road != null && !road.isPile()) {
            int align = road.getAlign();
            if (Direction.countDirections(align) <= 2 && (Direction.isCorner(align) || Direction.countDirections(align) != 2)) {
                return false;
            }
        }
        return true;
    }

    public final boolean tryToSetPile(int i, int i2, int i3) {
        Road road = this.tiles.getRoad(i, i2, i3);
        if (road == null || !canSetPile(i, i2, i3)) {
            return false;
        }
        road.setPile(true);
        return true;
    }

    public final boolean canSetPile(int i, int i2, int i3) {
        Road road = this.tiles.getRoad(i, i2, -1);
        if (road != null && road.dLevel != 0) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (this.tiles.getRoad(i, i2, i4) != null) {
                return false;
            }
        }
        return this.tiles.getTree(i, i2) == null && this.tiles.getBuilding(i, i2) == null && !this.tiles.hasOvergroundWire(i, i2) && (i3 < 2 || this.tiles.getRail(i, i2) == null);
    }

    public void removePile(int i, int i2, int i3) {
        Road road = this.tiles.getRoad(i, i2, i3);
        if (road == null || !road.isPile()) {
            return;
        }
        road.setPile(false);
        if (isSupported(i, i2, i3)) {
            return;
        }
        remove(i, i2, i3);
    }
}
