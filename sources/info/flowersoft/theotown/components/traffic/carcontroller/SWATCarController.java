package info.flowersoft.theotown.components.traffic.carcontroller;

import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.components.actionplace.ActionPlaceType;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SWATCarController extends OperationCarController {
    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public boolean onWorkDone(Car car, int i, int i2, int i3) {
        return true;
    }

    public SWATCarController(CarSpawner carSpawner) {
        super(carSpawner, ActionPlaceType.SWAT);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController, info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void register(Car car) {
        super.register(car);
        car.flags |= 2;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getSoundID(Car car) {
        return Resources.SOUND_CAR_POLICE;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public List<Building> getStations() {
        return this.city.getBuildings().getBuildingsOfType(BuildingType.SWAT);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public String getName() {
        return "SWATCarController";
    }
}
