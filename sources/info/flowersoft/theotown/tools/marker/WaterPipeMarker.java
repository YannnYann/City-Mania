package info.flowersoft.theotown.tools.marker;

import com.ironsource.M9;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class WaterPipeMarker implements BuildToolMarker {
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

    public WaterPipeMarker(City city) {
        ArrayList arrayList = new ArrayList();
        this.legend = arrayList;
        this.tiles = city.getTiles();
        arrayList.add(new LegendEntry(city.getTranslator().translate(1127), Colors.BLUE));
        arrayList.add(new LegendEntry(city.getTranslator().translate(M9.a.j), Colors.RED));
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public Color getColor(int i, int i2, Color color) {
        return Colors.BLUE;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float overlayAlpha(int i, int i2) {
        Building building = this.tiles.getBuilding(i, i2);
        if (getIntensity(i, i2) > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || this.tiles.getZone(i, i2) != null) {
            return 1.0f;
        }
        if (building == null || building.getBuildingType() == BuildingType.DESTROYED) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        return 1.0f;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float overlayTempAlpha(int i, int i2) {
        return overlayAlpha(i, i2);
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getIntensity(int i, int i2) {
        Building building = this.tiles.getBuilding(i, i2);
        if (this.tiles.getPipe(i, i2) != null) {
            return 0.5f;
        }
        if (building == null || building.getBuildingType() == BuildingType.DESTROYED) {
            if (this.tiles.hasWater(i, i2)) {
                return 1.0f;
            }
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        if (building.hasWater()) {
            return 1.0f;
        }
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getTempIntensity(int i, int i2) {
        return getIntensity(i, i2);
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean ignoreBuilding(int i, int i2) {
        Building building = this.tiles.getBuilding(i, i2);
        return building != null && building.getDraft().buildingType == BuildingType.DESTROYED;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean markBuilding(int i, int i2) {
        Building building = this.tiles.getBuilding(i, i2);
        if (building != null) {
            return building.getWater() > 0 || building.getDraft().waterWaste < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        return false;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int getIcon() {
        return Resources.ICON_WATER;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public String getTag() {
        return "WaterPipeMarker";
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public List<LegendEntry> getLegend() {
        return this.legend;
    }
}
