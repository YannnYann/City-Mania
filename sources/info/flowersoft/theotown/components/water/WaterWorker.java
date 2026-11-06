package info.flowersoft.theotown.components.water;

import com.badlogic.gdx.utils.IntMap;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.BuildingList;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.PipeList;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.TradingRelation;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.neighbors.NeighborCity;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Pipe;
import info.flowersoft.theotown.components.DefaultInfluence;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.MultiList;
import info.flowersoft.theotown.util.PackedInt2;
import info.flowersoft.theotown.util.SafeListAccessor;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.CyclicWorker;
import io.blueflower.stapel2d.util.IntQueue;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class WaterWorker extends CyclicWorker implements Runnable {
    public static final JSONObject CONFIG;
    public static final float DEFAULT_ADAPTION_RATE;
    public final City city;
    public final DefaultInfluence influence;
    public Set<WaterGroup> lastGroups;
    public final Tiles tiles;
    public float adaptionRate = DEFAULT_ADAPTION_RATE;
    public final MultiList<Building>[] buildings = {new MultiList(), new MultiList()};
    public int counter = 0;
    public final BitSet grownMask = new BitSet();
    public final IntMap<WaterGroup> groupPerTile = new IntMap<>();
    public final Queue<WaterGroup> queue = new ArrayDeque();
    public final IntQueue queueXY = new IntQueue();
    public final Queue<Boolean> queueGrow = new ArrayDeque();
    public final List<WaterGroup> originalGroups = new ArrayList();

    static {
        JSONObject specificConfig = Resources.getSpecificConfig("water");
        CONFIG = specificConfig;
        DEFAULT_ADAPTION_RATE = (float) specificConfig.optDouble("adaption rate", 0.01d);
    }

    public WaterWorker(City city) {
        this.city = city;
        this.tiles = city.getTiles();
        this.influence = (DefaultInfluence) city.getComponent(2);
        setTask(this);
    }

    public void setDefaultAdaptionRate() {
        this.adaptionRate = DEFAULT_ADAPTION_RATE;
    }

    public void setAdaptionRate(float f) {
        this.adaptionRate = f;
    }

    public Set<WaterGroup> getLastGroups() {
        return this.lastGroups;
    }

    public final boolean hasGrown(int i, int i2) {
        return this.grownMask.get(i + (i2 * this.city.getWidth()));
    }

    public final void markGrown(int i, int i2) {
        this.grownMask.set(i + (i2 * this.city.getWidth()));
    }

    @Override // java.lang.Runnable
    public void run() {
        AnonymousClass1 anonymousClass1;
        long j;
        float f;
        NeighborCity neighbor;
        float f2;
        int water;
        long j2;
        NeighborCity neighbor2;
        MultiList<Building>[] multiListArr = this.buildings;
        int i = 0;
        MultiList<Building> multiList = multiListArr[0];
        boolean z = true;
        MultiList<Building> multiList2 = multiListArr[1];
        multiListArr[0] = multiList2;
        multiListArr[1] = multiList;
        multiList2.clear();
        this.queue.clear();
        this.queueXY.clear();
        this.queueGrow.clear();
        this.originalGroups.clear();
        this.groupPerTile.clear();
        this.grownMask.clear();
        BuildingList buildings = this.city.getBuildings();
        Iterator it = new SafeListAccessor(buildings).iterator();
        while (true) {
            anonymousClass1 = null;
            j = 0;
            if (!it.hasNext()) {
                break;
            }
            Building building = (Building) it.next();
            if (building != null && building.getWater() > 0) {
                WaterGroup waterGroup = new WaterGroup(building);
                int x = building.getX() + building.getWidth();
                int y = building.getY() + building.getHeight();
                for (int y2 = building.getY(); y2 < y; y2++) {
                    for (int x2 = building.getX(); x2 < x; x2++) {
                        this.queue.add(waterGroup);
                        this.queueXY.add((x2 << 16) | y2);
                        this.queueGrow.add(Boolean.TRUE);
                    }
                }
                this.originalGroups.add(waterGroup);
            }
        }
        PipeList pipes = this.city.getPipes();
        int iCountNeighbors = this.city.countNeighbors();
        WaterGroup[] waterGroupArr = new WaterGroup[iCountNeighbors];
        for (int i2 = 0; i2 < pipes.getConnectionSize(); i2++) {
            Pipe connection = pipes.getConnection(i2);
            if (connection != null) {
                int connectionDir = connection.getConnectionDir();
                int neighborIndex = this.city.getNeighborIndex(connection.getX() + Direction.differenceX(connectionDir), connection.getY() + Direction.differenceY(connectionDir));
                NeighborCity neighbor3 = neighborIndex >= 0 ? this.city.getNeighbor(neighborIndex) : null;
                if (neighborIndex >= 0 && neighborIndex < iCountNeighbors && neighbor3 != null && neighbor3.getTradingRelation().getWaterExport() != 0) {
                    WaterGroup waterGroup2 = waterGroupArr[neighborIndex];
                    if (waterGroup2 == null) {
                        waterGroup2 = new WaterGroup();
                        waterGroupArr[neighborIndex] = waterGroup2;
                        waterGroup2.registerNeighborCity(neighborIndex);
                        this.originalGroups.add(waterGroup2);
                    }
                    this.queue.add(waterGroup2);
                    this.queueXY.add(connection.getY() | (connection.getX() << 16));
                    this.queueGrow.add(Boolean.TRUE);
                }
            }
        }
        if (!this.originalGroups.isEmpty() && pipes.getConnectionSize() > 0) {
            for (int i3 = 0; i3 < iCountNeighbors; i3++) {
                if (waterGroupArr[i3] == null && (neighbor2 = this.city.getNeighbor(i3)) != null && neighbor2.hasWaterConnection()) {
                    WaterGroup waterGroup3 = new WaterGroup();
                    waterGroupArr[i3] = waterGroup3;
                    waterGroup3.registerNeighborCity(i3);
                    List<WaterGroup> list = this.originalGroups;
                    list.get(list.size() - 1).join(waterGroup3);
                }
            }
        }
        while (!this.queue.isEmpty()) {
            WaterGroup waterGroupRemove = this.queue.remove();
            int iRemove = this.queueXY.remove();
            int i4 = iRemove >>> 16;
            int i5 = 65535 & iRemove;
            boolean zBooleanValue = this.queueGrow.remove().booleanValue();
            if (this.city.isValid(i4, i5)) {
                Pipe pipe = this.tiles.getPipe(i4, i5);
                Building building2 = this.tiles.getBuilding(i4, i5);
                boolean z2 = pipe != null || (building2 != null && building2.isWorking() && building2.getDraft().liquid);
                WaterGroup waterGroup4 = this.groupPerTile.get(iRemove, anonymousClass1);
                if (waterGroup4 == null || (zBooleanValue && !hasGrown(i4, i5))) {
                    WaterGroup parent = waterGroupRemove.getParent();
                    this.groupPerTile.put(iRemove, parent);
                    if (zBooleanValue) {
                        markGrown(i4, i5);
                    }
                    if (z2 && zBooleanValue) {
                        if (pipe != null && pipe.hasConnection()) {
                            int connectionDir2 = pipe.getConnectionDir();
                            int neighborIndex2 = this.city.getNeighborIndex(pipe.getX() + Direction.differenceX(connectionDir2), pipe.getY() + Direction.differenceY(connectionDir2));
                            if (neighborIndex2 >= 0) {
                                parent.registerNeighborCity(neighborIndex2);
                            }
                        }
                        int i6 = pipe != null ? pipe.getDraft().waterRadius : 4;
                        int i7 = -i6;
                        for (int i8 = i7; i8 <= i6; i8++) {
                            int i9 = i7;
                            while (i9 <= i6) {
                                int i10 = (i9 * i9) + (i8 * i8);
                                long j3 = j;
                                if (i10 <= i6 * i6 && i10 > 0) {
                                    this.queue.add(parent);
                                    this.queueXY.add(((i4 + i9) << 16) | (i5 + i8));
                                    this.queueGrow.add(Boolean.valueOf(i10 == 1));
                                }
                                i9++;
                                j = j3;
                            }
                        }
                    }
                } else if (z2 && waterGroupRemove.getParent() != waterGroup4.getParent()) {
                    waterGroupRemove.getParent().join(waterGroup4.getParent());
                }
                j2 = j;
                if (building2 != null && building2.getWater() < j2) {
                    int x3 = building2.getX() + building2.getWidth();
                    int y3 = building2.getY() + building2.getHeight();
                    boolean z3 = true;
                    for (int y4 = building2.getY(); y4 < y3 && z3; y4++) {
                        int x4 = building2.getX();
                        while (true) {
                            if (x4 >= x3) {
                                break;
                            }
                            if ((x4 != i4 || y4 != i5) && this.groupPerTile.get(PackedInt2.pack(x4, y4)) != null) {
                                z3 = false;
                                break;
                            }
                            x4++;
                        }
                    }
                    if (z3) {
                        waterGroupRemove.getParent().needer.add(building2);
                    }
                }
            } else {
                j2 = j;
            }
            j = j2;
            anonymousClass1 = null;
        }
        long j4 = j;
        this.grownMask.clear();
        for (IntMap.Entry<WaterGroup> entry : this.groupPerTile) {
            markGrown(PackedInt2.unpackX(entry.key), PackedInt2.unpackY(entry.key));
        }
        for (int i11 = 0; i11 < this.city.getHeight(); i11++) {
            for (int i12 = 0; i12 < this.city.getWidth(); i12++) {
                this.city.getTiles().setWater(i12, i11, hasGrown(i12, i11));
            }
        }
        Iterator it2 = new SafeListAccessor(buildings).iterator();
        while (true) {
            boolean zHasNext = it2.hasNext();
            f = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            if (!zHasNext) {
                break;
            }
            Building building3 = (Building) it2.next();
            if (building3.getWater() < j4) {
                int x5 = building3.getX() + building3.getWidth();
                int y5 = building3.getY() + building3.getHeight();
                boolean z4 = false;
                for (int y6 = building3.getY(); y6 < y5 && !z4; y6++) {
                    int x6 = building3.getX();
                    while (true) {
                        if (x6 >= x5) {
                            break;
                        }
                        if (this.groupPerTile.get(PackedInt2.pack(x6, y6)) != null) {
                            z4 = true;
                            break;
                        }
                        x6++;
                    }
                }
                if (!z4) {
                    building3.setHasWater(this.city.isUber() || (building3.hasWater() && Resources.RND.nextFloat() > this.adaptionRate), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                }
            } else if (!building3.hasWater()) {
                building3.setHasWater(true, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            }
        }
        HashSet<WaterGroup> hashSet = new HashSet();
        Iterator<WaterGroup> it3 = this.originalGroups.iterator();
        while (it3.hasNext()) {
            hashSet.add(it3.next().getParent());
        }
        int iCountNeighbors2 = this.city.countNeighbors();
        long[] jArr = new long[iCountNeighbors2];
        for (int i13 = 0; i13 < iCountNeighbors2; i13++) {
            NeighborCity neighbor4 = this.city.getNeighbor(i13);
            if (neighbor4 != null) {
                jArr[i13] = neighbor4.getTradingRelation().getWaterExport();
            }
        }
        for (WaterGroup waterGroup5 : hashSet) {
            int i14 = i;
            float influence = f;
            long water2 = j4;
            while (i14 < waterGroup5.producer.size()) {
                Building building4 = (Building) waterGroup5.producer.get(i14);
                water2 += building4.getWater();
                influence += this.influence.getInfluence(building4, InfluenceType.POLLUTION.ordinal()) * 0.5f * building4.getWater();
                building4.setHasWater(z, f);
                i14++;
                iCountNeighbors2 = iCountNeighbors2;
            }
            int i15 = iCountNeighbors2;
            for (int i16 = 0; i16 < waterGroup5.needer.size(); i16++) {
                influence += ((Building) waterGroup5.needer.get(i16)).getDraft().waterWaste;
            }
            waterGroup5.water = water2;
            if (waterGroup5.neighborCities != null) {
                Iterator it4 = waterGroup5.neighborCities.iterator();
                while (it4.hasNext()) {
                    int iIntValue = ((Integer) it4.next()).intValue();
                    long j5 = jArr[iIntValue];
                    if (j5 < j4) {
                        water2 -= j5;
                        jArr[iIntValue] = j4;
                    }
                }
                waterGroup5.water = water2;
                Iterator it5 = waterGroup5.neighborCities.iterator();
                water = 0;
                while (it5.hasNext()) {
                    int iIntValue2 = ((Integer) it5.next()).intValue();
                    long j6 = jArr[iIntValue2];
                    if (j6 > j4) {
                        long jMin = Math.min(j6, water2);
                        jArr[iIntValue2] = jArr[iIntValue2] - jMin;
                        water2 -= jMin;
                        water = (int) (((long) water) + jMin);
                    }
                }
                water2 += (long) water;
                f2 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            } else {
                f2 = f;
                water = 0;
            }
            float fMax = Math.max(influence, f2);
            float f3 = fMax / water2;
            float f4 = f3 * f3;
            if (this.city.isUber()) {
                f4 = f2;
            }
            int i17 = 0;
            while (i17 < waterGroup5.needer.size()) {
                Building building5 = (Building) waterGroup5.needer.get(i17);
                water = (int) (((long) water) - building5.getWater());
                long j7 = water2;
                building5.setHasWater(((long) water) < j7 || this.city.isUber() || (building5.hasWater() && Resources.RND.nextFloat() > this.adaptionRate), f4);
                i17++;
                water2 = j7;
            }
            waterGroup5.usage = water;
            waterGroup5.waste = fMax;
            if (waterGroup5.water >= waterGroup5.usage || this.city.isUber()) {
                for (int i18 = 0; i18 < waterGroup5.producer.size(); i18++) {
                    ((Building) waterGroup5.producer.get(i18)).setOverloaded(false);
                }
            } else {
                for (int i19 = 0; i19 < waterGroup5.producer.size(); i19++) {
                    ((Building) waterGroup5.producer.get(i19)).setOverloaded(true);
                }
            }
            i = 0;
            iCountNeighbors2 = i15;
            z = true;
            f = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        while (i < iCountNeighbors2) {
            if (jArr[i] > j4 && (neighbor = this.city.getNeighbor(i)) != null) {
                TradingRelation tradingRelation = neighbor.getTradingRelation();
                tradingRelation.setWaterExport(tradingRelation.getWaterExport() - jArr[i]);
            }
            i++;
        }
        this.lastGroups = hashSet;
        if (Settings.energySaving && this.counter > 0) {
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        this.counter++;
    }

    public final class WaterGroup {
        public MultiList<Building>.SingleList needer;
        public Set<Integer> neighborCities;
        public WaterGroup parent;
        public MultiList<Building>.SingleList producer;
        public float usage;
        public float waste;
        public float water;

        public WaterGroup() {
            this.producer = WaterWorker.this.buildings[0].newList();
            this.needer = WaterWorker.this.buildings[0].newList();
        }

        public WaterGroup(WaterWorker waterWorker, Building building) {
            this();
            this.producer.add(building);
        }

        public final void registerNeighborCity(int i) {
            if (this.neighborCities == null) {
                this.neighborCities = new HashSet();
            }
            this.neighborCities.add(Integer.valueOf(i));
        }

        public final WaterGroup getParent() {
            if (this.parent == null) {
                return this;
            }
            while (true) {
                WaterGroup waterGroup = this.parent;
                WaterGroup waterGroup2 = waterGroup.parent;
                if (waterGroup2 == null) {
                    return waterGroup;
                }
                this.parent = waterGroup2;
            }
        }

        public final WaterGroup join(WaterGroup waterGroup) {
            waterGroup.parent = this;
            for (int i = 0; i < waterGroup.producer.size(); i++) {
                this.producer.add(waterGroup.producer.get(i));
            }
            waterGroup.producer.free();
            waterGroup.producer = null;
            this.needer = WaterWorker.this.buildings[0].mix(this.needer, waterGroup.needer);
            waterGroup.needer = null;
            Set<Integer> set = this.neighborCities;
            if (set == null) {
                this.neighborCities = waterGroup.neighborCities;
                return this;
            }
            Set<Integer> set2 = waterGroup.neighborCities;
            if (set2 != null) {
                set.addAll(set2);
            }
            return this;
        }

        public MultiList<Building>.SingleList getProducer() {
            return this.producer;
        }

        public MultiList<Building>.SingleList getNeeder() {
            return this.needer;
        }

        public float getWater() {
            return this.water;
        }

        public float getUsage() {
            return this.usage;
        }

        public float getWaste() {
            return this.waste;
        }
    }
}
