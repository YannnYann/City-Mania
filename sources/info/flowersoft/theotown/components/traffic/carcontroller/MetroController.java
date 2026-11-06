package info.flowersoft.theotown.components.traffic.carcontroller;

import info.flowersoft.theotown.city.BuildingSampler;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.JSONUtil;
import info.flowersoft.theotown.util.SortedList;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class MetroController extends OperationCarController {
    public final List<CarDraft> cars;
    public final List<BuildingDraft> drafts;
    public List<Building> stations;

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getRoadLevel() {
        return -2;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getSoundID(Car car) {
        return 0;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getStationRadius(Building building) {
        return 64;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public boolean onWorkDone(Car car, int i, int i2, int i3) {
        return false;
    }

    public MetroController(CarSpawner carSpawner) {
        super(carSpawner, -1);
        this.drafts = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.cars = arrayList;
        arrayList.add(Drafts.CARS.get(0));
        this.canSampleRoad = false;
        for (int i = 0; i < Drafts.RAILWAY_STATION.size(); i++) {
            BuildingDraft buildingDraft = Drafts.RAILWAY_STATION.get(i);
            JSONObject metaTag = buildingDraft.getMetaTag("railway");
            if (metaTag != null && JSONUtil.optArray(metaTag, "levels").optInt(0) == -1) {
                this.drafts.add(buildingDraft);
            }
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController, info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public boolean onTarget(Car car, int i, int i2, int i3) {
        Building building;
        int i4 = -1;
        while (true) {
            if (i4 >= 4) {
                break;
            }
            int iMax = Math.max(1 << i4, 0);
            int iDifferenceX = (i / 2) + Direction.differenceX(iMax);
            int iDifferenceY = (i2 / 2) + Direction.differenceY(iMax);
            if (iDifferenceX >= 0 && iDifferenceY >= 0 && iDifferenceX < this.city.getWidth() && iDifferenceY < this.city.getHeight() && (building = this.tiles.getBuilding(iDifferenceX, iDifferenceY)) != null && building.getWaiting() > 0) {
                building.removeWaiters(50);
                break;
            }
            i4++;
        }
        return super.onTarget(car, i, i2, i3);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController, info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public boolean onSpawn(Car car) {
        Building buildingData = getBuildingData(car);
        if (buildingData != null && buildingData.getWaiting() > 0) {
            buildingData.removeWaiters(50);
        }
        return super.onSpawn(car);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public List<Building> getStations() {
        if (this.stations == null) {
            final ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.drafts.size(); i++) {
                arrayList.add(this.city.getBuildings().getBuildingsOfDraft(this.drafts.get(i)));
            }
            this.stations = new AbstractList<Building>() { // from class: info.flowersoft.theotown.components.traffic.carcontroller.MetroController.1
                @Override // java.util.AbstractList, java.util.List
                public Building get(int i2) {
                    int size = 0;
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        SortedList sortedList = (SortedList) arrayList.get(i3);
                        int i4 = i2 - size;
                        if (i4 < sortedList.size()) {
                            return (Building) sortedList.get(i4);
                        }
                        size += sortedList.size();
                    }
                    return null;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    int size = 0;
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        size += ((SortedList) arrayList.get(i2)).size();
                    }
                    return size;
                }
            };
        }
        return this.stations;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public List<CarDraft> getCarDrafts(BuildingDraft buildingDraft) {
        return this.cars;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getMaxCarCountOf(Building building) {
        return Math.max(building.getWidth() - 2, 0);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public void configureSampler(BuildingSampler buildingSampler) {
        buildingSampler.clearBuildings();
        for (int i = 0; i < this.drafts.size(); i++) {
            buildingSampler.addBuildings(this.city.getBuildings().getBuildingsOfDraft(this.drafts.get(i)));
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public String getName() {
        return "MetroCarController";
    }
}
