package info.flowersoft.theotown.city.miniatureview;

import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.tools.marker.BuildToolMarker;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class MarkerMiniatureViewColoring extends DefaultMiniatureViewColoring {
    public BuildToolMarker marker;

    public BuildToolMarker getMarker() {
        return this.marker;
    }

    public void setMarker(BuildToolMarker buildToolMarker) {
        this.marker = buildToolMarker;
    }

    @Override // info.flowersoft.theotown.city.miniatureview.DefaultMiniatureViewColoring, info.flowersoft.theotown.city.miniatureview.MiniatureViewColoring
    public void getMiniatureColor(Color color, Tiles tiles, int i, int i2, int i3, boolean z) {
        super.getMiniatureColor(color, tiles, i, i2, i3, z);
        BuildToolMarker buildToolMarker = this.marker;
        if (buildToolMarker != null) {
            int red = color.getRed();
            int green = color.getGreen();
            int blue = color.getBlue();
            Building building = tiles.getBuilding(i, i2);
            if (building != null && buildToolMarker.markBuilding(i, i2)) {
                red = 255;
                green = 255;
                blue = 255;
            } else if ((tiles.getZone(i, i2) != null || building != null) && ((building == null || !buildToolMarker.ignoreBuilding(i, i2)) && buildToolMarker.useOverlay(i, i2))) {
                float fOverlayAlpha = buildToolMarker.overlayAlpha(i, i2);
                float fMin = Math.min(buildToolMarker.getIntensity(i, i2), 1.0f);
                Color color2 = buildToolMarker.getColor(i, i2, color);
                Color color3 = Colors.RED;
                float f = fMin * 2.0f;
                float fMin2 = Math.min(1.0f, f);
                float fMin3 = Math.min(1.0f, 2.0f - f);
                float f2 = (1.0f - fOverlayAlpha) * 255.0f;
                int iRound = Math.round((((color2.getRed() * fMin2) + (color3.getRed() * fMin3)) * fOverlayAlpha) + f2);
                int iRound2 = Math.round((((color2.getGreen() * fMin2) + (color3.getGreen() * fMin3)) * fOverlayAlpha) + f2);
                int iRound3 = Math.round((fOverlayAlpha * ((fMin2 * color2.getBlue()) + (fMin3 * color3.getBlue()))) + f2);
                red = iRound;
                green = iRound2;
                blue = iRound3;
            } else if (buildToolMarker.useOverlay(i, i2)) {
                float fOverlayAlpha2 = buildToolMarker.overlayAlpha(i, i2);
                float fMin4 = Math.min(buildToolMarker.getIntensity(i, i2), 1.0f);
                Color color4 = buildToolMarker.getColor(i, i2, color);
                Color color5 = Colors.RED;
                float f3 = fMin4 * 2.0f;
                float fMin5 = Math.min(1.0f, f3);
                float fMin6 = Math.min(1.0f, 2.0f - f3);
                float f4 = (1.0f - fOverlayAlpha2) * 255.0f;
                red = (red + Math.round((((color4.getRed() * fMin5) + (color5.getRed() * fMin6)) * fOverlayAlpha2) + f4)) / 2;
                green = (green + Math.round((((color4.getGreen() * fMin5) + (color5.getGreen() * fMin6)) * fOverlayAlpha2) + f4)) / 2;
                blue = (blue + Math.round((fOverlayAlpha2 * ((fMin5 * color4.getBlue()) + (fMin6 * color5.getBlue()))) + f4)) / 2;
            }
            color.setRed(red);
            color.setGreen(green);
            color.setBlue(blue);
        }
    }
}
