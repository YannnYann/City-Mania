package info.flowersoft.theotown.components.transportationsystem;

import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.scripting.Script;
import info.flowersoft.theotown.scripting.ScriptMethod;
import info.flowersoft.theotown.scripting.libraries.TSLibrary;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import vm2.LuaTable;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class TSSystemDraft {
    public final List<BusStopDraft> busStopsList;
    public final List<BuildingDraft> depotBuildingList;
    public final String id;
    public final LuaTable impl;
    public LuaValue luaRepr;
    public final ScriptMethod onAddedStation;
    public final ScriptMethod onEnterCity;
    public final ScriptMethod onLeaveCity;
    public final ScriptMethod onRemovedStation;
    public final Script owner;
    public final long roadFlags;
    public final List<RoadDraft> roadList;
    public final List<BuildingDraft> spawnBuildingList;
    public final List<BuildingDraft> stationBuildingList;
    public final TSLibrary tsLibrary;
    public final TSSystemConfig config = new TSSystemConfig();
    public final Set<BuildingDraft> stationBuildingSet = new HashSet();
    public final Set<BuildingDraft> spawnBuildingSet = new HashSet();
    public final Set<BuildingDraft> depotBuildingSet = new HashSet();
    public final Set<BusStopDraft> busStopSet = new HashSet();
    public final Set<RoadDraft> roadSet = new HashSet();

    public TSSystemDraft(TSLibrary tSLibrary, String str, LuaTable luaTable, long j, List<BuildingDraft> list, List<BuildingDraft> list2, List<BuildingDraft> list3, List<BusStopDraft> list4, List<RoadDraft> list5, Script script, ScriptMethod scriptMethod, ScriptMethod scriptMethod2, ScriptMethod scriptMethod3, ScriptMethod scriptMethod4) {
        this.tsLibrary = tSLibrary;
        this.id = str;
        this.impl = luaTable;
        this.roadFlags = j;
        this.owner = script;
        this.onEnterCity = scriptMethod;
        this.onLeaveCity = scriptMethod2;
        this.onAddedStation = scriptMethod3;
        this.onRemovedStation = scriptMethod4;
        for (BuildingDraft buildingDraft : list) {
            if (buildingDraft != null) {
                this.stationBuildingSet.add(buildingDraft);
            }
        }
        for (BuildingDraft buildingDraft2 : list2) {
            if (buildingDraft2 != null) {
                this.spawnBuildingSet.add(buildingDraft2);
            }
        }
        for (BuildingDraft buildingDraft3 : list3) {
            if (buildingDraft3 != null) {
                this.depotBuildingSet.add(buildingDraft3);
            }
        }
        for (BusStopDraft busStopDraft : list4) {
            if (busStopDraft != null) {
                this.busStopSet.add(busStopDraft);
            }
        }
        for (RoadDraft roadDraft : list5) {
            if (roadDraft != null) {
                this.roadSet.add(roadDraft);
            }
        }
        this.stationBuildingSet.removeAll(this.spawnBuildingSet);
        this.stationBuildingList = new ArrayList(this.stationBuildingSet);
        this.spawnBuildingList = new ArrayList(this.spawnBuildingSet);
        this.depotBuildingList = new ArrayList(this.depotBuildingSet);
        this.busStopsList = new ArrayList(this.busStopSet);
        this.roadList = new ArrayList(this.roadSet);
    }

    public void onEnterCity() {
        this.onEnterCity.call();
    }

    public void onLeaveCity() {
        this.onLeaveCity.call();
    }

    public void addStation(int i, int i2) {
        if (this.tsLibrary.getCityComponent() != null) {
            this.onAddedStation.call(LuaValue.valueOf(i), i2 >= 0 ? LuaValue.valueOf(i2) : LuaValue.NIL);
        }
    }

    public void removeStation(int i, int i2) {
        if (this.tsLibrary.getCityComponent() != null) {
            this.onRemovedStation.call(LuaValue.valueOf(i), i2 >= 0 ? LuaValue.valueOf(i2) : LuaValue.NIL);
        }
    }

    public String getId() {
        return this.id;
    }

    public LuaTable getImpl() {
        return this.impl;
    }

    public long getRoadFlags() {
        return this.roadFlags;
    }

    public Script getOwner() {
        return this.owner;
    }

    public Draft getOwnerDraft() {
        return this.owner.getDraft();
    }

    public int getIcon() {
        Draft ownerDraft = getOwnerDraft();
        int[] iArr = ownerDraft.iconFrames;
        if (iArr != null) {
            return iArr[0];
        }
        int[] iArr2 = ownerDraft.previewFrames;
        if (iArr2 != null) {
            return iArr2[0];
        }
        return 0;
    }

    public int countStationBuildings() {
        return this.stationBuildingList.size();
    }

    public int countSpawnBuildings() {
        return this.spawnBuildingList.size();
    }

    public int countBusStops() {
        return this.busStopsList.size();
    }

    public boolean isStationBuilding(BuildingDraft buildingDraft) {
        return this.stationBuildingSet.contains(buildingDraft);
    }

    public boolean isSpawnBuilding(BuildingDraft buildingDraft) {
        return this.spawnBuildingSet.contains(buildingDraft);
    }

    public boolean isDepotBuilding(BuildingDraft buildingDraft) {
        return this.depotBuildingSet.contains(buildingDraft);
    }

    public boolean isSupportedRoad(Road road) {
        return (road == null || (road.getFlags() & this.roadFlags) == 0) ? false : true;
    }

    public boolean isBusStop(BusStopDraft busStopDraft) {
        if (busStopDraft == null) {
            return false;
        }
        return this.busStopSet.contains(busStopDraft);
    }

    public List<BuildingDraft> getStationBuildings() {
        return this.stationBuildingList;
    }

    public List<BuildingDraft> getSpawnBuildings() {
        return this.spawnBuildingList;
    }

    public List<BuildingDraft> getDepotBuildings() {
        return this.depotBuildingList;
    }

    public List<BusStopDraft> getBusStops() {
        return this.busStopsList;
    }

    public List<RoadDraft> getRoads() {
        return this.roadList;
    }

    public LuaValue getLuaRepr() {
        return this.luaRepr;
    }

    public void setLuaRepr(LuaValue luaValue) {
        this.luaRepr = luaValue;
    }

    public TSSystemConfig getConfig() {
        return this.config;
    }
}
