package info.flowersoft.theotown.util;

/* JADX INFO: loaded from: classes4.dex */
public class IntEnum {
    public static int count;

    public static int allocate() {
        int i = count;
        count = i + 1;
        return i;
    }

    public static int getAndResetCount() {
        int i = count;
        count = 0;
        return i;
    }
}
