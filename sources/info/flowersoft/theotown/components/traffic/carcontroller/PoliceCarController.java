package info.flowersoft.theotown.components.traffic.carcontroller;

import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.actionplace.ActionPlaceType;
import info.flowersoft.theotown.components.disaster.CrimeDisaster;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class PoliceCarController extends OperationCarController {
    public PoliceCarController(CarSpawner carSpawner) {
        super(carSpawner, ActionPlaceType.POLICE);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController, info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void register(Car car) {
        super.register(car);
        car.flags |= 1;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getSoundID(Car car) {
        return Resources.SOUND_CAR_POLICE;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public boolean onWorkDone(Car car, int i, int i2, int i3) {
        CrimeDisaster crimeDisaster = (CrimeDisaster) ((DefaultCatastrophe) this.city.getComponent(6)).getDisaster(CrimeDisaster.class);
        ArrayList arrayList = new ArrayList();
        for (Building building : crimeDisaster.getCrimeBuildings()) {
            if (this.city.getDistance().get(building, i / 2, i2 / 2) <= 6) {
                arrayList.add(building);
            }
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        Random random = Resources.RND;
        if (random.nextFloat() < 0.1f) {
            int size = arrayList.size();
            crimeDisaster.removeCrime((Building) arrayList.get(random.nextInt(size)));
            if (size == 1) {
                return true;
            }
        }
        return false;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public List<Building> getStations() {
        return this.city.getBuildings().getBuildingsOfType(BuildingType.POLICE);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public String getName() {
        return "PoliceCarController";
    }
}
