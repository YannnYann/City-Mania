package io.blueflower.stapel2d.util;

import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes5.dex */
public class VisibilityAnimationTimer {
    public long appearingTime;
    public long disappearingTime;
    public long issueTime;
    public boolean targetState;

    public VisibilityAnimationTimer(boolean z, long j) {
        this.targetState = z;
        this.appearingTime = j;
        this.disappearingTime = j;
    }

    public void setState(boolean z) {
        if (z != this.targetState) {
            this.targetState = z;
            this.issueTime = getTime();
        }
    }

    public boolean getTargetState() {
        return this.targetState;
    }

    public float getState() {
        if (this.issueTime != 0) {
            long time = getTime() - this.issueTime;
            if (this.targetState) {
                long j = this.appearingTime;
                if (time < j) {
                    return Math.min(time / j, 1.0f);
                }
            } else if (time < this.disappearingTime) {
                return Math.max(1.0f - (time / this.appearingTime), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            }
            this.issueTime = 0L;
        }
        if (this.targetState) {
            return 1.0f;
        }
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public static long getTime() {
        return TimeUtils.millis();
    }
}
