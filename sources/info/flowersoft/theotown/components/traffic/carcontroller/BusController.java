package info.flowersoft.theotown.components.traffic.carcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.DefaultIdleGame;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.minigame.BusIdleGame;
import info.flowersoft.theotown.minigame.IdleGame;
import info.flowersoft.theotown.util.DataAccessor;
import info.flowersoft.theotown.util.SafeListAccessor;

/* JADX INFO: loaded from: classes4.dex */
public class BusController extends CarController {
    public DefaultIdleGame defaultIdleGame;

    public BusController(CarSpawner carSpawner) {
        super(carSpawner);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void prepare(City city) {
        super.prepare(city);
        this.defaultIdleGame = (DefaultIdleGame) city.getComponent(20);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public boolean onTarget(Car car, int i, int i2, int i3) {
        Road absoluteRoad;
        Road absoluteRoad2 = this.city.getTiles().getAbsoluteRoad(i / 2, i2 / 2, i3);
        if (absoluteRoad2 != null) {
            BusStop busStop = absoluteRoad2.getBusStop();
            if (busStop != null) {
                if (car.way.size() > 2) {
                    this.spawner.wait(car);
                    return false;
                }
                busStop.setLastVisit(getDate().getAbsoluteDay());
                busStop.removeWaiters(car.draft.capacity);
            }
            IdleGame game = this.defaultIdleGame.getGame(getCarGame(car));
            int carStage = getCarStage(car);
            int carTarget = getCarTarget(car);
            if (game != null) {
                try {
                    if ((game instanceof BusIdleGame) && game.propertiesFulfilled(carStage) && game.isActive() && carTarget <= ((BusIdleGame) game).getPathLength(carStage)) {
                        BusIdleGame busIdleGame = (BusIdleGame) game;
                        int i4 = carTarget + 1;
                        car.data = DataAccessor.write(car.data, 16, 32, i4);
                        MapArea mapArea = new MapArea();
                        if (i4 >= busIdleGame.getPathLength(carStage)) {
                            Building building = busIdleGame.getBuilding();
                            mapArea.add(building, this.city.getTiles().getBaseTerrainHeight(building.getX(), building.getY()), false);
                        } else {
                            int pathX = busIdleGame.getPathX(carStage, i4);
                            int pathY = busIdleGame.getPathY(carStage, i4);
                            int pathLevel = busIdleGame.getPathLevel(carStage, i4);
                            if (this.city.isValid(pathX, pathY) && (absoluteRoad = this.city.getTiles().getAbsoluteRoad(pathX, pathY, pathLevel)) != null && absoluteRoad.getBusStop() != null) {
                                mapArea.add(pathX, pathY, pathLevel);
                            }
                        }
                        this.spawner.driveTo(car, mapArea);
                        return false;
                    }
                } catch (Exception unused) {
                }
            }
        }
        return true;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void update() {
        BusIdleGame busIdleGame;
        Building building;
        BusController busController = this;
        if (DefaultIdleGame.isActive()) {
            for (IdleGame idleGame : new SafeListAccessor(busController.defaultIdleGame.getGames())) {
                if ((idleGame instanceof BusIdleGame) && idleGame.isActive() && (building = (busIdleGame = (BusIdleGame) idleGame).getBuilding()) != null) {
                    int i = 0;
                    while (i < busIdleGame.countStages()) {
                        int busCount = busIdleGame.getBusCount(i);
                        for (Car car : busController.getCars()) {
                            int carGame = busController.getCarGame(car);
                            int carStage = busController.getCarStage(car);
                            if (carGame == busIdleGame.getId() && i == carStage) {
                                busCount--;
                                car.speed = busIdleGame.getSpeed(i);
                                if (busCount == 0) {
                                    break;
                                }
                            }
                        }
                        if (busCount > 0) {
                            MapArea mapArea = new MapArea();
                            mapArea.add(building, building.getMaxTerrainLevel(), false);
                            mapArea.add(building, building.getMaxTerrainLevel() - 1, false);
                            MapArea mapArea2 = new MapArea();
                            mapArea2.add(busIdleGame.getPathX(i, 0), busIdleGame.getPathY(i, 0), busIdleGame.getPathLevel(i, 0));
                            long jWrite = DataAccessor.write(DataAccessor.write(0L, 16, 16, busIdleGame.getId()), 16, 0, i);
                            CarDraft stageCar = busIdleGame.getStageCar(i);
                            int i2 = stageCar.framesPerColor * i;
                            int i3 = stageCar.framesPerVariant;
                            busController.spawner.spawn(mapArea, mapArea2, busController, stageCar, (i2 / i3) % (stageCar.frames.length / i3), jWrite, 0);
                        }
                        i++;
                        busController = this;
                    }
                }
                busController = this;
            }
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public String getName() {
        return "BusController";
    }

    public final int getCarGame(Car car) {
        return (int) DataAccessor.read(car.data, 16, 16);
    }

    public final int getCarStage(Car car) {
        return (int) DataAccessor.read(car.data, 16, 0);
    }

    public final int getCarTarget(Car car) {
        return (int) DataAccessor.read(car.data, 16, 32);
    }
}
