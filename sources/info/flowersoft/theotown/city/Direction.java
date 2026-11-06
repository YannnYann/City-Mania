package info.flowersoft.theotown.city;

/* JADX INFO: loaded from: classes4.dex */
public final class Direction {
    public static int axis(int i) {
        return i | ((i >> 2) & 3) | ((i << 2) & 15);
    }

    public static int countDirections(int i) {
        return (((i & 3) + 1) >> 1) + ((i + 4) >> 3);
    }

    public static int cut(int i, int i2) {
        return i & i2;
    }

    public static int differenceX(int i) {
        return ((i << 29) >> 31) + (i & 1);
    }

    public static int differenceY(int i) {
        return ((i << 28) >> 31) + ((i >> 1) & 1);
    }

    public static int fromDifferential(int i, int i2) {
        return ((i >>> 31) << 2) | ((-i) >>> 31) | (((-i2) >>> 31) << 1) | ((i2 >>> 31) << 3);
    }

    public static int fromIndex(int i) {
        return 1 << i;
    }

    public static int inverse(int i) {
        return 15 - i;
    }

    public static boolean isIn(int i, int i2) {
        return (i | i2) == i2;
    }

    public static int opposite(int i) {
        return ((i << 2) & 15) | ((i >> 2) & 3);
    }

    public static int rotateCCW(int i, int i2) {
        return ((i << i2) & 15) + ((i & 15) >> (4 - i2));
    }

    public static int rotateCW(int i, int i2) {
        return ((i & 15) >> i2) + ((i << (4 - i2)) & 15);
    }

    public static int toIndex(int i) {
        return (((i >> 1) & 1) + (((i >> 2) & 1) * 2) + (((i >> 3) & 1) * 3)) & 3;
    }

    public static int turnCCW(int i) {
        return ((i >> 3) & 1) + ((i << 1) & 15);
    }

    public static int turnCW(int i) {
        return ((i & 1) << 3) + ((i >> 1) & 7);
    }

    public static int union(int i, int i2) {
        return i | i2;
    }

    public static boolean isCorner(int i) {
        return countDirections(i) == 2 && opposite(i) != i;
    }

    public static int inverseRotation(int i) {
        return (4 - i) % 4;
    }

    public static boolean isSymmetric(int i) {
        return i == opposite(i);
    }
}
