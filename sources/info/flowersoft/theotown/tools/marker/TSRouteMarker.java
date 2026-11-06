package info.flowersoft.theotown.tools.marker;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.components.transportationsystem.TSStation;
import info.flowersoft.theotown.components.transportationsystem.TSSystem;
import info.flowersoft.theotown.tools.TSRouteTool;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TSRouteMarker implements BuildToolMarker {
    public final TSRouteTool.Route editingRoute;
    public final List<LegendEntry> legend;
    public final TSSystem system;
    public final Tiles tiles;

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int countVariants() {
        return 1;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int getIcon() {
        return 0;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getIntensity(int i, int i2) {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getTempIntensity(int i, int i2) {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public abstract boolean isStationConnected(TSStation tSStation);

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean markTree(int i, int i2) {
        return false;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float overlayAlpha(int i, int i2) {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float overlayTempAlpha(int i, int i2) {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public void setVariant(int i) {
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean useOverlay(int i, int i2) {
        return false;
    }

    public TSRouteMarker(TSRouteTool.Route route, City city, TSSystem tSSystem, List<LegendEntry> list) {
        this.editingRoute = route;
        this.tiles = city.getTiles();
        this.system = tSSystem;
        this.legend = list;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public Color getColor(int i, int i2, Color color) {
        TSRouteTool.Route route;
        TSStation stationByXY = this.system.getStationByXY(i, i2);
        if (stationByXY == null) {
            return color;
        }
        if (isStationConnected(stationByXY) || ((route = this.editingRoute) != null && route.stationIds.contains(stationByXY.getId()))) {
            color.setTo(Colors.GREEN);
            color.lerp(Colors.ORANGE, stationByXY.getWaitingUsage());
            return color;
        }
        color.setTo(Colors.RED);
        return color;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean ignoreBuilding(int i, int i2) {
        return getBuildingIntensity(i, i2) < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean markBuilding(int i, int i2) {
        return getBuildingIntensity(i, i2) >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getBuildingIntensity(int i, int i2) {
        return (this.tiles.getBuilding(i, i2) == null || this.system.getStationByXY(i, i2) == null) ? -1.0f : 1.0f;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public String getTag() {
        return "ts system tag";
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public List<LegendEntry> getLegend() {
        return this.legend;
    }
}
