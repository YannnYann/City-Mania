package info.flowersoft.theotown.util;

/* JADX INFO: loaded from: classes4.dex */
public final class PackedInt3 {
    public static int pack(int i, int i2, int i3) {
        return (i << 26) | (i2 << 13) | i3;
    }

    public static int unpackLevel(int i) {
        return i >> 26;
    }

    public static int unpackX(int i) {
        return (i >>> 13) & 8191;
    }

    public static int unpackY(int i) {
        return i & 8191;
    }
}
