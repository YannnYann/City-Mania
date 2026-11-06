package info.flowersoft.theotown.city;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.IntMap;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.FlyingObject;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Pipe;
import info.flowersoft.theotown.city.objects.Rail;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Ship;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.city.objects.Wire;
import info.flowersoft.theotown.draft.FenceDraft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.util.PackedInt2;
import java.util.BitSet;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Tiles.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class Tiles {
    public static final Companion Companion = new Companion(null);
    public final IntMap<Road> bottomRoads;
    public final IntMap<Building> buildings;
    public final IntMap<FenceDraft[]> fences;
    public final IntMap<FlyingObject> flyingObjects;
    public final IntMap<GroundDraft> groundDraft2s;
    public final IntIntMap groundFrame2s;
    public final Ground[] grounds;
    public final int height;
    public final IntIntMap minMaxZoneSizes;
    public final IntIntMap modifyCounters;
    public final IntMap<Pipe> pipes;
    public final BitSet powerMask0;
    public final BitSet powerMask1;
    public final IntMap<Rail> rails;
    public final IntMap<Road> roads;
    public final IntMap<Ship> ships;
    public final IntMap<Road> topRoads;
    public final IntMap<Wire> topWires;
    public final IntMap<Tree> trees;
    public final BitSet waterMask;
    public final int width;
    public final IntMap<Wire> wires;
    public final IntMap<ZoneDraft> zones;

    public final int index(int i, int i2) {
        return (i << 16) | i2;
    }

    public final int index(int i, int i2, int i3) {
        return (i << 13) | (i3 << 26) | i2;
    }

    public Tiles(int i, int i2) {
        this.width = i;
        this.height = i2;
        int i3 = i * i2;
        Ground[] groundArr = new Ground[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            groundArr[i4] = null;
        }
        this.grounds = groundArr;
        this.trees = new IntMap<>(32, 0.5f);
        this.rails = new IntMap<>(32, 0.5f);
        this.flyingObjects = new IntMap<>(32, 0.5f);
        this.ships = new IntMap<>(32, 0.5f);
        this.modifyCounters = new IntIntMap(32, 0.5f);
        this.pipes = new IntMap<>(32, 0.5f);
        this.wires = new IntMap<>(32, 0.5f);
        this.topWires = new IntMap<>(32, 0.5f);
        this.groundDraft2s = new IntMap<>(32, 0.5f);
        this.groundFrame2s = new IntIntMap(32, 0.5f);
        this.fences = new IntMap<>(32, 0.5f);
        this.buildings = new IntMap<>(32, 0.5f);
        this.zones = new IntMap<>(32, 0.5f);
        this.minMaxZoneSizes = new IntIntMap(32, 0.5f);
        this.roads = new IntMap<>(32, 0.5f);
        this.topRoads = new IntMap<>(32, 0.5f);
        this.bottomRoads = new IntMap<>(32, 0.5f);
        this.waterMask = new BitSet();
        this.powerMask0 = new BitSet();
        this.powerMask1 = new BitSet();
    }

    public final int getWidth() {
        return this.width;
    }

    public final int getHeight() {
        return this.height;
    }

    /* JADX INFO: compiled from: Tiles.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public final int arrayIndex(int i, int i2) {
        return i + (i2 * this.width);
    }

    public final Ground getGround(int i, int i2) {
        Ground ground = this.grounds[arrayIndex(i, i2)];
        Intrinsics.checkNotNull(ground);
        return ground;
    }

    public final void setGround(int i, int i2, Ground ground) {
        Intrinsics.checkNotNullParameter(ground, "ground");
        this.grounds[arrayIndex(i, i2)] = ground;
    }

    public final boolean hasWater(int i, int i2) {
        return getSave(this.waterMask, index(i, i2));
    }

    public final void setWater(int i, int i2, boolean z) {
        setSave(this.waterMask, index(i, i2), z);
    }

    public final boolean hasPower(int i, int i2, int i3) {
        if (i3 == 0) {
            return getSave(this.powerMask0, index(i, i2));
        }
        if (i3 == 1) {
            return getSave(this.powerMask1, index(i, i2));
        }
        throw new IllegalStateException("unreachable");
    }

    public final void setPower(int i, int i2, int i3, boolean z) {
        if (i3 == 0) {
            setSave(this.powerMask0, index(i, i2), z);
        } else {
            if (i3 == 1) {
                setSave(this.powerMask1, index(i, i2), z);
                return;
            }
            throw new IllegalStateException("unreachable");
        }
    }

    public final boolean isGroundWater(int i, int i2) {
        return getGround(i, i2).isWater();
    }

    public final int getUpDirs(int i, int i2) {
        return getGround(i, i2).getUpDirs();
    }

    public final int getPotentialUpDirs(int i, int i2) {
        return getGround(i, i2).getPotentialUpDirs();
    }

    public final int getBaseTerrainHeight(int i, int i2) {
        return getGround(i, i2).getBaseTerrainHeight();
    }

    public final float getTerrainAvgHeight(int i, int i2) {
        return getGround(clampX(i), clampY(i2)).getTerrainAverageHeight();
    }

    public final byte getTerrainHeights(int i, int i2) {
        return getGround(i, i2).getTerrainHeights();
    }

    public final Tree getTree(int i, int i2) {
        return (Tree) saveGet(this.trees, index(i, i2));
    }

    public final void setTree(int i, int i2, Tree tree) {
        saveSet(this.trees, index(i, i2), tree);
    }

    public final Rail getRail(int i, int i2) {
        return (Rail) saveGet(this.rails, index(i, i2));
    }

    public final void setRail(int i, int i2, Rail rail) {
        saveSet(this.rails, index(i, i2), rail);
    }

    public final FlyingObject getFlyingObject(int i, int i2) {
        return (FlyingObject) saveGet(this.flyingObjects, index(i, i2));
    }

    public final void setFlyingObject(int i, int i2, FlyingObject flyingObject) {
        saveSet(this.flyingObjects, index(i, i2), flyingObject);
    }

    public final Ship getShip(int i, int i2) {
        return (Ship) saveGet(this.ships, index(i, i2));
    }

    public final void setShip(int i, int i2, Ship ship) {
        saveSet(this.ships, index(i, i2), ship);
    }

    public final int getModifyCounter(int i, int i2) {
        return saveGet(this.modifyCounters, index(i, i2));
    }

    public final void setModifyCounter(int i, int i2, int i3) {
        saveSet(this.modifyCounters, index(i, i2), i3);
    }

    public final Pipe getPipe(int i, int i2) {
        return (Pipe) saveGet(this.pipes, index(i, i2));
    }

    public final void setPipe(int i, int i2, Pipe pipe) {
        saveSet(this.pipes, index(i, i2), pipe);
    }

    public final Wire getWire(int i, int i2, int i3) {
        return (Wire) saveGet(this.wires, index(i, i2, i3 + 1));
    }

    public final void setWire(int i, int i2, int i3, Wire wire) {
        Wire wire2;
        synchronized (this.wires) {
            try {
                Wire topWire = getTopWire(i, i2);
                if (Intrinsics.areEqual(wire, topWire)) {
                    return;
                }
                if (wire != null) {
                    this.wires.put(index(i, i2, i3 + 1), wire);
                    if (topWire == null || topWire.getLevel() <= i3) {
                        this.topWires.put(index(i, i2), wire);
                    }
                } else {
                    this.wires.remove(index(i, i2, i3 + 1));
                    if (topWire != null && topWire.getLevel() == i3) {
                        int i4 = i3 - 1;
                        while (true) {
                            if (-2 >= i4) {
                                wire2 = null;
                                break;
                            }
                            wire2 = getWire(i, i2, i4);
                            if (wire2 != null) {
                                break;
                            } else {
                                i4--;
                            }
                        }
                        this.topWires.put(index(i, i2), wire2);
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Wire getTopWire(int i, int i2) {
        return (Wire) saveGet(this.topWires, index(i, i2));
    }

    public final boolean hasOvergroundWire(int i, int i2) {
        Wire topWire = getTopWire(i, i2);
        return topWire != null && topWire.getLevel() >= 0;
    }

    public final boolean hasWire(int i, int i2) {
        return getTopWire(i, i2) != null;
    }

    public final GroundDraft getGroundDraft2(int i, int i2) {
        return this.groundDraft2s.get(index(i, i2));
    }

    public final void setGroundDraft2(int i, int i2, GroundDraft groundDraft) {
        saveSet(this.groundDraft2s, index(i, i2), groundDraft);
    }

    public final int getGroundFrame2(int i, int i2) {
        return saveGet(this.groundFrame2s, index(i, i2));
    }

    public final void setGroundFrame2(int i, int i2, int i3) {
        saveSet(this.groundFrame2s, index(i, i2), i3);
    }

    public final boolean hasFence(int i, int i2) {
        return saveGet(this.fences, index(i, i2)) != null;
    }

    public final FenceDraft getFence(int i, int i2, int i3) {
        FenceDraft[] fenceDraftArr = (FenceDraft[]) saveGet(this.fences, index(i, i2));
        if (fenceDraftArr != null) {
            return fenceDraftArr[i3];
        }
        return null;
    }

    public final void setFence(int i, int i2, int i3, FenceDraft fenceDraft) {
        synchronized (this.fences) {
            try {
                int iIndex = index(i, i2);
                FenceDraft[] fenceDraftArr = this.fences.get(iIndex);
                if (fenceDraftArr != null || fenceDraft != null) {
                    int i4 = 0;
                    if (fenceDraftArr == null) {
                        FenceDraft[] fenceDraftArr2 = new FenceDraft[4];
                        while (i4 < 4) {
                            fenceDraftArr2[i4] = null;
                            i4++;
                        }
                        fenceDraftArr2[i3] = fenceDraft;
                        this.fences.put(iIndex, fenceDraftArr2);
                    } else {
                        fenceDraftArr[i3] = fenceDraft;
                        if (fenceDraft == null) {
                            int length = fenceDraftArr.length;
                            while (true) {
                                if (i4 >= length) {
                                    this.fences.remove(iIndex);
                                    break;
                                } else if (fenceDraftArr[i4] != null) {
                                    break;
                                } else {
                                    i4++;
                                }
                            }
                        }
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final ZoneDraft getZone(int i, int i2) {
        return (ZoneDraft) saveGet(this.zones, index(i, i2));
    }

    public final void setZone(int i, int i2, ZoneDraft zoneDraft) {
        saveSet(this.zones, index(i, i2), zoneDraft);
    }

    public final Building getBuilding(int i, int i2) {
        return (Building) saveGet(this.buildings, index(i, i2));
    }

    public final void setBuilding(int i, int i2, Building building) {
        saveSet(this.buildings, index(i, i2), building);
    }

    public final int getMinZoneSize(int i, int i2) {
        return PackedInt2.unpackY(saveGet(this.minMaxZoneSizes, index(i, i2), 16));
    }

    public final int getMaxZoneSize(int i, int i2) {
        return PackedInt2.unpackX(saveGet(this.minMaxZoneSizes, index(i, i2), 0));
    }

    public final Object setMinMaxZoneSizes(int i, int i2, int i3, int i4) {
        Object objValueOf;
        synchronized (this.minMaxZoneSizes) {
            try {
                if (i3 == 16 && i4 == 0) {
                    objValueOf = Integer.valueOf(this.minMaxZoneSizes.remove(index(i, i2), 0));
                } else {
                    this.minMaxZoneSizes.put(index(i, i2), PackedInt2.pack(i4, i3));
                    objValueOf = Unit.INSTANCE;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return objValueOf;
    }

    public final boolean hasRoad(int i, int i2) {
        return getTopRoad(i, i2) != null;
    }

    public final boolean hasOvergroundRoad(int i, int i2) {
        Road topRoad = getTopRoad(i, i2);
        return topRoad != null && topRoad.level >= 0;
    }

    public final boolean hasVisibleRoad(int i, int i2) {
        Road topRoad = getTopRoad(i, i2);
        if (topRoad == null) {
            return false;
        }
        int i3 = topRoad.level;
        if (i3 >= 0) {
            return true;
        }
        if (i3 < -1 || topRoad.dLevel == 0) {
            return false;
        }
        return !Direction.isIn(topRoad.dLevel, getGround(i, i2).getUpDirs());
    }

    public final Road getAbsoluteRoad(int i, int i2, int i3) {
        Road topRoad = getTopRoad(i, i2);
        if (topRoad == null) {
            return null;
        }
        int i4 = topRoad.absLevel;
        return i4 == i3 ? topRoad : getRoad(i, i2, i3 - (i4 - topRoad.level));
    }

    public final Road getTopRoad(int i, int i2) {
        return (Road) saveGet(this.topRoads, index(i, i2));
    }

    public final Road getBottomRoad(int i, int i2) {
        return (Road) saveGet(this.bottomRoads, index(i, i2));
    }

    public final Road getRoad(int i, int i2, int i3) {
        return (Road) saveGet(this.roads, index(i, i2, i3 + 2));
    }

    public final void setRoad(int i, int i2, int i3, Road road) {
        Road road2;
        Road road3;
        synchronized (this.roads) {
            try {
                Road road4 = this.topRoads.get(index(i, i2));
                Road road5 = null;
                if (road4 != null) {
                    road2 = this.bottomRoads.get(index(i, i2));
                    if (road2 == null) {
                        road2 = road4;
                    }
                } else {
                    road2 = null;
                }
                if (road4 != null || road != null) {
                    if (road != null) {
                        this.roads.put(index(i, i2, i3 + 2), road);
                        if (road4 == null || road.level >= road4.level) {
                            this.topRoads.put(index(i, i2), road);
                        }
                        if (road2 == null || road.level <= road2.level) {
                            this.bottomRoads.put(index(i, i2), road);
                        }
                    } else {
                        this.roads.remove(index(i, i2, i3 + 2));
                        if (road4 == null || road4.level <= i3) {
                            int i4 = 18;
                            while (true) {
                                if (-1 < i4) {
                                    road3 = this.roads.get(index(i, i2, i4));
                                    if (road3 != null) {
                                        break;
                                    } else {
                                        i4--;
                                    }
                                } else {
                                    road3 = null;
                                    break;
                                }
                            }
                            if (road3 != null) {
                                this.topRoads.put(index(i, i2), road3);
                            } else {
                                this.topRoads.remove(index(i, i2));
                            }
                        }
                        if (road2 == null || road2.level >= i3) {
                            int i5 = 0;
                            while (true) {
                                if (i5 < 19) {
                                    Road road6 = this.roads.get(index(i, i2, i5));
                                    if (road6 != null) {
                                        road5 = road6;
                                        break;
                                    }
                                    i5++;
                                } else {
                                    break;
                                }
                            }
                            if (road5 != null) {
                                this.topRoads.put(index(i, i2), road5);
                            } else {
                                this.topRoads.remove(index(i, i2));
                            }
                        }
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int clampX(int i) {
        return MathUtils.clamp(i, 0, this.width - 1);
    }

    public final int clampY(int i) {
        return MathUtils.clamp(i, 0, this.height - 1);
    }

    public final <T> T saveGet(IntMap<T> intMap, int i) {
        try {
            return intMap.get(i);
        } catch (Exception unused) {
            return null;
        }
    }

    public final <T> void saveSet(IntMap<T> intMap, int i, T t) {
        synchronized (intMap) {
            try {
                if (t != null) {
                    intMap.put(i, t);
                } else {
                    intMap.remove(i);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int saveGet(IntIntMap intIntMap, int i) {
        try {
            return intIntMap.get(i, 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    public final int saveGet(IntIntMap intIntMap, int i, int i2) {
        try {
            return intIntMap.get(i, i2);
        } catch (Exception unused) {
            return i2;
        }
    }

    public final void saveSet(IntIntMap intIntMap, int i, int i2) {
        synchronized (intIntMap) {
            try {
                if (i2 != 0) {
                    intIntMap.put(i, i2);
                } else {
                    intIntMap.remove(i, 0);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean getSave(BitSet bitSet, int i) {
        try {
            return bitSet.get(i);
        } catch (Exception unused) {
            return false;
        }
    }

    public final void setSave(BitSet bitSet, int i, boolean z) {
        synchronized (bitSet) {
            bitSet.set(i, z);
            Unit unit = Unit.INSTANCE;
        }
    }
}
