package info.flowersoft.theotown.util;

/* JADX INFO: loaded from: classes4.dex */
public final class PackedInt2 {
    public static int pack(int i, int i2) {
        return (i << 16) | i2;
    }

    public static int unpackX(int i) {
        return i >>> 16;
    }

    public static int unpackY(int i) {
        return i & 65535;
    }
}
