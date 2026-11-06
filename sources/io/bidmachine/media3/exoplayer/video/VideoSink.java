package io.bidmachine.media3.exoplayer.video;

import android.view.Surface;
import io.bidmachine.media3.common.Format;
import io.bidmachine.media3.common.VideoSize;
import io.bidmachine.media3.common.util.Size;
import io.bidmachine.media3.exoplayer.Renderer;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public interface VideoSink {

    public interface Listener {
        public static final Listener NO_OP = new Listener() { // from class: io.bidmachine.media3.exoplayer.video.VideoSink.Listener.1
            @Override // io.bidmachine.media3.exoplayer.video.VideoSink.Listener
            public void onFirstFrameRendered(VideoSink videoSink) {
            }

            @Override // io.bidmachine.media3.exoplayer.video.VideoSink.Listener
            public void onFrameDropped(VideoSink videoSink) {
            }

            @Override // io.bidmachine.media3.exoplayer.video.VideoSink.Listener
            public void onVideoSizeChanged(VideoSink videoSink, VideoSize videoSize) {
            }
        };

        void onFirstFrameRendered(VideoSink videoSink);

        void onFrameDropped(VideoSink videoSink);

        void onVideoSizeChanged(VideoSink videoSink, VideoSize videoSize);
    }

    public interface VideoFrameHandler {
        void render(long j);

        void skip();
    }

    void clearOutputSurfaceInfo();

    void enableMayRenderStartOfStream();

    void flush(boolean z);

    Surface getInputSurface();

    boolean handleInputFrame(long j, boolean z, VideoFrameHandler videoFrameHandler);

    boolean initialize(Format format) throws VideoSinkException;

    boolean isEnded();

    boolean isInitialized();

    boolean isReady(boolean z);

    void join(boolean z);

    void onInputStreamChanged(int i, Format format, List<Object> list);

    void onRendererDisabled();

    void onRendererEnabled(boolean z);

    void onRendererStarted();

    void onRendererStopped();

    void release();

    void render(long j, long j2) throws VideoSinkException;

    void setChangeFrameRateStrategy(int i);

    void setListener(Listener listener, Executor executor);

    void setOutputSurfaceInfo(Surface surface, Size size);

    void setPlaybackSpeed(float f);

    void setStreamTimestampInfo(long j, long j2);

    void setVideoEffects(List<Object> list);

    void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

    void setWakeupListener(Renderer.WakeupListener wakeupListener);

    void signalEndOfCurrentInputStream();

    public static final class VideoSinkException extends Exception {
        public final Format format;

        public VideoSinkException(Throwable th, Format format) {
            super(th);
            this.format = format;
        }
    }
}
