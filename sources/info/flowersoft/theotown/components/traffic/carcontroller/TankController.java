package info.flowersoft.theotown.components.traffic.carcontroller;

import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.draft.BuildingType;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class TankController extends OperationCarController {
    public boolean patrol;

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getSoundID(Car car) {
        return 0;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public boolean onWorkDone(Car car, int i, int i2, int i3) {
        return false;
    }

    public TankController(CarSpawner carSpawner) {
        super(carSpawner, -1);
        this.patrol = false;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController, info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void register(Car car) {
        super.register(car);
        car.flags |= 4;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public boolean loadTag(JsonReader jsonReader, String str) throws IOException {
        str.getClass();
        if (!str.equals("on patrol")) {
            return false;
        }
        this.patrol = jsonReader.nextBoolean();
        return true;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController, info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void save(JsonWriter jsonWriter) throws IOException {
        super.save(jsonWriter);
        jsonWriter.name("on patrol").value(this.patrol);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public List<Building> getStations() {
        return this.city.getBuildings().getBuildingsOfType(BuildingType.MILITARY);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController
    public int getStationRadius(Building building) {
        return this.patrol ? 64 : 16;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public String getName() {
        return "TankController";
    }

    public boolean onPatrol() {
        return this.patrol;
    }

    public void setPatrol(boolean z) {
        this.patrol = z;
    }
}
