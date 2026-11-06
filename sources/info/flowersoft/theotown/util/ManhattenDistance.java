package info.flowersoft.theotown.util;

/* JADX INFO: loaded from: classes4.dex */
public class ManhattenDistance extends Distance {
    @Override // info.flowersoft.theotown.util.Distance
    public int get(int i, int i2) {
        return Math.abs(i) + Math.abs(i2);
    }
}
