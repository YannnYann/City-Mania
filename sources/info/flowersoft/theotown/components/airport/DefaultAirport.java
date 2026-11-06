package info.flowersoft.theotown.components.airport;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.draft.FlyingObjectDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.SafeListAccessor;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.CyclicWorker;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultAirport extends CityComponent implements Saveable {
    public int airplaneCounter;
    public int laneCounter;
    public int launchedAirplanes;
    public int transferredPassengers;
    public final List<RoadDraft> laneRoadDrafts = Drafts.getDraftsWithTag("airport lane", RoadDraft.class);
    public final List<Lane> lanes = new ArrayList();
    public final List<Airplane> airplanes = new ArrayList();
    public final IntList[] virtualLanes = {new IntList(), new IntList()};

    public static boolean isInLine(int i, int i2, int i3, int i4, int i5, int i6) {
        if (i3 == i5) {
            return i3 == i && i2 >= i4 && i2 <= i6;
        }
        if (i4 == i2 && i >= i3 && i <= i5) {
            return true;
        }
        return false;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 19;
    }

    public DefaultAirport(City city) {
        this.city = city;
        addWorker(new CyclicWorker(new Runnable() { // from class: info.flowersoft.theotown.components.airport.DefaultAirport.1
            @Override // java.lang.Runnable
            public void run() {
                DefaultAirport.this.updateAirport();
            }
        }, true));
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "lane ctr":
                    this.laneCounter = jsonReader.nextInt();
                    break;
                case "transferred passengers":
                    this.transferredPassengers = jsonReader.nextInt();
                    break;
                case "lanes":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        this.lanes.add(new Lane(jsonReader, this.city));
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    break;
                case "airplanes":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        try {
                            this.airplanes.add(new Airplane(jsonReader, this.city));
                        } catch (IllegalArgumentException unused) {
                            while (jsonReader.hasNext()) {
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    break;
                case "airplane ctr":
                    this.airplaneCounter = jsonReader.nextInt();
                    break;
                case "launched airplanes":
                    this.launchedAirplanes = jsonReader.nextInt();
                    break;
                case "assignments":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        int iNextInt = -1;
                        int iNextInt2 = -1;
                        while (jsonReader.hasNext()) {
                            String strNextName2 = jsonReader.nextName();
                            strNextName2.getClass();
                            if (strNextName2.equals("lane id")) {
                                iNextInt = jsonReader.nextInt();
                            } else if (strNextName2.equals("airplane id")) {
                                iNextInt2 = jsonReader.nextInt();
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                        getLaneOfId(iNextInt).airplane = getAirplaneOfId(iNextInt2);
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("lanes").beginArray();
        for (int i = 0; i < this.lanes.size(); i++) {
            jsonWriter.beginObject();
            this.lanes.get(i).save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
        jsonWriter.name("airplanes").beginArray();
        for (int i2 = 0; i2 < this.airplanes.size(); i2++) {
            jsonWriter.beginObject();
            this.airplanes.get(i2).save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
        jsonWriter.name("assignments").beginArray();
        for (int i3 = 0; i3 < this.lanes.size(); i3++) {
            Lane lane = this.lanes.get(i3);
            if (lane.airplane != null) {
                jsonWriter.beginObject();
                jsonWriter.name("lane id").value(lane.id);
                jsonWriter.name("airplane id").value(lane.airplane.id);
                jsonWriter.endObject();
            }
        }
        jsonWriter.endArray();
        jsonWriter.name("lane ctr").value(this.laneCounter);
        jsonWriter.name("airplane ctr").value(this.airplaneCounter);
        jsonWriter.name("launched airplanes").value(this.launchedAirplanes);
        jsonWriter.name("transferred passengers").value(this.transferredPassengers);
    }

    public int getLaunchedAirplanes() {
        return this.launchedAirplanes;
    }

    public void setLaunchedAirplanes(int i) {
        this.launchedAirplanes = i;
    }

    public int getTransferredPassengers() {
        return this.transferredPassengers;
    }

    public void setTransferredPassengers(int i) {
        this.transferredPassengers = i;
    }

    public final void updateAirport() {
        collectVirtualLanes();
        mergeLanes();
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00ca A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void mergeLanes() {
        /*
            Method dump skipped, instruction units count: 282
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.airport.DefaultAirport.mergeLanes():void");
    }

    public final void collectVirtualLanes() {
        int i;
        int i2;
        int i3;
        int i4 = 1;
        this.virtualLanes[1].clear();
        int i5 = 0;
        while (i5 < this.laneRoadDrafts.size()) {
            for (Road road : new SafeListAccessor(this.city.getRoads().getRoadsOfDraft(this.laneRoadDrafts.get(i5)))) {
                int i6 = -1;
                if (isTileInVirtualLanes(road.x, road.y, this.virtualLanes[i4]) == -1) {
                    int i7 = road.x;
                    int i8 = road.y;
                    int onewayDir = road.getOnewayDir();
                    int iDifferenceX = Direction.differenceX(onewayDir);
                    int iDifferenceY = Direction.differenceY(onewayDir);
                    int iMax = i7;
                    int iMin = iMax;
                    int iMax2 = i8;
                    int iMin2 = iMax2;
                    while (i6 <= i4) {
                        int i9 = i6 * iDifferenceX;
                        int i10 = i7 + i9;
                        int i11 = i6 * iDifferenceY;
                        int i12 = i4;
                        int i13 = i8 + i11;
                        while (true) {
                            if (!this.city.isValid(i10, i13)) {
                                i3 = i5;
                                break;
                            }
                            i3 = i5;
                            Road road2 = this.tiles.getRoad(i10, i13, 0);
                            if (road2 == null || !this.laneRoadDrafts.contains(road2.draft)) {
                                break;
                            }
                            i10 += i9;
                            i13 += i11;
                            i5 = i3;
                        }
                        int i14 = i10 - i9;
                        int i15 = i13 - i11;
                        iMin = Math.min(iMin, i14);
                        iMin2 = Math.min(iMin2, i15);
                        iMax = Math.max(iMax, i14);
                        iMax2 = Math.max(iMax2, i15);
                        i6 += 2;
                        i4 = i12;
                        i5 = i3;
                    }
                    i = i4;
                    i2 = i5;
                    if ((((iMax - iMin) + iMax2) - iMin2) + 1 >= 12) {
                        this.virtualLanes[i].add(iMin);
                        this.virtualLanes[i].add(iMin2);
                        this.virtualLanes[i].add(iMax);
                        this.virtualLanes[i].add(iMax2);
                    }
                } else {
                    i = i4;
                    i2 = i5;
                }
                i4 = i;
                i5 = i2;
            }
            i5++;
        }
        int i16 = i4;
        IntList[] intListArr = this.virtualLanes;
        IntList intList = intListArr[0];
        intListArr[0] = intListArr[i16];
        intListArr[i16] = intList;
    }

    public boolean isTileInLanes(int i, int i2) {
        int i3;
        int i4;
        int i5 = 0;
        while (i5 < this.lanes.size()) {
            Lane lane = this.lanes.get(i5);
            if (lane.hasRealLane()) {
                i3 = i;
                i4 = i2;
                if (isInLine(i3, i4, lane.sx, lane.sy, lane.tx, lane.ty)) {
                    return true;
                }
            } else {
                i3 = i;
                i4 = i2;
            }
            i5++;
            i = i3;
            i2 = i4;
        }
        return false;
    }

    public boolean isTileInVirtualLanes(int i, int i2) {
        return isTileInVirtualLanes(i, i2, this.virtualLanes[0]) >= 0;
    }

    public final int isTileInVirtualLanes(int i, int i2, IntList intList) {
        int i3 = 0;
        while (i3 < intList.size()) {
            int i4 = i;
            int i5 = i2;
            if (isInLine(i4, i5, intList.get(i3), intList.get(i3 + 1), intList.get(i3 + 2), intList.get(i3 + 3))) {
                return i3;
            }
            i3 += 4;
            i = i4;
            i2 = i5;
        }
        return -1;
    }

    public boolean assignLane(Lane lane, int i, int i2) {
        IntList intList = this.virtualLanes[0];
        int iIsTileInVirtualLanes = isTileInVirtualLanes(i, i2, intList);
        if (iIsTileInVirtualLanes < 0) {
            return false;
        }
        lane.sx = intList.get(iIsTileInVirtualLanes);
        lane.sy = intList.get(iIsTileInVirtualLanes + 1);
        lane.tx = intList.get(iIsTileInVirtualLanes + 2);
        lane.ty = intList.get(iIsTileInVirtualLanes + 3);
        lane.realLane = true;
        return true;
    }

    public void unassignLane(Lane lane) {
        lane.realLane = false;
    }

    public void assignAirplaneToLane(Lane lane, Airplane airplane) {
        lane.airplane = airplane;
    }

    public void unassignAirplaneToLane(Airplane airplane) {
        Lane laneOfAirplane = getLaneOfAirplane(airplane);
        if (laneOfAirplane != null) {
            laneOfAirplane.airplane = null;
        }
    }

    public Lane getLaneOfAirplane(Airplane airplane) {
        for (Lane lane : this.lanes) {
            if (lane.airplane == airplane) {
                return lane;
            }
        }
        return null;
    }

    public boolean isAirplaneAssigned(Airplane airplane) {
        return getLaneOfAirplane(airplane) != null;
    }

    public Lane addLane() {
        int i = this.laneCounter;
        this.laneCounter = i + 1;
        Lane lane = new Lane(i, this.city);
        lane.realLane = false;
        synchronized (this.lanes) {
            this.lanes.add(lane);
        }
        return lane;
    }

    public Airplane addAirplane(FlyingObjectDraft flyingObjectDraft, int i) {
        int i2 = this.airplaneCounter;
        this.airplaneCounter = i2 + 1;
        Airplane airplane = new Airplane(i2, flyingObjectDraft, i, this.city);
        this.airplanes.add(airplane);
        return airplane;
    }

    public void removeLane(Lane lane) {
        synchronized (this.lanes) {
            this.lanes.remove(lane);
        }
    }

    public int countActivePassengerTransport() {
        int i;
        Airplane airplane;
        synchronized (this.lanes) {
            i = 0;
            for (int i2 = 0; i2 < this.lanes.size(); i2++) {
                try {
                    Lane lane = this.lanes.get(i2);
                    if (lane.isActive() && (airplane = lane.getAirplane()) != null) {
                        i += airplane.airplaneDraft.capacity;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return i;
    }

    public List<Lane> getLanes() {
        return this.lanes;
    }

    public Lane getLaneOfId(int i) {
        for (int i2 = 0; i2 < this.lanes.size(); i2++) {
            if (this.lanes.get(i2).id == i) {
                return this.lanes.get(i2);
            }
        }
        return null;
    }

    public Airplane getAirplaneOfId(int i) {
        for (int i2 = 0; i2 < this.airplanes.size(); i2++) {
            if (this.airplanes.get(i2).id == i) {
                return this.airplanes.get(i2);
            }
        }
        return null;
    }

    public List<Airplane> getAirplanes() {
        return this.airplanes;
    }
}
