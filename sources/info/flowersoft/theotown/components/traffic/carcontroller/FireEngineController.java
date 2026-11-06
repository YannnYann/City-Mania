package info.flowersoft.theotown.components.traffic.carcontroller;

import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.actionplace.ActionPlaceType;
import info.flowersoft.theotown.components.disaster.FireDisaster;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.PackedInt2;
import io.blueflower.stapel2d.util.IntList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class FireEngineController extends OperationCarController {
    public FireEngineController(CarSpawner carSpawner) {
        super(carSpawner, ActionPlaceType.FIRE);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getSoundID(Car car) {
        return Resources.SOUND_CAR_FIRE;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public boolean onWorkDone(Car car, int i, int i2, int i3) {
        FireDisaster fireDisaster = (FireDisaster) ((DefaultCatastrophe) this.city.getComponent(6)).getDisaster(FireDisaster.class);
        IntList burningThingsInRange = fireDisaster.getBurningThingsInRange(i / 2, i2 / 2, 6);
        if (burningThingsInRange.isEmpty()) {
            return true;
        }
        Gdx.app.debug("FireEngineController", "Attempt");
        Random random = Resources.RND;
        if (random.nextFloat() < 0.5f) {
            int size = burningThingsInRange.size();
            int i4 = burningThingsInRange.get(random.nextInt(size));
            int iUnpackX = PackedInt2.unpackX(i4);
            int iUnpackY = PackedInt2.unpackY(i4);
            Building building = this.tiles.getBuilding(iUnpackX, iUnpackY);
            Tree tree = this.city.getTiles().getTree(iUnpackX, iUnpackY);
            if (building != null) {
                fireDisaster.removeFire(building);
            }
            if (tree != null) {
                fireDisaster.removeFire(tree);
            }
            if (size <= 1) {
                return true;
            }
        }
        return false;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public List<Building> getStations() {
        return this.city.getBuildings().getBuildingsOfType(BuildingType.FIRE_BRIGADE);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public String getName() {
        return "FireEngineController";
    }
}
