package info.flowersoft.theotown.components.transportationsystem;

import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.scripting.LuaTableSerializer;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import vm2.LuaTable;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class TSSystem {
    public final City city;
    public final TSSystemDraft draft;
    public final TSStationCollector stationCollector;
    public final Tiles tiles;
    public final IntList tempList = new IntList();
    public LuaTable storage = LuaValue.tableOf();

    public enum TSRouteMode {
        ONE_SHOT,
        LOOP,
        PING_PONG
    }

    public TSSystem(City city, TSSystemDraft tSSystemDraft) {
        this.city = city;
        this.tiles = city.getTiles();
        this.draft = tSSystemDraft;
        this.stationCollector = new TSStationCollector(city, tSSystemDraft);
    }

    public TSSystemDraft getDraft() {
        return this.draft;
    }

    public void load(JsonReader jsonReader) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "stg":
                    this.storage = LuaTableSerializer.deserialize(jsonReader);
                    break;
                case "nstid":
                    this.stationCollector.setNextStationId(jsonReader.nextInt());
                    break;
                case "stations":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        TSStation tSStationLoadStation = loadStation(jsonReader);
                        if (tSStationLoadStation != null) {
                            arrayList.add(tSStationLoadStation);
                        }
                    }
                    jsonReader.endArray();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        this.stationCollector.setStations(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final info.flowersoft.theotown.components.transportationsystem.TSStation loadStation(io.blueflower.stapel2d.util.json.JsonReader r22) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 532
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.transportationsystem.TSSystem.loadStation(io.blueflower.stapel2d.util.json.JsonReader):info.flowersoft.theotown.components.transportationsystem.TSStation");
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("stations").beginArray();
        List<TSStation> stations = this.stationCollector.getStations();
        for (int i = 0; i < stations.size(); i++) {
            saveStation(jsonWriter, stations.get(i));
        }
        jsonWriter.endArray();
        jsonWriter.name("stg");
        LuaTableSerializer.serialize(this.storage, jsonWriter);
        jsonWriter.name("nstid").value(this.stationCollector.getNextStationId());
    }

    public final void saveStation(JsonWriter jsonWriter, TSStation tSStation) throws IOException {
        jsonWriter.beginObject();
        jsonWriter.name(C3670j8.x).value(tSStation.getId());
        jsonWriter.name("xys").beginArray();
        for (int i = 0; i < tSStation.getTiles().size(); i++) {
            jsonWriter.value(tSStation.getTiles().getPackedXY(i));
        }
        jsonWriter.endArray();
        jsonWriter.name("stg");
        LuaTableSerializer.serialize(tSStation.getStorage(), jsonWriter);
        jsonWriter.name("name").value(tSStation.getName());
        if (tSStation.getWaiting() > 0) {
            jsonWriter.name("waiting").value(tSStation.getWaiting());
        }
        if (tSStation.getReaching() > 0) {
            jsonWriter.name("reaching").value(tSStation.getReaching());
        }
        if (tSStation.getWaitingOverTime() > 0.1f) {
            jsonWriter.name("wot").value(tSStation.getWaitingOverTime());
        }
        if (tSStation.getReachingOverTime() > 0.1f) {
            jsonWriter.name("rot").value(tSStation.getReachingOverTime());
        }
        if (tSStation.getAvgWaiting() > 0.1f) {
            jsonWriter.name("awaiting").value(tSStation.getAvgWaiting());
        }
        if (tSStation.getAvgReaching() > 0.1f) {
            jsonWriter.name("areaching").value(tSStation.getAvgReaching());
        }
        if (tSStation.getAvgTransferPerDay() > 0.1f) {
            jsonWriter.name("atransferpd").value(tSStation.getAvgTransferPerDay());
        }
        if (tSStation.getTransferSinceLastDay() > 0) {
            jsonWriter.name("transfersld").value(tSStation.getTransferSinceLastDay());
        }
        if (tSStation.isCity()) {
            jsonWriter.name("city x").value(tSStation.getCityX());
            jsonWriter.name("city y").value(tSStation.getCityY());
        }
        jsonWriter.endObject();
    }

    public String getId() {
        return this.draft.getId();
    }

    public IntList getStationIds(IntList intList) {
        return this.stationCollector.getStationIds(intList);
    }

    public TSStation getStationById(int i) {
        return this.stationCollector.getStationById(i);
    }

    public TSStation getStationByXY(int i, int i2) {
        return this.stationCollector.getStationByXY(i, i2);
    }

    public List<TSStation> getStations() {
        return this.stationCollector.getStations();
    }

    public TSStation getStationByXYLenient(int i, int i2) {
        TSStation stationByXY;
        TSStation stationByXY2 = getStationByXY(i, i2);
        if (stationByXY2 != null) {
            return stationByXY2;
        }
        Road topRoad = this.tiles.getTopRoad(i, i2);
        if (topRoad == null) {
            return null;
        }
        for (int i3 = -2; i3 <= topRoad.level; i3++) {
            Road road = this.tiles.getRoad(i, i2, i3);
            if (road != null && this.draft.isSupportedRoad(road)) {
                for (int i4 = 1; i4 <= 8; i4 *= 2) {
                    int iDifferenceX = Direction.differenceX(i4) + i;
                    int iDifferenceY = Direction.differenceY(i4) + i2;
                    if (this.city.isValid(iDifferenceX, iDifferenceY) && (stationByXY = getStationByXY(iDifferenceX, iDifferenceY)) != null) {
                        return stationByXY;
                    }
                }
                return null;
            }
        }
        return null;
    }

    public void prepare() {
        this.stationCollector.markDirty();
        this.stationCollector.update();
    }

    public void update() {
        this.stationCollector.update();
    }

    public void nextDay() {
        IntList stationIds = this.stationCollector.getStationIds(this.tempList);
        for (int i = 0; i < stationIds.size(); i++) {
            this.stationCollector.getStationById(stationIds.get(i)).nextDay();
        }
    }

    public void onAddBuilding(Building building) {
        BuildingDraft draft = building.getDraft();
        if (this.draft.isStationBuilding(draft) || this.draft.isSpawnBuilding(draft)) {
            this.stationCollector.markDirty();
        }
    }

    public void onRemoveBuilding(Building building) {
        BuildingDraft draft = building.getDraft();
        if (this.draft.isStationBuilding(draft) || this.draft.isSpawnBuilding(draft)) {
            this.stationCollector.markDirty();
        }
    }

    public void onAddBusStop(BusStop busStop) {
        if (this.draft.isBusStop(busStop.getDraft())) {
            this.stationCollector.markDirty();
        }
    }

    public void onRemoveBusStop(BusStop busStop) {
        if (this.draft.isBusStop(busStop.getDraft())) {
            this.stationCollector.markDirty();
        }
    }

    public void onAddRoad(Road road) {
        if (road.hasConnection() && this.draft.isSupportedRoad(road)) {
            this.stationCollector.markDirty();
        }
    }

    public void onRemoveRoad(Road road) {
        if (road.hasConnection() && this.draft.isSupportedRoad(road)) {
            this.stationCollector.markDirty();
        }
    }

    public LuaValue getStorage() {
        return this.storage;
    }

    public LuaValue call(String str) {
        return this.draft.getImpl().get(str).checkfunction().call(this.draft.getLuaRepr());
    }

    public LuaValue call(String str, LuaValue luaValue) {
        return this.draft.getImpl().get(str).checkfunction().call(this.draft.getLuaRepr(), luaValue);
    }

    public LuaValue call(String str, LuaValue luaValue, LuaValue luaValue2) {
        return this.draft.getImpl().get(str).checkfunction().call(this.draft.getLuaRepr(), luaValue, luaValue2);
    }

    public int queryPassengers() {
        LuaValue luaValueCall = call("getPassengerCount");
        if (luaValueCall == null || !luaValueCall.isnumber()) {
            return 0;
        }
        return luaValueCall.optint(0);
    }

    public List<TSRoute> queryRoutes() {
        LuaValue luaValueCall = call("getRoutes");
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i <= luaValueCall.length(); i++) {
            LuaValue luaValue = luaValueCall.get(i);
            String strCheckjstring = luaValue.get(C3670j8.x).checkjstring();
            String strCheckjstring2 = luaValue.get("name").checkjstring();
            String strCheckjstring3 = luaValue.get(C3522b4.i.S).checkjstring();
            LuaTable luaTableChecktable = luaValue.get("stationIds").checktable();
            IntList intList = new IntList();
            TSRouteMode tSRouteModeValueOf = TSRouteMode.valueOf(luaValue.get(C3522b4.a.t).optjstring(TSRouteMode.ONE_SHOT.name()));
            for (int i2 = 1; i2 <= luaTableChecktable.length(); i2++) {
                intList.add(luaTableChecktable.get(i2).checkint());
            }
            arrayList.add(new TSRoute(strCheckjstring, strCheckjstring2, Color.fromHex(strCheckjstring3, Colors.PURPLE, new Color()), intList, tSRouteModeValueOf));
        }
        return arrayList;
    }

    public int getPreviewFrame() {
        Draft ownerDraft = getDraft().getOwnerDraft();
        int[] iArr = ownerDraft.previewFrames;
        if (iArr != null) {
            return iArr[0];
        }
        int[] iArr2 = ownerDraft.iconFrames;
        if (iArr2 != null) {
            return iArr2[0];
        }
        return 0;
    }

    public boolean isAvailable() {
        return call("isSystemAvailable").toboolean();
    }

    public static class TSRoute {
        public final Color color;
        public final String id;
        public final TSRouteMode mode;
        public final String name;
        public final IntList stationIds;

        public TSRoute(String str, String str2, Color color, IntList intList, TSRouteMode tSRouteMode) {
            this.id = str;
            this.name = str2;
            this.color = color;
            this.stationIds = intList;
            this.mode = tSRouteMode;
        }
    }
}
