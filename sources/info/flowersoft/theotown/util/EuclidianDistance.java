package info.flowersoft.theotown.util;

/* JADX INFO: loaded from: classes4.dex */
public class EuclidianDistance extends Distance {
    @Override // info.flowersoft.theotown.util.Distance
    public int get(int i, int i2) {
        return Math.round((float) Math.sqrt((i * i) + (i2 * i2)));
    }
}
