package io.bidmachine.media3.exoplayer.video;

import io.bidmachine.media3.common.VideoSize;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.LongArrayQueue;
import io.bidmachine.media3.common.util.TimedValueQueue;
import io.bidmachine.media3.exoplayer.ExoPlaybackException;
import io.bidmachine.media3.exoplayer.video.VideoFrameReleaseControl;

/* JADX INFO: loaded from: classes5.dex */
public final class VideoFrameRenderControl {
    public final FrameRenderer frameRenderer;
    public long outputStreamStartPositionUs;
    public final VideoFrameReleaseControl videoFrameReleaseControl;
    public final VideoFrameReleaseControl.FrameReleaseInfo videoFrameReleaseInfo = new VideoFrameReleaseControl.FrameReleaseInfo();
    public final TimedValueQueue<VideoSize> videoSizes = new TimedValueQueue<>();
    public final TimedValueQueue<Long> streamStartPositionsUs = new TimedValueQueue<>();
    public final LongArrayQueue presentationTimestampsUs = new LongArrayQueue();
    public long latestInputPresentationTimeUs = -9223372036854775807L;
    public VideoSize outputVideoSize = VideoSize.UNKNOWN;
    public long latestOutputPresentationTimeUs = -9223372036854775807L;
    public long lastPresentationTimeUs = -9223372036854775807L;

    public interface FrameRenderer {
        void dropFrame();

        void onVideoSizeChanged(VideoSize videoSize);

        void renderFrame(long j, long j2, boolean z);
    }

    public VideoFrameRenderControl(FrameRenderer frameRenderer, VideoFrameReleaseControl videoFrameReleaseControl) {
        this.frameRenderer = frameRenderer;
        this.videoFrameReleaseControl = videoFrameReleaseControl;
    }

    public void flush() {
        this.presentationTimestampsUs.clear();
        this.latestInputPresentationTimeUs = -9223372036854775807L;
        this.latestOutputPresentationTimeUs = -9223372036854775807L;
        this.lastPresentationTimeUs = -9223372036854775807L;
        if (this.streamStartPositionsUs.size() > 0) {
            Long l = (Long) getLastAndClear(this.streamStartPositionsUs);
            l.longValue();
            this.streamStartPositionsUs.add(0L, l);
        }
        if (this.videoSizes.size() > 0) {
            this.videoSizes.add(0L, (VideoSize) getLastAndClear(this.videoSizes));
        }
    }

    public void render(long j, long j2) throws ExoPlaybackException {
        while (!this.presentationTimestampsUs.isEmpty()) {
            long jElement = this.presentationTimestampsUs.element();
            if (maybeUpdateOutputStreamStartPosition(jElement)) {
                this.videoFrameReleaseControl.onProcessedStreamChange();
            }
            int frameReleaseAction = this.videoFrameReleaseControl.getFrameReleaseAction(jElement, j, j2, this.outputStreamStartPositionUs, false, false, this.videoFrameReleaseInfo);
            if (frameReleaseAction == 0 || frameReleaseAction == 1) {
                this.latestOutputPresentationTimeUs = jElement;
                renderFrame(frameReleaseAction == 0);
            } else if (frameReleaseAction == 2 || frameReleaseAction == 3) {
                this.latestOutputPresentationTimeUs = jElement;
                dropFrame();
            } else {
                if (frameReleaseAction != 4) {
                    if (frameReleaseAction != 5) {
                        throw new IllegalStateException(String.valueOf(frameReleaseAction));
                    }
                    return;
                }
                this.latestOutputPresentationTimeUs = jElement;
            }
        }
    }

    public void onVideoSizeChanged(int i, int i2) {
        TimedValueQueue<VideoSize> timedValueQueue = this.videoSizes;
        long j = this.latestInputPresentationTimeUs;
        timedValueQueue.add(j == -9223372036854775807L ? 0L : j + 1, new VideoSize(i, i2));
    }

    public void onStreamStartPositionChanged(long j) {
        TimedValueQueue<Long> timedValueQueue = this.streamStartPositionsUs;
        long j2 = this.latestInputPresentationTimeUs;
        timedValueQueue.add(j2 == -9223372036854775807L ? 0L : j2 + 1, Long.valueOf(j));
    }

    public void onFrameAvailableForRendering(long j) {
        this.presentationTimestampsUs.add(j);
        this.latestInputPresentationTimeUs = j;
        this.lastPresentationTimeUs = -9223372036854775807L;
    }

    public void signalEndOfInput() {
        this.lastPresentationTimeUs = this.latestInputPresentationTimeUs;
    }

    public boolean isEnded() {
        long j = this.lastPresentationTimeUs;
        return j != -9223372036854775807L && this.latestOutputPresentationTimeUs == j;
    }

    public final void dropFrame() {
        this.presentationTimestampsUs.remove();
        this.frameRenderer.dropFrame();
    }

    public final void renderFrame(boolean z) {
        long jRemove = this.presentationTimestampsUs.remove();
        if (maybeUpdateOutputVideoSize(jRemove)) {
            this.frameRenderer.onVideoSizeChanged(this.outputVideoSize);
        }
        this.frameRenderer.renderFrame(z ? -1L : this.videoFrameReleaseInfo.getReleaseTimeNs(), jRemove, this.videoFrameReleaseControl.onFrameReleasedIsFirstFrame());
    }

    public final boolean maybeUpdateOutputStreamStartPosition(long j) {
        Long lPollFloor = this.streamStartPositionsUs.pollFloor(j);
        if (lPollFloor == null || lPollFloor.longValue() == this.outputStreamStartPositionUs) {
            return false;
        }
        this.outputStreamStartPositionUs = lPollFloor.longValue();
        return true;
    }

    public final boolean maybeUpdateOutputVideoSize(long j) {
        VideoSize videoSizePollFloor = this.videoSizes.pollFloor(j);
        if (videoSizePollFloor == null || videoSizePollFloor.equals(VideoSize.UNKNOWN) || videoSizePollFloor.equals(this.outputVideoSize)) {
            return false;
        }
        this.outputVideoSize = videoSizePollFloor;
        return true;
    }

    public static <T> T getLastAndClear(TimedValueQueue<T> timedValueQueue) {
        Assertions.checkArgument(timedValueQueue.size() > 0);
        while (timedValueQueue.size() > 1) {
            timedValueQueue.pollFirst();
        }
        return (T) Assertions.checkNotNull(timedValueQueue.pollFirst());
    }
}
