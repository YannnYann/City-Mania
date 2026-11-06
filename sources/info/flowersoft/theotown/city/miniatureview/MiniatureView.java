package info.flowersoft.theotown.city.miniatureview;

import info.flowersoft.theotown.city.City;
import io.blueflower.stapel2d.drawing.Color;

/* JADX INFO: loaded from: classes4.dex */
public class MiniatureView {
    public City city;
    public final Color color = new Color();
    public MiniatureViewColoring coloring;

    public MiniatureView(City city, MiniatureViewColoring miniatureViewColoring) {
        this.city = city;
        this.coloring = miniatureViewColoring;
    }

    public void setColoring(MiniatureViewColoring miniatureViewColoring) {
        this.coloring = miniatureViewColoring;
    }

    public int getWidth() {
        return this.city.getWidth();
    }

    public int getHeight() {
        return this.city.getHeight();
    }

    public City getCity() {
        return this.city;
    }

    public Color getColor(int i, int i2, boolean z) {
        this.coloring.getMiniatureColor(this.color, this.city.getTiles(), i, i2, this.city.getRotation(), z);
        return this.color;
    }
}
