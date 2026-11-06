package io.blueflower.stapel2d.util;

import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes5.dex */
public class AnimationTimer {
    public long duration;
    public boolean running;
    public long startTime;
    public boolean state;

    public AnimationTimer(long j) {
        this.duration = j;
    }

    public void reset() {
        this.running = true;
        this.startTime = getTime();
        this.state = false;
    }

    public float getProgress() {
        if (this.running) {
            long time = getTime() - this.startTime;
            if (time >= 0) {
                long j = this.duration;
                if (time <= j) {
                    return time / j;
                }
            }
            this.running = false;
            this.state = true;
            return 1.0f;
        }
        if (this.state) {
            return 1.0f;
        }
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public final long getTime() {
        return TimeUtils.millis();
    }
}
