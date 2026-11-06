package info.flowersoft.theotown.util;

import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.objects.Building;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Distance {
    public abstract int get(int i, int i2);

    public int positive(int i) {
        if (i >= 0) {
            return i;
        }
        return 0;
    }

    public int get(int i, int i2, int i3, int i4) {
        return get(i3 - i, i4 - i2);
    }

    public int get(Building building, int i, int i2) {
        return get(positive(Math.max(building.getX() - i, ((i - building.getX()) - building.getWidth()) + 1)), positive(Math.max(building.getY() - i2, ((i2 - building.getY()) - building.getHeight()) + 1)));
    }

    public int get(Building building, Building building2) {
        return get(positive(Math.max(((-building2.getX()) - building2.getWidth()) + 1 + building.getX(), ((-building.getX()) - building.getWidth()) + 1 + building2.getX())), positive(Math.max(((-building2.getY()) - building2.getHeight()) + 1 + building.getY(), ((-building.getY()) - building.getHeight()) + 1 + building2.getY())));
    }

    public int get(int i, int i2, int i3, int i4, int i5, int i6) {
        return get(positive(Math.max(i3 - i, ((i - i3) - i5) + 1)), positive(Math.max(i4 - i2, ((i2 - i4) - i6) + 1)));
    }

    public int get(int i, int i2, MapArea mapArea) {
        int[] parcelBoundingBox = mapArea.getParcelBoundingBox();
        int i3 = parcelBoundingBox[0];
        int i4 = parcelBoundingBox[1];
        return get(i, i2, i3 / 2, i4 / 2, ((parcelBoundingBox[2] - i3) + 1) / 2, ((parcelBoundingBox[3] - i4) + 1) / 2);
    }
}
