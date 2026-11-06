package info.flowersoft.theotown.components.traffic.carcontroller;

import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.components.actionplace.ActionPlaceType;
import info.flowersoft.theotown.draft.BuildingType;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class GarbageTruckController extends OperationCarController {
    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getSoundID(Car car) {
        return 0;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public boolean onWorkDone(Car car, int i, int i2, int i3) {
        return true;
    }

    public GarbageTruckController(CarSpawner carSpawner) {
        super(carSpawner, ActionPlaceType.GARBAGE);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController, info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void register(Car car) {
        super.register(car);
        car.flags |= 8;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public List<Building> getStations() {
        return this.city.getBuildings().getBuildingsOfType(BuildingType.WASTE_DISPOSAL);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getMaxCarCountOf(Building building) {
        if (building.getDraft().serviceCars < 0) {
            return 4;
        }
        return building.getDraft().serviceCars;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public String getName() {
        return "GarbageTruckController";
    }
}
