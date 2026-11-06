package info.flowersoft.theotown.tools;

import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Way;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.minigame.BusIdleGame;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.marker.BuildToolMarker;
import info.flowersoft.theotown.tools.marker.LegendEntry;
import info.flowersoft.theotown.util.ManagedRoadRoute;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.util.IntList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class BusRouteTool extends BuildTool {
    public final int[] ROUTE_FRAMES;
    public final BusIdleGame game;
    public BusStop pendingBusStop;
    public ManagedRoadRoute roadRoute;
    public final int stage;
    public final IntList tmpActiveStages;

    public BusRouteTool(final BusIdleGame busIdleGame, final int i, final Runnable runnable) {
        AnimationDraft animationDraft = (AnimationDraft) Drafts.get("$anim_busroutetool_routealignment00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft);
        this.ROUTE_FRAMES = animationDraft.frames;
        this.tmpActiveStages = new IntList();
        this.game = busIdleGame;
        this.stage = i;
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.BusRouteTool.1
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_REMOVE;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdRemoveRoute";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                if (BusRouteTool.this.roadRoute.isBusy()) {
                    return;
                }
                busIdleGame.clearPath(i);
                BusRouteTool.this.roadRoute.clear();
                BusRouteTool.this.roadRoute.addStation(BusRouteTool.this.getArea(-1));
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                return busIdleGame.getPathLength(i) > 0;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return BusRouteTool.this.city.getTranslator().translate(842);
            }
        });
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.BusRouteTool.2
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_BACKWARD;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdRouteRemoveLast";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                if (BusRouteTool.this.roadRoute.isBusy() || BusRouteTool.this.roadRoute.stationCount() == 0) {
                    return;
                }
                busIdleGame.removeFromPath(i, busIdleGame.getPathLength(i) - 1);
                BusRouteTool.this.roadRoute.removeLastStation();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                return busIdleGame.getPathLength(i) > 0;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return BusRouteTool.this.city.getTranslator().translate(1606);
            }
        });
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.BusRouteTool.3
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_OK;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdRouteOk";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                BusRouteTool.this.city.applyComponent(BusRouteTool.this.city.getDefaultTool());
                runnable.run();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                return busIdleGame.getPathLength(i) >= 2;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return BusRouteTool.this.city.getTranslator().translate(379);
            }
        });
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "BusRoute";
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        ManagedRoadRoute managedRoadRoute = new ManagedRoadRoute(city, this.game.getStageCar(this.stage).flags);
        this.roadRoute = managedRoadRoute;
        managedRoadRoute.addStation(getArea(-1));
        for (int i = 0; i < this.game.getPathLength(this.stage); i++) {
            this.roadRoute.addStation(getArea(i));
        }
        setMarker(new BuildToolMarker() { // from class: info.flowersoft.theotown.tools.BusRouteTool.4
            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public int countVariants() {
                return 1;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public float getBuildingIntensity(int i2, int i3) {
                return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public int getIcon() {
                return 0;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public float getIntensity(int i2, int i3) {
                return 1.0f;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public List<LegendEntry> getLegend() {
                return null;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public float getTempIntensity(int i2, int i3) {
                return 1.0f;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public boolean ignoreBuilding(int i2, int i3) {
                return true;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public boolean markBuilding(int i2, int i3) {
                return false;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public boolean markTree(int i2, int i3) {
                return false;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public float overlayAlpha(int i2, int i3) {
                return 1.0f;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public float overlayTempAlpha(int i2, int i3) {
                return 1.0f;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public void setVariant(int i2) {
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public Color getColor(int i2, int i3, Color color) {
                return Colors.BLACK;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public boolean useOverlay(int i2, int i3) {
                return BusRouteTool.this.tiles.getRoad(i2, i3, 0) == null;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public String getTag() {
                return "route bus marker";
            }
        });
    }

    public final BusStop getBusStop(int i, int i2) {
        BusStop busStop = null;
        if (this.city.isValid(i, i2)) {
            Road topRoad = this.tiles.getTopRoad(i, i2);
            Road bottomRoad = topRoad != null ? this.tiles.getBottomRoad(i, i2) : null;
            if (topRoad != null && bottomRoad != null) {
                for (int i3 = topRoad.level; i3 >= Math.max(bottomRoad.level, 0) && busStop == null; i3--) {
                    Road road = this.tiles.getRoad(i, i2, i3);
                    if (road != null) {
                        busStop = road.getBusStop();
                    }
                }
            }
        }
        return busStop;
    }

    public final BusStop getNearBusStop(int i, int i2) {
        BusStop busStop = getBusStop(i, i2);
        int i3 = 1;
        for (int i4 = 1; i4 <= 8 && busStop == null; i4 *= 2) {
            busStop = getBusStop(Direction.differenceX(i4) + i, Direction.differenceY(i4) + i2);
        }
        while (i3 <= 8 && busStop == null) {
            int i5 = i3 < 8 ? (i3 * 2) + i3 : i3 + 1;
            busStop = getBusStop(Direction.differenceX(i5) + i, Direction.differenceY(i5) + i2);
            i3 *= 2;
        }
        return busStop;
    }

    public final boolean isValidBusStop(BusStop busStop) {
        return busStop.getDraft().influenceInduceVector[InfluenceType.PASSENGER_BUS.ordinal()] > 0;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        BusStop nearBusStop = getNearBusStop(i, i2);
        if (nearBusStop == null || !isValidBusStop(nearBusStop) || this.game.pathContains(this.stage, nearBusStop.getX(), nearBusStop.getY(), getBusStopAbsLevel(nearBusStop)) >= 0 || this.roadRoute.isBusy()) {
            return;
        }
        this.pendingBusStop = nearBusStop;
        this.roadRoute.tryAddStation(getArea(nearBusStop), new ManagedRoadRoute.IRouteCallback() { // from class: info.flowersoft.theotown.tools.BusRouteTool.5
            @Override // info.flowersoft.theotown.util.ManagedRoadRoute.IRouteCallback
            public void onSuccess(MapArea mapArea, Way way, IntIntMap intIntMap) {
                BusRouteTool.this.roadRoute.addCalculatedStation(mapArea, way, intIntMap);
                BusIdleGame busIdleGame = BusRouteTool.this.game;
                int i5 = BusRouteTool.this.stage;
                int x = BusRouteTool.this.pendingBusStop.getX();
                int y = BusRouteTool.this.pendingBusStop.getY();
                BusRouteTool busRouteTool = BusRouteTool.this;
                busIdleGame.addToPath(i5, x, y, busRouteTool.getBusStopAbsLevel(busRouteTool.pendingBusStop));
                BusRouteTool.this.pendingBusStop = null;
            }

            @Override // info.flowersoft.theotown.util.ManagedRoadRoute.IRouteCallback
            public void onFailed(MapArea mapArea) {
                BusRouteTool.this.pendingBusStop = null;
            }
        });
    }

    public final int getBusStopAbsLevel(BusStop busStop) {
        return busStop.level + this.city.getTiles().getBaseTerrainHeight(busStop.getX(), busStop.getY());
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool, info.flowersoft.theotown.city.components.CityComponent
    public void update() {
        this.roadRoute.update();
    }

    public final MapArea getArea(BusStop busStop) {
        MapArea mapArea = new MapArea();
        mapArea.add(busStop.getX(), busStop.getY(), getBusStopAbsLevel(busStop));
        return mapArea;
    }

    public final MapArea getArea(int i) {
        MapArea mapArea = new MapArea();
        if (i < 0 || i >= this.game.getPathLength(this.stage)) {
            mapArea.add(this.game.getBuilding(), false);
            return mapArea;
        }
        mapArea.add(this.game.getPathX(this.stage, i), this.game.getPathY(this.stage, i), this.game.getPathLevel(this.stage, i));
        return mapArea;
    }

    public final Color getFriendlyStageColor(int i) {
        return this.game.getStageColor(i).enlighted(50);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool
    public boolean drawRoad(int i, int i2, Drawer drawer, int i3) {
        int i4;
        super.drawRoad(i, i2, drawer, i3);
        Engine engine = drawer.engine;
        engine.setTransparency(255);
        BusStop busStop = getBusStop(i, i2);
        Road road = this.tiles.getRoad(i, i2, i3);
        if (busStop != null && road != null && isValidBusStop(busStop)) {
            this.tmpActiveStages.clear();
            for (int i5 = 0; i5 < this.game.countStages(); i5++) {
                if (this.game.pathContains(i5, i, i2, road.absLevel) >= 0) {
                    this.tmpActiveStages.add(i5);
                }
            }
            int i6 = road.absLevel;
            int i7 = (-i6) * 12;
            int iPathContains = this.game.pathContains(this.stage, i, i2, i6);
            if (iPathContains >= 0) {
                engine.setColor(getFriendlyStageColor(this.stage));
            }
            engine.setTransparency((int) (((Math.sin(((double) (((((TimeUtils.millis() + ((long) (i * 37481))) + ((long) (347397 * i2))) % 4000) / 4000.0f) * 2.0f)) * 3.141592653589793d) * 0.20000000298023224d) + 0.800000011920929d) * 255.0d));
            float f = i7;
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, this.TILE_HIGHLIGHT.frames[0]);
            engine.setColor(Colors.WHITE);
            engine.setTransparency(255);
            if (iPathContains >= 0) {
                if (iPathContains < this.game.getPathLength(this.stage) - 1) {
                    drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, Resources.FRAME_TOOLMARK_BLUE);
                } else {
                    drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, Resources.FRAME_TOOLMARK_WHITE);
                }
                Font font = Resources.skin.fontBig;
                i4 = i7;
                Drawing.getInstance().drawOutlinedText("" + (iPathContains + 1), drawer.x + (drawer.scaleX * 16.0f), (drawer.y - ((this.tmpActiveStages.size() * 2) * drawer.scaleY)) + (f * engine.getScaleY()), font, Colors.BLACK, engine, 0.5f, 1.0f);
            } else {
                i4 = i7;
                if (this.pendingBusStop == busStop) {
                    drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, Resources.FRAME_TOOLMARK_YELLOW_DOTTED);
                } else {
                    drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, Resources.FRAME_TOOLMARK_GREEN_DOTTED);
                }
            }
            for (int i8 = 0; i8 < this.tmpActiveStages.size(); i8++) {
                engine.setColor(getFriendlyStageColor(this.tmpActiveStages.get(i8)));
                drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (i8 * (-2)) + i4, Resources.FRAME_TOOLMARK_BLOB);
            }
            engine.setColor(Colors.WHITE);
        } else if (road != null) {
            if (road.draft.oneWay && road.dLevel == 0) {
                drawer.engine.setTransparency(100);
                drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-road.absLevel) * 12, Resources.FRAME_TOOLMARK_ARROWS + ((((road.getFrame() / 16) + 4) - drawer.rotation) % 4));
                drawer.engine.setTransparency(255);
            }
            int alignmentOrDefault = this.roadRoute.getAlignmentOrDefault(i, i2, road.absLevel, -1);
            if (alignmentOrDefault >= 0) {
                int iRotateCW = Direction.rotateCW(alignmentOrDefault, this.city.getRotation());
                engine.setColor(getFriendlyStageColor(this.stage));
                int[] iArr = this.ROUTE_FRAMES;
                int i9 = iArr[iRotateCW % iArr.length];
                int i10 = road.dLevel;
                if (i10 == 0) {
                    drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, -(road.absLevel * 12), i9);
                } else {
                    Ground.drawFrameOnCustomSlope(drawer, Resources.IMAGE_WORLD, road.absLevel, Direction.turnCCW(i10 | Direction.turnCCW(i10)), i9);
                }
                engine.setColor(Colors.WHITE);
            }
        }
        return true;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return this.city.getTranslator().translate(1438);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_BUS_TRANSPORT;
    }
}
