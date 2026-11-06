package info.flowersoft.theotown.components.traffic.carcontroller;

import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.city.objects.FlyingObject;
import info.flowersoft.theotown.components.DefaultTraffic;
import info.flowersoft.theotown.components.traffic.FlyingTrafficHandler;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.DataAccessor;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class AirportTaxiCarController extends CarController {
    public List<CarDraft> carDrafts;

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void update() {
    }

    public AirportTaxiCarController(CarSpawner carSpawner) {
        super(carSpawner);
        this.carDrafts = Drafts.getDraftsWithTag("airport taxi", CarDraft.class);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public boolean onTarget(Car car, int i, int i2, int i3) {
        Building building;
        FlyingObject objectAt;
        long j = car.data;
        int i4 = (int) DataAccessor.read(j, 10, 0);
        int i5 = (int) DataAccessor.read(j, 10, 10);
        int i6 = (int) DataAccessor.read(j, 1, 20);
        int i7 = (int) DataAccessor.read(j, 10, 32);
        int i8 = (int) DataAccessor.read(j, 10, 42);
        if (i6 == 1) {
            car.data = DataAccessor.write(j, 1, 20, 0L);
            if (this.city.isValid(i7, i8) && (objectAt = ((FlyingTrafficHandler) ((DefaultTraffic) this.city.getComponent(7)).getTrafficHandler(FlyingTrafficHandler.class)).getObjectAt(i7, i8)) != null) {
                objectAt.setP(1.0f);
            }
            if (this.city.isValid(i4, i5) && (building = this.tiles.getBuilding(i4, i5)) != null && building.getX() == i4 && building.getY() == i5) {
                MapArea mapArea = new MapArea();
                mapArea.add(building, this.city.getTiles().getBaseTerrainHeight(building.getX(), building.getY()), false);
                this.spawner.driveTo(car, mapArea);
                return false;
            }
        }
        return true;
    }

    public void spawn(FlyingObject flyingObject, Building building) {
        MapArea mapArea = new MapArea();
        mapArea.add(building, this.city.getTiles().getBaseTerrainHeight(building.getX(), building.getY()), false);
        MapArea mapArea2 = new MapArea();
        mapArea2.add(flyingObject.getX(), flyingObject.getY(), this.city.getTiles().getBaseTerrainHeight(flyingObject.getX(), flyingObject.getY()));
        List<CarDraft> list = this.carDrafts;
        this.spawner.spawn(mapArea, mapArea2, this, list.get(Resources.RND.nextInt(list.size())), DataAccessor.write(DataAccessor.write(DataAccessor.write(DataAccessor.write(DataAccessor.write(0L, 10, 0, building.getX()), 10, 10, building.getY()), 1, 20, 1L), 10, 32, flyingObject.getActualX()), 10, 42, flyingObject.getActualY()), 0);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public String getName() {
        return "Airport Texi Controller";
    }
}
