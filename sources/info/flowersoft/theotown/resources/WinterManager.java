package info.flowersoft.theotown.resources;

import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.util.IntList;
import java.util.Calendar;

/* JADX INFO: loaded from: classes4.dex */
public final class WinterManager {
    public static final boolean DYNAMIC_WINTER_EVALUATION;
    public static WinterManager instance;
    public boolean winter;
    public final IntList sourceFrames = new IntList();
    public final IntList targetFrames = new IntList();
    public final IntList frameCount = new IntList();

    public static WinterManager getInstance() {
        if (instance == null) {
            instance = new WinterManager();
        }
        return instance;
    }

    public static void dispose() {
        instance = null;
    }

    static {
        int i = Calendar.getInstance().get(2);
        DYNAMIC_WINTER_EVALUATION = i >= 11 || (i <= 0 && Calendar.getInstance().get(5) <= 7);
    }

    public static boolean shouldItBeWinter(int i) {
        if (i != 0) {
            return i == 1;
        }
        return DYNAMIC_WINTER_EVALUATION;
    }

    public synchronized void registerWinterFrame(int i, int i2) {
        if (this.winter) {
            throw new IllegalStateException("May not add frames while in winter");
        }
        registerWinterFrames(i, i2, 1);
    }

    public synchronized void registerWinterFrames(int[] iArr, int[] iArr2, int i) {
        try {
            if (this.winter) {
                throw new IllegalStateException("May not add frames while in winter");
            }
            int i2 = 0;
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int i6 = -1;
            int i7 = 0;
            while (i2 < i) {
                int i8 = iArr[i2];
                int i9 = iArr2[i2];
                if (i2 > 0 && i8 == i3 + 1 && i9 == i4 + 1) {
                    i7++;
                } else {
                    if (i7 > 0) {
                        registerWinterFrames(i5, i6, i7);
                    }
                    i5 = i8;
                    i6 = i9;
                    i7 = 1;
                }
                i2++;
                if (i2 == i) {
                    registerWinterFrames(i5, i6, i7);
                }
                i3 = i8;
                i4 = i9;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void registerWinterFrames(int i, int i2, int i3) {
        this.sourceFrames.add(i);
        this.targetFrames.add(i2);
        this.frameCount.add(i3);
    }

    public boolean isWinter() {
        return this.winter;
    }

    public synchronized void setWinter(boolean z) {
        if (this.winter != z) {
            swapFrames();
        }
    }

    public final void swapFrames() {
        this.winter = !this.winter;
        Image image = Resources.IMAGE_WORLD;
        for (int i = 0; i < this.sourceFrames.size(); i++) {
            image.swap(this.sourceFrames.get(i), this.targetFrames.get(i), this.frameCount.get(i));
        }
    }
}
