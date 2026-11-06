package info.flowersoft.theotown.components.traffic;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.IntMap;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.Pathfinding;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Way;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultWeather;
import info.flowersoft.theotown.components.traffic.carcontroller.AirportTaxiCarController;
import info.flowersoft.theotown.components.traffic.carcontroller.BusController;
import info.flowersoft.theotown.components.traffic.carcontroller.CarController;
import info.flowersoft.theotown.components.traffic.carcontroller.CarSpawner;
import info.flowersoft.theotown.components.traffic.carcontroller.DefaultCarController;
import info.flowersoft.theotown.components.traffic.carcontroller.FireEngineController;
import info.flowersoft.theotown.components.traffic.carcontroller.GarbageTruckController;
import info.flowersoft.theotown.components.traffic.carcontroller.GenericCarController;
import info.flowersoft.theotown.components.traffic.carcontroller.HearseCarController;
import info.flowersoft.theotown.components.traffic.carcontroller.MedicCarController;
import info.flowersoft.theotown.components.traffic.carcontroller.PoliceCarController;
import info.flowersoft.theotown.components.traffic.carcontroller.SWATCarController;
import info.flowersoft.theotown.components.traffic.carcontroller.ScriptedCarController;
import info.flowersoft.theotown.components.traffic.carcontroller.TankController;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.CarDraft;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.WinterManager;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.util.CyclicWorker;
import io.blueflower.stapel2d.util.ScreenRect;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class CarTrafficHandler extends TrafficHandler implements CarSpawner {
    public final boolean IMPORTANT_CARS_RULE;
    public final List<CarController> carControllers;
    public int carIdCounter;
    public final List<Car> cars;
    public final int height;
    public int lastAnimationTime;
    public final ArrayDeque<PathfindingTask> pathfindingTasks;
    public boolean stopPathfindingCalculation;
    public TrafficAmountWorker trafficAmountWorker;
    public int updateCounter;
    public final int width;
    public static final int NUMBER_OF_PATHFINDING_THREADS = Math.max(Runtime.getRuntime().availableProcessors() / 2, 1);
    public static final int[] CAR_DRAWING_XY = {0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0};
    public static final int[] CAR_DRAWING_DIRS = {4, 2, 8, 2, 1, 4, 1, 8};
    public static final int[] CAR_FRAME_MAPPING = {1, 0, 3, 2};

    public interface PathfindingContext {
        ArrayDeque<PathfindingTask> getTasks();

        boolean shouldBeStopped();
    }

    public interface PathfindingTask {
        void work(Pathfinding pathfinding, boolean z);
    }

    public CarTrafficHandler(City city) {
        super(city);
        this.IMPORTANT_CARS_RULE = true;
        this.cars = new ArrayList();
        this.pathfindingTasks = new ArrayDeque<>();
        this.carControllers = new ArrayList();
        this.width = city.getWidth();
        this.height = city.getHeight();
        this.carIdCounter = 0;
        addCarController(new DefaultCarController(this));
        addCarController(new BusController(this));
        addCarController(new FireEngineController(this));
        addCarController(new PoliceCarController(this));
        addCarController(new SWATCarController(this));
        addCarController(new MedicCarController(this));
        addCarController(new GarbageTruckController(this));
        addCarController(new HearseCarController(this));
        addCarController(new TankController(this));
        addCarController(new AirportTaxiCarController(this));
        addCarController(new ScriptedCarController(this));
        for (int i = 0; i < Drafts.BUILDINGS.size(); i++) {
            BuildingDraft buildingDraft = Drafts.BUILDINGS.get(i);
            if (buildingDraft.carSpawners != null) {
                for (int i2 = 0; i2 < buildingDraft.carSpawners.length; i2++) {
                    addCarController(new GenericCarController(this, buildingDraft, null, buildingDraft.carSpawners[i2]));
                }
            }
            if (buildingDraft.hasUpgrades()) {
                for (int i3 = 0; i3 < buildingDraft.upgrades.size(); i3++) {
                    UpgradeDraft upgradeDraft = buildingDraft.upgrades.get(i3);
                    if (upgradeDraft.carSpawners != null) {
                        for (int i4 = 0; i4 < upgradeDraft.carSpawners.length; i4++) {
                            addCarController(new GenericCarController(this, buildingDraft, upgradeDraft, upgradeDraft.carSpawners[i4]));
                        }
                    }
                }
            }
        }
        for (int i5 = 0; i5 < this.carControllers.size(); i5++) {
            this.carControllers.get(i5).setCity(city);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0100 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00a8 A[SYNTHETIC] */
    @Override // info.flowersoft.theotown.util.Saveable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void load(io.blueflower.stapel2d.util.json.JsonReader r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.traffic.CarTrafficHandler.load(io.blueflower.stapel2d.util.json.JsonReader):void");
    }

    /* JADX INFO: renamed from: $r8$lambda$-yubETPgBrdHhpaQO2MJaEaeb4M, reason: not valid java name */
    public static /* synthetic */ Car m2136$r8$lambda$yubETPgBrdHhpaQO2MJaEaeb4M(IntMap intMap, int i) {
        return (Car) intMap.get(i);
    }

    public <T extends CarController> T getCarController(Class<T> cls) {
        for (int i = 0; i < this.carControllers.size(); i++) {
            T t = (T) this.carControllers.get(i);
            if (t.getClass().equals(cls)) {
                return t;
            }
        }
        return null;
    }

    public List<Car> getCars() {
        return this.cars;
    }

    public List<Car> getCars(Road road) {
        ArrayList arrayList = new ArrayList(4);
        for (int i = 0; i < 4; i++) {
            Car car = road.CarArray[i];
            if (car != null) {
                arrayList.add(car);
            }
        }
        return arrayList;
    }

    public Road getBadRoad() {
        return this.trafficAmountWorker.getBadRoad();
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        synchronized (this.cars) {
            try {
                jsonWriter.name("controller mapping");
                jsonWriter.beginArray();
                jsonWriter.value(this.carControllers.size());
                for (int i = 0; i < this.carControllers.size(); i++) {
                    jsonWriter.value(this.carControllers.get(i).getName());
                }
                jsonWriter.endArray();
                Collections.sort(this.cars, new Comparator<Car>() { // from class: info.flowersoft.theotown.components.traffic.CarTrafficHandler.1
                    @Override // java.util.Comparator
                    public int compare(Car car, Car car2) {
                        return Integer.compare(car.getId(), car2.getId());
                    }
                });
                jsonWriter.name("cars");
                jsonWriter.beginArray();
                for (Car car : this.cars) {
                    jsonWriter.beginObject();
                    car.save(jsonWriter);
                    jsonWriter.endObject();
                }
                jsonWriter.endArray();
                for (int i2 = 0; i2 < this.carControllers.size(); i2++) {
                    CarController carController = this.carControllers.get(i2);
                    jsonWriter.name(carController.getName());
                    jsonWriter.beginObject();
                    carController.save(jsonWriter);
                    jsonWriter.endObject();
                }
                jsonWriter.name("id counter").value(this.carIdCounter);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.TrafficHandler
    public void prepare() {
        PathfindingContext pathfindingContext = new PathfindingContext() { // from class: info.flowersoft.theotown.components.traffic.CarTrafficHandler.2
            @Override // info.flowersoft.theotown.components.traffic.CarTrafficHandler.PathfindingContext
            public boolean shouldBeStopped() {
                return CarTrafficHandler.this.stopPathfindingCalculation;
            }

            @Override // info.flowersoft.theotown.components.traffic.CarTrafficHandler.PathfindingContext
            public ArrayDeque<PathfindingTask> getTasks() {
                return CarTrafficHandler.this.pathfindingTasks;
            }
        };
        for (int i = 0; i < NUMBER_OF_PATHFINDING_THREADS; i++) {
            PathfindingThread pathfindingThread = new PathfindingThread(this.city, pathfindingContext);
            pathfindingThread.setDaemon(true);
            pathfindingThread.setName("Pathfinding" + i);
            pathfindingThread.start();
        }
        TrafficAmountWorker trafficAmountWorker = new TrafficAmountWorker(this.city);
        this.trafficAmountWorker = trafficAmountWorker;
        addDailyWorker(trafficAmountWorker);
        addDailyWorker(new CyclicWorker(new Runnable() { // from class: info.flowersoft.theotown.components.traffic.CarTrafficHandler$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CarTrafficHandler.$r8$lambda$KnGYsweIBgFHXGA6r2EE9hfz_qQ(this.f$0);
            }
        }));
        final DefaultDate defaultDate = (DefaultDate) this.city.getComponent(1);
        final DefaultWeather defaultWeather = (DefaultWeather) this.city.getComponent(12);
        addWorker(new CyclicWorker(new Runnable() { // from class: info.flowersoft.theotown.components.traffic.CarTrafficHandler$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                CarTrafficHandler.$r8$lambda$jeU5_KWetYrejwSzWVNqyYGwjBg(this.f$0, defaultDate, defaultWeather);
            }
        }));
        for (int i2 = 0; i2 < this.carControllers.size(); i2++) {
            this.carControllers.get(i2).prepare(this.city);
        }
    }

    public static /* synthetic */ void $r8$lambda$KnGYsweIBgFHXGA6r2EE9hfz_qQ(CarTrafficHandler carTrafficHandler) {
        for (int i = 0; i < carTrafficHandler.carControllers.size(); i++) {
            CarController carController = carTrafficHandler.carControllers.get(i);
            synchronized (carTrafficHandler.cars) {
                carController.update();
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$jeU5_KWetYrejwSzWVNqyYGwjBg(CarTrafficHandler carTrafficHandler, DefaultDate defaultDate, DefaultWeather defaultWeather) {
        int i;
        CarTrafficHandler carTrafficHandler2;
        carTrafficHandler.getClass();
        int animationTime = defaultDate.getAnimationTime();
        int i2 = animationTime - carTrafficHandler.lastAnimationTime;
        boolean zIsWinter = WinterManager.getInstance().isWinter();
        int iClamp = MathUtils.clamp(i2, 0, 1000);
        carTrafficHandler.lastAnimationTime = animationTime;
        float f = defaultWeather.isFogEnabled() ? 0.7f : 1.0f;
        if (defaultWeather.getRain() >= 0.8f) {
            f *= 0.7f;
        }
        float f2 = f;
        int i3 = 0;
        while (i3 < carTrafficHandler.cars.size()) {
            synchronized (carTrafficHandler.cars) {
                i = i3 + 1000;
                carTrafficHandler2 = carTrafficHandler;
                carTrafficHandler2.updateCars(i3, i, animationTime, zIsWinter ? 1 : 0, f2, iClamp, carTrafficHandler.updateCounter, !carTrafficHandler.city.getLod().drawCars());
            }
            carTrafficHandler = carTrafficHandler2;
            i3 = i;
        }
        carTrafficHandler.updateCounter++;
    }

    public final boolean carIsVisible(Car car) {
        int iOriginalToRotatedX = this.city.originalToRotatedX(car.x / 2, car.y / 2);
        int iOriginalToRotatedY = this.city.originalToRotatedY(car.x / 2, car.y / 2);
        IsoConverter isoConverter = this.city.getIsoConverter();
        int iIsoToAbsX = isoConverter.isoToAbsX(iOriginalToRotatedX, iOriginalToRotatedY);
        int iIsoToAbsY = isoConverter.isoToAbsY(iOriginalToRotatedX, iOriginalToRotatedY) - ((int) ((car.absLevel * 12) * isoConverter.getAbsScaleY()));
        ScreenRect view = this.city.getView();
        int scale = (int) (this.city.getScale() * 100.0f);
        return ((float) (iIsoToAbsX + scale)) >= view.getX() && ((float) (iIsoToAbsY + scale)) >= view.getY() && ((float) (iIsoToAbsX - scale)) < view.getX() + view.getWidth() && ((float) (iIsoToAbsY - scale)) < view.getY() + view.getHeight();
    }

    public final void updateCars(int i, int i2, int i3, int i4, float f, int i5, int i6, boolean z) throws Throwable {
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        CarTrafficHandler carTrafficHandler = this;
        int i12 = i;
        while (i12 < carTrafficHandler.cars.size() && i12 < i2) {
            Car car = carTrafficHandler.cars.get(i12);
            if (car.getParent() != null && car.getAbsParent().invalid) {
                car.invalid = true;
            }
            if (car.invalid || (i8 = car.x) < 0 || (i9 = car.y) < 0 || i8 >= carTrafficHandler.width * 2 || i9 >= carTrafficHandler.height * 2) {
                carTrafficHandler.unregisterCar(car);
                i7 = i12 - 1;
                carTrafficHandler.removeCarByIndex(i12);
                carTrafficHandler.invalidateCar(car);
                for (Car child = car.getChild(); child != null; child = child.getChild()) {
                    carTrafficHandler.unregisterCar(child);
                    carTrafficHandler.removeCarByIndex(carTrafficHandler.cars.indexOf(child));
                    carTrafficHandler.invalidateCar(child);
                }
            } else {
                if (car.getParent() == null) {
                    if (z) {
                        if (i12 % 4 == i6 % 4) {
                            i11 = i5 * 4;
                            i10 = i11;
                        }
                    } else if (car.getChild() != null || carTrafficHandler.carIsVisible(car)) {
                        i10 = i5;
                    } else if (i12 % 8 == i6 % 8) {
                        i11 = i5 * 8;
                        i10 = i11;
                    }
                    int i13 = car.x;
                    int i14 = car.y;
                    int i15 = car.absLevel;
                    Road absoluteRoad = carTrafficHandler.tiles.getAbsoluteRoad(i13 / 2, i14 / 2, i15);
                    float f2 = car.p;
                    int i16 = car.prog;
                    int i17 = car.lastMovement;
                    if ((i3 - i17 >= 20000 && i17 > 0) || absoluteRoad == null) {
                        carTrafficHandler.unregisterCar(car);
                        i7 = i12 - 1;
                        carTrafficHandler.removeCarByIndex(i12);
                        carTrafficHandler.invalidateCar(car);
                    } else {
                        boolean zUpdateAutonomousCar = carTrafficHandler.updateAutonomousCar(car, i3, absoluteRoad, i4, f, i10);
                        if (car.invalid) {
                            carTrafficHandler.unregisterCar(car);
                            i7 = i12 - 1;
                            carTrafficHandler.removeCarByIndex(i12);
                            carTrafficHandler.invalidateCar(car);
                            for (Car child2 = car.getChild(); child2 != null; child2 = child2.getChild()) {
                                carTrafficHandler.unregisterCar(child2);
                                carTrafficHandler.removeCarByIndex(carTrafficHandler.cars.indexOf(child2));
                                carTrafficHandler.invalidateCar(child2);
                            }
                        } else {
                            if (i13 != car.x || i14 != car.y || i15 != car.absLevel) {
                                carTrafficHandler.setCarMarker(car, i13, i14, null, i15);
                                carTrafficHandler = this;
                                carTrafficHandler.setCarMarker(null, car.x, car.y, car, car.absLevel);
                                car = car;
                                if (!zUpdateAutonomousCar) {
                                    car.lastSpeed = ((((car.p + car.prog) - f2) - i16) * 1000.0f) / i10;
                                }
                            }
                            Car child3 = car.getChild();
                            while (child3 != null) {
                                int i18 = child3.x;
                                int i19 = child3.y;
                                int i20 = child3.absLevel;
                                carTrafficHandler.updateConnectedCar(child3);
                                if (i18 != child3.x || i19 != child3.y || i20 != child3.absLevel) {
                                    carTrafficHandler.setCarMarker(child3, i18, i19, null, i20);
                                    Car car2 = child3;
                                    carTrafficHandler = this;
                                    carTrafficHandler.setCarMarker(null, child3.x, child3.y, car2, child3.absLevel);
                                    child3 = car2;
                                }
                                child3 = child3.getChild();
                            }
                        }
                    }
                }
                i12++;
            }
            i12 = i7;
            i12++;
        }
    }

    public final void removeCarByIndex(int i) {
        if (i < 0) {
            return;
        }
        int size = this.cars.size() - 1;
        if (i == size) {
            this.cars.remove(i);
            return;
        }
        List<Car> list = this.cars;
        list.set(i, list.get(size));
        this.cars.remove(size);
    }

    public final void updateConnectedCar(Car car) {
        Car parent = car.getParent();
        if (parent == null || car.getAbsParent().invalid) {
            car.invalid = true;
            return;
        }
        int i = car.x;
        if (i != parent.lastX || car.y != parent.lastY) {
            car.lastX = i;
            car.lastY = car.y;
            car.lastDir = car.dir;
            car.lastLevel = car.absLevel;
            car.x = parent.lastX;
            car.y = parent.lastY;
            car.dir = parent.lastDir;
            car.absLevel = parent.lastLevel;
        }
        if (parent.dir != 0) {
            car.p = parent.p;
        } else {
            car.p = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        car.isImportant = parent.isImportant;
    }

    /* JADX WARN: Code restructure failed: missing block: B:282:0x04ea, code lost:
    
        return r4;
     */
    /* JADX WARN: Removed duplicated region for block: B:267:0x048a A[PHI: r13 r14
      0x048a: PHI (r13v10 int) = (r13v8 int), (r13v11 int) binds: [B:266:0x0488, B:261:0x047e] A[DONT_GENERATE, DONT_INLINE]
      0x048a: PHI (r14v16 int) = (r14v14 int), (r14v17 int) binds: [B:266:0x0488, B:261:0x047e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:268:0x048c  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fa A[PHI: r5
      0x00fa: PHI (r5v40 float) = (r5v12 float), (r5v43 float), (r5v43 float), (r5v43 float) binds: [B:32:0x00a2, B:37:0x00b4, B:39:0x00bc, B:41:0x00c6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:286:? -> B:48:0x00ed). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean updateAutonomousCar(info.flowersoft.theotown.city.objects.Car r21, int r22, info.flowersoft.theotown.city.objects.Road r23, int r24, float r25, int r26) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1259
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.traffic.CarTrafficHandler.updateAutonomousCar(info.flowersoft.theotown.city.objects.Car, int, info.flowersoft.theotown.city.objects.Road, int, float, int):boolean");
    }

    public final boolean isDifferentTile(int i, int i2, int i3, int i4) {
        return (i / 2 == i3 / 2 && i2 / 2 == i4 / 2) ? false : true;
    }

    public final void invalidateCar(Car car) {
        car.invalid = true;
        if (car.getAbsParent() != null) {
            car.getAbsParent().invalid = true;
        }
    }

    public final boolean tryToOverrun(Car car, int i, Road road) {
        int i2;
        int i3;
        int i4;
        Way way = car.way;
        int i5 = car.prog;
        if (!road.draft.overrunnable) {
            return false;
        }
        if (i5 >= way.size() - 3 || i5 < 1) {
            return false;
        }
        if (i == 0 || Resources.RND.nextFloat() < 0.9f) {
            return false;
        }
        int iDifferenceX = Direction.differenceX(i);
        int iDifferenceY = Direction.differenceY(i);
        int i6 = car.x;
        int i7 = car.y;
        int i8 = i6 % 2;
        int i9 = i7 % 2;
        int i10 = i6 - i8;
        int i11 = i7 - i9;
        if (iDifferenceX != 0) {
            i3 = (i9 + 1) % 2;
            i2 = i8;
        } else {
            i2 = (i8 + 1) % 2;
            i3 = i9;
        }
        int i12 = i10 + i2;
        int i13 = i11 + i3;
        int iFromDifferential = Direction.fromDifferential(i2 - i8, i3 - i9);
        int iOpposite = Direction.opposite(iFromDifferential);
        if (!Direction.isIn(i, road.getDirs(i12 % 2, i13 % 2))) {
            return false;
        }
        int i14 = 0;
        for (int i15 = 3; i14 < i15; i15 = 3) {
            if (getCarMarker((i14 * iDifferenceX) + i12, (i14 * iDifferenceY) + i13, car.absLevel) != null) {
                return false;
            }
            i14++;
        }
        int i16 = car.x;
        int i17 = car.y;
        int i18 = i12 + iDifferenceX;
        int i19 = i13 + iDifferenceY;
        int i20 = 0;
        int i21 = 0;
        while (true) {
            int i22 = i5 + i20;
            int i23 = i16;
            if (i22 >= car.way.size() || car.way.getDir(i22) != i) {
                break;
            }
            int i24 = i18 / 2;
            i4 = i5;
            int i25 = i19 / 2;
            if (!this.city.isValid(i24, i25)) {
                break;
            }
            int i26 = i17;
            Road absoluteRoad = this.tiles.getAbsoluteRoad(i24, i25, car.absLevel);
            if (absoluteRoad == null) {
                break;
            }
            int dirs = absoluteRoad.getDirs(i18 % 2, i19 % 2);
            if (Direction.isIn(iOpposite, dirs)) {
                i21 = i20;
            }
            if (!Direction.isIn(i, dirs)) {
                break;
            }
            i20++;
            i16 = i23 + iDifferenceX;
            i17 = i26 + iDifferenceY;
            i18 += iDifferenceX;
            i19 += iDifferenceY;
            if (i16 < 0 || i17 < 0 || i16 >= this.city.getWidth() * 2 || i17 >= this.city.getHeight() * 2) {
                break;
            }
            i5 = i4;
        }
        i4 = i5;
        int i27 = i21;
        if (i27 < 1) {
            return false;
        }
        car.x = i12;
        car.y = i13;
        int i28 = i4 + i27;
        int i29 = i28 + 1;
        if (way.size() > i29 && way.getDir(i29) == iFromDifferential) {
            way.setDir(i29, i);
            car.prog++;
            return true;
        }
        way.setDir(i28, iOpposite);
        way.setDir(i4 - 1, i);
        car.prog--;
        return true;
    }

    public final void addCarController(CarController carController) {
        carController.setId(this.carControllers.size());
        this.carControllers.add(carController);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarSpawner
    public void spawn(CarController carController, CarDraft carDraft, int i, long j, Way way, int i2) {
        spawnCar(way, carDraft, carController, i, j, i2);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarSpawner
    public void spawn(MapArea mapArea, MapArea mapArea2, CarController carController, CarDraft carDraft, long j, int i) {
        spawn(mapArea, mapArea2, carController, carDraft, Resources.RND.nextInt(carDraft.frames.length / carDraft.framesPerVariant), j, i);
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarSpawner
    public void spawn(final MapArea mapArea, final MapArea mapArea2, final CarController carController, final CarDraft carDraft, final int i, final long j, final int i2) {
        final boolean z = carController.getId() != 0;
        if (this.pathfindingTasks.size() < 256 || z) {
            PathfindingTask pathfindingTask = new PathfindingTask() { // from class: info.flowersoft.theotown.components.traffic.CarTrafficHandler$$ExternalSyntheticLambda2
                @Override // info.flowersoft.theotown.components.traffic.CarTrafficHandler.PathfindingTask
                public final void work(Pathfinding pathfinding, boolean z2) {
                    CarTrafficHandler.$r8$lambda$bj9u9xkVEZtL8LoamxrfctLzFu8(this.f$0, carDraft, mapArea2, mapArea, z, carController, i, j, i2, pathfinding, z2);
                }
            };
            synchronized (this.pathfindingTasks) {
                try {
                    if (z) {
                        this.pathfindingTasks.addFirst(pathfindingTask);
                    } else {
                        this.pathfindingTasks.addLast(pathfindingTask);
                    }
                    this.pathfindingTasks.notifyAll();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$bj9u9xkVEZtL8LoamxrfctLzFu8(CarTrafficHandler carTrafficHandler, CarDraft carDraft, MapArea mapArea, MapArea mapArea2, boolean z, CarController carController, int i, long j, int i2, Pathfinding pathfinding, boolean z2) {
        carTrafficHandler.getClass();
        pathfinding.setRoadFlags(carDraft.flags);
        pathfinding.addTarget(mapArea);
        pathfinding.addStart(mapArea2);
        pathfinding.calculate(z ? 200 : 50);
        if (z2) {
            if (pathfinding.hasResult()) {
                carTrafficHandler.spawnCar(pathfinding.getResult(), carDraft, carController, i, j, i2);
            } else {
                carController.onNotSpawn(j);
            }
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarSpawner
    public void driveTo(final Car car, final MapArea mapArea) {
        car.paused = true;
        car.fadeIn = false;
        final boolean z = car.controller != 0;
        if (this.pathfindingTasks.size() < 256 || z) {
            PathfindingTask pathfindingTask = new PathfindingTask() { // from class: info.flowersoft.theotown.components.traffic.CarTrafficHandler$$ExternalSyntheticLambda4
                @Override // info.flowersoft.theotown.components.traffic.CarTrafficHandler.PathfindingTask
                public final void work(Pathfinding pathfinding, boolean z2) {
                    CarTrafficHandler.$r8$lambda$KTTHofMoksoAA2QyxQeRVw0pKuE(this.f$0, car, mapArea, z, pathfinding, z2);
                }
            };
            synchronized (this.pathfindingTasks) {
                try {
                    if (z) {
                        this.pathfindingTasks.addFirst(pathfindingTask);
                    } else {
                        this.pathfindingTasks.addLast(pathfindingTask);
                    }
                    this.pathfindingTasks.notifyAll();
                } finally {
                }
            }
            return;
        }
        synchronized (this.cars) {
            try {
                car.paused = false;
                this.carControllers.get(car.controller).foundNoWay(car);
                if (!car.paused) {
                    car.invalid = true;
                } else {
                    car.paused = false;
                }
            } finally {
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$KTTHofMoksoAA2QyxQeRVw0pKuE(CarTrafficHandler carTrafficHandler, Car car, MapArea mapArea, boolean z, Pathfinding pathfinding, boolean z2) {
        carTrafficHandler.getClass();
        if (car.invalid) {
            return;
        }
        int dir = car.way.getDir(car.prog);
        int iDifferenceX = Direction.differenceX(dir);
        int iDifferenceY = Direction.differenceY(dir);
        CarController carController = carTrafficHandler.carControllers.get(car.controller);
        pathfinding.setRoadFlags(car.draft.flags);
        pathfinding.addTarget(mapArea);
        pathfinding.addStartParcel(car.x + iDifferenceX, car.y + iDifferenceY, car.absLevel);
        pathfinding.calculate(z ? 200 : 50);
        if (z2) {
            synchronized (carTrafficHandler.cars) {
                try {
                    if (pathfinding.hasResult()) {
                        carTrafficHandler.setCarMarker(car, car.x, car.y, null, car.absLevel);
                        car.driveTo(pathfinding.getResult());
                        carTrafficHandler.setCarMarker(null, car.x, car.y, car, car.absLevel);
                        car.paused = false;
                        carController.foundWay(car);
                    } else if (pathfinding.isShortcut()) {
                        carTrafficHandler.wait(car);
                    } else {
                        if (car.isImportant) {
                            Gdx.app.error("Pathfinding", "Found no way");
                        }
                        car.paused = false;
                        carController.foundNoWay(car);
                        if (!car.paused) {
                            carTrafficHandler.unregisterCarFromList(car);
                        } else {
                            car.paused = false;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.carcontroller.CarSpawner
    public void wait(Car car) {
        car.paused = true;
        synchronized (this.cars) {
            try {
                int dir = car.way.getDir(car.prog);
                boolean z = dir == 0 && car.prog > 0;
                if (z) {
                    dir = car.way.getDir(car.prog - 1);
                }
                setCarMarker(car, car.x, car.y, null, car.absLevel);
                car.driveTo(new Way(car.x, car.y, car.absLevel, dir));
                if (z) {
                    car.p = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                    car.prog = 1;
                    car.dir = 0;
                } else {
                    car.p = 1.0f;
                }
                setCarMarker(null, car.x, car.y, car, car.absLevel);
                car.paused = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int changePath(Car car, int i) {
        int iTurnCW;
        Way way = new Way(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
        int i2 = car.x;
        int i3 = car.y;
        int i4 = car.dir;
        int i5 = car.absLevel;
        way.setStart(i2, i3, i5);
        way.startFromFront();
        way.addDirToFront(i4);
        int i6 = i5;
        int i7 = 1;
        int i8 = 0;
        int iTurnCW2 = i4;
        int iDifferenceY = i3;
        int iDifferenceX = i2;
        int i9 = i;
        for (int i10 = Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE; i7 < i10; i10 = Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) {
            int i11 = iDifferenceX / 2;
            int i12 = iDifferenceY / 2;
            Road absoluteRoad = this.tiles.getAbsoluteRoad(i11, i12, i6);
            iDifferenceX += Direction.differenceX(iTurnCW2);
            iDifferenceY += Direction.differenceY(iTurnCW2);
            int i13 = iDifferenceX / 2;
            int i14 = iDifferenceY / 2;
            if (i13 < 0 || i14 < 0 || !this.city.isValid(i13, i14) || absoluteRoad == null) {
                break;
            }
            if (i13 != i11 || i14 != i12) {
                if (absoluteRoad.dLevel == iTurnCW2) {
                    i6++;
                }
                absoluteRoad = this.tiles.getAbsoluteRoad(i13, i14, i6);
                if (absoluteRoad == null) {
                    absoluteRoad = this.tiles.getAbsoluteRoad(i13, i14, i6 - 1);
                    if (absoluteRoad == null || absoluteRoad.dLevel != Direction.opposite(iTurnCW2)) {
                        absoluteRoad = null;
                    } else {
                        i6--;
                    }
                }
            }
            if (absoluteRoad == null) {
                break;
            }
            int dirs = absoluteRoad.getDirs(iDifferenceX % 2, iDifferenceY % 2);
            boolean zIsIn = Direction.isIn(Direction.turnCCW(iTurnCW2), dirs);
            boolean zIsIn2 = Direction.isIn(Direction.turnCW(iTurnCW2), dirs);
            if (i9 == -1 && zIsIn) {
                iTurnCW2 = Direction.turnCCW(iTurnCW2);
                i8 = i7;
                i9 = 0;
            } else if (i9 == 1 && zIsIn2) {
                iTurnCW2 = Direction.turnCW(iTurnCW2);
                i8 = i7;
                i9 = 0;
            }
            if (!Direction.isIn(iTurnCW2, dirs)) {
                if (zIsIn && zIsIn2) {
                    if (Resources.RND.nextBoolean()) {
                        iTurnCW = Direction.turnCCW(iTurnCW2);
                    } else {
                        iTurnCW = Direction.turnCW(iTurnCW2);
                    }
                } else if (zIsIn) {
                    iTurnCW = Direction.turnCCW(iTurnCW2);
                } else if (zIsIn2) {
                    iTurnCW = Direction.turnCW(iTurnCW2);
                }
                iTurnCW2 = iTurnCW;
            }
            way.addDirToFront(iTurnCW2);
            i7++;
        }
        way.startFromFront();
        car.prog = 0;
        car.way = way;
        return i8;
    }

    public void draw(int i, int i2, Road road, Drawer drawer) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        Road topRoad;
        Car car;
        CarTrafficHandler carTrafficHandler = this;
        int i8 = i;
        int i9 = i2;
        Drawer drawer2 = drawer;
        int i10 = road.absLevel;
        int i11 = 0;
        if ((road.getFlags() & 64) != 0) {
            drawer2.setClipRect(0, (-46) - (i10 * 12), 32, 96);
        } else {
            drawer2.setClipRect(0, (-14) - (i10 * 12), 32, 96);
        }
        int i12 = 0;
        while (i12 < 8) {
            int i13 = CAR_DRAWING_DIRS[i12];
            int i14 = 1;
            int i15 = 2;
            if (i13 == 2 || i13 == 4) {
                i3 = -1;
                i4 = -1;
                i5 = 2;
            } else {
                i3 = 3;
                i5 = i11;
                i4 = 1;
            }
            while (i5 != i3) {
                int[] iArr = CAR_DRAWING_XY;
                int i16 = i12 * 2;
                int i17 = (iArr[i16] * 2) - 1;
                int i18 = (iArr[i16 + i14] * i15) - i14;
                int i19 = drawer2.rotation;
                if (i19 != 0) {
                    if (i19 == i14) {
                        i18 = -i18;
                    } else if (i19 != i15) {
                        i17 = -i17;
                    } else {
                        i17 = -i17;
                        i18 = -i18;
                    }
                    int i20 = i17;
                    i17 = i18;
                    i18 = i20;
                }
                int iRotateCCW = Direction.rotateCCW(i13, i19);
                int iDifferenceX = (i8 * 2) + ((i17 + i14) / i15) + (Direction.differenceX(iRotateCCW) * i5);
                int iDifferenceY = (i9 * 2) + ((i18 + i14) / i15) + (Direction.differenceY(iRotateCCW) * i5);
                int i21 = iDifferenceX / 2;
                int i22 = iDifferenceY / 2;
                boolean z = i8 == i21 && i9 == i22;
                if (iDifferenceX < 0 || iDifferenceY < 0) {
                    i6 = i15;
                } else {
                    i6 = i15;
                    if (carTrafficHandler.city.isValid(i21, i22) && (topRoad = carTrafficHandler.tiles.getTopRoad(i21, i22)) != null) {
                        int i23 = i10 + ((road.dLevel != iRotateCCW || z) ? 0 : 1);
                        if (topRoad.absLevel != i23) {
                            topRoad = carTrafficHandler.tiles.getAbsoluteRoad(i21, i22, i23);
                        }
                        if (topRoad == null && ((topRoad = carTrafficHandler.tiles.getAbsoluteRoad(i21, i22, i23 - 1)) == null || topRoad.dLevel != Direction.opposite(iRotateCCW))) {
                            topRoad = null;
                        }
                        if (topRoad != null && ((z || topRoad.level >= 0) && (car = topRoad.CarArray[(iDifferenceX % 2) + ((iDifferenceY % 2) * 2)]) != null)) {
                            Road road2 = topRoad;
                            i7 = i5;
                            carTrafficHandler.drawCar(i, i2, road2, car, drawer2, Direction.axis(i13));
                        }
                    }
                    i5 = i7 + i4;
                    carTrafficHandler = this;
                    i8 = i;
                    i9 = i2;
                    drawer2 = drawer;
                    i15 = i6;
                    i14 = 1;
                }
                i7 = i5;
                i5 = i7 + i4;
                carTrafficHandler = this;
                i8 = i;
                i9 = i2;
                drawer2 = drawer;
                i15 = i6;
                i14 = 1;
            }
            i12++;
            carTrafficHandler = this;
            i8 = i;
            i9 = i2;
            drawer2 = drawer;
            i11 = 0;
        }
        drawer.resetClipping();
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void drawCar(int r27, int r28, info.flowersoft.theotown.city.objects.Road r29, info.flowersoft.theotown.city.objects.Car r30, info.flowersoft.theotown.city.Drawer r31, int r32) {
        /*
            Method dump skipped, instruction units count: 852
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.traffic.CarTrafficHandler.drawCar(int, int, info.flowersoft.theotown.city.objects.Road, info.flowersoft.theotown.city.objects.Car, info.flowersoft.theotown.city.Drawer, int):void");
    }

    public final void setCarMarker(Car car, int i, int i2, Car car2, int i3) {
        Road absoluteRoad;
        int i4 = i / 2;
        int i5 = i2 / 2;
        if (!this.city.isValid(i4, i5) || i < 0 || i2 < 0 || (absoluteRoad = this.tiles.getAbsoluteRoad(i4, i5, i3)) == null) {
            return;
        }
        absoluteRoad.CarArray[(i % 2) + ((i2 % 2) * 2)] = car2;
    }

    public final Car getCarMarker(int i, int i2, int i3) {
        Road absoluteRoad;
        int i4 = i / 2;
        int i5 = i2 / 2;
        if (!this.city.isValid(i4, i5) || i < 0 || i2 < 0 || (absoluteRoad = this.tiles.getAbsoluteRoad(i4, i5, i3)) == null) {
            return null;
        }
        return absoluteRoad.CarArray[(i % 2) + ((i2 % 2) * 2)];
    }

    public final void registerCar(Car car) {
        int i = car.controller;
        CarController carController = i >= 0 ? this.carControllers.get(i) : null;
        if (carController != null) {
            carController.register(car);
        }
        setCarMarker(null, car.x, car.y, car, car.absLevel);
        this.cars.add(car);
        for (Car child = car.getChild(); child != null; child = child.getChild()) {
            int iIndexOf = this.cars.indexOf(child);
            if (iIndexOf >= 0) {
                removeCarByIndex(iIndexOf);
            }
            this.cars.add(child);
        }
    }

    public final void unregisterCarFromList(Car car) {
        car.invalid = true;
    }

    public final void unregisterCar(Car car) {
        CarTrafficHandler carTrafficHandler;
        Car car2;
        if (getCarMarker(car.x, car.y, car.absLevel) == car) {
            carTrafficHandler = this;
            car2 = car;
            carTrafficHandler.setCarMarker(car2, car.x, car.y, null, car.absLevel);
        } else {
            carTrafficHandler = this;
            car2 = car;
        }
        car2.invalid = true;
        int i = car2.controller;
        CarController carController = i >= 0 ? carTrafficHandler.carControllers.get(i) : null;
        if (carController != null) {
            carController.unregister(car2);
        }
    }

    public final boolean canDrive(int i, int i2, int i3, int i4, int i5) {
        int iDifferenceX = (Direction.differenceX(i3) + i) / 2;
        int iDifferenceY = (Direction.differenceY(i3) + i2) / 2;
        if ((i / 2 != iDifferenceX || i2 / 2 != iDifferenceY) && this.city.isValid(iDifferenceX, iDifferenceY)) {
            Road absoluteRoad = this.tiles.getAbsoluteRoad(iDifferenceX, iDifferenceY, i5);
            if (absoluteRoad == null && (absoluteRoad = this.tiles.getAbsoluteRoad(iDifferenceX, iDifferenceY, i5 - 1)) != null && absoluteRoad.dLevel == 0) {
                absoluteRoad = null;
            }
            if (absoluteRoad != null && absoluteRoad.hasTrafficLights()) {
                int trafficLightFrame = absoluteRoad.getTrafficLightFrame(i4);
                if (((i3 != 1 && i3 != 4) || trafficLightFrame != 0) && ((i3 != 2 && i3 != 8) || trafficLightFrame != 2)) {
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean spawnCar(Way way, CarDraft carDraft, CarController carController, int i, long j, int i2) {
        if (way.size() < 1) {
            return true;
        }
        synchronized (this.cars) {
            try {
                int id = carController.getId();
                int i3 = this.carIdCounter;
                this.carIdCounter = i3 + 1;
                Car car = new Car(carDraft, way, i, id, i3);
                car.data = j;
                car.wealthLevel = i2;
                if (!onSpawnCar(car)) {
                    return false;
                }
                this.carControllers.get(car.controller).foundWay(car);
                registerCar(car);
                buildTail(carDraft, car, i);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void buildTail(CarDraft carDraft, Car car, int i) {
        CarDraft[] carDraftArr = carDraft.tail;
        if (carDraftArr == null || carDraftArr.length <= 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            CarDraft[] carDraftArr2 = carDraft.tail;
            if (i2 >= carDraftArr2.length) {
                return;
            }
            car = addTailCar(carDraftArr2[i2], car, i);
            i2++;
        }
    }

    public Car addTailCar(CarDraft carDraft, Car car, int i) {
        Car car2;
        synchronized (this.cars) {
            if (i < 0) {
                try {
                    i = Resources.RND.nextInt(carDraft.frames.length / carDraft.framesPerVariant);
                } catch (Throwable th) {
                    throw th;
                }
            }
            Car child = car.getChild();
            int length = i % (carDraft.frames.length / carDraft.framesPerVariant);
            int i2 = this.carIdCounter;
            this.carIdCounter = i2 + 1;
            car2 = new Car(car, carDraft, length, i2);
            Color color = car.getColor();
            if (color != null) {
                car2.setColor(color.copy());
            }
            registerCar(car2);
            if (child != null) {
                child.setParent(car2);
                int iIndexOf = this.cars.indexOf(child);
                this.cars.remove(car2);
                this.cars.add(iIndexOf, car2);
            }
        }
        return car2;
    }

    public void removeTailCar(Car car) {
        Car parent = car.getParent();
        if (parent != null) {
            Car child = car.getChild();
            if (child != null) {
                child.setParent(null);
            }
            car.setParent(null);
            if (child != null) {
                child.setParent(parent);
            }
            car.invalid = true;
        }
    }

    public void removeTail(Car car) {
        Car child = car.getChild();
        if (child != null) {
            child.setParent(null);
            while (child != null) {
                child.invalid = true;
                child = child.getChild();
            }
        }
    }

    public final boolean onSpawnCar(Car car) {
        return this.carControllers.get(car.controller).onSpawn(car);
    }

    public int countCars() {
        return this.cars.size();
    }

    public int countCars(int i, int i2, int i3) {
        Road road;
        if (!this.city.isValid(i, i2) || (road = this.tiles.getRoad(i, i2, i3)) == null) {
            return 0;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < 4; i5++) {
            i4 += road.CarArray[i5] != null ? 1 : 0;
        }
        return i4;
    }

    @Override // info.flowersoft.theotown.components.traffic.TrafficHandler
    public void dispose() {
        super.dispose();
        this.stopPathfindingCalculation = true;
        synchronized (this.pathfindingTasks) {
            this.pathfindingTasks.clear();
            this.pathfindingTasks.notifyAll();
        }
        synchronized (this.cars) {
            try {
                Iterator<Car> it = this.cars.iterator();
                while (it.hasNext()) {
                    it.next().invalid = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.TrafficHandler
    public void reset() {
        super.reset();
        synchronized (this.cars) {
            try {
                Iterator<Car> it = this.cars.iterator();
                while (it.hasNext()) {
                    unregisterCar(it.next());
                }
                this.cars.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
