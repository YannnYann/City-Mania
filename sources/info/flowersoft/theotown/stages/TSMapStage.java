package info.flowersoft.theotown.stages;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.Rectangle;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.components.DefaultTSComponent;
import info.flowersoft.theotown.components.transportationsystem.TSSystem;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.drawing.TSMapBackgroundDrawer;
import info.flowersoft.theotown.drawing.TSMapStyle;
import info.flowersoft.theotown.drawing.TSMapSystemDrawer;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.stages.TSMapStage;
import info.flowersoft.theotown.tools.marker.LegendDrawer;
import info.flowersoft.theotown.tools.marker.LegendEntry;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.PopupBuilder;
import info.flowersoft.theotown.ui.TouchPane;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.touch.TouchPoint;
import io.blueflower.stapel2d.touch.TouchUpdate;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TSMapStage.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class TSMapStage extends BaseStage {
    public final List<TSSystem> availableSystems;
    public TSMapBackgroundDrawer bgDrawer;
    public final City city;
    public IconButton cmdSystem;
    public TSSystem currentSystem;
    public String currentTitle;
    public final DraftLocalizer draftLocalizer;
    public int lastTPCount;
    public float moveMomentumX;
    public float moveMomentumY;
    public float offsetX;
    public float offsetY;
    public float scale;
    public TSMapSystemDrawer systemDrawer;
    public TouchPane touchPane;
    public float touchStartCityScale;
    public float touchStartDistance;
    public final DefaultTSComponent tsComponent;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TSMapStage(Stapel2DGameContext context, TSSystem currentSystem, City city) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(currentSystem, "currentSystem");
        Intrinsics.checkNotNullParameter(city, "city");
        this.currentSystem = currentSystem;
        this.city = city;
        this.draftLocalizer = new DraftLocalizer(city);
        CityComponent component = city.getComponent(22);
        Intrinsics.checkNotNull(component, "null cannot be cast to non-null type info.flowersoft.theotown.components.DefaultTSComponent");
        DefaultTSComponent defaultTSComponent = (DefaultTSComponent) component;
        this.tsComponent = defaultTSComponent;
        List<TSSystem> systems = defaultTSComponent.getSystems();
        Intrinsics.checkNotNullExpressionValue(systems, "getSystems(...)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : systems) {
            if (((TSSystem) obj).isAvailable()) {
                arrayList.add(obj);
            }
        }
        this.availableSystems = arrayList;
    }

    public final TSMapBackgroundDrawer getBgDrawer() {
        TSMapBackgroundDrawer tSMapBackgroundDrawer = this.bgDrawer;
        if (tSMapBackgroundDrawer != null) {
            return tSMapBackgroundDrawer;
        }
        Intrinsics.throwUninitializedPropertyAccessException("bgDrawer");
        return null;
    }

    public final void setBgDrawer(TSMapBackgroundDrawer tSMapBackgroundDrawer) {
        Intrinsics.checkNotNullParameter(tSMapBackgroundDrawer, "<set-?>");
        this.bgDrawer = tSMapBackgroundDrawer;
    }

    public final TSMapSystemDrawer getSystemDrawer() {
        TSMapSystemDrawer tSMapSystemDrawer = this.systemDrawer;
        if (tSMapSystemDrawer != null) {
            return tSMapSystemDrawer;
        }
        Intrinsics.throwUninitializedPropertyAccessException("systemDrawer");
        return null;
    }

    public final void setSystemDrawer(TSMapSystemDrawer tSMapSystemDrawer) {
        Intrinsics.checkNotNullParameter(tSMapSystemDrawer, "<set-?>");
        this.systemDrawer = tSMapSystemDrawer;
    }

    public final float getCenterX(Rectangle rectangle) {
        return rectangle.x + (rectangle.width * 0.5f);
    }

    public final float getCenterY(Rectangle rectangle) {
        return rectangle.y + (rectangle.height * 0.5f);
    }

    public final TSMapStyle getCurrentStyle() {
        if (Settings.tsMapDarkMode) {
            return TSMapStyle.Companion.getDARK();
        }
        return TSMapStyle.Companion.getLIGHT();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        if (this.availableSystems.isEmpty()) {
            getGameStack().pop();
            return;
        }
        setBgDrawer(new TSMapBackgroundDrawer(this.city, getCurrentStyle()));
        new Panel(this.gui.getClientWidth(), this.gui.getClientHeight(), this.gui) { // from class: info.flowersoft.theotown.stages.TSMapStage.enter.1
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                super.draw(i, i2);
                TSMapStage.this.drawCity();
            }
        };
        this.touchPane = new TouchPane(this.gui.getClientWidth(), this.gui.getClientHeight(), this.gui) { // from class: info.flowersoft.theotown.stages.TSMapStage.enter.2
            @Override // info.flowersoft.theotown.ui.TouchPane
            public void clickAt(int i, int i2, TouchPoint touchPoint) {
            }

            @Override // info.flowersoft.theotown.ui.TouchPane
            public void twoFingerClick() {
            }

            private final float getZoomStep() {
                if (Settings.smoothZoom > 0) {
                    return Constants.SMOOTH_ZOOM_STEP;
                }
                return 2.0f;
            }

            @Override // io.blueflower.stapel2d.gui.MultiSensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public CursorType updateTouchInput(TouchUpdate tp) {
                Intrinsics.checkNotNullParameter(tp, "tp");
                CursorType cursorTypeUpdateTouchInput = super.updateTouchInput(tp);
                float scrollChange = tp.getScrollChange();
                if (scrollChange == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    return cursorTypeUpdateTouchInput;
                }
                tp.clearScrollChange();
                if (Settings.smoothZoom == 0) {
                    scrollChange /= Math.abs(scrollChange);
                }
                float fPow = (float) Math.pow(getZoomStep(), Math.abs(scrollChange));
                if (tp.getMousePos() == null) {
                    if (scrollChange < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                        TSMapStage.this.zoom(fPow);
                        return cursorTypeUpdateTouchInput;
                    }
                    TSMapStage.this.zoom(1 / fPow);
                    return cursorTypeUpdateTouchInput;
                }
                int x = (int) (tp.getMousePos().getX() * TSMapStage.this.engine.getWidthRatio());
                int y = (int) (tp.getMousePos().getY() * TSMapStage.this.engine.getHeightRatio());
                if (scrollChange < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    TSMapStage.this.zoom(fPow, x, y);
                    return cursorTypeUpdateTouchInput;
                }
                TSMapStage.this.zoom(1 / fPow, x, y);
                return cursorTypeUpdateTouchInput;
            }
        };
        new IconButton(Resources.ICON_CANCEL, this.gui.getClientWidth() - 30, this.gui) { // from class: info.flowersoft.theotown.stages.TSMapStage.enter.3
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                TSMapStage.this.getGameStack().pop();
            }
        };
        new IconButton(Resources.ICON_WEATHER_SUNNY, this.gui.getClientWidth() - 61, this.gui) { // from class: info.flowersoft.theotown.stages.TSMapStage.enter.4
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                Settings.tsMapDarkMode = !Settings.tsMapDarkMode;
                TSMapStage.this.updateStyle();
            }

            @Override // io.blueflower.stapel2d.gui.Button
            public boolean isPressed() {
                return !Settings.tsMapDarkMode;
            }
        };
        this.cmdSystem = new AnonymousClass5(this.gui);
        new Label(this.gui) { // from class: info.flowersoft.theotown.stages.TSMapStage.enter.6
            @Override // io.blueflower.stapel2d.gui.Label, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Drawing drawing = Drawing.getInstance();
                String str = TSMapStage.this.currentTitle;
                if (str == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("currentTitle");
                    str = null;
                }
                drawing.drawOutlinedText(str, this.x + i, this.y + i2 + (this.height * 0.5f), this.skin.fontBig, Colors.BLACK, TSMapStage.this.engine, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
            }
        };
        new Panel(this.gui.getClientWidth() / 3, this.gui.getClientHeight() - 50, this.gui) { // from class: info.flowersoft.theotown.stages.TSMapStage.enter.7
            public List<LegendEntry> legend;
            public TSMapStyle renderedStyle;

            {
                this.renderedStyle = TSMapStage.this.getCurrentStyle();
            }

            public final List<LegendEntry> buildLegend() {
                List<TSSystem.TSRoute> routes = TSMapStage.this.getSystemDrawer().getRoutes();
                Intrinsics.checkNotNullExpressionValue(routes, "<get-routes>(...)");
                List<TSSystem.TSRoute> list = routes;
                TSMapStage tSMapStage = TSMapStage.this;
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                for (TSSystem.TSRoute tSRoute : list) {
                    String name = tSRoute.name;
                    Intrinsics.checkNotNullExpressionValue(name, "name");
                    TSMapSystemDrawer systemDrawer = tSMapStage.getSystemDrawer();
                    Intrinsics.checkNotNull(tSRoute);
                    Color colorCopy = systemDrawer.getStyledColor(tSRoute).copy();
                    Intrinsics.checkNotNullExpressionValue(colorCopy, "with(...)");
                    arrayList.add(new LegendEntry(name, colorCopy));
                }
                return arrayList;
            }

            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                if (this.legend == null || !Intrinsics.areEqual(this.renderedStyle, TSMapStage.this.getCurrentStyle())) {
                    this.legend = buildLegend();
                    this.renderedStyle = TSMapStage.this.getCurrentStyle();
                }
                LegendDrawer legendDrawer = LegendDrawer.INSTANCE;
                List<LegendEntry> list = this.legend;
                int i3 = this.x + i;
                int i4 = this.y + i2;
                int clientWidth = getClientWidth();
                int clientHeight = getClientHeight();
                Color stationColor = TSMapStage.this.getCurrentStyle().getStationColor();
                Engine engine = TSMapStage.this.engine;
                Intrinsics.checkNotNullExpressionValue(engine, "engine");
                Skin skin = this.skin;
                Intrinsics.checkNotNullExpressionValue(skin, "skin");
                legendDrawer.draw(list, i3, i4, clientWidth, clientHeight, stationColor, engine, skin);
            }
        }.setTouchThrough(true);
        selectSystem(this.currentSystem);
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.TSMapStage$enter$5, reason: invalid class name */
    /* JADX INFO: compiled from: TSMapStage.kt */
    public static final class AnonymousClass5 extends IconButton {
        public AnonymousClass5(Master master) {
            super(0, "", 0, 0, 30, 30, master);
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            PopupBuilder popupBuilder = new PopupBuilder(this);
            final TSMapStage tSMapStage = TSMapStage.this;
            for (final TSSystem tSSystem : tSMapStage.availableSystems) {
                popupBuilder.addItem(tSSystem.getDraft().getIcon(), tSMapStage.draftLocalizer.getTitle(tSSystem.getDraft().getOwnerDraft()), new Runnable() { // from class: info.flowersoft.theotown.stages.TSMapStage$enter$5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TSMapStage.AnonymousClass5.onClick$lambda$0$0$0(tSMapStage, tSSystem);
                    }
                }, !Intrinsics.areEqual(tSSystem, tSMapStage.currentSystem));
            }
            popupBuilder.build();
        }

        public static final void onClick$lambda$0$0$0(TSMapStage tSMapStage, TSSystem tSSystem) {
            Intrinsics.checkNotNull(tSSystem);
            tSMapStage.selectSystem(tSSystem);
        }
    }

    public final void selectSystem(TSSystem tSSystem) {
        this.currentSystem = tSSystem;
        setSystemDrawer(new TSMapSystemDrawer(this.city, tSSystem, getCurrentStyle()));
        this.scale = 2.0f;
        this.offsetX = (this.engine.getVirtualWidth() * 0.5f) - ((this.scale * 0.5f) * this.city.getWidth());
        this.offsetY = (this.engine.getVirtualHeight() * 0.5f) - ((this.scale * 0.5f) * this.city.getHeight());
        if (getSystemDrawer().getStationBounds().width > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && getSystemDrawer().getStationBounds().height > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            this.scale = Math.min(this.engine.getVirtualWidth() / getSystemDrawer().getStationBounds().width, this.engine.getVirtualHeight() / getSystemDrawer().getStationBounds().height);
            this.offsetX = (this.engine.getVirtualWidth() * 0.5f) - (this.scale * getCenterX(getSystemDrawer().getStationBounds()));
            this.offsetY = (this.engine.getVirtualHeight() * 0.5f) - (this.scale * getCenterY(getSystemDrawer().getStationBounds()));
        }
        String title = this.draftLocalizer.getTitle(this.currentSystem.getDraft().getOwnerDraft());
        Intrinsics.checkNotNullExpressionValue(title, "getTitle(...)");
        this.currentTitle = title;
        IconButton iconButton = this.cmdSystem;
        if (iconButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cmdSystem");
            iconButton = null;
        }
        iconButton.setIcon(tSSystem.getDraft().getIcon());
    }

    public final void updateStyle() {
        getBgDrawer().setStyle(getCurrentStyle());
        getSystemDrawer().setStyle(getCurrentStyle());
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        handleTouchInput();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        getBgDrawer().dispose();
        super.leave();
    }

    public String toString() {
        return "TSMapStage";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void drawCity() {
        this.engine.setColorAndTransparency(getCurrentStyle().getBackgroundColor());
        this.engine.drawImage(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, r2.getVirtualWidth(), this.engine.getVirtualHeight(), Resources.FRAME_RECT);
        TSMapBackgroundDrawer bgDrawer = getBgDrawer();
        Engine engine = this.engine;
        Intrinsics.checkNotNullExpressionValue(engine, "engine");
        float f = this.scale;
        bgDrawer.draw(engine, f, f, this.offsetX, this.offsetY);
        TSMapSystemDrawer systemDrawer = getSystemDrawer();
        Engine engine2 = this.engine;
        Intrinsics.checkNotNullExpressionValue(engine2, "engine");
        float f2 = this.scale;
        systemDrawer.draw(engine2, f2, f2, this.offsetX, this.offsetY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zoom(float f) {
        zoom(f, this.gui.getWidth() / 2.0f, this.gui.getHeight() / 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zoom(float f, float f2, float f3) {
        float fMin = Math.min(Math.max(this.scale * f, 0.0625f), 16.0f);
        float f4 = this.offsetX - f2;
        float f5 = this.scale;
        float f6 = (this.offsetY - f3) / f5;
        this.scale = fMin;
        this.offsetX = ((f4 / f5) * fMin) + f2;
        this.offsetY = (f6 * fMin) + f3;
        limitOffset();
    }

    private final void handleTouchInput() {
        float widthRatio = this.engine.getWidthRatio();
        float heightRatio = this.engine.getHeightRatio();
        TouchPane touchPane = this.touchPane;
        if (touchPane == null) {
            Intrinsics.throwUninitializedPropertyAccessException("touchPane");
            touchPane = null;
        }
        List<TouchPoint> touchPoints = touchPane.getTouchPoints();
        Intrinsics.checkNotNullExpressionValue(touchPoints, "getTouchPoints(...)");
        if (touchPoints.size() == 1) {
            TouchPoint touchPoint = touchPoints.get(0);
            float firstX = touchPoint.getFirstX() * widthRatio;
            float firstY = touchPoint.getFirstY() * heightRatio;
            float xSpeed = touchPoint.getXSpeed() * widthRatio;
            float ySpeed = touchPoint.getYSpeed() * heightRatio;
            float x = (touchPoint.getX() * widthRatio) - firstX;
            float y = (touchPoint.getY() * heightRatio) - firstY;
            if (touchPoint.getButton() == 1) {
                xSpeed = x * (-0.4f);
                ySpeed = y * (-0.4f);
                setPreferredCursor(CursorType.Move);
            }
            this.moveMomentumX = xSpeed;
            this.moveMomentumY = ySpeed;
        } else if (touchPoints.size() == 2) {
            TouchPoint touchPoint2 = touchPoints.get(0);
            TouchPoint touchPoint3 = touchPoints.get(1);
            float xSpeed2 = (touchPoint2.getXSpeed() + touchPoint3.getXSpeed()) * 0.5f * widthRatio;
            float ySpeed2 = (touchPoint2.getYSpeed() + touchPoint3.getYSpeed()) * 0.5f * heightRatio;
            float x2 = (touchPoint3.getX() - touchPoint2.getX()) * widthRatio;
            float y2 = (touchPoint3.getY() - touchPoint2.getY()) * heightRatio;
            float fSqrt = (float) Math.sqrt((x2 * x2) + (y2 * y2));
            if (this.lastTPCount < 2) {
                this.touchStartDistance = fSqrt;
                this.touchStartCityScale = this.scale;
            } else {
                if (fSqrt != this.touchStartDistance) {
                    zoom(Math.min(Math.max((this.touchStartCityScale * fSqrt) / this.touchStartDistance, City.getMinScale()), City.getMaxScale()) / this.scale, (int) (((touchPoint2.getFirstX() + touchPoint3.getFirstX()) / 2.0f) * widthRatio), (int) (((touchPoint2.getFirstY() + touchPoint3.getFirstY()) / 2.0f) * heightRatio));
                }
                this.moveMomentumX = xSpeed2;
                this.moveMomentumY = ySpeed2;
            }
        } else if (touchPoints.size() > 2) {
            this.moveMomentumY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.moveMomentumX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        this.lastTPCount = touchPoints.size();
        if (TheoTown.runtimeFeatures.isFullscreen() && Settings.scrollEdges && this.context.getTouch().getActivePoints().isEmpty()) {
            int x3 = Gdx.input.getX();
            int y3 = Gdx.input.getY();
            if (x3 <= 0) {
                this.moveMomentumX = 10.0f;
            } else if (x3 >= Gdx.graphics.getWidth() - 1) {
                this.moveMomentumX = -10.0f;
            }
            if (y3 <= 0) {
                this.moveMomentumY = 10.0f;
            } else if (y3 >= Gdx.graphics.getHeight() - 1) {
                this.moveMomentumY = -10.0f;
            }
        }
        if (Math.max(Math.abs(this.moveMomentumX), Math.abs(this.moveMomentumY)) >= 0.01f) {
            this.offsetX += this.moveMomentumX;
            this.offsetY += this.moveMomentumY;
            limitOffset();
            float fPow = (float) Math.pow(0.001d, this.context.getDeltaTime());
            this.moveMomentumX *= fPow;
            this.moveMomentumY *= fPow;
        }
        if (Math.max(Math.abs(this.moveMomentumX), Math.abs(this.moveMomentumY)) < 0.1f) {
            this.moveMomentumY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.moveMomentumX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        if (Settings.smoothScrolling) {
            return;
        }
        this.moveMomentumY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.moveMomentumX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    private final void limitOffset() {
        int width = this.city.getWidth();
        int height = this.city.getHeight();
        float width2 = this.gui.getWidth() / 2.0f;
        float height2 = this.gui.getHeight() / 2.0f;
        this.offsetX = Math.min(Math.max(this.offsetX, ((-width) * this.scale) + width2), width2);
        this.offsetY = Math.min(Math.max(this.offsetY, ((-height) * this.scale) + height2), height2);
    }
}
