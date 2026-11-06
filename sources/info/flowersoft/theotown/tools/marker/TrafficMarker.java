package info.flowersoft.theotown.tools.marker;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class TrafficMarker implements BuildToolMarker {
    public final List<LegendEntry> legend;
    public final Tiles tiles;
    public int variant;

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int countVariants() {
        return 4;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getBuildingIntensity(int i, int i2) {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean ignoreBuilding(int i, int i2) {
        return false;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean markBuilding(int i, int i2) {
        return false;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean markTree(int i, int i2) {
        return false;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean useOverlay(int i, int i2) {
        return true;
    }

    public TrafficMarker(City city) {
        ArrayList arrayList = new ArrayList();
        this.legend = arrayList;
        this.variant = 0;
        this.tiles = city.getTiles();
        arrayList.add(new LegendEntry(city.getTranslator().translate(373), Colors.GREEN));
        arrayList.add(new LegendEntry(city.getTranslator().translate(240), Colors.RED));
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public Color getColor(int i, int i2, Color color) {
        return Colors.GREEN;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float overlayAlpha(int i, int i2) {
        if (this.tiles.hasRoad(i, i2)) {
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
        float f;
        float fMin = 1.0f;
        for (int i3 = -2; i3 <= 16; i3++) {
            Road road = this.tiles.getRoad(i, i2, i3);
            if (road != null) {
                int i4 = this.variant;
                if (i4 == 0) {
                    f = road.trafficAmount;
                } else if (i4 == 1) {
                    f = road.trafficAmountLevel1;
                } else if (i4 == 2) {
                    f = road.trafficAmountLevel2;
                } else {
                    f = road.trafficAmountLevel3;
                }
                fMin = Math.min(1.0f - f, fMin);
            }
        }
        return fMin;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getTempIntensity(int i, int i2) {
        return getIntensity(i, i2);
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int getIcon() {
        return Resources.ICON_TRAFFIC;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public String getTag() {
        return "TrafficMarker";
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public void setVariant(int i) {
        this.variant = i;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public List<LegendEntry> getLegend() {
        return this.legend;
    }
}
