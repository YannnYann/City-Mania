package info.flowersoft.theotown.components.traffic.carcontroller;

import com.badlogic.gdx.utils.IntIntMap;
import com.google.android.gms.common.api.Api;
import info.flowersoft.theotown.city.BuildingSampler;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.RoadSampler;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultSoundManager;
import info.flowersoft.theotown.components.DefaultTraffic;
import info.flowersoft.theotown.components.actionplace.ActionPlaceController;
import info.flowersoft.theotown.components.actionplace.ActionPlaceHandler;
import info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.util.DataAccessor;
import info.flowersoft.theotown.util.Distance;
import info.flowersoft.theotown.util.EuclidianDistance;
import info.flowersoft.theotown.util.PackedInt2;
import info.flowersoft.theotown.util.SafeListAccessor;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class OperationCarController extends CarController implements ActionPlaceHandler {
    public static final Distance DISTANCE = new EuclidianDistance();
    public int actionIdCounter;
    public MapArea actionPlace;
    public ActionPlaceController actionPlaceController;
    public final int actionPlaceType;
    public BuildingSampler buildingSampler;
    public boolean canSampleRoad;
    public final Map<String, List<CarDraft>> carDraftsPerBuilding;
    public long lastActionDay;
    public boolean removeCar;
    public RoadSampler roadSampler;
    public int virtualCars;

    public void configureSampler(BuildingSampler buildingSampler) {
    }

    public int getRoadLevel() {
        return 0;
    }

    public abstract int getSoundID(Car car);

    public int getStationRadius(Building building) {
        return 32;
    }

    public abstract List<Building> getStations();

    public int getWealthLevel() {
        return 0;
    }

    public boolean hasBusStopTargets() {
        return false;
    }

    public boolean isValidStation(Building building) {
        return true;
    }

    public boolean loadTag(JsonReader jsonReader, String str) throws IOException {
        return false;
    }

    public abstract boolean onWorkDone(Car car, int i, int i2, int i3);

    public BusStop sampleBusStopTarget(Building building, int i, int i2) {
        return null;
    }

    public OperationCarController(CarSpawner carSpawner, int i) {
        super(carSpawner);
        this.carDraftsPerBuilding = new HashMap();
        this.canSampleRoad = true;
        this.removeCar = false;
        this.actionIdCounter = 1;
        this.lastActionDay = -1L;
        this.actionPlaceType = i;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void setCity(City city) {
        super.setCity(city);
        this.buildingSampler = new BuildingSampler(city, 0, 0, 0);
        this.roadSampler = new RoadSampler(city);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public final void load(JsonReader jsonReader, City city) throws IOException {
        this.city = city;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName.equals("actionId")) {
                this.actionIdCounter = jsonReader.nextInt();
            } else if (!loadTag(jsonReader, strNextName)) {
                jsonReader.skipValue();
            }
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("actionId").value(this.actionIdCounter);
        jsonWriter.name("actionDay").value(this.lastActionDay);
        if (this.actionPlace != null) {
            jsonWriter.name("actionPlace");
            this.actionPlace.save(jsonWriter);
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void prepare(City city) {
        super.prepare(city);
        if (this.actionPlaceType >= 0) {
            ActionPlaceController actionPlaceController = ((DefaultTraffic) city.getComponent(7)).getActionPlaceController();
            this.actionPlaceController = actionPlaceController;
            actionPlaceController.registerHandler(this, this.actionPlaceType);
        }
    }

    public final void startSound(final Car car) {
        City city = this.city;
        if (city == null || city.getComponent(15) == null) {
            return;
        }
        ((DefaultSoundManager) this.city.getComponent(15)).playLoop(getSoundID(car), SoundType.GAME, new AbstractTileSoundSource(this.city) { // from class: info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController.1
            @Override // info.flowersoft.theotown.components.soundsource.AreaSoundSource
            public float getVolume() {
                return 1.0f;
            }

            @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public float getTileX() {
                return car.x / 2.0f;
            }

            @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public float getTileY() {
                return car.y / 2.0f;
            }

            @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
            public boolean isValid() {
                Car car2 = car;
                return !car2.invalid && car2.isImportant;
            }
        });
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void foundWay(Car car) {
        if (this.actionPlace == null || car.isImportant || DataAccessor.read(car.data, 32, 0) != this.actionIdCounter) {
            return;
        }
        car.isImportant = true;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void register(Car car) {
        super.register(car);
        if (car.isImportant) {
            startSound(car);
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public boolean onTarget(Car car, int i, int i2, int i3) {
        if (car.isImportant) {
            if (car.way.size() <= 4 && onWorkDone(car, i, i2, i3)) {
                car.isImportant = false;
                this.actionPlaceController.removeActionPlace(this.actionPlaceType, i / 2, i2 / 2);
                return false;
            }
            this.spawner.wait(car);
            return false;
        }
        if (!this.removeCar) {
            return driveToNextTarget(car);
        }
        this.removeCar = false;
        return true;
    }

    public boolean driveToNextTarget(Car car) {
        MapArea mapAreaSampleTarget;
        Building stationForCar = getStationForCar(car);
        if (stationForCar == null || (mapAreaSampleTarget = sampleTarget(stationForCar, car.x / 2, car.y / 2)) == null) {
            return true;
        }
        this.spawner.driveTo(car, mapAreaSampleTarget);
        return false;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void foundNoWay(Car car) {
        boolean z = 0.1f < Resources.RND.nextFloat();
        car.paused = z;
        boolean z2 = car.isImportant;
        if (z2 && z) {
            car.isImportant = false;
            this.actionPlaceController.unregisterSolver(this.actionPlaceType);
            car.data = DataAccessor.write(car.data, 32, 0, 0L);
        } else if (z2) {
            car.data = DataAccessor.write(car.data, 32, 0, this.actionIdCounter);
        }
    }

    public final int getCarCountOf(Building building) {
        if (building.isWorking()) {
            return getMaxCarCountOf(building);
        }
        return 0;
    }

    public int getMaxCarCountOf(Building building) {
        return building.getDraft().serviceCars < 0 ? building.getWidth() : building.getDraft().serviceCars;
    }

    public CarDraft getCarDraft(Building building) {
        List<CarDraft> list;
        if (this.carDraftsPerBuilding.containsKey(building.getDraftId())) {
            list = this.carDraftsPerBuilding.get(building.getDraftId());
        } else {
            List<CarDraft> carDrafts = getCarDrafts(building.getDraft());
            this.carDraftsPerBuilding.put(building.getDraftId(), carDrafts);
            list = carDrafts;
        }
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(Resources.RND.nextInt(list.size()));
    }

    public List<CarDraft> getCarDrafts(BuildingDraft buildingDraft) {
        List<String> list = buildingDraft.serviceCarTags;
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < buildingDraft.serviceCarTags.size(); i++) {
            Drafts.collectDraftsWithTag(arrayList, buildingDraft.serviceCarTags.get(i), CarDraft.class);
        }
        return arrayList;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void update() {
        int carCountOf;
        List<Building> stations = getStations();
        if (stations != null) {
            carCountOf = 0;
            for (Building building : new SafeListAccessor(stations)) {
                if (building.isWorking() && isValidStation(building)) {
                    carCountOf += getCarCountOf(building);
                }
            }
        } else {
            carCountOf = 0;
        }
        if (carCountOf > getCarCount() && this.virtualCars <= 0) {
            Building buildingSampleFreeStation = sampleFreeStation();
            if (buildingSampleFreeStation != null) {
                MapArea mapAreaSampleTarget = sampleTarget(buildingSampleFreeStation, -2, -2);
                if (mapAreaSampleTarget == null && this.actionPlace == null) {
                    return;
                }
                MapArea mapArea = mapAreaSampleTarget;
                MapArea mapArea2 = new MapArea();
                mapArea2.add(buildingSampleFreeStation, getRoadLevel() + this.city.getTiles().getBaseTerrainHeight(buildingSampleFreeStation.getX(), buildingSampleFreeStation.getY()), false);
                CarDraft carDraft = getCarDraft(buildingSampleFreeStation);
                if (carDraft != null) {
                    int iNextInt = Resources.RND.nextInt(carDraft.frames.length / carDraft.framesPerVariant);
                    long jWrite = DataAccessor.write(DataAccessor.write(0L, 12, 32, buildingSampleFreeStation.getX() + 1), 12, 44, buildingSampleFreeStation.getY() + 1);
                    if (this.actionPlace != null) {
                        jWrite = DataAccessor.write(jWrite, 32, 0, this.actionIdCounter);
                        MapArea mapArea3 = this.actionPlace;
                        this.actionPlaceController.registerSolver(this.actionPlaceType);
                        mapArea = mapArea3;
                    }
                    this.spawner.spawn(mapArea2, mapArea, this, carDraft, iNextInt, jWrite, getWealthLevel());
                    this.virtualCars++;
                    this.removeCar = false;
                    return;
                }
                return;
            }
            return;
        }
        if (carCountOf < getCarCount()) {
            this.removeCar = true;
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void unregister(Car car) {
        super.unregister(car);
        if (car.isImportant) {
            car.isImportant = false;
            this.actionPlaceController.unregisterSolver(this.actionPlaceType);
        }
    }

    @Override // info.flowersoft.theotown.components.actionplace.ActionPlaceHandler
    public void notifyAction(List<MapArea> list, int i) {
        this.actionPlace = list.get(0);
        this.lastActionDay = ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay();
        this.actionIdCounter++;
        ArrayList arrayList = new ArrayList();
        Iterator it = new SafeListAccessor(getCars()).iterator();
        while (it.hasNext()) {
            arrayList.add((Car) it.next());
        }
        while (!arrayList.isEmpty() && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size() && !arrayList.isEmpty(); i2++) {
                MapArea mapArea = list.get(i2);
                int i3 = -1;
                int i4 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    Car car = (Car) arrayList.get(i5);
                    int parcelDistanceBB = mapArea.getParcelDistanceBB(car.x, car.y);
                    if (parcelDistanceBB < i4) {
                        i3 = i5;
                        i4 = parcelDistanceBB;
                    }
                }
                Car car2 = (Car) arrayList.remove(i3);
                if (!car2.isImportant) {
                    car2.isImportant = true;
                    startSound(car2);
                }
                car2.data = DataAccessor.write(car2.data, 32, 0, this.actionIdCounter);
                this.actionPlaceController.registerSolver(this.actionPlaceType);
                this.spawner.driveTo(car2, mapArea);
            }
        }
    }

    @Override // info.flowersoft.theotown.components.actionplace.ActionPlaceHandler
    public void notifyNoAction(int i) {
        this.lastActionDay = -1L;
        this.actionPlace = null;
        for (Car car : new SafeListAccessor(getCars())) {
            if (car.isImportant) {
                car.isImportant = false;
                driveToNextTarget(car);
            }
        }
    }

    public MapArea sampleTarget(Building building, int i, int i2) {
        Road roadSample;
        BusStop busStopSampleBusStopTarget;
        int x = building.getX();
        int y = building.getY();
        int stationRadius = getStationRadius(building);
        if (hasBusStopTargets() && (busStopSampleBusStopTarget = sampleBusStopTarget(building, i, i2)) != null) {
            MapArea mapArea = new MapArea();
            mapArea.add(busStopSampleBusStopTarget.getX(), busStopSampleBusStopTarget.getY(), busStopSampleBusStopTarget.level + this.city.getTiles().getBaseTerrainHeight(busStopSampleBusStopTarget.getX(), busStopSampleBusStopTarget.getY()));
            return mapArea;
        }
        this.buildingSampler.setX(x);
        this.buildingSampler.setY(y);
        this.buildingSampler.setMaxRadius(stationRadius);
        configureSampler(this.buildingSampler);
        Building buildingSample = this.buildingSampler.sample();
        if (buildingSample != null && (!buildingSample.hasRoad() || DISTANCE.get(buildingSample, i, i2) < 2)) {
            buildingSample = null;
        }
        if (buildingSample != null) {
            MapArea mapArea2 = new MapArea();
            mapArea2.add(buildingSample, false);
            if (getRoadLevel() != 0) {
                mapArea2.add(buildingSample, getRoadLevel() + this.city.getTiles().getBaseTerrainHeight(buildingSample.getX(), buildingSample.getY()), false);
            }
            return mapArea2;
        }
        if (!this.canSampleRoad || (roadSample = this.roadSampler.sample(x, y, stationRadius)) == null || DISTANCE.get(roadSample.getX(), roadSample.getY(), x, y) < 2) {
            return null;
        }
        MapArea mapArea3 = new MapArea();
        mapArea3.add(roadSample.getX(), roadSample.getY(), roadSample.getLevel() + this.city.getTiles().getBaseTerrainHeight(roadSample.x, roadSample.y));
        return mapArea3;
    }

    public final Building getStationForCar(Car car) {
        Building buildingData = getBuildingData(car);
        if (buildingData != null) {
            return buildingData;
        }
        Building buildingSampleFreeStation = sampleFreeStation();
        if (buildingSampleFreeStation == null) {
            return null;
        }
        setBuildingData(car, buildingSampleFreeStation);
        return buildingSampleFreeStation;
    }

    public Building sampleFreeStation() {
        int iPack;
        int i;
        IntIntMap intIntMap = new IntIntMap();
        List<Building> stations = getStations();
        if (stations != null) {
            for (Building building : new SafeListAccessor(stations)) {
                if (building.isWorking() && isValidStation(building)) {
                    intIntMap.put(PackedInt2.pack(building.getX(), building.getY()), getCarCountOf(building));
                }
            }
        }
        Iterator<Car> it = getCars().iterator();
        while (it.hasNext()) {
            Building buildingData = getBuildingData(it.next());
            if (buildingData != null && (i = intIntMap.get((iPack = PackedInt2.pack(buildingData.getX(), buildingData.getY())), Integer.MIN_VALUE)) != Integer.MIN_VALUE) {
                int i2 = i - 1;
                if (i2 <= 0) {
                    intIntMap.remove(iPack, 0);
                } else {
                    intIntMap.put(iPack, i2);
                }
            }
        }
        if (intIntMap.size > 0) {
            ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
            Iterator<IntIntMap.Entry> it2 = intIntMap.iterator();
            while (it2.hasNext()) {
                int i3 = it2.next().key;
                Building building2 = this.tiles.getBuilding(PackedInt2.unpackX(i3), PackedInt2.unpackY(i3));
                if (building2 != null) {
                    probabilitySelector.insert(building2, 1.0f);
                }
            }
            if (probabilitySelector.hasResult()) {
                return (Building) probabilitySelector.getResult();
            }
        }
        return null;
    }

    public void setBuildingData(Car car, Building building) {
        int x;
        int y;
        long j = car.data;
        if (building != null) {
            x = building.getX();
            y = building.getY();
        } else {
            x = -1;
            y = -1;
        }
        car.data = DataAccessor.write(DataAccessor.write(j, 12, 32, x + 1), 12, 44, y + 1);
    }

    public Building getBuildingData(Car car) {
        int i = ((int) DataAccessor.read(car.data, 12, 32)) - 1;
        int i2 = ((int) DataAccessor.read(car.data, 12, 44)) - 1;
        if (this.city.isValid(i, i2)) {
            return this.tiles.getBuilding(i, i2);
        }
        return null;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public boolean onSpawn(Car car) {
        this.virtualCars--;
        return super.onSpawn(car);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void onNotSpawn(long j) {
        this.virtualCars--;
        super.onNotSpawn(j);
    }
}
