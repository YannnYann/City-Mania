package info.flowersoft.theotown.tools;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.MathUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.objects.Car;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.traffic.CarTrafficHandler;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.ListSampler;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class FollowCarTool extends DefaultTool {
    public boolean canChangeCar;
    public Car currentCar;
    public DefaultDate date;
    public Drawer myDrawer;
    public int prefIndex;
    public float shiftY;
    public int targetDir;
    public float x;
    public float y;

    @Override // info.flowersoft.theotown.city.components.Tool
    public boolean allowMapMovement() {
        return false;
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public boolean canBeginMove(float f, float f2, int i, int i2, float f3, float f4) {
        return true;
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public boolean updateMove(float f, float f2, float f3, float f4, int i, int i2, float f5, float f6) {
        return true;
    }

    public FollowCarTool() {
        this(null);
    }

    public FollowCarTool(Car car) {
        this.currentCar = car;
        boolean z = car == null;
        this.canChangeCar = z;
        if (z) {
            this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.FollowCarTool.1
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    return Resources.ICON_RANDOM;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdRandomCar";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    FollowCarTool.this.selectRandomCar();
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    return FollowCarTool.this.city.getTranslator().translate(985);
                }
            });
        }
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.FollowCarTool.2
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_EYE;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdSpecialViewFCT";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                Settings.specialViewFollowCarTool = !Settings.specialViewFollowCarTool;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isPressed() {
                return Settings.specialViewFollowCarTool;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return FollowCarTool.this.city.getTranslator().translate(1553);
            }
        });
    }

    public Car getCurrentCar() {
        return this.currentCar;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "FollowCar";
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public CursorType getCursorType() {
        if (this.canChangeCar) {
            return CursorType.Crosshair;
        }
        return CursorType.Normal;
    }

    public int getPendingDir() {
        Car car = this.currentCar;
        if (car != null && car.prog < this.prefIndex) {
            return this.targetDir;
        }
        this.targetDir = 0;
        this.prefIndex = 0;
        return 0;
    }

    public void drive(int i) {
        Car car = this.currentCar;
        if (car == null || !car.draft.driveable) {
            return;
        }
        this.targetDir = i;
        this.prefIndex = ((CarTrafficHandler) this.traffic.getTrafficHandler(CarTrafficHandler.class)).changePath(this.currentCar, i);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        this.myDrawer = new Drawer(city);
        Settings.hideUI = true;
        DefaultDate defaultDate = (DefaultDate) city.getComponent(1);
        this.date = defaultDate;
        defaultDate.setSpeed(0);
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void unbind() {
        super.unbind();
        Settings.hideUI = false;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        if (this.canChangeCar) {
            selectCarFromTile(i, i2);
        }
    }

    public final void selectRandomCar() {
        List<Car> cars = ((CarTrafficHandler) this.traffic.getTrafficHandler(CarTrafficHandler.class)).getCars();
        this.currentCar = null;
        for (int i = 0; i < 100 && this.currentCar == null; i++) {
            Car car = (Car) new ListSampler(cars).sample(Resources.RND);
            this.currentCar = car;
            if (car != null) {
                this.currentCar = car.getAbsParent();
            }
        }
        this.targetDir = 0;
        this.prefIndex = 0;
        afterCarSelection();
    }

    public final void selectCarFromTile(int i, int i2) {
        Road topRoad = this.tiles.getTopRoad(i, i2);
        if (topRoad == null) {
            return;
        }
        List<Car> cars = ((CarTrafficHandler) this.traffic.getTrafficHandler(CarTrafficHandler.class)).getCars(topRoad);
        if (cars.isEmpty()) {
            return;
        }
        ListSampler listSampler = new ListSampler(cars);
        Car absParent = null;
        for (int i3 = 0; i3 < 100 && absParent == null; i3++) {
            absParent = (Car) listSampler.sample(Resources.RND);
            if (absParent != null) {
                absParent = absParent.getAbsParent();
            }
        }
        if (absParent != null) {
            this.currentCar = absParent;
            afterCarSelection();
        }
    }

    public final void afterCarSelection() {
        if (this.currentCar != null) {
            this.city.setScale(4.0f);
            int iRotateCCW = Direction.rotateCCW(this.currentCar.dir, this.city.getRotation());
            this.x = (this.currentCar.x + (Direction.differenceX(iRotateCCW) * this.currentCar.p)) * 0.5f;
            float fDifferenceY = (r3.y + (Direction.differenceY(iRotateCCW) * this.currentCar.p)) * 0.5f;
            this.y = fDifferenceY;
            City city = this.city;
            city.focus(this.x, fDifferenceY, city.getScale(), false);
            this.shiftY = MathUtils.lerp(r0.lastLevel, r0.absLevel, this.currentCar.p) * 12.0f;
            return;
        }
        City city2 = this.city;
        city2.applyComponent(city2.getDefaultTool());
        TheoTown.runtimeFeatures.showToast(this.city.getTranslator().translate(2145));
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool, info.flowersoft.theotown.city.components.CityComponent
    public void update() {
        Settings.hideUI = true;
        Car car = this.currentCar;
        if (car == null || car.invalid) {
            if (this.canChangeCar) {
                selectRandomCar();
            } else {
                City city = this.city;
                city.applyComponent(city.getDefaultTool());
                TheoTown.runtimeFeatures.showToast(this.city.getTranslator().translate(3282));
            }
        }
        Car car2 = this.currentCar;
        if (car2 == null) {
            return;
        }
        int i = car2.dir;
        float fPow = 1.0f - ((float) Math.pow(0.4000000059604645d, Gdx.graphics.getDeltaTime() * this.date.getAnimationTimeFactor()));
        float f = this.currentCar.x;
        float fDifferenceX = Direction.differenceX(i);
        Car car3 = this.currentCar;
        float f2 = (f + (fDifferenceX * car3.p)) * 0.5f;
        float f3 = car3.y;
        float fDifferenceY = Direction.differenceY(i);
        Car car4 = this.currentCar;
        float f4 = (f3 + (fDifferenceY * car4.p)) * 0.5f;
        float fDifferenceX2 = (car4.lastSpeed * 2.0f * Direction.differenceX(i) * 0.5f) + f2;
        float fDifferenceY2 = (this.currentCar.lastSpeed * 2.0f * Direction.differenceY(i) * 0.5f) + f4;
        if (this.currentCar.isWaiting()) {
            fDifferenceX2 = f2;
            fDifferenceY2 = f4;
        }
        float fLerp = MathUtils.lerp(r0.lastLevel, r0.absLevel, this.currentCar.p) * 12.0f;
        this.x = MathUtils.lerp(this.x, fDifferenceX2, fPow);
        this.y = MathUtils.lerp(this.y, fDifferenceY2, fPow);
        this.x = MathUtils.clamp(this.x, f2 - 2.0f, f2 + 2.0f);
        this.y = MathUtils.clamp(this.y, f4 - 2.0f, f4 + 2.0f);
        this.shiftY = MathUtils.lerp(this.shiftY, fLerp, fPow);
        City city2 = this.city;
        city2.focus(this.x, this.y, city2.getScale(), false);
        IsoConverter isoConverter = this.city.getIsoConverter();
        isoConverter.setAbsShift(isoConverter.getAbsShiftX(), isoConverter.getAbsShiftY() + this.shiftY);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool
    public void drawBuilding(int i, int i2, Drawer drawer) {
        if (this.tiles.getBuilding(i, i2) == null) {
            return;
        }
        if (Settings.specialViewFollowCarTool && this.currentCar != null) {
            Engine engine = drawer.engine;
            int virtualWidth = engine.getVirtualWidth();
            int virtualHeight = engine.getVirtualHeight();
            int i3 = (int) (drawer.scaleX * 32.0f);
            this.myDrawer.setTo(this.city.getDrawer());
            this.myDrawer.begin(engine);
            Car car = this.currentCar;
            if (car != null) {
                this.myDrawer.setRealTile(car.x / 2, car.y / 2);
            }
            int drawingX = (int) this.myDrawer.getDrawingX();
            int drawingY = ((int) this.myDrawer.getDrawingY()) - ((int) ((engine.getScaleY() * this.city.getTiles().getBaseTerrainHeight(i, i2)) * 12.0f));
            this.myDrawer.end();
            if (drawer.getDrawingY() > this.myDrawer.getDrawingY() && this.currentCar != null) {
                float f = drawingX;
                if (drawer.getDrawingX() < f) {
                    engine.setClipRect(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, virtualHeight);
                    super.drawBuilding(i, i2, drawer);
                }
                float f2 = drawingX + i3;
                if (drawer.getDrawingX() < f2) {
                    engine.setClipRect(f, drawingY, i3, virtualHeight - drawingY);
                    super.drawBuilding(i, i2, drawer);
                }
                engine.setClipRect(f2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, virtualWidth, virtualHeight);
                super.drawBuilding(i, i2, drawer);
                engine.resetClipping();
                return;
            }
            super.drawBuilding(i, i2, drawer);
            return;
        }
        super.drawBuilding(i, i2, drawer);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void drawAfter(Drawer drawer) {
        super.drawAfter(drawer);
        Engine engine = drawer.engine;
        engine.setColor(Colors.WHITE);
        Car car = this.currentCar;
        if (car == null || !Settings.specialViewFollowCarTool) {
            return;
        }
        int i = car.x / 2;
        int i2 = car.y / 2;
        if (this.city.isValid(i, i2)) {
            Drawer drawer2 = this.city.getDrawer();
            drawer2.begin(engine);
            drawer2.setRealTile(i, i2);
            engine.setScale(drawer2.scaleX, drawer2.scaleY);
            drawRoad(i, i2, drawer2, this.currentCar.absLevel - drawer.baseTerrainHeight);
            drawer2.end();
            engine.setScale(1.0f, 1.0f);
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return new DraftLocalizer(this.city).getTitle("$tool_car_follower00");
    }
}
