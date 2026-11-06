package info.flowersoft.theotown.util;

import com.badlogic.gdx.utils.TimeUtils;

/* JADX INFO: loaded from: classes4.dex */
public class TimeLog {
    public static long lastMS = -1;
    public static final float[] times = new float[32];

    public static void log(int i) {
        int i2;
        long jMillis = TimeUtils.millis();
        long j = lastMS;
        if (j >= 0 && (i2 = (int) (jMillis - j)) < 1000) {
            float[] fArr = times;
            fArr[i] = (fArr[i] * 0.9f) + (i2 * 0.1f);
        }
        lastMS = jMillis;
    }

    public static float getTime(int i) {
        return times[i];
    }
}
