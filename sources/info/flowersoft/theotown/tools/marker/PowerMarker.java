package info.flowersoft.theotown.tools.marker;

import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class PowerMarker implements BuildToolMarker {
    public final List<LegendEntry> legend;
    public final Tiles tiles;

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int countVariants() {
        return 1;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getBuildingIntensity(int i, int i2) {
        return 1.0f;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean markTree(int i, int i2) {
        return false;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public void setVariant(int i) {
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean useOverlay(int i, int i2) {
        return true;
    }

    public PowerMarker(City city) {
        ArrayList arrayList = new ArrayList();
        this.legend = arrayList;
        this.tiles = city.getTiles();
        arrayList.add(new LegendEntry(city.getTranslator().translate(1323), Colors.BLUE));
        arrayList.add(new LegendEntry(city.getTranslator().translate(860), Colors.GREEN));
        arrayList.add(new LegendEntry(city.getTranslator().translate(Sdk.SDKError.Reason.MRAID_BRIDGE_ERROR_VALUE), Colors.YELLOW));
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public Color getColor(int i, int i2, Color color) {
        boolean zHasPower = this.tiles.hasPower(i, i2, 0);
        boolean zHasPower2 = this.tiles.hasPower(i, i2, 1);
        if (zHasPower && zHasPower2) {
            return Colors.YELLOW;
        }
        if (zHasPower2) {
            return Colors.GREEN;
        }
        return Colors.BLUE;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float overlayAlpha(int i, int i2) {
        if (this.tiles.hasPower(i, i2, 0) || this.tiles.hasPower(i, i2, 1)) {
            return 1.0f;
        }
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float overlayTempAlpha(int i, int i2) {
        return overlayAlpha(i, i2);
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getIntensity(int i, int i2) {
        if (this.tiles.getZone(i, i2) == null && this.tiles.getBuilding(i, i2) == null) {
            return 1.0f;
        }
        return overlayAlpha(i, i2);
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getTempIntensity(int i, int i2) {
        return getIntensity(i, i2);
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean ignoreBuilding(int i, int i2) {
        Building building = this.tiles.getBuilding(i, i2);
        return (building == null || building.getDraft().conductive) ? false : true;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean markBuilding(int i, int i2) {
        Building building = this.tiles.getBuilding(i, i2);
        return building != null && ((float) building.getPower()) > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int getIcon() {
        return Resources.ICON_ENERGY;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public String getTag() {
        return "PowerMarker";
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public List<LegendEntry> getLegend() {
        return this.legend;
    }
}
