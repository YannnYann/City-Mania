package info.flowersoft.theotown.tools.marker;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.util.InfoGrid;
import io.blueflower.stapel2d.drawing.Color;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class InfoGridMarker implements BuildToolMarker {
    public Color color;
    public InfoGrid infoGrid;

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int countVariants() {
        return 1;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getBuildingIntensity(int i, int i2) {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public int getIcon() {
        return 0;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public List<LegendEntry> getLegend() {
        return null;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean ignoreBuilding(int i, int i2) {
        return true;
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
    public float overlayAlpha(int i, int i2) {
        return 1.0f;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public void setVariant(int i) {
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public boolean useOverlay(int i, int i2) {
        return true;
    }

    public InfoGridMarker(Color color, InfoGrid infoGrid) {
        this.color = color;
        this.infoGrid = infoGrid;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public Color getColor(int i, int i2, Color color) {
        return this.color;
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float overlayTempAlpha(int i, int i2) {
        return overlayAlpha(i, i2);
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getIntensity(int i, int i2) {
        return 1.0f - (1.0f / ((this.infoGrid.get(i, i2) * 0.1f) + 1.0f));
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public float getTempIntensity(int i, int i2) {
        return getIntensity(i, i2);
    }

    @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
    public String getTag() {
        return "InfoGridMarker";
    }
}
