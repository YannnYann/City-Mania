package io.bidmachine.media3.exoplayer.video;

import android.media.MediaFormat;
import android.view.Surface;
import io.bidmachine.media3.common.Format;
import io.bidmachine.media3.common.VideoSize;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.Clock;
import io.bidmachine.media3.common.util.Size;
import io.bidmachine.media3.exoplayer.ExoPlaybackException;
import io.bidmachine.media3.exoplayer.Renderer;
import io.bidmachine.media3.exoplayer.video.DefaultVideoSink;
import io.bidmachine.media3.exoplayer.video.VideoFrameRenderControl;
import io.bidmachine.media3.exoplayer.video.VideoSink;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class DefaultVideoSink implements VideoSink {
    public long bufferTimestampAdjustmentUs;
    public final Clock clock;
    public Format inputFormat;
    public VideoSink.Listener listener;
    public Executor listenerExecutor;
    public Surface outputSurface;
    public long streamStartPositionUs;
    public final Queue<VideoSink.VideoFrameHandler> videoFrameHandlers;
    public VideoFrameMetadataListener videoFrameMetadataListener;
    public final VideoFrameReleaseControl videoFrameReleaseControl;
    public final VideoFrameRenderControl videoFrameRenderControl;

    public static /* synthetic */ void $r8$lambda$EIDR9RwgqWYplEniqvHyzi2D4mM(long j, long j2, Format format, MediaFormat mediaFormat) {
    }

    public static /* synthetic */ void $r8$lambda$gL1WB_KGj6rA09EYbUSnI7ENDF4(Runnable runnable) {
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public boolean initialize(Format format) {
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public boolean isInitialized() {
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void release() {
    }

    public DefaultVideoSink(VideoFrameReleaseControl videoFrameReleaseControl, Clock clock) {
        this.videoFrameReleaseControl = videoFrameReleaseControl;
        videoFrameReleaseControl.setClock(clock);
        this.clock = clock;
        this.videoFrameRenderControl = new VideoFrameRenderControl(new FrameRendererImpl(), videoFrameReleaseControl);
        this.videoFrameHandlers = new ArrayDeque();
        this.inputFormat = new Format.Builder().build();
        this.streamStartPositionUs = -9223372036854775807L;
        this.listener = VideoSink.Listener.NO_OP;
        this.listenerExecutor = new Executor() { // from class: io.bidmachine.media3.exoplayer.video.DefaultVideoSink$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                DefaultVideoSink.$r8$lambda$gL1WB_KGj6rA09EYbUSnI7ENDF4(runnable);
            }
        };
        this.videoFrameMetadataListener = new VideoFrameMetadataListener() { // from class: io.bidmachine.media3.exoplayer.video.DefaultVideoSink$$ExternalSyntheticLambda1
            @Override // io.bidmachine.media3.exoplayer.video.VideoFrameMetadataListener
            public final void onVideoFrameAboutToBeRendered(long j, long j2, Format format, MediaFormat mediaFormat) {
                DefaultVideoSink.$r8$lambda$EIDR9RwgqWYplEniqvHyzi2D4mM(j, j2, format, mediaFormat);
            }
        };
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void onRendererEnabled(boolean z) {
        this.videoFrameReleaseControl.onEnabled(z);
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void onRendererDisabled() {
        this.videoFrameReleaseControl.onDisabled();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void onRendererStarted() {
        this.videoFrameReleaseControl.onStarted();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void onRendererStopped() {
        this.videoFrameReleaseControl.onStopped();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void setListener(VideoSink.Listener listener, Executor executor) {
        this.listener = listener;
        this.listenerExecutor = executor;
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void flush(boolean z) {
        if (z) {
            this.videoFrameReleaseControl.reset();
        }
        this.videoFrameRenderControl.flush();
        this.videoFrameHandlers.clear();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public boolean isReady(boolean z) {
        return this.videoFrameReleaseControl.isReady(z);
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void signalEndOfCurrentInputStream() {
        this.videoFrameRenderControl.signalEndOfInput();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public boolean isEnded() {
        return this.videoFrameRenderControl.isEnded();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public Surface getInputSurface() {
        return (Surface) Assertions.checkStateNotNull(this.outputSurface);
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        this.videoFrameMetadataListener = videoFrameMetadataListener;
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void setPlaybackSpeed(float f) {
        this.videoFrameReleaseControl.setPlaybackSpeed(f);
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void setVideoEffects(List<Object> list) {
        throw new UnsupportedOperationException();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void setStreamTimestampInfo(long j, long j2) {
        if (j != this.streamStartPositionUs) {
            this.videoFrameRenderControl.onStreamStartPositionChanged(j);
            this.streamStartPositionUs = j;
        }
        this.bufferTimestampAdjustmentUs = j2;
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void setOutputSurfaceInfo(Surface surface, Size size) {
        this.outputSurface = surface;
        this.videoFrameReleaseControl.setOutputSurface(surface);
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void clearOutputSurfaceInfo() {
        this.outputSurface = null;
        this.videoFrameReleaseControl.setOutputSurface(null);
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void setChangeFrameRateStrategy(int i) {
        this.videoFrameReleaseControl.setChangeFrameRateStrategy(i);
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void enableMayRenderStartOfStream() {
        this.videoFrameReleaseControl.allowReleaseFirstFrameBeforeStarted();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void onInputStreamChanged(int i, Format format, List<Object> list) {
        Assertions.checkState(list.isEmpty());
        int i2 = format.width;
        Format format2 = this.inputFormat;
        if (i2 != format2.width || format.height != format2.height) {
            this.videoFrameRenderControl.onVideoSizeChanged(i2, format.height);
        }
        float f = format.frameRate;
        if (f != this.inputFormat.frameRate) {
            this.videoFrameReleaseControl.setFrameRate(f);
        }
        this.inputFormat = format;
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public boolean handleInputFrame(long j, boolean z, VideoSink.VideoFrameHandler videoFrameHandler) {
        this.videoFrameHandlers.add(videoFrameHandler);
        this.videoFrameRenderControl.onFrameAvailableForRendering(j - this.bufferTimestampAdjustmentUs);
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void render(long j, long j2) throws VideoSink.VideoSinkException {
        try {
            this.videoFrameRenderControl.render(j, j2);
        } catch (ExoPlaybackException e) {
            throw new VideoSink.VideoSinkException(e, this.inputFormat);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void setWakeupListener(Renderer.WakeupListener wakeupListener) {
        throw new UnsupportedOperationException();
    }

    @Override // io.bidmachine.media3.exoplayer.video.VideoSink
    public void join(boolean z) {
        this.videoFrameReleaseControl.join(z);
    }

    public final class FrameRendererImpl implements VideoFrameRenderControl.FrameRenderer {
        public Format outputFormat;

        public FrameRendererImpl() {
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoFrameRenderControl.FrameRenderer
        public void onVideoSizeChanged(final VideoSize videoSize) {
            this.outputFormat = new Format.Builder().setWidth(videoSize.width).setHeight(videoSize.height).setSampleMimeType("video/raw").build();
            DefaultVideoSink.this.listenerExecutor.execute(new Runnable() { // from class: io.bidmachine.media3.exoplayer.video.DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultVideoSink.FrameRendererImpl frameRendererImpl = this.f$0;
                    DefaultVideoSink.this.listener.onVideoSizeChanged(DefaultVideoSink.this, videoSize);
                }
            });
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoFrameRenderControl.FrameRenderer
        public void renderFrame(long j, long j2, boolean z) {
            if (z && DefaultVideoSink.this.outputSurface != null) {
                DefaultVideoSink.this.listenerExecutor.execute(new Runnable() { // from class: io.bidmachine.media3.exoplayer.video.DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultVideoSink.FrameRendererImpl frameRendererImpl = this.f$0;
                        DefaultVideoSink.this.listener.onFirstFrameRendered(DefaultVideoSink.this);
                    }
                });
            }
            Format formatBuild = this.outputFormat;
            if (formatBuild == null) {
                formatBuild = new Format.Builder().build();
            }
            DefaultVideoSink.this.videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j2, DefaultVideoSink.this.clock.nanoTime(), formatBuild, null);
            ((VideoSink.VideoFrameHandler) DefaultVideoSink.this.videoFrameHandlers.remove()).render(j);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoFrameRenderControl.FrameRenderer
        public void dropFrame() {
            DefaultVideoSink.this.listenerExecutor.execute(new Runnable() { // from class: io.bidmachine.media3.exoplayer.video.DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultVideoSink.FrameRendererImpl frameRendererImpl = this.f$0;
                    DefaultVideoSink.this.listener.onFrameDropped(DefaultVideoSink.this);
                }
            });
            ((VideoSink.VideoFrameHandler) DefaultVideoSink.this.videoFrameHandlers.remove()).skip();
        }
    }
}
