package com.google.common.collect;

/* JADX INFO: loaded from: classes3.dex */
public final class Hashing {
    public static int smear(int hashCode) {
        return (int) (((long) Integer.rotateLeft((int) (((long) hashCode) * (-862048943)), 15)) * 461845907);
    }

    public static int smearedHash(Object o) {
        return smear(o == null ? 0 : o.hashCode());
    }

    public static int closedTableSize(int expectedEntries, double loadFactor) {
        int iMax = Math.max(expectedEntries, 2);
        int iHighestOneBit = Integer.highestOneBit(iMax);
        if (iMax <= ((int) (loadFactor * ((double) iHighestOneBit)))) {
            return iHighestOneBit;
        }
        int i = iHighestOneBit << 1;
        if (i > 0) {
            return i;
        }
        return 1073741824;
    }
}
