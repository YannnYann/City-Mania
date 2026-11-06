package info.flowersoft.theotown.region;

import info.flowersoft.theotown.cityfile.MapPreviewRenderer;
import info.flowersoft.theotown.cityloader.CityKeeper;

/* JADX INFO: loaded from: classes4.dex */
public class RegionMap {
    public final int height;
    public final CityKeeper keeper;
    public final int level;
    public MapPreviewRenderer renderer;
    public final int width;
    public final int x;
    public final int y;

    public RegionMap(CityKeeper cityKeeper, int i, int i2, int i3, int i4, int i5) {
        this.keeper = cityKeeper;
        this.x = i;
        this.y = i2;
        this.level = i3;
        this.width = i4;
        this.height = i5;
    }

    public CityKeeper getKeeper() {
        return this.keeper;
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public int getLevel() {
        return this.level;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public MapPreviewRenderer getRenderer() {
        return this.renderer;
    }

    public void setRenderer(MapPreviewRenderer mapPreviewRenderer) {
        MapPreviewRenderer mapPreviewRenderer2 = this.renderer;
        if (mapPreviewRenderer2 != null) {
            mapPreviewRenderer2.release();
        }
        this.renderer = mapPreviewRenderer;
    }

    public String getId() {
        return "$Map(" + this.x + "|" + this.y + "|" + this.width + "|" + this.height + ")";
    }
}
