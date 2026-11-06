package info.flowersoft.theotown.components.traffic.carcontroller;

import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.components.actionplace.ActionPlaceType;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class MedicCarController extends OperationCarController {
    public MedicCarController(CarSpawner carSpawner) {
        super(carSpawner, ActionPlaceType.MEDIC);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getSoundID(Car car) {
        return Resources.SOUND_CAR_MEDIC;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public boolean onWorkDone(Car car, int i, int i2, int i3) {
        Building building;
        int i4 = i / 2;
        int i5 = i2 / 2;
        HashSet hashSet = new HashSet();
        ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
        for (int i6 = -5; i6 <= 5; i6++) {
            for (int i7 = -5; i7 <= 5; i7++) {
                int i8 = i4 + i6;
                int i9 = i5 + i7;
                if (this.city.isValid(i8, i9) && (building = this.tiles.getBuilding(i8, i9)) != null && building.isIll() && !hashSet.contains(building)) {
                    hashSet.add(building);
                    probabilitySelector.insert(building, 1.0f / ((i6 * i6) + (i7 * i7)));
                }
            }
        }
        if (!probabilitySelector.hasResult()) {
            return true;
        }
        if (Resources.RND.nextFloat() < 0.5f) {
            ((Building) probabilitySelector.getResult()).setIll(false);
        }
        return false;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public List<Building> getStations() {
        return this.city.getBuildings().getBuildingsOfType(BuildingType.MEDIC);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public String getName() {
        return "MedicCarController";
    }
}
