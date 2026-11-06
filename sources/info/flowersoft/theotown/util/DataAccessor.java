package info.flowersoft.theotown.util;

/* JADX INFO: loaded from: classes4.dex */
public class DataAccessor {
    public static long read(long j, int i, int i2) {
        return (j & ((~((-1) << i)) << i2)) >>> i2;
    }

    public static long write(long j, int i, int i2, long j2) {
        long j3 = ~((-1) << i);
        return (j & (~(j3 << i2))) | ((j2 & j3) << i2);
    }
}
