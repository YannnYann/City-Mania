package info.flowersoft.theotown.tools;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.TimeUtils;
import com.google.android.gms.ads.AdSize;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.neighbors.NeighborCity;
import info.flowersoft.theotown.city.neighbors.RealNeighborCity;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Way;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.components.transportationsystem.TSStation;
import info.flowersoft.theotown.components.transportationsystem.TSSystem;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.marker.LegendEntry;
import info.flowersoft.theotown.tools.marker.TSRouteMarker;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.ManagedRoadRoute;
import info.flowersoft.theotown.util.PackedInt2;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class TSRouteTool extends BuildTool {
    public final boolean ALLOW_STATION_DUPLICATES = false;
    public final int[] ROUTE_FRAMES;
    public final List<ManagedRoadRoute> allRoadRoutes;
    public final List<Route> allRoutes;
    public final Setter<Integer> clickCallback;
    public ManagedRoadRoute editingRoadRoute;
    public final Route editingRoute;
    public int icon;
    public String name;
    public boolean readonly;
    public IntMap<List<Route>> routesByStationId;
    public final TSSystem system;
    public final IntList tempList;
    public final StringBuilder tmpBuilder;
    public final IntList tmpList;

    @Override // info.flowersoft.theotown.city.components.Tool
    public boolean ensureValidPosition() {
        return false;
    }

    public static class Route {
        public Color color;
        public String name;
        public IntList stationIds;

        public Route(String str, Color color, IntList intList) {
            this.name = str;
            this.color = color;
            this.stationIds = intList;
        }
    }

    public TSRouteTool(final City city, int i, final TSSystem tSSystem, Route route, List<Route> list, final Setter<IntList> setter, Setter<Integer> setter2) {
        AnimationDraft animationDraft = (AnimationDraft) Drafts.get("$anim_busroutetool_routealignment00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft);
        this.ROUTE_FRAMES = animationDraft.frames;
        this.icon = 0;
        this.allRoadRoutes = new ArrayList();
        this.tmpList = new IntList();
        this.tmpBuilder = new StringBuilder();
        this.routesByStationId = new IntMap<>();
        this.tempList = new IntList();
        this.city = city;
        this.icon = i;
        this.system = tSSystem;
        this.clickCallback = setter2;
        this.editingRoute = route;
        this.allRoutes = list;
        this.drawUnderground = true;
        this.drawUndergroundRoad = true;
        for (int i2 = 0; i2 < list.size(); i2++) {
            Route route2 = list.get(i2);
            for (int i3 = 0; i3 < route2.stationIds.size(); i3++) {
                int i4 = route2.stationIds.get(i3);
                List<Route> arrayList = this.routesByStationId.get(i4, null);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.routesByStationId.put(i4, arrayList);
                }
                arrayList.add(route2);
            }
        }
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.TSRouteTool.1
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
                if (TSRouteTool.this.editingRoadRoute.isBusy() || TSRouteTool.this.editingRoadRoute.stationCount() == 0) {
                    return;
                }
                TSRouteTool.this.removeLastStation();
                if (TSRouteTool.this.editingRoute.stationIds.isEmpty()) {
                    return;
                }
                TSRouteTool tSRouteTool = TSRouteTool.this;
                tSRouteTool.focusStation(tSSystem.getStationById(tSRouteTool.editingRoute.stationIds.last(-1)));
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                return (TSRouteTool.this.readonly || TSRouteTool.this.editingRoute == null || TSRouteTool.this.editingRoute.stationIds.isEmpty()) ? false : true;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return city.getTranslator().translate(3325);
            }
        });
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.TSRouteTool.2
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_RANDOM;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdRandomStation";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                TSRouteTool.this.addRandomStation();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                return (TSRouteTool.this.readonly || TSRouteTool.this.editingRoute == null || TSRouteTool.this.editingRoute.stationIds.size() >= tSSystem.getStations().size() || TSRouteTool.this.editingRoadRoute.isBusy()) ? false : true;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return city.getTranslator().translate(2083);
            }
        });
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.TSRouteTool.3
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
                City city2 = city;
                city2.applyComponent(city2.getDefaultTool());
                setter.set(TSRouteTool.this.editingRoute.stationIds);
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                return (TSRouteTool.this.readonly || TSRouteTool.this.editingRoute == null || TSRouteTool.this.editingRoute.stationIds.size() < 2) ? false : true;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return city.getTranslator().translate(379);
            }
        });
        ArrayList arrayList2 = new ArrayList();
        if (this.editingRoute != null) {
            arrayList2.add(new LegendEntry(StringFormatter.format(city.getTranslator().translate(2591), this.editingRoute.name), this.editingRoute.color));
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            Route route3 = list.get(i5);
            arrayList2.add(new LegendEntry(route3.name, route3.color));
        }
        setMarker(new TSRouteMarker(this.editingRoute, city, tSSystem, arrayList2) { // from class: info.flowersoft.theotown.tools.TSRouteTool.4
            @Override // info.flowersoft.theotown.tools.marker.TSRouteMarker
            public boolean isStationConnected(TSStation tSStation) {
                return TSRouteTool.this.isStationConnected(tSStation);
            }
        });
    }

    public final void focusStation(TSStation tSStation) {
        if (tSStation == null) {
            return;
        }
        this.city.focus(tSStation.getTiles().getMeanX(), tSStation.getTiles().getMeanY(), this.city.getScale());
    }

    public final void addRandomStation() {
        int meanY;
        int meanX;
        ProbabilitySelector probabilitySelector = new ProbabilitySelector();
        IntList intList = this.editingRoute.stationIds;
        TSStation stationById = !intList.isEmpty() ? this.system.getStationById(intList.last(0)) : null;
        TSStation stationById2 = intList.size() >= 2 ? this.system.getStationById(intList.get(intList.size() - 2)) : null;
        if (stationById != null && stationById2 != null) {
            int meanX2 = stationById.getTiles().getMeanX() - stationById2.getTiles().getMeanX();
            int meanY2 = stationById.getTiles().getMeanY() - stationById2.getTiles().getMeanY();
            meanX = stationById.getTiles().getMeanX() + ((int) (meanX2 * 0.8f));
            meanY = stationById.getTiles().getMeanY() + ((int) (meanY2 * 0.8f));
        } else if (stationById != null) {
            meanX = stationById.getTiles().getMeanX();
            meanY = stationById.getTiles().getMeanY();
        } else {
            meanY = 0;
            meanX = 0;
        }
        for (int i = 0; i < this.system.getStations().size(); i++) {
            TSStation tSStation = this.system.getStations().get(i);
            if (!this.editingRoute.stationIds.contains(tSStation.getId())) {
                if (stationById != null) {
                    float fDistanceX = tSStation.getTiles().distanceX(meanX, 1);
                    float fDistanceY = tSStation.getTiles().distanceY(meanY, 1);
                    float f = (fDistanceX * fDistanceX) + (fDistanceY * fDistanceY);
                    probabilitySelector.insert(tSStation, 1000.0f / ((f * f) + 1.0f));
                } else {
                    probabilitySelector.insert(tSStation, 1.0f);
                }
            }
        }
        if (probabilitySelector.hasResult()) {
            TSStation tSStation2 = (TSStation) probabilitySelector.getResult();
            tryAddStation(tSStation2);
            focusStation(tSStation2);
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "TSRoute";
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        this.readonly = city.isReadonly();
        Route route = this.editingRoute;
        if (route != null) {
            this.editingRoadRoute = buildRoadRoute(route.stationIds);
            this.name = this.editingRoute.name;
        } else {
            this.name = new DraftLocalizer(city).getTitle(this.system.getId());
        }
        this.allRoadRoutes.clear();
        for (int i = 0; i < this.allRoutes.size(); i++) {
            this.allRoadRoutes.add(buildRoadRoute(this.allRoutes.get(i).stationIds));
        }
    }

    public final ManagedRoadRoute buildRoadRoute(IntList intList) {
        ManagedRoadRoute managedRoadRoute = new ManagedRoadRoute(this.city, this.system.getDraft().getRoadFlags());
        for (int i = 0; i < intList.size(); i++) {
            managedRoadRoute.addStation(getStationArea(this.system.getStationById(intList.get(i))));
        }
        return managedRoadRoute;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isStationConnected(TSStation tSStation) {
        return this.routesByStationId.containsKey(tSStation.getId());
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.miniatureview.MiniatureViewColoring
    public void getMiniatureColor(Color color, Tiles tiles, int i, int i2, int i3, boolean z) {
        if (this.system.getStationByXY(i, i2) != null) {
            color.setTo(255, 255, 255);
            return;
        }
        if (this.editingRoute != null && this.editingRoadRoute.contains(i, i2)) {
            color.setTo(this.editingRoute.color);
            return;
        }
        if (this.editingRoute == null) {
            IntList intList = this.tempList;
            intList.clear();
            for (int i4 = 0; i4 < this.allRoutes.size(); i4++) {
                if (this.allRoadRoutes.get(i4).contains(i, i2)) {
                    intList.add(i4);
                }
            }
            if (!intList.isEmpty()) {
                if (intList.size() == 1) {
                    color.setTo(this.allRoutes.get(intList.get(0)).color);
                    return;
                } else {
                    color.setTo(this.allRoutes.get(intList.get((i + i2) % intList.size())).color);
                    return;
                }
            }
        }
        super.getMiniatureColor(color, tiles, i, i2, i3, z);
        color.setRed((color.getRed() / 3) + 20);
        color.setGreen((color.getGreen() / 3) + 20);
        color.setBlue((color.getBlue() / 3) + 20);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void drawAfter(Drawer drawer) {
        float f;
        float f2;
        int i;
        float f3;
        float height;
        int i2 = 0;
        if (this.system.getDraft().getConfig().supportNeighborConnections) {
            float scaleX = drawer.engine.getScaleX();
            float scaleY = drawer.engine.getScaleY();
            IsoConverter isoConverter = this.city.getIsoConverter();
            int iCountNeighbors = this.city.countNeighbors();
            for (int i3 = 0; i3 < iCountNeighbors; i3++) {
                NeighborCity neighbor = this.city.getNeighbor(i3);
                if (neighbor != null && neighbor.isDirect() && (neighbor instanceof RealNeighborCity)) {
                    RealNeighborCity realNeighborCity = (RealNeighborCity) neighbor;
                    float x = realNeighborCity.getX() + 2;
                    float y = realNeighborCity.getY() + 2;
                    float width = realNeighborCity.getWidth() - 4;
                    float height2 = realNeighborCity.getHeight() - 4;
                    drawer.engine.reset();
                    if (realNeighborCity.isCreated()) {
                        drawer.engine.setTransparency(80);
                    } else {
                        drawer.engine.setTransparency(20);
                    }
                    Drawing drawing = Drawing.getInstance();
                    float fIsoToAbsX = isoConverter.isoToAbsX(x, y);
                    float fIsoToAbsY = isoConverter.isoToAbsY(x, y);
                    float f4 = width + x;
                    float fIsoToAbsX2 = isoConverter.isoToAbsX(f4, y);
                    float fIsoToAbsY2 = isoConverter.isoToAbsY(f4, y);
                    float f5 = y + height2;
                    drawing.drawQuad(fIsoToAbsX, fIsoToAbsY, fIsoToAbsX2, fIsoToAbsY2, isoConverter.isoToAbsX(f4, f5), isoConverter.isoToAbsY(f4, f5), isoConverter.isoToAbsX(x, f5), isoConverter.isoToAbsY(x, f5), drawer.engine);
                }
            }
            drawer.engine.setScale(scaleX, scaleY);
        }
        this.system.getStationIds(this.tmpList);
        drawer.engine.setTransparency(255);
        int i4 = 0;
        while (i4 < this.tmpList.size()) {
            TSStation stationById = this.system.getStationById(this.tmpList.get(i4));
            int meanX = stationById.getTiles().getMeanX();
            int meanY = stationById.getTiles().getMeanY();
            if (stationById.isCity()) {
                meanX = MathUtils.clamp(stationById.getCityX(), -4, this.city.getWidth() + 3);
                meanY = MathUtils.clamp(stationById.getCityY(), -4, this.city.getHeight() + 3);
            }
            drawer.setRealTile(meanX, meanY);
            float f6 = (-drawer.baseTerrainHeight) * 12;
            float f7 = 2.0f;
            float f8 = 16.0f;
            if (this.editingRoute != null) {
                StringBuilder sb = this.tmpBuilder;
                sb.setLength(i2);
                int i5 = i2;
                while (true) {
                    if (i5 >= this.editingRoute.stationIds.size()) {
                        i = i2;
                        break;
                    } else if (this.editingRoute.stationIds.get(i5) == stationById.getId()) {
                        if (sb.length() > 0) {
                            sb.append(", ");
                        }
                        sb.append(i5 + 1);
                        i = 1;
                    } else {
                        i5++;
                    }
                }
                if (sb.length() > 0) {
                    String string = sb.toString();
                    float shiftX = drawer.x + ((drawer.getShiftX() + 16.0f) * drawer.scaleX);
                    float f9 = drawer.y;
                    float shiftY = drawer.getShiftY() - 22.0f;
                    float f10 = drawer.scaleY;
                    float f11 = f9 + (shiftY * f10) + (f10 * f6);
                    float height3 = Resources.skin.fontBig.getHeight();
                    float fMax = Math.max(Resources.skin.fontBig.getWidth(string) + 15.0f, height3);
                    Engine engine = drawer.engine;
                    Color color = Colors.BLACK;
                    engine.setColor(color);
                    f2 = 0.5f;
                    f = -0.5f;
                    drawer.engine.drawImage(Resources.IMAGE_WORLD, shiftX + (((fMax * (-0.5f)) - 1.0f) * drawer.scaleX), f11 + (((-height3) - 1.0f) * drawer.scaleY), fMax + 2.0f, height3 + 2.0f, Resources.FRAME_RECT);
                    drawer.engine.setColor(this.editingRoute.color);
                    drawer.engine.drawImage(Resources.IMAGE_WORLD, shiftX - ((fMax * 0.5f) * drawer.scaleX), f11 - (drawer.scaleY * height3), fMax, height3, Resources.FRAME_RECT);
                    drawer.engine.setColor(Colors.WHITE);
                    Drawing.getInstance().drawOutlinedText(string, shiftX, f11, Resources.skin.fontBig, color, drawer.engine, 0.5f, 1.0f);
                } else {
                    f = -0.5f;
                    f2 = 0.5f;
                }
            } else {
                f = -0.5f;
                f2 = 0.5f;
                i = 0;
            }
            String nameOrUnnamed = stationById.getNameOrUnnamed();
            Drawing drawing2 = Drawing.getInstance();
            float shiftX2 = drawer.x + ((drawer.getShiftX() + 16.0f) * drawer.scaleX);
            float f12 = drawer.y;
            float shiftY2 = drawer.getShiftY() - 10.0f;
            float f13 = drawer.scaleY;
            drawing2.drawOutlinedText(nameOrUnnamed, shiftX2, f12 + (shiftY2 * f13) + (f13 * f6), Resources.skin.fontSmall, Colors.BLACK, drawer.engine, 0.5f, 1.0f);
            List<Route> list = this.routesByStationId.get(stationById.getId(), null);
            if (list != null) {
                if (i != 0) {
                    list.add(this.editingRoute);
                }
                float width2 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                for (int i6 = 0; i6 < list.size(); i6++) {
                    width2 += Resources.skin.fontSmall.getWidth(list.get(i6).name) + 2.0f;
                }
                float width3 = width2 * f;
                int i7 = 0;
                while (i7 < list.size()) {
                    Route route = list.get(i7);
                    drawer.engine.setColor(route.color);
                    Drawing drawing3 = Drawing.getInstance();
                    String str = route.name;
                    float f14 = f7;
                    float shiftX3 = drawer.x + ((drawer.getShiftX() + f8 + width3) * drawer.scaleX);
                    float f15 = drawer.y;
                    float shiftY3 = drawer.getShiftY() - 10.0f;
                    float f16 = f8;
                    float f17 = drawer.scaleY;
                    drawing3.drawOutlinedText(str, shiftX3, f15 + (shiftY3 * f17) + (f17 * f6), Resources.skin.fontSmall, Colors.BLACK, drawer.engine, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                    width3 += Resources.skin.fontSmall.getWidth(route.name) + f14;
                    i7++;
                    f8 = f16;
                    f7 = f14;
                }
                f3 = f8;
                height = (-10.0f) + Resources.skin.fontSmall.getHeight("");
                if (i != 0) {
                    list.remove(list.size() - 1);
                }
            } else {
                f3 = 16.0f;
                height = -10.0f;
            }
            String warningMessage = stationById.getWarningMessage();
            if (warningMessage != null) {
                float width4 = Resources.skin.fontSmall.getWidth(warningMessage);
                float height4 = Resources.skin.fontSmall.getHeight(warningMessage);
                drawer.engine.setColor(Colors.WHITE);
                float f18 = (width4 + height4) * f2;
                drawer.engine.drawImage(Resources.IMAGE_WORLD, drawer.x + (((drawer.getShiftX() + f3) - f18) * drawer.scaleX), drawer.y + ((drawer.getShiftY() + height) * drawer.scaleY), height4, height4, Resources.ICON_ALERT);
                drawer.engine.setColor(255, 180, AdSize.WIDE_SKYSCRAPER_WIDTH);
                Drawing.getInstance().drawOutlinedText(warningMessage, drawer.x + ((((drawer.getShiftX() + f3) - f18) + height4) * drawer.scaleX), drawer.y + ((drawer.getShiftY() + height) * drawer.scaleY), Resources.skin.fontSmall, Colors.BLACK, drawer.engine, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            }
            drawer.engine.setColor(Colors.WHITE);
            i4++;
            i2 = 0;
        }
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool
    public boolean drawRoad(int i, int i2, Drawer drawer, int i3) {
        int i4 = i;
        int i5 = i2;
        Drawer drawer2 = drawer;
        Road road = this.tiles.getRoad(i4, i5, i3);
        if ((i3 < -1 || (i3 == -1 && road.dLevel == 0)) && !this.system.getDraft().isSupportedRoad(road)) {
            return false;
        }
        super.drawRoad(i, i2, drawer, i3);
        Engine engine = drawer2.engine;
        engine.setTransparency(255);
        if (road == null) {
            return false;
        }
        BusStop busStop = road.getBusStop();
        if (busStop != null && !this.system.getDraft().isBusStop(busStop.getDraft())) {
            busStop = null;
        }
        BusStop busStop2 = busStop;
        if (this.system.getDraft().isSupportedRoad(road)) {
            if (road.draft.oneWay && road.dLevel == 0) {
                drawer2.engine.setTransparency(100);
                drawer2.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-road.absLevel) * 12, Resources.FRAME_TOOLMARK_ARROWS + ((((road.getFrame() / 16) + 4) - drawer2.rotation) % 4));
                drawer2.engine.setTransparency(255);
            }
            int i6 = 0;
            float f = 0.0f;
            while (i6 < this.allRoadRoutes.size()) {
                engine.setColor(this.allRoutes.get(i6).color);
                if (drawRouteOnRoadTile(this.allRoadRoutes.get(i6), i4, i5, f, road, drawer2)) {
                    f -= 2.0f;
                }
                i6++;
                i4 = i;
                i5 = i2;
                drawer2 = drawer;
            }
            if (this.editingRoadRoute != null) {
                engine.setColor(this.editingRoute.color);
                i4 = i;
                i5 = i2;
                drawer2 = drawer;
                drawRouteOnRoadTile(this.editingRoadRoute, i4, i5, f, road, drawer2);
            } else {
                i4 = i;
                i5 = i2;
                drawer2 = drawer;
            }
            engine.setColor(Colors.WHITE);
        }
        if (busStop2 == null) {
            return true;
        }
        int i7 = (-road.absLevel) * 12;
        engine.setTransparency((int) (((Math.sin(((double) (((((TimeUtils.millis() + ((long) (37481 * i4))) + ((long) (347397 * i5))) % 4000) / 4000.0f) * 2.0f)) * 3.141592653589793d) * 0.20000000298023224d) + 0.800000011920929d) * 255.0d));
        engine.setColor(this.marker.getColor(i4, i5, this.tempColor));
        drawer2.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i7, this.TILE_HIGHLIGHT.frames[0]);
        engine.setColor(Colors.WHITE);
        return true;
    }

    public final boolean drawRouteOnRoadTile(ManagedRoadRoute managedRoadRoute, int i, int i2, float f, Road road, Drawer drawer) {
        int alignmentOrDefault = managedRoadRoute.getAlignmentOrDefault(i, i2, road.absLevel, -1);
        if (alignmentOrDefault == -1) {
            return false;
        }
        int iRotateCW = Direction.rotateCW(alignmentOrDefault, this.city.getRotation());
        int[] iArr = this.ROUTE_FRAMES;
        int i3 = iArr[iRotateCW % iArr.length];
        int i4 = road.absLevel;
        int iMax = Math.max(i4, i4 - road.level);
        drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f);
        int i5 = road.dLevel;
        if (i5 == 0 || (road.level < 0 && !Direction.isIn(i5, drawer.upDirs))) {
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, -(iMax * 12), i3);
        } else {
            int i6 = road.dLevel;
            Ground.drawFrameOnCustomSlope(drawer, Resources.IMAGE_WORLD, iMax, Direction.turnCCW(i6 | Direction.turnCCW(i6)), i3);
        }
        drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, -f);
        return true;
    }

    public final MapArea getStationArea(TSStation tSStation) {
        MapArea mapArea = new MapArea();
        if (tSStation != null) {
            List<Building> spawnBuildings = tSStation.getSpawnBuildings();
            List<BusStop> busStops = tSStation.getBusStops();
            List<Road> roads = tSStation.getRoads();
            for (int i = 0; i < spawnBuildings.size(); i++) {
                mapArea.add(spawnBuildings.get(i), true);
            }
            for (int i2 = 0; i2 < busStops.size(); i2++) {
                BusStop busStop = busStops.get(i2);
                mapArea.add(busStop.getX(), busStop.getY(), this.city.getTiles().getBaseTerrainHeight(busStop.getX(), busStop.getY()) + busStop.level);
            }
            for (int i3 = 0; i3 < roads.size(); i3++) {
                Road road = roads.get(i3);
                mapArea.add(road.x, road.y, road.absLevel);
            }
        }
        return mapArea;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        NeighborCity neighbor;
        if (this.editingRoute == null) {
            if (this.clickCallback == null || !this.city.isValid(i, i2)) {
                return;
            }
            this.clickCallback.set(Integer.valueOf(PackedInt2.pack(i, i2)));
            return;
        }
        if (this.readonly || this.editingRoadRoute.isBusy()) {
            return;
        }
        if (!this.city.isValid(i, i2)) {
            int neighborIndex = this.city.getNeighborIndex(i, i2);
            if (neighborIndex >= 0 && (neighbor = this.city.getNeighbor(neighborIndex)) != null && neighbor.isCreated() && neighbor.isDirect()) {
                List<TSStation> stations = this.system.getStations();
                for (int i5 = 0; i5 < stations.size(); i5++) {
                    TSStation tSStation = stations.get(i5);
                    if (tSStation.isCity() && neighbor.contains(tSStation.getCityX(), tSStation.getCityY())) {
                        addOrRemoveStation(tSStation);
                        return;
                    }
                }
                return;
            }
            return;
        }
        TSStation stationByXY = this.system.getStationByXY(i, i2);
        if (stationByXY == null) {
            for (int i6 = 1; i6 <= 8 && stationByXY == null; i6 *= 2) {
                stationByXY = this.system.getStationByXY(Direction.differenceX(i6) + i, Direction.differenceY(i6) + i2);
            }
        }
        if (stationByXY != null) {
            addOrRemoveStation(stationByXY);
        }
    }

    public final void addOrRemoveStation(TSStation tSStation) {
        if (this.editingRoute.stationIds.last(-1) == tSStation.getId()) {
            removeLastStation();
        } else if (this.editingRoute.stationIds.contains(tSStation.getId())) {
            TheoTown.runtimeFeatures.showToast("This station is already part of the route");
        } else {
            tryAddStation(tSStation);
        }
    }

    public final void tryAddStation(final TSStation tSStation) {
        this.editingRoadRoute.tryAddStation(getStationArea(tSStation), new ManagedRoadRoute.IRouteCallback() { // from class: info.flowersoft.theotown.tools.TSRouteTool.5
            @Override // info.flowersoft.theotown.util.ManagedRoadRoute.IRouteCallback
            public void onSuccess(MapArea mapArea, Way way, IntIntMap intIntMap) {
                TSRouteTool.this.editingRoadRoute.addCalculatedStation(mapArea, way, intIntMap);
                TSRouteTool.this.editingRoute.stationIds.add(tSStation.getId());
            }

            @Override // info.flowersoft.theotown.util.ManagedRoadRoute.IRouteCallback
            public void onFailed(MapArea mapArea) {
                TheoTown.runtimeFeatures.showToast("Could not find a suitable connection");
            }
        });
    }

    public final void removeLastStation() {
        this.editingRoute.stationIds.removeLast(0);
        this.editingRoadRoute.removeLastStation();
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool, info.flowersoft.theotown.city.components.CityComponent
    public void update() {
        super.update();
        ManagedRoadRoute managedRoadRoute = this.editingRoadRoute;
        if (managedRoadRoute != null) {
            managedRoadRoute.update();
        }
        for (int i = 0; i < this.allRoadRoutes.size(); i++) {
            this.allRoadRoutes.get(i).update();
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        if (this.editingRoute != null) {
            return StringFormatter.format(this.city.getTranslator().translate(1293), this.name, Integer.valueOf(this.editingRoute.stationIds.size()));
        }
        return StringFormatter.format(this.city.getTranslator().translate(2702), this.name, Integer.valueOf(this.allRoutes.size()));
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return this.icon;
    }
}
