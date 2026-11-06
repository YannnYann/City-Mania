package info.flowersoft.theotown.tools.marker;

import io.blueflower.stapel2d.drawing.Color;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface BuildToolMarker {
    int countVariants();

    float getBuildingIntensity(int i, int i2);

    Color getColor(int i, int i2, Color color);

    int getIcon();

    float getIntensity(int i, int i2);

    List<LegendEntry> getLegend();

    String getTag();

    float getTempIntensity(int i, int i2);

    boolean ignoreBuilding(int i, int i2);

    boolean markBuilding(int i, int i2);

    boolean markTree(int i, int i2);

    float overlayAlpha(int i, int i2);

    float overlayTempAlpha(int i, int i2);

    void setVariant(int i);

    boolean useOverlay(int i, int i2);
}
