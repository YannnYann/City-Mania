package info.flowersoft.theotown.components.transportationsystem;

import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.util.TileSet;
import io.blueflower.stapel2d.util.MathUtil;
import java.util.Collections;
import java.util.List;
import vm2.LuaTable;

/* JADX INFO: loaded from: classes4.dex */
public class TSStation {
    public float avgReaching;
    public float avgTransferPerDay;
    public float avgWaiting;
    public List<BusStop> busStops;
    public int capacity;
    public final int cityX;
    public final int cityY;
    public final TSSystemDraft draft;
    public final int id;
    public String name;
    public float reaching;
    public float reachingOverTime;
    public List<Road> roads;
    public List<Building> spawnBuildings;
    public List<Building> stationBuildings;
    public final LuaTable storage;
    public TileSet tiles;
    public int transferSinceLastDay;
    public float waiting;
    public float waitingOverTime;
    public String warningMessage;

    public TSStation(TSSystemDraft tSSystemDraft, int i, LuaTable luaTable, String str, int i2, int i3) {
        this.draft = tSSystemDraft;
        this.id = i;
        this.storage = luaTable;
        this.name = str;
        this.cityX = i2;
        this.cityY = i3;
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getNameOrUnnamed() {
        if (!this.name.isEmpty()) {
            return this.name;
        }
        return "Unnamed Station " + getId();
    }

    public void setName(String str) {
        this.name = str;
    }

    public LuaTable getStorage() {
        return this.storage;
    }

    public boolean isCity() {
        return (this.cityX == 0 && this.cityY == 0) ? false : true;
    }

    public int getCityX() {
        return this.cityX;
    }

    public int getCityY() {
        return this.cityY;
    }

    public TileSet getTiles() {
        return this.tiles;
    }

    public boolean contains(int i, int i2) {
        TileSet tileSet = this.tiles;
        return tileSet != null && tileSet.contains(i, i2);
    }

    public List<Building> getStationBuildings() {
        return this.stationBuildings;
    }

    public List<Building> getSpawnBuildings() {
        return this.spawnBuildings;
    }

    public List<BusStop> getBusStops() {
        return this.busStops;
    }

    public List<Road> getRoads() {
        return this.roads;
    }

    public int getCapacity() {
        return this.capacity;
    }

    public float getWaitingOverTime() {
        return this.waitingOverTime;
    }

    public void setWaitingOverTime(float f) {
        this.waitingOverTime = f;
    }

    public float getReachingOverTime() {
        return this.reachingOverTime;
    }

    public void setReachingOverTime(float f) {
        this.reachingOverTime = f;
    }

    public float getAvgWaiting() {
        return this.avgWaiting;
    }

    public void setAvgWaiting(float f) {
        this.avgWaiting = f;
    }

    public float getAvgReaching() {
        return this.avgReaching;
    }

    public void setAvgReaching(float f) {
        this.avgReaching = f;
    }

    public float getAvgTransferPerDay() {
        return this.avgTransferPerDay;
    }

    public void setAvgTransferPerDay(float f) {
        this.avgTransferPerDay = f;
    }

    public int getTransferSinceLastDay() {
        return this.transferSinceLastDay;
    }

    public void setTransferSinceLastDay(int i) {
        this.transferSinceLastDay = i;
    }

    public float getWaitingUsage() {
        return this.avgWaiting / Math.max(this.capacity, 1);
    }

    public float getReachingUsage() {
        return this.avgReaching / Math.max(this.capacity, 1);
    }

    public float getTransferUsage() {
        return (this.avgTransferPerDay * 30.0f) / Math.max(this.capacity, 1);
    }

    public int getWaiting() {
        return (int) this.waiting;
    }

    public void setWaiting(int i) {
        this.waiting = i;
    }

    public int addWaiting(int i) {
        int iMin = Math.min(i, this.capacity - getWaiting());
        float f = iMin;
        this.waiting += f;
        this.waitingOverTime = Math.min(this.waitingOverTime + f, this.capacity / 2.0f);
        return i - iMin;
    }

    public int takePassengers(int i) {
        int iMin = Math.min(i, getWaiting());
        this.waiting -= iMin;
        this.transferSinceLastDay += iMin;
        return iMin;
    }

    public int getReaching() {
        return (int) this.reaching;
    }

    public void setReaching(int i) {
        this.reaching = i;
    }

    public int addReaching(int i) {
        int iMin = Math.min(i, this.capacity - getReaching());
        float f = iMin;
        this.reaching += f;
        this.reachingOverTime = Math.min(this.reachingOverTime + f, this.capacity / 2.0f);
        return i - iMin;
    }

    public int deliverPassengers(int i) {
        int iMin = Math.min(i, getReaching());
        this.reaching -= Math.min(i * 2, getReaching());
        this.transferSinceLastDay += iMin;
        return i - iMin;
    }

    public String getWarningMessage() {
        return this.warningMessage;
    }

    public void setWarningMessage(String str) {
        this.warningMessage = str;
    }

    public void nextDay() {
        TSSystemConfig config = this.draft.getConfig();
        float f = this.waitingOverTime * config.waiterDecay;
        this.waitingOverTime = f;
        this.reachingOverTime *= config.reacherDecay;
        this.waiting = Math.min(this.waiting + f, this.capacity);
        this.reaching = Math.min(this.reaching + this.reachingOverTime, this.capacity);
        this.avgWaiting = MathUtil.lerp(this.waiting, this.avgWaiting, 0.95f);
        this.avgReaching = MathUtil.lerp(this.reaching, this.avgReaching, 0.95f);
        this.avgTransferPerDay = MathUtil.lerp(this.transferSinceLastDay, this.avgTransferPerDay, 0.95f);
        this.transferSinceLastDay = 0;
        for (int i = 0; i < this.busStops.size(); i++) {
            this.busStops.get(i).setUsage(this.waiting / this.capacity);
        }
    }

    public void initialize(TileSet tileSet, List<Road> list) {
        if (!isCity()) {
            throw new IllegalArgumentException();
        }
        this.tiles = tileSet;
        List list2 = Collections.EMPTY_LIST;
        this.stationBuildings = list2;
        this.spawnBuildings = list2;
        this.busStops = list2;
        this.roads = list;
        this.capacity = 0;
    }

    public void initialize(TileSet tileSet, List<Building> list, List<Building> list2, List<BusStop> list3) {
        if (isCity()) {
            throw new IllegalArgumentException();
        }
        this.tiles = tileSet;
        this.stationBuildings = list;
        this.spawnBuildings = list2;
        this.busStops = list3;
        this.roads = Collections.EMPTY_LIST;
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            i += list.get(i2).getDraft().capacity;
        }
        for (int i3 = 0; i3 < list2.size(); i3++) {
            i += list2.get(i3).getDraft().capacity;
        }
        for (int i4 = 0; i4 < list3.size(); i4++) {
            i += list3.get(i4).getDraft().capacity;
        }
        this.capacity = i;
    }
}
