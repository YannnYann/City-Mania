package info.flowersoft.theotown.util;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class StopWatch {
    public static Map<String, Long> entries = new HashMap();
    public static Map<String, Long> lastStep = new HashMap();

    public static synchronized void start(String str) {
        try {
            if (entries.containsKey(str)) {
                stop(str);
                Gdx.app.error("StopWatch", "Watch " + str + " has been stopped forcefully!");
            }
            long jMillis = TimeUtils.millis();
            entries.put(str, Long.valueOf(jMillis));
            lastStep.put(str, Long.valueOf(jMillis));
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void step(String str, String str2) {
        if (entries.containsKey(str)) {
            long jMillis = TimeUtils.millis();
            Gdx.app.debug("StopWatch", "Needed " + (jMillis - lastStep.get(str).longValue()) + "ms to process step " + str2 + " of " + str);
            lastStep.put(str, Long.valueOf(jMillis));
        }
    }

    public static synchronized void stop(String str) {
        if (entries.containsKey(str)) {
            long jMillis = TimeUtils.millis();
            Gdx.app.debug("StopWatch", "Needed " + (jMillis - entries.remove(str).longValue()) + "ms to proceed " + str);
            lastStep.remove(str);
        }
    }
}
