package info.flowersoft.theotown.city;

/* JADX INFO: loaded from: classes4.dex */
public final class TransportationType {
    public static final int[] values = {0, 1, 2, 3};
    public static final String[] names = {"WALK", "CAR", "BUS", "TRAIN"};

    public static int valueOf(String str) {
        for (int i = 0; i < values.length; i++) {
            if (names[i].equals(str)) {
                return i;
            }
        }
        return -1;
    }
}
