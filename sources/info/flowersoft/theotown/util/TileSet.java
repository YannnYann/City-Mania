package info.flowersoft.theotown.util;

import com.badlogic.gdx.utils.IntSet;
import com.google.android.gms.common.api.Api;
import io.blueflower.stapel2d.util.IntList;

/* JADX INFO: loaded from: classes4.dex */
public class TileSet {
    public int maxX;
    public int maxY;
    public int meanX;
    public int meanY;
    public int minX;
    public int minY;
    public final IntSet set = new IntSet();
    public final int[] xys;

    public TileSet(IntList intList) {
        this.minX = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.minY = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.maxX = Integer.MIN_VALUE;
        this.maxY = Integer.MIN_VALUE;
        this.xys = new int[intList.size()];
        for (int i = 0; i < intList.size(); i++) {
            int i2 = intList.get(i);
            int iUnpackX = PackedInt2.unpackX(i2);
            int iUnpackY = PackedInt2.unpackY(i2);
            this.minX = Math.min(iUnpackX, this.minX);
            this.minY = Math.min(iUnpackY, this.minY);
            this.maxX = Math.max(iUnpackX, this.maxX);
            this.maxY = Math.max(iUnpackY, this.maxY);
            this.meanX += iUnpackX;
            this.meanY += iUnpackY;
            this.xys[i] = i2;
            this.set.add(i2);
        }
        if (size() > 0) {
            this.meanX /= size();
            this.meanY /= size();
        }
    }

    public int getMinX() {
        return this.minX;
    }

    public int getMinY() {
        return this.minY;
    }

    public int getMaxX() {
        return this.maxX;
    }

    public int getMaxY() {
        return this.maxY;
    }

    public int getMeanX() {
        return this.meanX;
    }

    public int getMeanY() {
        return this.meanY;
    }

    public int size() {
        return this.xys.length;
    }

    public int getPackedXY(int i) {
        return this.xys[i];
    }

    public int getX(int i) {
        return PackedInt2.unpackX(this.xys[i]);
    }

    public int getY(int i) {
        return PackedInt2.unpackY(this.xys[i]);
    }

    public int distanceX(int i, int i2) {
        return Math.max(Math.max((this.minX - i) - i2, i - this.maxX), 0);
    }

    public int distanceY(int i, int i2) {
        return Math.max(Math.max((this.minY - i) - i2, i - this.maxY), 0);
    }

    public boolean contains(int i, int i2) {
        if (i < 0 || i2 < 0) {
            return false;
        }
        return this.set.contains(PackedInt2.pack(i, i2));
    }

    public boolean boundsContains(int i, int i2) {
        return this.minX <= i && i <= this.maxX && this.minY <= i2 && i2 <= this.maxY;
    }

    public int getCommonArea(TileSet tileSet) {
        int i = 0;
        if (!intersectsBoundingBox(tileSet) || size() == 0 || tileSet.size() == 0) {
            return 0;
        }
        if (size() <= tileSet.size()) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.xys;
                if (i >= iArr.length) {
                    return i2;
                }
                if (tileSet.set.contains(iArr[i])) {
                    i2++;
                }
                i++;
            }
        } else {
            int i3 = 0;
            while (true) {
                int[] iArr2 = tileSet.xys;
                if (i >= iArr2.length) {
                    return i3;
                }
                if (this.set.contains(iArr2[i])) {
                    i3++;
                }
                i++;
            }
        }
    }

    public boolean intersects(TileSet tileSet) {
        if (intersectsBoundingBox(tileSet) && size() != 0 && tileSet.size() != 0) {
            if (this.xys.length > tileSet.xys.length) {
                int i = 0;
                while (true) {
                    int[] iArr = tileSet.xys;
                    if (i >= iArr.length) {
                        break;
                    }
                    if (this.set.contains(iArr[i])) {
                        return true;
                    }
                    i++;
                }
            } else {
                int i2 = 0;
                while (true) {
                    int[] iArr2 = this.xys;
                    if (i2 >= iArr2.length) {
                        break;
                    }
                    if (tileSet.set.contains(iArr2[i2])) {
                        return true;
                    }
                    i2++;
                }
            }
        }
        return false;
    }

    public boolean intersectsBoundingBox(TileSet tileSet) {
        return this.maxX >= tileSet.minX && this.maxY >= tileSet.minY && this.minX <= tileSet.maxX && this.minY <= tileSet.maxY;
    }
}
