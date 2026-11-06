package org.chromium.net.telemetry;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes5.dex */
public final class RateLimiter {
    public int mSamplesLoggedDuringSecond;
    public final int mSamplesPerSeconds;
    public final Object mLock = new Object();
    public long mLastPermitMillis = Long.MIN_VALUE;

    public RateLimiter(int samplesPerSeconds) {
        if (samplesPerSeconds <= 0) {
            throw new IllegalArgumentException("Expect sample rate to be > 0 sample(s) per second");
        }
        this.mSamplesPerSeconds = samplesPerSeconds;
    }

    public boolean tryAcquire() {
        synchronized (this.mLock) {
            try {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (this.mLastPermitMillis + 1000 <= jElapsedRealtime) {
                    this.mSamplesLoggedDuringSecond = 1;
                    this.mLastPermitMillis = jElapsedRealtime;
                    return true;
                }
                int i = this.mSamplesLoggedDuringSecond;
                if (i >= this.mSamplesPerSeconds) {
                    return false;
                }
                this.mSamplesLoggedDuringSecond = i + 1;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
