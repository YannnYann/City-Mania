package info.flowersoft.theotown.tools.marker;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.resources.Drafts;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class MetroMarker implements BuildToolMarker {
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
    public float overlayAlpha(int i, int i2) {
        return 1.0f;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public void setVariant(int i) {
    }

    public MetroMarker(City city) {
        ArrayList arrayList = new ArrayList();
        this.legend = arrayList;
        this.tiles = city.getTiles();
        arrayList.add(new LegendEntry(city.getTranslator().translate(1429), Colors.BLUE));
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public Color getColor(int i, int i2, Color color) {
        return Colors.BLUE;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean useOverlay(int i, int i2) {
        return this.tiles.getRoad(i, i2, -2) != null;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float overlayTempAlpha(int i, int i2) {
        return overlayAlpha(i, i2);
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getIntensity(int i, int i2) {
        Road road = this.tiles.getRoad(i, i2, -2);
        if (road == null || road.draft.getMetaTag("metro") == null) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        return 1.0f;
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
        return (building == null || building.getDraft().getMetaTag("metro") == null) ? false : true;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int getIcon() {
        return ((CategoryDraft) Drafts.get("$cat_train00", CategoryDraft.class)).frames[0];
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public String getTag() {
        return "MetroMarker";
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public List<LegendEntry> getLegend() {
        return this.legend;
    }
}
