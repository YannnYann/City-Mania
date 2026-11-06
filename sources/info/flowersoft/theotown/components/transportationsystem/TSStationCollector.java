package info.flowersoft.theotown.components.transportationsystem;

import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.IntSet;
import com.badlogic.gdx.utils.ObjectIntMap;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.neighbors.NeighborCity;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.util.PackedInt2;
import info.flowersoft.theotown.util.TileSet;
import info.flowersoft.theotown.util.UnionJoin;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.Predicate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class TSStationCollector {
    public final City city;
    public boolean dirty;
    public final TSSystemDraft draft;
    public final StationNameGenerator nameGenerator;
    public final Tiles tiles;
    public List<TSStation> stations = new ArrayList();
    public IntMap<TSStation> stationsById = new IntMap<>();
    public int nextStationId = 1;

    public interface IntIntConsumer {
        void match(int i, int i2);
    }

    public TSStationCollector(City city, TSSystemDraft tSSystemDraft) {
        this.city = city;
        this.tiles = city.getTiles();
        this.draft = tSSystemDraft;
        this.nameGenerator = new StationNameGenerator(city.getTranslator(), new Predicate() { // from class: info.flowersoft.theotown.components.transportationsystem.TSStationCollector$$ExternalSyntheticLambda1
            @Override // io.blueflower.stapel2d.util.Predicate
            public final boolean apply(Object obj) {
                return TSStationCollector.$r8$lambda$AzUACe_ev4WBAQYyMMWBie_FPl4(this.f$0, (String) obj);
            }
        });
    }

    public static /* synthetic */ boolean $r8$lambda$AzUACe_ev4WBAQYyMMWBie_FPl4(TSStationCollector tSStationCollector, String str) {
        return tSStationCollector.getStationByName(str) == null;
    }

    public void setNextStationId(int i) {
        this.nextStationId = i;
    }

    public int getNextStationId() {
        return this.nextStationId;
    }

    public List<TSStation> getStations() {
        return this.stations;
    }

    public IntList getStationIds(IntList intList) {
        List<TSStation> list = this.stations;
        if (intList == null) {
            intList = new IntList(list.size());
        } else {
            intList.clear();
        }
        for (int i = 0; i < list.size(); i++) {
            intList.add(list.get(i).getId());
        }
        return intList;
    }

    public TSStation getStationById(int i) {
        return this.stationsById.get(i);
    }

    public TSStation getStationByName(String str) {
        for (int i = 0; i < this.stations.size(); i++) {
            if (str.equals(this.stations.get(i).getName())) {
                return this.stations.get(i);
            }
        }
        return null;
    }

    public TSStation getStationByXY(int i, int i2) {
        if (!this.city.isValid(i, i2)) {
            return null;
        }
        for (int i3 = 0; i3 < this.stations.size(); i3++) {
            TSStation tSStation = this.stations.get(i3);
            if (tSStation.contains(i, i2)) {
                return tSStation;
            }
        }
        return null;
    }

    public void markDirty() {
        this.dirty = true;
    }

    public void setStations(List<TSStation> list) {
        IntMap<TSStation> intMap = new IntMap<>();
        for (int i = 0; i < list.size(); i++) {
            TSStation tSStation = list.get(i);
            intMap.put(tSStation.getId(), tSStation);
        }
        this.stations = list;
        this.stationsById = intMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x0251 A[LOOP:10: B:84:0x024b->B:86:0x0251, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void update() {
        /*
            Method dump skipped, instruction units count: 750
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.transportationsystem.TSStationCollector.update():void");
    }

    public static /* synthetic */ void $r8$lambda$jJu4D_b_yTPhuz5PkqbaNzDL0iE(TSStationCollector tSStationCollector, IntSet intSet, IntSet intSet2, IntIntMap intIntMap, List list, List list2, int i, int i2) {
        tSStationCollector.getClass();
        intSet.remove(i);
        intSet2.remove(i2);
        intIntMap.put(i, i2);
        list.set(i2, tSStationCollector.stations.get(i));
        tSStationCollector.updateStation(tSStationCollector.stations.get(i), (TileSet) list2.get(i2));
    }

    public final List<Road> collectNeighborCityRoads(NeighborCity neighborCity) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.city.getRoads().getConnectionSize(); i++) {
            Road connection = this.city.getRoads().getConnection(i);
            if (connection != null && connection.hasConnection() && this.draft.isSupportedRoad(connection)) {
                if (neighborCity.contains(connection.x + Direction.differenceX(connection.getConnectionDir()), connection.y + Direction.differenceY(connection.getConnectionDir()))) {
                    arrayList.add(connection);
                }
            }
        }
        return arrayList;
    }

    public final IntSet newIntSetForRange(int i) {
        IntSet intSet = new IntSet(i);
        for (int i2 = 0; i2 < i; i2++) {
            intSet.add(i2);
        }
        return intSet;
    }

    public final int getBestMatch(TileSet tileSet, List<TileSet> list) {
        int i = Integer.MIN_VALUE;
        int i2 = -1;
        for (int i3 = 0; i3 < list.size(); i3++) {
            int commonArea = tileSet.getCommonArea(list.get(i3));
            if (commonArea > 0 && commonArea > i) {
                i2 = i3;
                i = commonArea;
            }
        }
        return i2;
    }

    public final TSStation newStation(TileSet tileSet) {
        TSSystemDraft tSSystemDraft = this.draft;
        int i = this.nextStationId;
        this.nextStationId = i + 1;
        TSStation tSStation = new TSStation(tSSystemDraft, i, LuaValue.tableOf(), this.nameGenerator.generate(this.city, tileSet.getMeanX(), tileSet.getMeanY(), this.draft), 0, 0);
        updateStation(tSStation, tileSet);
        return tSStation;
    }

    public void updateStation(TSStation tSStation, TileSet tileSet) {
        BusStop busStop;
        HashSet hashSet = new HashSet();
        if (tSStation.isCity()) {
            int neighborIndex = this.city.getNeighborIndex(tSStation.getCityX(), tSStation.getCityY());
            if (neighborIndex < 0) {
                return;
            }
            tSStation.initialize(tileSet, collectNeighborCityRoads(this.city.getNeighbor(neighborIndex)));
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i < tileSet.size(); i++) {
            int packedXY = tileSet.getPackedXY(i);
            int iUnpackX = PackedInt2.unpackX(packedXY);
            int iUnpackY = PackedInt2.unpackY(packedXY);
            Building building = this.city.getTiles().getBuilding(iUnpackX, iUnpackY);
            if (building != null && !hashSet.contains(building)) {
                hashSet.add(building);
                if (this.draft.isStationBuilding(building.getDraft())) {
                    arrayList2.add(building);
                } else if (this.draft.isSpawnBuilding(building.getDraft())) {
                    arrayList.add(building);
                }
            }
            Road topRoad = this.tiles.getTopRoad(iUnpackX, iUnpackY);
            Road bottomRoad = topRoad != null ? this.tiles.getBottomRoad(iUnpackX, iUnpackY) : null;
            if (topRoad != null && bottomRoad != null) {
                int i2 = bottomRoad.level;
                for (int i3 = topRoad.level; i3 >= i2; i3--) {
                    Road road = this.tiles.getRoad(iUnpackX, iUnpackY, i3);
                    if (road != null && (busStop = road.getBusStop()) != null && this.draft.isBusStop(busStop.getDraft())) {
                        arrayList3.add(busStop);
                    }
                }
            }
        }
        tSStation.initialize(tileSet, arrayList2, arrayList, arrayList3);
    }

    public final List<TileSet> getStationGroups(int i, int i2) {
        IntMap<UnionJoin> intMap = new IntMap<>();
        IntMap<UnionJoin> intMap2 = new IntMap<>();
        ArrayList arrayList = new ArrayList();
        ObjectIntMap<UnionJoin> objectIntMap = new ObjectIntMap<>();
        markBuildings(this.draft.getSpawnBuildings(), i, i2, intMap, intMap2, arrayList, objectIntMap, true);
        markBusStops(this.draft.getBusStops(), i, i2, intMap, intMap2, arrayList, objectIntMap, true);
        markBuildings(this.draft.getStationBuildings(), i, i2, intMap, intMap2, arrayList, objectIntMap, false);
        HashMap map = new HashMap();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            UnionJoin root = arrayList.get(i3).getRoot();
            if (!map.containsKey(root)) {
                map.put(root, new IntList());
            }
        }
        IntMap.Keys keys = intMap2.keys();
        while (keys.hasNext) {
            int next = keys.next();
            ((IntList) map.get(intMap2.get(next).getRoot())).add(next);
        }
        ArrayList arrayList2 = new ArrayList(map.size());
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            arrayList2.add(new TileSet((IntList) it.next()));
        }
        return arrayList2;
    }

    public final void markBusStops(List<BusStopDraft> list, int i, int i2, IntMap<UnionJoin> intMap, IntMap<UnionJoin> intMap2, List<UnionJoin> list2, ObjectIntMap<UnionJoin> objectIntMap, boolean z) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            for (BusStop busStop : this.city.getBusStops().getOfDraft(list.get(i3))) {
                UnionJoin setForArea = getSetForArea(busStop.getX(), busStop.getY(), busStop.getX() + 1, busStop.getY() + 1, i, i2, intMap, list2, objectIntMap, z);
                if (setForArea != null) {
                    markArea(busStop.getX(), busStop.getY(), busStop.getX() + 1, busStop.getY() + 1, setForArea, intMap, intMap2, objectIntMap, 0);
                }
            }
        }
    }

    public final void markBuildings(List<BuildingDraft> list, int i, int i2, IntMap<UnionJoin> intMap, IntMap<UnionJoin> intMap2, List<UnionJoin> list2, ObjectIntMap<UnionJoin> objectIntMap, boolean z) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            for (Building building : this.city.getBuildings().getBuildingsOfDraft(list.get(i3))) {
                UnionJoin setForArea = getSetForArea(building.getX(), building.getY(), building.getX() + building.getWidth(), building.getY() + building.getHeight(), i, i2, intMap, list2, objectIntMap, z);
                if (setForArea != null) {
                    markArea(building.getX(), building.getY(), building.getWidth() + building.getX(), building.getHeight() + building.getY(), setForArea, intMap, intMap2, objectIntMap, 0);
                }
            }
        }
    }

    public final UnionJoin getSetForArea(int i, int i2, int i3, int i4, int i5, int i6, IntMap<UnionJoin> intMap, List<UnionJoin> list, ObjectIntMap<UnionJoin> objectIntMap, boolean z) {
        int i7 = (i3 - i) * (i4 - i2);
        UnionJoin unionJoinJoin = null;
        for (int iMax = Math.max(i2 - i5, 0); iMax < Math.min(i4 + i5, this.city.getHeight()); iMax++) {
            for (int iMax2 = Math.max(i - i5, 0); iMax2 < Math.min(i3 + i5, this.city.getWidth()); iMax2++) {
                UnionJoin unionJoin = intMap.get(PackedInt2.pack(iMax2, iMax));
                if (unionJoin != null && (unionJoinJoin == null || unionJoin.getRoot() != unionJoinJoin.getRoot())) {
                    int i8 = objectIntMap.get(unionJoin.getRoot(), 0);
                    if (unionJoinJoin != null) {
                        int i9 = i8 + objectIntMap.get(unionJoinJoin.getRoot(), 0);
                        if (i9 + i7 <= i6) {
                            unionJoinJoin = unionJoinJoin.join(unionJoin);
                            objectIntMap.put(unionJoinJoin.getRoot(), i9);
                        }
                    } else if (i8 + i7 <= i6) {
                        unionJoinJoin = unionJoin;
                    }
                }
            }
        }
        if (unionJoinJoin != null || !z) {
            return unionJoinJoin;
        }
        UnionJoin unionJoin2 = new UnionJoin();
        list.add(unionJoin2);
        return unionJoin2;
    }

    public final void markArea(int i, int i2, int i3, int i4, UnionJoin unionJoin, IntMap<UnionJoin> intMap, IntMap<UnionJoin> intMap2, ObjectIntMap<UnionJoin> objectIntMap, int i5) {
        objectIntMap.getAndIncrement(unionJoin.getRoot(), 0, (i3 - i) * (i4 - i2));
        for (int i6 = i2; i6 < i4; i6++) {
            for (int i7 = i; i7 < i3; i7++) {
                intMap2.put(PackedInt2.pack(i7, i6), unionJoin);
            }
        }
        for (int iMax = Math.max(i2 - i5, 0); iMax < Math.min(i4 + i5, this.city.getHeight()); iMax++) {
            for (int iMax2 = Math.max(i - i5, 0); iMax2 < Math.min(i3 + i5, this.city.getWidth()); iMax2++) {
                intMap.put(PackedInt2.pack(iMax2, iMax), unionJoin);
            }
        }
    }
}
