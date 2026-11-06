package info.flowersoft.theotown.components.traffic.carcontroller;

import com.badlogic.gdx.utils.IntMap;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.city.objects.CarOwner;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.transition.TransitionRunner;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.Transition;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.Script;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.util.DataAccessor;
import info.flowersoft.theotown.util.SafeListAccessor;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import vm2.LuaTable;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class ScriptedCarController extends CarController {
    public LuaValue carLibrary;
    public int nextPendingCarOwnerId;
    public final IntMap<PendingCarOwner> pendingCarOwners;
    public TransitionRunner transitionRunner;

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void update() {
    }

    public ScriptedCarController(CarSpawner carSpawner) {
        super(carSpawner);
        this.nextPendingCarOwnerId = 1;
        this.pendingCarOwners = new IntMap<>();
    }

    public List<LuaValue> getCarLuaReprs(Draft draft) {
        ArrayList arrayList = new ArrayList();
        for (Car car : new SafeListAccessor(getCars())) {
            CarOwner owner = car.getOwner();
            if (!car.invalid && owner != null && owner.getOwnerDraft() == draft) {
                arrayList.add(owner.getLuaRepr());
            }
        }
        return arrayList;
    }

    public void setCarLibrary(LuaValue luaValue) {
        this.carLibrary = luaValue;
        Iterator<Car> it = getCars().iterator();
        while (it.hasNext()) {
            CarOwner owner = it.next().getOwner();
            if (owner != null) {
                owner.setupRepr(luaValue);
            }
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void load(JsonReader jsonReader, City city) throws IOException {
        super.load(jsonReader, city);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void save(JsonWriter jsonWriter) throws IOException {
        super.save(jsonWriter);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void prepare(City city) {
        super.prepare(city);
        this.transitionRunner = new TransitionRunner(city);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void register(Car car) {
        super.register(car);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public boolean onSpawn(Car car) {
        PendingCarOwner pendingCarOwnerRemove = this.pendingCarOwners.remove((int) car.data);
        emitCarEvent(car, "car spawned", 2);
        if (pendingCarOwnerRemove != null) {
            CarOwner carOwner = new CarOwner(pendingCarOwnerRemove.owner, car, pendingCarOwnerRemove.storage);
            car.setOwner(carOwner);
            carOwner.setupRepr(this.carLibrary);
            MethodCluster methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("onCarSpawned", pendingCarOwnerRemove.owner);
            if (methodClusterOrNull != null) {
                synchronized (this.city) {
                    methodClusterOrNull.invoke((LuaValue) carOwner.getLuaRepr());
                }
            }
        }
        return super.onSpawn(car);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void onNotSpawn(long j) {
        MethodCluster methodClusterOrNull;
        PendingCarOwner pendingCarOwnerRemove = this.pendingCarOwners.remove((int) j);
        if (pendingCarOwnerRemove != null && (methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("onCarNotSpawned", pendingCarOwnerRemove.owner)) != null) {
            synchronized (this.city) {
                methodClusterOrNull.invoke((LuaValue) pendingCarOwnerRemove.storage);
            }
        }
        super.onNotSpawn(j);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public boolean onTarget(Car car, int i, int i2, int i3) {
        MethodCluster methodClusterOrNull;
        emitCarEvent(car, "car reached", 3);
        CarOwner owner = car.getOwner();
        if (owner != null && (methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("onCarReached", owner.getOwnerDraft())) != null) {
            synchronized (this.city) {
                methodClusterOrNull.invoke((LuaValue) owner.getLuaRepr());
            }
        }
        return (car.paused || car.isWaiting()) ? false : true;
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void foundWay(Car car) {
        MethodCluster methodClusterOrNull;
        super.foundWay(car);
        CarOwner owner = car.getOwner();
        if (owner == null || (methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("onCarFoundWay", owner.getOwnerDraft())) == null) {
            return;
        }
        synchronized (this.city) {
            methodClusterOrNull.invoke((LuaValue) owner.getLuaRepr());
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void foundNoWay(Car car) {
        MethodCluster methodClusterOrNull;
        super.foundNoWay(car);
        CarOwner owner = car.getOwner();
        if (owner == null || (methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("onCarFoundNoWay", owner.getOwnerDraft())) == null) {
            return;
        }
        synchronized (this.city) {
            methodClusterOrNull.invoke((LuaValue) owner.getLuaRepr());
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public void unregister(Car car) {
        MethodCluster methodClusterOrNull;
        super.unregister(car);
        emitCarEvent(car, "car despawned", 4);
        CarOwner owner = car.getOwner();
        if (owner == null || (methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("onCarDespawned", owner.getOwnerDraft())) == null) {
            return;
        }
        synchronized (this.city) {
            methodClusterOrNull.invoke((LuaValue) owner.getLuaRepr());
        }
    }

    public void resolvePoint(int i, int i2, int i3, MapArea mapArea) {
        if (this.city.isValid(i, i2)) {
            if (i3 == Integer.MIN_VALUE) {
                Building building = this.tiles.getBuilding(i, i2);
                if (building != null) {
                    mapArea.add(building, false);
                    return;
                }
                Road topRoad = this.tiles.getTopRoad(i, i2);
                Road bottomRoad = topRoad != null ? this.tiles.getBottomRoad(i, i2) : null;
                if (topRoad == null || bottomRoad == null) {
                    return;
                }
                mapArea.add(i, i2, topRoad.absLevel);
                mapArea.add(i, i2, bottomRoad.absLevel);
                return;
            }
            mapArea.add(i, i2, i3 + this.city.getTiles().getBaseTerrainHeight(i, i2));
        }
    }

    public void driveTo(Car car, MapArea mapArea) {
        this.spawner.driveTo(car, mapArea);
    }

    public void spawnCar(CarDraft carDraft, MapArea mapArea, MapArea mapArea2, int i, int i2, int i3, Draft draft, LuaTable luaTable) {
        Building building;
        int iNextInt = i3 < 0 ? Resources.RND.nextInt(carDraft.frames.length / carDraft.framesPerVariant) : i3;
        int i4 = this.nextPendingCarOwnerId;
        this.nextPendingCarOwnerId = i4 + 1;
        if (draft != null && !luaTable.isnil()) {
            this.pendingCarOwners.put(i4, new PendingCarOwner(draft, luaTable));
        }
        long jWrite = i4;
        if (this.city.isValid(i, i2) && (building = this.tiles.getBuilding(i, i2)) != null) {
            jWrite = DataAccessor.write(DataAccessor.write(jWrite, 10, 32, building.getX() + 1), 10, 42, building.getY() + 1);
        }
        this.spawner.spawn(mapArea, mapArea2, this, carDraft, iNextInt, jWrite, 0);
    }

    private Building getBuildingData(Car car) {
        Building building;
        int i = ((int) DataAccessor.read(car.data, 10, 32)) - 1;
        int i2 = ((int) DataAccessor.read(car.data, 10, 42)) - 1;
        if (this.city.isValid(i, i2) && (building = this.tiles.getBuilding(i, i2)) != null && building.getX() == i && building.getY() == i2) {
            return building;
        }
        return null;
    }

    private void emitCarEvent(Car car, String str, int i) {
        MethodCluster methodClusterOrNull;
        List<Transition> list;
        Building buildingData = getBuildingData(car);
        if (buildingData != null) {
            if ((this.transitionRunner == null || buildingData.getDraft().onEventTransitions == null) && buildingData.getDraft().luaScripts == null) {
                return;
            }
            synchronized (this.city) {
                try {
                    BuildingDraft draft = buildingData.getDraft();
                    TransitionRunner transitionRunner = this.transitionRunner;
                    if (transitionRunner != null && (list = draft.onEventTransitions) != null) {
                        transitionRunner.accept(list, buildingData, str, buildingData.getDraftId(), buildingData.getDraft().luaRepr, buildingData.getDraft().isPrivileged());
                        this.transitionRunner.run();
                    }
                    List<Script> list2 = draft.luaScripts;
                    if (list2 != null && !list2.isEmpty() && (methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("event", draft)) != null) {
                        methodClusterOrNull.invoke(buildingData.getX(), buildingData.getY(), 0, i);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarController
    public String getName() {
        return "scripted car controller";
    }

    public static class PendingCarOwner {
        public final Draft owner;
        public final LuaTable storage;

        public PendingCarOwner(Draft draft, LuaTable luaTable) {
            this.owner = draft;
            this.storage = luaTable;
        }
    }
}
