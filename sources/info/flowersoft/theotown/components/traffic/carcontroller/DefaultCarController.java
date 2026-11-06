package info.flowersoft.theotown.components.traffic.carcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.city.objects.Way;
import info.flowersoft.theotown.components.DefaultTransportation;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.DataAccessor;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultCarController extends CarController implements BuildingCarSpawner {
    public DefaultTransportation transportation;

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public boolean onTarget(Car car, int i, int i2, int i3) {
        return true;
    }

    public DefaultCarController(CarSpawner carSpawner) {
        super(carSpawner);
        this.trackCars = false;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void prepare(City city) {
        super.prepare(city);
        this.transportation = (DefaultTransportation) city.getComponent(16);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void foundWay(Car car) {
        int i;
        super.foundWay(car);
        long j = car.data;
        int i2 = (int) DataAccessor.read(j, 12, 0);
        int i3 = (int) DataAccessor.read(j, 12, 12);
        int i4 = (int) DataAccessor.read(j, 12, 24);
        int i5 = (int) DataAccessor.read(j, 12, 36);
        Building building = this.tiles.getBuilding(i2, i3);
        Building building2 = this.tiles.getBuilding(i4, i5);
        if (DataAccessor.read(j, 1, 63) != 0 || building == null || building2 == null) {
            i = i5;
        } else {
            this.transportation.addFoundWay(car.draft, car.frame, building, building2, i2, i3, i4, i5, new Way(car.way), car.wealthLevel);
            i = i5;
        }
        this.transportation.foundCarWayBuildings(building, building2, car.way.size());
        this.transportation.foundCarWay(i2, i3, i4, i);
        car.fadeOut = true;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void onNotSpawn(long j) {
        int i = (int) DataAccessor.read(j, 12, 0);
        int i2 = (int) DataAccessor.read(j, 12, 12);
        int i3 = (int) DataAccessor.read(j, 12, 24);
        int i4 = (int) DataAccessor.read(j, 12, 36);
        Building building = this.tiles.getBuilding(i, i2);
        Building building2 = this.tiles.getBuilding(i3, i4);
        this.transportation.foundNoCarWay(i, i2, i3, i4);
        if (building == null || building2 == null) {
            return;
        }
        this.transportation.foundNoCarWayBuildings(building, building2);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void update() {
        this.transportation.updateCars(getCarCount(), this);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.BuildingCarSpawner
    public void spawn(CarDraft carDraft, int i, Building building, Building building2, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int iNextInt = i < 0 ? Resources.RND.nextInt(carDraft.frames.length / carDraft.framesPerVariant) : i;
        long jWrite = DataAccessor.write(DataAccessor.write(DataAccessor.write(DataAccessor.write(DataAccessor.write(0L, 12, 0, i2), 12, 12, i3), 12, 24, i5), 12, 36, i6), 1, 63, 0L);
        MapArea mapArea = new MapArea();
        MapArea mapArea2 = new MapArea();
        if (building != null) {
            mapArea.add(building, this.city.getTiles().getBaseTerrainHeight(building.getX(), building.getY()), false);
        } else {
            mapArea.add(i2, i3, i4 + this.city.getTiles().getBaseTerrainHeight(i2, i3));
        }
        if (building2 != null) {
            mapArea2.add(building2, this.city.getTiles().getBaseTerrainHeight(building2.getX(), building2.getY()), false);
        } else {
            mapArea2.add(i5, i6, i7 + this.city.getTiles().getBaseTerrainHeight(i5, i6));
        }
        this.spawner.spawn(mapArea, mapArea2, this, carDraft, iNextInt, jWrite, i8);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.BuildingCarSpawner
    public void spawn(CarDraft carDraft, int i, int i2, int i3, int i4, int i5, Way way, int i6) {
        this.spawner.spawn(this, carDraft, i < 0 ? Resources.RND.nextInt(carDraft.frames.length / carDraft.framesPerVariant) : i, DataAccessor.write(DataAccessor.write(DataAccessor.write(DataAccessor.write(DataAccessor.write(0L, 12, 0, i2), 12, 12, i3), 12, 24, i4), 12, 36, i5), 1, 63, 1L), new Way(way), i6);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public String getName() {
        return "DefaultCarController";
    }
}
