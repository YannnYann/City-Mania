package info.flowersoft.theotown.components.traffic.carcontroller;

import info.flowersoft.theotown.city.BuildingList;
import info.flowersoft.theotown.city.BuildingSampler;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.components.transition.TransitionRunner;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.util.Distance;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class GenericCarController extends OperationCarController {
    public final BuildingDraft buildingDraft;
    public final List<CarDraft> carDrafts;
    public final BuildingDraft.CarSpawnerDraft carSpawnerDraft;
    public final MethodCluster eventMethods;
    public final Set<String> targetBuildingIds;
    public final List<BuildingDraft> targetBuildings;
    public final Set<String> targetBusStopIds;
    public final List<BusStopDraft> targetBusStops;
    public TransitionRunner transitionRunner;
    public final UpgradeDraft upgradeDraft;

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getSoundID(Car car) {
        return 0;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public boolean onWorkDone(Car car, int i, int i2, int i3) {
        return false;
    }

    public GenericCarController(CarSpawner carSpawner, BuildingDraft buildingDraft, UpgradeDraft upgradeDraft, BuildingDraft.CarSpawnerDraft carSpawnerDraft) {
        super(carSpawner, -1);
        this.targetBuildings = new ArrayList();
        this.targetBuildingIds = new HashSet();
        this.targetBusStops = new ArrayList();
        this.targetBusStopIds = new HashSet();
        ArrayList arrayList = new ArrayList();
        this.carDrafts = arrayList;
        this.buildingDraft = buildingDraft;
        this.upgradeDraft = upgradeDraft;
        this.carSpawnerDraft = carSpawnerDraft;
        addTargetsById(buildingDraft, carSpawnerDraft.targetIds);
        addTargetsByTag(carSpawnerDraft.targetTags);
        arrayList.addAll(Arrays.asList(carSpawnerDraft.cars));
        int i = 0;
        while (true) {
            String[] strArr = carSpawnerDraft.tags;
            if (i < strArr.length) {
                Drafts.collectDraftsWithTag(this.carDrafts, strArr[i], CarDraft.class);
                i++;
            } else {
                this.eventMethods = ScriptingEnvironment.getInstance().getMethodClusterOrNull("event", buildingDraft);
                return;
            }
        }
    }

    public final void addTargetsByTag(String[] strArr) {
        if (strArr == null) {
            return;
        }
        for (String str : strArr) {
            List draftsWithTag = Drafts.getDraftsWithTag(str, BuildingDraft.class);
            List draftsWithTag2 = Drafts.getDraftsWithTag(str, BusStopDraft.class);
            this.targetBuildings.addAll(draftsWithTag);
            for (int i = 0; i < draftsWithTag.size(); i++) {
                this.targetBuildingIds.add(((BuildingDraft) draftsWithTag.get(i)).id);
            }
            this.targetBusStops.addAll(draftsWithTag2);
            for (int i2 = 0; i2 < draftsWithTag2.size(); i2++) {
                this.targetBusStopIds.add(((BusStopDraft) draftsWithTag2.get(i2)).id);
            }
        }
    }

    public final void addTargetsById(BuildingDraft buildingDraft, String[] strArr) {
        if (strArr == null) {
            return;
        }
        for (String str : strArr) {
            if (str == null || str.isEmpty()) {
                this.targetBuildings.add(buildingDraft);
                this.targetBuildingIds.add(buildingDraft.id);
            } else {
                Draft draft = Drafts.ALL.get(str);
                if (draft instanceof BuildingDraft) {
                    this.targetBuildings.add((BuildingDraft) draft);
                    this.targetBuildingIds.add(draft.id);
                } else if (draft instanceof BusStopDraft) {
                    this.targetBusStops.add((BusStopDraft) draft);
                    this.targetBusStopIds.add(draft.id);
                }
            }
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getWealthLevel() {
        if (this.buildingDraft.buildingType.isRCIOrDeco()) {
            return this.buildingDraft.level;
        }
        return 0;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController, info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void register(Car car) {
        car.flags |= this.carSpawnerDraft.carFlags;
        super.register(car);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController, info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void prepare(City city) {
        super.prepare(city);
        if (this.buildingDraft.onEventTransitions != null) {
            this.transitionRunner = new TransitionRunner(city);
        }
    }

    public final void emitCarEvent(Car car, String str, int i) {
        Building buildingData = getBuildingData(car);
        if (buildingData != null) {
            BuildingDraft draft = buildingData.getDraft();
            BuildingDraft buildingDraft = this.buildingDraft;
            if (draft == buildingDraft) {
                TransitionRunner transitionRunner = this.transitionRunner;
                if (transitionRunner != null) {
                    transitionRunner.accept(buildingDraft.onEventTransitions, buildingData, str, buildingData.getDraftId(), buildingData.getDraft().luaRepr, this.buildingDraft.isPrivileged());
                    this.transitionRunner.run();
                }
                MethodCluster methodCluster = this.eventMethods;
                if (methodCluster != null) {
                    int x = buildingData.getX();
                    int y = buildingData.getY();
                    int i2 = car.frame;
                    CarDraft carDraft = car.draft;
                    methodCluster.invoke(x, y, i2 / carDraft.framesPerVariant, i, carDraft.luaRepr);
                }
            }
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController, info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public boolean onTarget(Car car, int i, int i2, int i3) {
        emitCarEvent(car, "car reached", 3);
        return super.onTarget(car, i, i2, i3);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController, info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public boolean onSpawn(Car car) {
        emitCarEvent(car, "car spawned", 2);
        return super.onSpawn(car);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController, info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void unregister(Car car) {
        emitCarEvent(car, "car despawned", 4);
        super.unregister(car);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public String getName() {
        return "GenericCarController(" + this.buildingDraft.id + "." + this.carSpawnerDraft.id + ")";
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public List<Building> getStations() {
        return this.city.getBuildings().getBuildingsOfDraft(this.buildingDraft);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public boolean isValidStation(Building building) {
        if (!super.isValidStation(building)) {
            return false;
        }
        UpgradeDraft upgradeDraft = this.upgradeDraft;
        return upgradeDraft == null || building.hasUpgrade(upgradeDraft);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public void configureSampler(BuildingSampler buildingSampler) {
        super.configureSampler(buildingSampler);
        if (this.targetBuildings.isEmpty()) {
            return;
        }
        BuildingList buildings = this.city.getBuildings();
        List<BuildingDraft> list = this.targetBuildings;
        buildingSampler.setBuildings(buildings.getBuildingsOfDraft(list.get(Resources.RND.nextInt(list.size()))));
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public boolean hasBusStopTargets() {
        return this.targetBusStops.size() > 0;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public BusStop sampleBusStopTarget(Building building, int i, int i2) {
        int stationRadius = getStationRadius(building) + (building.getWidth() / 2);
        int x = building.getX() + (building.getWidth() / 2);
        int y = building.getY() + (building.getHeight() / 2);
        for (int i3 = 0; i3 < Math.max(10, this.city.getBusStops().size() / 10); i3++) {
            try {
                BusStop busStop = this.city.getBusStops().get(Resources.RND.nextInt(this.city.getBusStops().size()));
                if (busStop != null) {
                    Distance distance = OperationCarController.DISTANCE;
                    if (distance.get(i, i2, busStop.getX(), busStop.getY()) >= 2 && distance.get(busStop.getX(), busStop.getY(), x, y) <= stationRadius && this.targetBusStopIds.contains(busStop.getDraft().id)) {
                        return busStop;
                    }
                } else {
                    continue;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public List<CarDraft> getCarDrafts(BuildingDraft buildingDraft) {
        return this.carDrafts;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getRoadLevel() {
        return this.carSpawnerDraft.level;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getStationRadius(Building building) {
        return this.carSpawnerDraft.radius;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getMaxCarCountOf(Building building) {
        return this.carSpawnerDraft.count;
    }
}
