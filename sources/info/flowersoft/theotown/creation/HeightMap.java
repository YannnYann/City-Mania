package info.flowersoft.theotown.creation;

/* JADX INFO: loaded from: classes4.dex */
public class HeightMap {
    public final float[] data;
    public final int height;
    public final int width;

    public HeightMap(int i, int i2, float[] fArr) {
        this.width = i;
        this.height = i2;
        this.data = fArr;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public float getValue(int i, int i2) {
        return this.data[i + (i2 * this.width)];
    }
}
