package info.flowersoft.theotown.components;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.RoadList;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.neighbors.NeighborCity;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Way;
import info.flowersoft.theotown.components.airport.Airplane;
import info.flowersoft.theotown.components.airport.DefaultAirport;
import info.flowersoft.theotown.components.airport.Lane;
import info.flowersoft.theotown.components.traffic.ReachabilityMap;
import info.flowersoft.theotown.components.transportationsystem.TSStation;
import info.flowersoft.theotown.components.transportationsystem.TSSystem;
import info.flowersoft.theotown.components.transportationsystem.TSSystemConfig;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.ListSampler;
import info.flowersoft.theotown.util.SortedList;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.MinimumSelector;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultTransportation extends CityComponent {
    public static final JSONObject RUSH_HOUR_CONFIG = Resources.getSpecificConfig("rush hour");
    public List<List<CarDraft>> carDrafts;
    public DefaultInfluence influence;
    public ReachabilityMap reachabilityMap;
    public DefaultTSComponent tsComponent;
    public float peopleEstimator = -1.0f;
    public final IntList tempList0 = new IntList();
    public final IntList tempList1 = new IntList();

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 16;
    }

    public void save(JsonWriter jsonWriter) {
    }

    public DefaultTransportation() {
    }

    public DefaultTransportation(JsonReader jsonReader, City city) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.nextName().getClass();
            jsonReader.skipValue();
        }
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        this.carDrafts = new ArrayList(9);
        for (int i = 0; i < 9; i++) {
            this.carDrafts.add(null);
        }
        for (int i2 = 0; i2 < 3; i2++) {
            this.carDrafts.set(i2, Drafts.getDraftsWithTag("carres" + i2, CarDraft.class));
            this.carDrafts.set(i2 + 3, Drafts.getDraftsWithTag("carcom" + i2, CarDraft.class));
            this.carDrafts.set(i2 + 6, Drafts.getDraftsWithTag("carind" + i2, CarDraft.class));
        }
        this.reachabilityMap = new ReachabilityMap(city.getWidth(), city.getHeight());
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.components.DefaultTransportation$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$info$flowersoft$theotown$draft$BuildingType;

        static {
            int[] iArr = new int[BuildingType.values().length];
            $SwitchMap$info$flowersoft$theotown$draft$BuildingType = iArr;
            try {
                iArr[BuildingType.RESIDENTIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.COMMERCIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.INDUSTRIAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public final List<CarDraft> getCarDrafts(BuildingType buildingType, int i) {
        int i2 = AnonymousClass1.$SwitchMap$info$flowersoft$theotown$draft$BuildingType[buildingType.ordinal()];
        if (i2 == 1) {
            return this.carDrafts.get(i);
        }
        if (i2 == 2) {
            return this.carDrafts.get(i + 3);
        }
        if (i2 == 3) {
            return this.carDrafts.get(i + 6);
        }
        throw new IllegalStateException("unreachable");
    }

    public ReachabilityMap getReachabilityMask() {
        return this.reachabilityMap;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void prepare() {
        super.prepare();
        this.influence = (DefaultInfluence) this.city.getComponent(2);
        this.tsComponent = (DefaultTSComponent) this.city.getComponent(22);
    }

    public void addFoundWay(CarDraft carDraft, int i, Building building, Building building2, int i2, int i3, int i4, int i5, Way way, int i6) {
        FoundWay foundWay = new FoundWay(null);
        foundWay.carDraft = carDraft;
        foundWay.frame = i;
        foundWay.start = building;
        foundWay.target = building2;
        foundWay.startX = i2;
        foundWay.startY = i3;
        foundWay.targetX = i4;
        foundWay.targetY = i5;
        foundWay.way = way;
        foundWay.wealthLevel = i6;
    }

    public void foundCarWayBuildings(Building building, Building building2, int i) {
        takeCar(building, building2, i);
        if (building == null || building2 == null) {
            return;
        }
        this.reachabilityMap.foundWay(building.getX(), building.getY(), building2.getX(), building2.getY());
    }

    public void foundCarWay(int i, int i2, int i3, int i4) {
        this.reachabilityMap.foundWay(i, i2, i3, i4);
    }

    public void foundNoCarWayBuildings(Building building, Building building2) {
        building.addReachability(-0.1f);
        building2.addReachability(-0.1f);
    }

    public void foundNoCarWay(int i, int i2, int i3, int i4) {
        this.reachabilityMap.foundNoWay(i, i2, i3, i4);
    }

    public final float getTrafficMultiplier() {
        float f = Settings.carRatio / 100.0f;
        if (Settings.rushHour) {
            float originalDaytime = this.city.getOriginalDaytime();
            JSONObject jSONObject = RUSH_HOUR_CONFIG;
            float fOptDouble = (float) jSONObject.optDouble("active factor", 1.0d);
            float fOptDouble2 = (float) jSONObject.optDouble("inactive factor", 1.0d);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("times");
            boolean z = false;
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                boolean z2 = false;
                for (int i = 0; i < jSONArrayOptJSONArray.length() - 1 && !z2; i += 2) {
                    z2 = ((float) jSONArrayOptJSONArray.optDouble(i)) / 24.0f <= originalDaytime && originalDaytime <= ((float) jSONArrayOptJSONArray.optDouble(i + 1)) / 24.0f;
                }
                z = z2;
            }
            f = z ? f * fOptDouble : f * fOptDouble2;
        }
        return ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay() % 7 >= 5 ? f * 0.5f : f;
    }

    public final void considerAirportSource(int i, ProbabilitySelector<Building> probabilitySelector) {
        Building building;
        Building building2;
        DefaultAirport defaultAirport = (DefaultAirport) this.city.getComponent(19);
        if (defaultAirport.getLanes().isEmpty() || i / 10 <= 0) {
            return;
        }
        List<Lane> lanes = defaultAirport.getLanes();
        int i2 = 0;
        for (int i3 = 0; i3 < lanes.size(); i3++) {
            try {
                Airplane airplane = lanes.get(i3).getAirplane();
                if (airplane != null) {
                    i2 += airplane.getDraft().capacity;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        int iMin = Math.min(i2, i) / 10;
        if (iMin > 0) {
            SortedList<Building> buildingsOfType = this.city.getBuildings().getBuildingsOfType(BuildingType.AIRPORT);
            int i4 = 0;
            for (int i5 = 0; i5 < buildingsOfType.size() && (building2 = buildingsOfType.get(i5)) != null; i5++) {
                if (building2.hasNeededRoad()) {
                    i4++;
                }
            }
            if (i4 > 0) {
                for (int i6 = 0; i6 < buildingsOfType.size() && (building = buildingsOfType.get(i6)) != null; i6++) {
                    if (building.hasNeededRoad()) {
                        probabilitySelector.insert(building, iMin / i4);
                    }
                }
            }
        }
    }

    public final void estimatePeople(List<Building> list, ListSampler<Building> listSampler) {
        int i = this.peopleEstimator < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? 100 : 10;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Building buildingSample = listSampler.sample(Resources.RND);
            if (buildingSample != null && buildingSample.isWorking()) {
                i2 += buildingSample.getDraft().rciCars;
            }
        }
        float size = (i2 * list.size()) / i;
        float f = this.peopleEstimator;
        if (f < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            this.peopleEstimator = size;
        } else {
            this.peopleEstimator = (f * 0.9f) + (size * 0.1f);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void updateCars(int r26, info.flowersoft.theotown.components.traffic.carcontroller.BuildingCarSpawner r27) {
        /*
            Method dump skipped, instruction units count: 595
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.DefaultTransportation.updateCars(int, info.flowersoft.theotown.components.traffic.carcontroller.BuildingCarSpawner):void");
    }

    public final NeighborCity sampleNeighborCity() {
        ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
        for (int i = 0; i < this.city.countNeighbors(); i++) {
            NeighborCity neighbor = this.city.getNeighbor(i);
            if (neighbor != null) {
                probabilitySelector.insert(neighbor, neighbor.getInhabitants() + 100.0f);
            }
        }
        return (NeighborCity) probabilitySelector.getResult();
    }

    public final Road sampleNeighborConnectionRoad(NeighborCity neighborCity) {
        ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
        RoadList roads = this.city.getRoads();
        for (int i = 0; i < roads.getConnectionSize(); i++) {
            try {
                Road connection = roads.getConnection(i);
                if (connection != null) {
                    int x = connection.getX() + Direction.differenceX(connection.getConnectionDir());
                    int y = connection.getY() + Direction.differenceY(connection.getConnectionDir());
                    if (neighborCity == null || neighborCity.contains(x, y)) {
                        probabilitySelector.insert(connection, connection.draft.speed);
                    }
                }
            } catch (ArrayIndexOutOfBoundsException e) {
                e.printStackTrace();
            }
        }
        return (Road) probabilitySelector.getResult();
    }

    public final void walk(Building building, Building building2) {
        connect(building, building2, -1);
    }

    public final void takeCar(Building building, Building building2, int i) {
        connect(building, building2, i);
    }

    public final boolean takeBus(BusStop busStop, BusStop busStop2, Building building, Building building2) {
        connect(building, building2, -1);
        int iNextInt = Resources.RND.nextInt(4) + 1;
        busStop.addWaiters(iNextInt);
        busStop2.addWaiters(iNextInt);
        return true;
    }

    public final void connect(Building building, Building building2, int i) {
        if (building != null) {
            building.addReachability(0.1f);
        }
        if (building2 != null) {
            building2.addReachability(0.1f);
        }
    }

    public final boolean tryToTakeLegacyBus(Building building, Building building2) {
        BusStop nextBusStop;
        BusStop nextBusStop2;
        if (!DefaultIdleGame.isActive() || Resources.RND.nextFloat() >= 0.8f || (nextBusStop = getNextBusStop(building)) == null || (nextBusStop2 = getNextBusStop(building2)) == null || nextBusStop == nextBusStop2) {
            return false;
        }
        return takeBus(nextBusStop, nextBusStop2, building, building2);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int findSuitableStation(info.flowersoft.theotown.components.transportationsystem.TSSystem r9, info.flowersoft.theotown.city.objects.Building r10, boolean r11, io.blueflower.stapel2d.util.IntList r12) {
        /*
            r8 = this;
            io.blueflower.stapel2d.util.IntList r12 = r9.getStationIds(r12)
            info.flowersoft.theotown.components.transportationsystem.TSSystemDraft r0 = r9.getDraft()
            info.flowersoft.theotown.components.transportationsystem.TSSystemConfig r0 = r0.getConfig()
            int r0 = r0.stationRadius
            int r0 = r0 * r0
            int r0 = r0 + 1
            r1 = -1
            r2 = 0
        L13:
            int r3 = r12.size()
            if (r2 >= r3) goto L85
            int r3 = r12.get(r2)
            info.flowersoft.theotown.components.transportationsystem.TSStation r4 = r9.getStationById(r3)
            if (r4 != 0) goto L24
            goto L82
        L24:
            boolean r5 = r4.isCity()
            if (r5 == 0) goto L2b
            goto L82
        L2b:
            int r5 = r4.getCapacity()
            if (r5 > 0) goto L32
            goto L82
        L32:
            if (r11 != 0) goto L4d
            int r6 = r4.getWaiting()
            if (r6 < r5) goto L3b
            goto L82
        L3b:
            int r6 = r4.getWaiting()
            float r6 = (float) r6
            float r5 = (float) r5
            float r6 = r6 / r5
            java.util.Random r5 = info.flowersoft.theotown.resources.Resources.RND
            float r5 = r5.nextFloat()
            int r5 = (r6 > r5 ? 1 : (r6 == r5 ? 0 : -1))
            if (r5 <= 0) goto L5f
            goto L82
        L4d:
            int r6 = r4.getReaching()
            float r6 = (float) r6
            float r5 = (float) r5
            float r6 = r6 / r5
            java.util.Random r5 = info.flowersoft.theotown.resources.Resources.RND
            float r5 = r5.nextFloat()
            int r5 = (r6 > r5 ? 1 : (r6 == r5 ? 0 : -1))
            if (r5 <= 0) goto L5f
            goto L82
        L5f:
            info.flowersoft.theotown.util.TileSet r4 = r4.getTiles()
            int r5 = r10.getX()
            int r6 = r10.getWidth()
            int r5 = r4.distanceX(r5, r6)
            int r6 = r10.getY()
            int r7 = r10.getHeight()
            int r4 = r4.distanceY(r6, r7)
            int r5 = r5 * r5
            int r4 = r4 * r4
            int r5 = r5 + r4
            if (r5 >= r0) goto L82
            r1 = r3
            r0 = r5
        L82:
            int r2 = r2 + 1
            goto L13
        L85:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.DefaultTransportation.findSuitableStation(info.flowersoft.theotown.components.transportationsystem.TSSystem, info.flowersoft.theotown.city.objects.Building, boolean, io.blueflower.stapel2d.util.IntList):int");
    }

    public boolean tryToTakeTS(Building building, Building building2, boolean z) {
        int iFindSuitableStation;
        int iFindSuitableStation2;
        List<TSSystem> systems = this.tsComponent.getSystems();
        IntList intList = this.tempList0;
        intList.clear();
        for (int i = 0; i < systems.size(); i++) {
            intList.add(i);
        }
        for (int i2 = 0; i2 < systems.size(); i2++) {
            intList.swap(i2, Resources.RND.nextInt(intList.size()));
        }
        for (int i3 = 0; i3 < intList.size(); i3++) {
            TSSystem tSSystem = systems.get(intList.get(i3));
            TSSystemConfig config = tSSystem.getDraft().getConfig();
            if (Resources.RND.nextFloat() <= (z ? config.passengerFactor : config.freightFactor) && (iFindSuitableStation = findSuitableStation(tSSystem, building, false, this.tempList1)) != -1 && (iFindSuitableStation2 = findSuitableStation(tSSystem, building2, true, this.tempList1)) != -1) {
                if (iFindSuitableStation == iFindSuitableStation2) {
                    walk(building, building2);
                    return true;
                }
                TSStation stationById = tSSystem.getStationById(iFindSuitableStation);
                TSStation stationById2 = tSSystem.getStationById(iFindSuitableStation2);
                stationById.addWaiting(1);
                stationById2.addReaching(1);
                return true;
            }
        }
        return false;
    }

    public final boolean tryToWalk(Building building, Building building2) {
        if (this.city.getDistance().get(building, building2) > Resources.RND.nextFloat() * 9.0f) {
            return false;
        }
        walk(building, building2);
        return true;
    }

    public BusStop getNextBusStop(Building building) {
        if (Resources.RND.nextFloat() > this.influence.getInfluence(building, InfluenceType.PASSENGER_BUS.ordinal())) {
            return null;
        }
        MinimumSelector minimumSelector = new MinimumSelector();
        SortedList<BusStop> sorted = this.city.getBusStops().getSorted();
        for (int indexOfValue = sorted.getIndexOfValue(building.getX() - 10); indexOfValue < sorted.size(); indexOfValue++) {
            BusStop busStop = sorted.get(indexOfValue);
            if (busStop != null) {
                int i = this.city.getDistance().get(building, busStop.getX(), busStop.getY());
                if (i <= 10 && busStop.getWaiting() <= busStop.getDraft().capacity) {
                    minimumSelector.assume(busStop, i);
                }
                if ((busStop.getX() - building.getX()) - building.getWidth() > 10) {
                    break;
                }
            }
        }
        if (minimumSelector.hasResult()) {
            return (BusStop) minimumSelector.getMinimum();
        }
        return null;
    }

    public static class FoundWay {
        public CarDraft carDraft;
        public int frame;
        public Building start;
        public int startX;
        public int startY;
        public Building target;
        public int targetX;
        public int targetY;
        public Way way;
        public int wealthLevel;

        public FoundWay() {
        }

        public /* synthetic */ FoundWay(AnonymousClass1 anonymousClass1) {
            this();
        }
    }
}
