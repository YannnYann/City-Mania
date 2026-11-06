package info.flowersoft.theotown.util;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;

/* JADX INFO: loaded from: classes4.dex */
public class TimeMeasure {
    public long ms;
    public String name;

    public TimeMeasure(String str) {
        this.name = str;
        start();
    }

    public final long getTime() {
        return TimeUtils.millis();
    }

    public final void start() {
        this.ms = getTime();
    }

    public void stop(long j, String str) {
        long time = getTime() - this.ms;
        this.ms = time;
        if (time >= j) {
            Gdx.app.log("TimeMeasure", this.name + ": " + this.ms + "ms " + str);
        }
    }

    public void stop() {
        stop(0L, "");
    }
}
