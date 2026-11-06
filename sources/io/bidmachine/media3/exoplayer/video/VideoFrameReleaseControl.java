package io.bidmachine.media3.exoplayer.video;

import android.content.Context;
import android.view.Surface;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.Clock;
import io.bidmachine.media3.common.util.Util;
import io.bidmachine.media3.exoplayer.ExoPlaybackException;

/* JADX INFO: loaded from: classes5.dex */
public final class VideoFrameReleaseControl {
    public final long allowedJoiningTimeMs;
    public boolean frameReadyWithoutSurface;
    public final VideoFrameReleaseHelper frameReleaseHelper;
    public final FrameTimingEvaluator frameTimingEvaluator;
    public boolean hasOutputSurface;
    public boolean joiningRenderNextFrameImmediately;
    public long lastReleaseRealtimeUs;
    public boolean started;
    public int firstFrameState = 0;
    public long initialPositionUs = -9223372036854775807L;
    public long lastPresentationTimeUs = -9223372036854775807L;
    public long joiningDeadlineMs = -9223372036854775807L;
    public float playbackSpeed = 1.0f;
    public Clock clock = Clock.DEFAULT;

    public interface FrameTimingEvaluator {
        boolean shouldDropFrame(long j, long j2, boolean z);

        boolean shouldForceReleaseFrame(long j, long j2);

        boolean shouldIgnoreFrame(long j, long j2, long j3, boolean z, boolean z2) throws ExoPlaybackException;
    }

    public static class FrameReleaseInfo {
        public long earlyUs = -9223372036854775807L;
        public long releaseTimeNs = -9223372036854775807L;

        public long getEarlyUs() {
            return this.earlyUs;
        }

        public long getReleaseTimeNs() {
            return this.releaseTimeNs;
        }

        public final void reset() {
            this.earlyUs = -9223372036854775807L;
            this.releaseTimeNs = -9223372036854775807L;
        }
    }

    public VideoFrameReleaseControl(Context context, FrameTimingEvaluator frameTimingEvaluator, long j) {
        this.frameTimingEvaluator = frameTimingEvaluator;
        this.allowedJoiningTimeMs = j;
        this.frameReleaseHelper = new VideoFrameReleaseHelper(context);
    }

    public void onEnabled(boolean z) {
        this.firstFrameState = z ? 1 : 0;
    }

    public void onDisabled() {
        lowerFirstFrameState(0);
    }

    public void onStarted() {
        this.started = true;
        this.lastReleaseRealtimeUs = Util.msToUs(this.clock.elapsedRealtime());
        this.frameReleaseHelper.onStarted();
    }

    public void onStopped() {
        this.started = false;
        this.joiningDeadlineMs = -9223372036854775807L;
        this.frameReleaseHelper.onStopped();
    }

    public void onProcessedStreamChange() {
        lowerFirstFrameState(2);
    }

    public void setOutputSurface(Surface surface) {
        this.hasOutputSurface = surface != null;
        this.frameReadyWithoutSurface = false;
        this.frameReleaseHelper.onSurfaceChanged(surface);
        lowerFirstFrameState(1);
    }

    public void setFrameRate(float f) {
        this.frameReleaseHelper.onFormatChanged(f);
    }

    public boolean onFrameReleasedIsFirstFrame() {
        boolean z = this.firstFrameState != 3;
        this.firstFrameState = 3;
        this.lastReleaseRealtimeUs = Util.msToUs(this.clock.elapsedRealtime());
        return z;
    }

    public void setClock(Clock clock) {
        this.clock = clock;
    }

    public void allowReleaseFirstFrameBeforeStarted() {
        if (this.firstFrameState == 0) {
            this.firstFrameState = 1;
        }
    }

    public boolean isReady(boolean z) {
        if (z && (this.firstFrameState == 3 || (!this.hasOutputSurface && this.frameReadyWithoutSurface))) {
            this.joiningDeadlineMs = -9223372036854775807L;
            return true;
        }
        if (this.joiningDeadlineMs == -9223372036854775807L) {
            return false;
        }
        if (this.clock.elapsedRealtime() < this.joiningDeadlineMs) {
            return true;
        }
        this.joiningDeadlineMs = -9223372036854775807L;
        return false;
    }

    public void join(boolean z) {
        this.joiningRenderNextFrameImmediately = z;
        this.joiningDeadlineMs = this.allowedJoiningTimeMs > 0 ? this.clock.elapsedRealtime() + this.allowedJoiningTimeMs : -9223372036854775807L;
    }

    public int getFrameReleaseAction(long j, long j2, long j3, long j4, boolean z, boolean z2, FrameReleaseInfo frameReleaseInfo) throws ExoPlaybackException {
        frameReleaseInfo.reset();
        if (this.initialPositionUs == -9223372036854775807L) {
            this.initialPositionUs = j2;
        }
        if (this.lastPresentationTimeUs != j) {
            this.frameReleaseHelper.onNextFrame(j);
            this.lastPresentationTimeUs = j;
        }
        frameReleaseInfo.earlyUs = calculateEarlyTimeUs(j2, j3, j);
        if (z && !z2) {
            return 3;
        }
        if (this.hasOutputSurface) {
            if (shouldForceRelease(j2, frameReleaseInfo.earlyUs, j4)) {
                return 0;
            }
            if (!this.started || j2 == this.initialPositionUs) {
                return 5;
            }
            long jNanoTime = this.clock.nanoTime();
            frameReleaseInfo.releaseTimeNs = this.frameReleaseHelper.adjustReleaseTime((frameReleaseInfo.earlyUs * 1000) + jNanoTime);
            frameReleaseInfo.earlyUs = (frameReleaseInfo.releaseTimeNs - jNanoTime) / 1000;
            boolean z3 = (this.joiningDeadlineMs == -9223372036854775807L || this.joiningRenderNextFrameImmediately) ? false : true;
            if (this.frameTimingEvaluator.shouldIgnoreFrame(frameReleaseInfo.earlyUs, j2, j3, z2, z3)) {
                return 4;
            }
            return this.frameTimingEvaluator.shouldDropFrame(frameReleaseInfo.earlyUs, j3, z2) ? z3 ? 3 : 2 : frameReleaseInfo.earlyUs > 50000 ? 5 : 1;
        }
        this.frameReadyWithoutSurface = true;
        if (this.frameTimingEvaluator.shouldIgnoreFrame(frameReleaseInfo.earlyUs, j2, j3, z2, true)) {
            return 4;
        }
        return (!this.started || frameReleaseInfo.earlyUs >= 30000) ? 5 : 3;
    }

    public void reset() {
        this.frameReleaseHelper.onPositionReset();
        this.lastPresentationTimeUs = -9223372036854775807L;
        this.initialPositionUs = -9223372036854775807L;
        lowerFirstFrameState(1);
        this.joiningDeadlineMs = -9223372036854775807L;
    }

    public void setChangeFrameRateStrategy(int i) {
        this.frameReleaseHelper.setChangeFrameRateStrategy(i);
    }

    public void setPlaybackSpeed(float f) {
        Assertions.checkArgument(f > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        if (f == this.playbackSpeed) {
            return;
        }
        this.playbackSpeed = f;
        this.frameReleaseHelper.onPlaybackSpeed(f);
    }

    public final void lowerFirstFrameState(int i) {
        this.firstFrameState = Math.min(this.firstFrameState, i);
    }

    public final long calculateEarlyTimeUs(long j, long j2, long j3) {
        long j4 = (long) ((j3 - j) / ((double) this.playbackSpeed));
        return this.started ? j4 - (Util.msToUs(this.clock.elapsedRealtime()) - j2) : j4;
    }

    public final boolean shouldForceRelease(long j, long j2, long j3) {
        if (this.joiningDeadlineMs != -9223372036854775807L && !this.joiningRenderNextFrameImmediately) {
            return false;
        }
        int i = this.firstFrameState;
        if (i == 0) {
            return this.started;
        }
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return j >= j3;
        }
        if (i == 3) {
            return this.started && this.frameTimingEvaluator.shouldForceReleaseFrame(j2, Util.msToUs(this.clock.elapsedRealtime()) - this.lastReleaseRealtimeUs);
        }
        throw new IllegalStateException();
    }
}
