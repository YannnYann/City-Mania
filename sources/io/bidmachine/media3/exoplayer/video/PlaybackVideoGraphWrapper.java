package io.bidmachine.media3.exoplayer.video;

import android.content.Context;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.common.ColorInfo;
import io.bidmachine.media3.common.DebugViewProvider;
import io.bidmachine.media3.common.Format;
import io.bidmachine.media3.common.PreviewingVideoGraph;
import io.bidmachine.media3.common.SurfaceInfo;
import io.bidmachine.media3.common.VideoCompositorSettings;
import io.bidmachine.media3.common.VideoFrameProcessingException;
import io.bidmachine.media3.common.VideoFrameProcessor;
import io.bidmachine.media3.common.VideoGraph;
import io.bidmachine.media3.common.VideoSize;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.Clock;
import io.bidmachine.media3.common.util.HandlerWrapper;
import io.bidmachine.media3.common.util.Size;
import io.bidmachine.media3.common.util.TimedValueQueue;
import io.bidmachine.media3.common.util.Util;
import io.bidmachine.media3.exoplayer.Renderer;
import io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper;
import io.bidmachine.media3.exoplayer.video.VideoSink;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class PlaybackVideoGraphWrapper implements VideoGraph.Listener {
    public static final Executor NO_OP_EXECUTOR = new Executor() { // from class: io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda1
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            PlaybackVideoGraphWrapper.$r8$lambda$MohEgMqrHcCPcOvKc0SAQe9ebcI(runnable);
        }
    };
    public long bufferTimestampAdjustmentUs;
    public final Clock clock;
    public final List<Object> compositionEffects;
    public final VideoCompositorSettings compositorSettings;
    public final Context context;
    public Pair<Surface, Size> currentSurfaceAndSize;
    public final VideoSink defaultVideoSink;
    public long finalBufferPresentationTimeUs;
    public HandlerWrapper handler;
    public boolean hasSignaledEndOfCurrentInputStream;
    public final SparseArray<InputVideoSink> inputVideoSinks;
    public long lastOutputBufferPresentationTimeUs;
    public final CopyOnWriteArraySet<Listener> listeners;
    public long outputStreamStartPositionUs;
    public int pendingFlushCount;
    public final PreviewingVideoGraph.Factory previewingVideoGraphFactory;
    public int registeredVideoInputCount;
    public final boolean requestOpenGlToneMapping;
    public int state;
    public final TimedValueQueue<Long> streamStartPositionsUs;
    public int totalVideoInputCount;
    public final VideoSink.VideoFrameHandler videoFrameHandler;
    public PreviewingVideoGraph videoGraph;
    public Format videoGraphOutputFormat;
    public Renderer.WakeupListener wakeupListener;

    public interface Listener {
        void onFirstFrameRendered(PlaybackVideoGraphWrapper playbackVideoGraphWrapper);

        void onFrameDropped(PlaybackVideoGraphWrapper playbackVideoGraphWrapper);

        void onVideoSizeChanged(PlaybackVideoGraphWrapper playbackVideoGraphWrapper, VideoSize videoSize);
    }

    public static /* synthetic */ void $r8$lambda$MohEgMqrHcCPcOvKc0SAQe9ebcI(Runnable runnable) {
    }

    public static final class Builder {
        public boolean built;
        public final Context context;
        public PreviewingVideoGraph.Factory previewingVideoGraphFactory;
        public boolean requestOpenGlToneMapping;
        public VideoFrameProcessor.Factory videoFrameProcessorFactory;
        public final VideoFrameReleaseControl videoFrameReleaseControl;
        public List<Object> compositionEffects = ImmutableList.of();
        public VideoCompositorSettings compositorSettings = VideoCompositorSettings.DEFAULT;
        public Clock clock = Clock.DEFAULT;

        public Builder(Context context, VideoFrameReleaseControl videoFrameReleaseControl) {
            this.context = context.getApplicationContext();
            this.videoFrameReleaseControl = videoFrameReleaseControl;
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public PlaybackVideoGraphWrapper build() {
            Assertions.checkState(!this.built);
            if (this.previewingVideoGraphFactory == null) {
                if (this.videoFrameProcessorFactory == null) {
                    this.videoFrameProcessorFactory = new ReflectiveDefaultVideoFrameProcessorFactory();
                }
                this.previewingVideoGraphFactory = new ReflectivePreviewingSingleInputVideoGraphFactory(this.videoFrameProcessorFactory);
            }
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = new PlaybackVideoGraphWrapper(this);
            this.built = true;
            return playbackVideoGraphWrapper;
        }
    }

    public PlaybackVideoGraphWrapper(Builder builder) {
        this.context = builder.context;
        this.streamStartPositionsUs = new TimedValueQueue<>();
        this.previewingVideoGraphFactory = (PreviewingVideoGraph.Factory) Assertions.checkStateNotNull(builder.previewingVideoGraphFactory);
        this.inputVideoSinks = new SparseArray<>();
        this.compositionEffects = builder.compositionEffects;
        this.compositorSettings = builder.compositorSettings;
        Clock clock = builder.clock;
        this.clock = clock;
        this.defaultVideoSink = new DefaultVideoSink(builder.videoFrameReleaseControl, clock);
        this.videoFrameHandler = new VideoSink.VideoFrameHandler() { // from class: io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper.1
            @Override // io.bidmachine.media3.exoplayer.video.VideoSink.VideoFrameHandler
            public void render(long j) {
                ((PreviewingVideoGraph) Assertions.checkStateNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).renderOutputFrame(j);
            }

            @Override // io.bidmachine.media3.exoplayer.video.VideoSink.VideoFrameHandler
            public void skip() {
                ((PreviewingVideoGraph) Assertions.checkStateNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).renderOutputFrame(-2L);
            }
        };
        this.listeners = new CopyOnWriteArraySet<>();
        this.requestOpenGlToneMapping = builder.requestOpenGlToneMapping;
        this.videoGraphOutputFormat = new Format.Builder().build();
        this.lastOutputBufferPresentationTimeUs = -9223372036854775807L;
        this.finalBufferPresentationTimeUs = -9223372036854775807L;
        this.totalVideoInputCount = -1;
        this.state = 0;
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public VideoSink getSink(int i) {
        Assertions.checkState(!Util.contains(this.inputVideoSinks, i));
        InputVideoSink inputVideoSink = new InputVideoSink(this.context, i);
        addListener(inputVideoSink);
        this.inputVideoSinks.put(i, inputVideoSink);
        return inputVideoSink;
    }

    public void setOutputSurfaceInfo(Surface surface, Size size) {
        Pair<Surface, Size> pair = this.currentSurfaceAndSize;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((Size) this.currentSurfaceAndSize.second).equals(size)) {
            return;
        }
        this.currentSurfaceAndSize = Pair.create(surface, size);
        maybeSetOutputSurfaceInfo(surface, size.getWidth(), size.getHeight());
    }

    public void clearOutputSurfaceInfo() {
        Size size = Size.UNKNOWN;
        maybeSetOutputSurfaceInfo(null, size.getWidth(), size.getHeight());
        this.currentSurfaceAndSize = null;
    }

    public void release() {
        if (this.state == 2) {
            return;
        }
        HandlerWrapper handlerWrapper = this.handler;
        if (handlerWrapper != null) {
            handlerWrapper.removeCallbacksAndMessages(null);
        }
        PreviewingVideoGraph previewingVideoGraph = this.videoGraph;
        if (previewingVideoGraph != null) {
            previewingVideoGraph.release();
        }
        this.currentSurfaceAndSize = null;
        this.state = 2;
    }

    public final VideoFrameProcessor registerInput(Format format, int i) throws VideoSink.VideoSinkException {
        PlaybackVideoGraphWrapper playbackVideoGraphWrapper;
        PreviewingVideoGraph.Factory factory;
        Context context;
        DebugViewProvider debugViewProvider;
        if (i == 0) {
            Assertions.checkState(this.state == 0);
            ColorInfo adjustedInputColorInfo = getAdjustedInputColorInfo(format.colorInfo);
            if (this.requestOpenGlToneMapping) {
                adjustedInputColorInfo = ColorInfo.SDR_BT709_LIMITED;
            } else if (adjustedInputColorInfo.colorTransfer == 7 && Util.SDK_INT < 34) {
                adjustedInputColorInfo = adjustedInputColorInfo.buildUpon().setColorTransfer(6).build();
            }
            ColorInfo colorInfo = adjustedInputColorInfo;
            final HandlerWrapper handlerWrapperCreateHandler = this.clock.createHandler((Looper) Assertions.checkStateNotNull(Looper.myLooper()), null);
            this.handler = handlerWrapperCreateHandler;
            try {
                factory = this.previewingVideoGraphFactory;
                context = this.context;
                debugViewProvider = DebugViewProvider.NONE;
                Objects.requireNonNull(handlerWrapperCreateHandler);
                playbackVideoGraphWrapper = this;
            } catch (VideoFrameProcessingException e) {
                e = e;
            }
            try {
                PreviewingVideoGraph previewingVideoGraphCreate = factory.create(context, colorInfo, debugViewProvider, playbackVideoGraphWrapper, new Executor() { // from class: io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda0
                    @Override // java.util.concurrent.Executor
                    public final void execute(Runnable runnable) {
                        handlerWrapperCreateHandler.post(runnable);
                    }
                }, this.compositorSettings, this.compositionEffects, 0L);
                playbackVideoGraphWrapper.videoGraph = previewingVideoGraphCreate;
                previewingVideoGraphCreate.initialize();
                Pair<Surface, Size> pair = playbackVideoGraphWrapper.currentSurfaceAndSize;
                if (pair != null) {
                    Surface surface = (Surface) pair.first;
                    Size size = (Size) pair.second;
                    maybeSetOutputSurfaceInfo(surface, size.getWidth(), size.getHeight());
                }
                playbackVideoGraphWrapper.defaultVideoSink.initialize(format);
                playbackVideoGraphWrapper.state = 1;
            } catch (VideoFrameProcessingException e2) {
                e = e2;
                throw new VideoSink.VideoSinkException(e, format);
            }
        } else {
            playbackVideoGraphWrapper = this;
            if (!isInitialized()) {
                return null;
            }
        }
        try {
            ((PreviewingVideoGraph) Assertions.checkNotNull(playbackVideoGraphWrapper.videoGraph)).registerInput(i);
            playbackVideoGraphWrapper.registeredVideoInputCount++;
            VideoSink videoSink = playbackVideoGraphWrapper.defaultVideoSink;
            DefaultVideoSinkListener defaultVideoSinkListener = new DefaultVideoSinkListener();
            final HandlerWrapper handlerWrapper = (HandlerWrapper) Assertions.checkNotNull(playbackVideoGraphWrapper.handler);
            Objects.requireNonNull(handlerWrapper);
            videoSink.setListener(defaultVideoSinkListener, new Executor() { // from class: io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    handlerWrapper.post(runnable);
                }
            });
            return playbackVideoGraphWrapper.videoGraph.getProcessor(i);
        } catch (VideoFrameProcessingException e3) {
            throw new VideoSink.VideoSinkException(e3, format);
        }
    }

    public final boolean isInitialized() {
        return this.state == 1;
    }

    public void setTotalVideoInputCount(int i) {
        this.totalVideoInputCount = i;
    }

    public final void maybeSetOutputSurfaceInfo(Surface surface, int i, int i2) {
        PreviewingVideoGraph previewingVideoGraph = this.videoGraph;
        if (previewingVideoGraph == null) {
            return;
        }
        if (surface != null) {
            previewingVideoGraph.setOutputSurfaceInfo(new SurfaceInfo(surface, i, i2));
            this.defaultVideoSink.setOutputSurfaceInfo(surface, new Size(i, i2));
        } else {
            previewingVideoGraph.setOutputSurfaceInfo(null);
            this.defaultVideoSink.clearOutputSurfaceInfo();
        }
    }

    public final boolean isReady(boolean z) {
        return this.defaultVideoSink.isReady(z && this.pendingFlushCount == 0);
    }

    public final boolean isEnded() {
        return this.pendingFlushCount == 0 && this.hasSignaledEndOfCurrentInputStream && this.defaultVideoSink.isEnded();
    }

    public final void render(long j, long j2) throws VideoSink.VideoSinkException {
        this.defaultVideoSink.render(j, j2);
    }

    public final void flush(boolean z) {
        if (isInitialized()) {
            this.pendingFlushCount++;
            this.defaultVideoSink.flush(z);
            while (this.streamStartPositionsUs.size() > 1) {
                this.streamStartPositionsUs.pollFirst();
            }
            if (this.streamStartPositionsUs.size() == 1) {
                this.defaultVideoSink.setStreamTimestampInfo(((Long) Assertions.checkNotNull(this.streamStartPositionsUs.pollFirst())).longValue(), this.bufferTimestampAdjustmentUs);
            }
            this.lastOutputBufferPresentationTimeUs = -9223372036854775807L;
            this.finalBufferPresentationTimeUs = -9223372036854775807L;
            this.hasSignaledEndOfCurrentInputStream = false;
            ((HandlerWrapper) Assertions.checkStateNotNull(this.handler)).post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    PlaybackVideoGraphWrapper.$r8$lambda$wiSRpAAbQB4wWfXYuO3DiRQ3faY(this.f$0);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$wiSRpAAbQB4wWfXYuO3DiRQ3faY(PlaybackVideoGraphWrapper playbackVideoGraphWrapper) {
        playbackVideoGraphWrapper.pendingFlushCount--;
    }

    public final void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        this.defaultVideoSink.setVideoFrameMetadataListener(videoFrameMetadataListener);
    }

    public final void setPlaybackSpeed(float f) {
        this.defaultVideoSink.setPlaybackSpeed(f);
    }

    public final void setBufferTimestampAdjustment(long j) {
        this.bufferTimestampAdjustmentUs = j;
        this.defaultVideoSink.setStreamTimestampInfo(this.outputStreamStartPositionUs, j);
    }

    public final boolean shouldRenderToInputVideoSink() {
        int i = this.totalVideoInputCount;
        return i != -1 && i == this.registeredVideoInputCount;
    }

    public static ColorInfo getAdjustedInputColorInfo(ColorInfo colorInfo) {
        return (colorInfo == null || !colorInfo.isDataSpaceValid()) ? ColorInfo.SDR_BT709_LIMITED : colorInfo;
    }

    public final class InputVideoSink implements VideoSink, Listener {
        public long inputBufferTimestampAdjustmentUs;
        public Format inputFormat;
        public final int inputIndex;
        public int inputType;
        public boolean signaledEndOfStream;
        public VideoFrameProcessor videoFrameProcessor;
        public final int videoFrameProcessorMaxPendingFrameCount;
        public ImmutableList<Object> videoEffects = ImmutableList.of();
        public long lastBufferPresentationTimeUs = -9223372036854775807L;
        public VideoSink.Listener listener = VideoSink.Listener.NO_OP;
        public Executor listenerExecutor = PlaybackVideoGraphWrapper.NO_OP_EXECUTOR;

        public InputVideoSink(Context context, int i) {
            this.inputIndex = i;
            this.videoFrameProcessorMaxPendingFrameCount = Util.getMaxPendingFramesCountForMediaCodecDecoders(context);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void onRendererEnabled(boolean z) {
            PlaybackVideoGraphWrapper.this.defaultVideoSink.onRendererEnabled(z);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void onRendererDisabled() {
            PlaybackVideoGraphWrapper.this.defaultVideoSink.onRendererDisabled();
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void onRendererStarted() {
            PlaybackVideoGraphWrapper.this.defaultVideoSink.onRendererStarted();
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void onRendererStopped() {
            PlaybackVideoGraphWrapper.this.defaultVideoSink.onRendererStopped();
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void setListener(VideoSink.Listener listener, Executor executor) {
            this.listener = listener;
            this.listenerExecutor = executor;
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public boolean initialize(Format format) throws VideoSink.VideoSinkException {
            Assertions.checkState(!isInitialized());
            VideoFrameProcessor videoFrameProcessorRegisterInput = PlaybackVideoGraphWrapper.this.registerInput(format, this.inputIndex);
            this.videoFrameProcessor = videoFrameProcessorRegisterInput;
            return videoFrameProcessorRegisterInput != null;
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public boolean isInitialized() {
            return this.videoFrameProcessor != null;
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void flush(boolean z) {
            if (isInitialized()) {
                this.videoFrameProcessor.flush();
            }
            this.lastBufferPresentationTimeUs = -9223372036854775807L;
            PlaybackVideoGraphWrapper.this.flush(z);
            this.signaledEndOfStream = false;
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public boolean isReady(boolean z) {
            return PlaybackVideoGraphWrapper.this.isReady(z && isInitialized());
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void signalEndOfCurrentInputStream() {
            PlaybackVideoGraphWrapper.this.finalBufferPresentationTimeUs = this.lastBufferPresentationTimeUs;
            if (PlaybackVideoGraphWrapper.this.lastOutputBufferPresentationTimeUs >= PlaybackVideoGraphWrapper.this.finalBufferPresentationTimeUs) {
                PlaybackVideoGraphWrapper.this.defaultVideoSink.signalEndOfCurrentInputStream();
                PlaybackVideoGraphWrapper.this.hasSignaledEndOfCurrentInputStream = true;
            }
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public boolean isEnded() {
            return isInitialized() && PlaybackVideoGraphWrapper.this.isEnded();
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void onInputStreamChanged(int i, Format format, List<Object> list) {
            Assertions.checkState(isInitialized());
            if (i != 1 && i != 2) {
                throw new UnsupportedOperationException("Unsupported input type " + i);
            }
            setPendingVideoEffects(list);
            this.inputType = i;
            this.inputFormat = format;
            PlaybackVideoGraphWrapper.this.finalBufferPresentationTimeUs = -9223372036854775807L;
            PlaybackVideoGraphWrapper.this.hasSignaledEndOfCurrentInputStream = false;
            registerInputStream(format);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public Surface getInputSurface() {
            Assertions.checkState(isInitialized());
            return ((VideoFrameProcessor) Assertions.checkStateNotNull(this.videoFrameProcessor)).getInputSurface();
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
            PlaybackVideoGraphWrapper.this.setVideoFrameMetadataListener(videoFrameMetadataListener);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void setPlaybackSpeed(float f) {
            PlaybackVideoGraphWrapper.this.setPlaybackSpeed(f);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void setVideoEffects(List<Object> list) {
            if (this.videoEffects.equals(list)) {
                return;
            }
            setPendingVideoEffects(list);
            Format format = this.inputFormat;
            if (format != null) {
                registerInputStream(format);
            }
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void setStreamTimestampInfo(long j, long j2) {
            TimedValueQueue timedValueQueue = PlaybackVideoGraphWrapper.this.streamStartPositionsUs;
            long j3 = this.lastBufferPresentationTimeUs;
            timedValueQueue.add(j3 == -9223372036854775807L ? 0L : j3 + 1, Long.valueOf(j));
            this.inputBufferTimestampAdjustmentUs = j2;
            PlaybackVideoGraphWrapper.this.setBufferTimestampAdjustment(j2);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void setOutputSurfaceInfo(Surface surface, Size size) {
            PlaybackVideoGraphWrapper.this.setOutputSurfaceInfo(surface, size);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void clearOutputSurfaceInfo() {
            PlaybackVideoGraphWrapper.this.clearOutputSurfaceInfo();
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void setChangeFrameRateStrategy(int i) {
            PlaybackVideoGraphWrapper.this.defaultVideoSink.setChangeFrameRateStrategy(i);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void enableMayRenderStartOfStream() {
            PlaybackVideoGraphWrapper.this.defaultVideoSink.enableMayRenderStartOfStream();
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public boolean handleInputFrame(long j, boolean z, VideoSink.VideoFrameHandler videoFrameHandler) {
            Assertions.checkState(isInitialized());
            if (!PlaybackVideoGraphWrapper.this.shouldRenderToInputVideoSink() || ((VideoFrameProcessor) Assertions.checkStateNotNull(this.videoFrameProcessor)).getPendingInputFrameCount() >= this.videoFrameProcessorMaxPendingFrameCount || !((VideoFrameProcessor) Assertions.checkStateNotNull(this.videoFrameProcessor)).registerInputFrame()) {
                return false;
            }
            this.lastBufferPresentationTimeUs = j - this.inputBufferTimestampAdjustmentUs;
            videoFrameHandler.render(j * 1000);
            return true;
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void render(long j, long j2) throws VideoSink.VideoSinkException {
            PlaybackVideoGraphWrapper.this.render(j, j2);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void setWakeupListener(Renderer.WakeupListener wakeupListener) {
            PlaybackVideoGraphWrapper.this.wakeupListener = wakeupListener;
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void join(boolean z) {
            PlaybackVideoGraphWrapper.this.defaultVideoSink.join(z);
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink
        public void release() {
            PlaybackVideoGraphWrapper.this.release();
        }

        @Override // io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener
        public void onFirstFrameRendered(PlaybackVideoGraphWrapper playbackVideoGraphWrapper) {
            final VideoSink.Listener listener = this.listener;
            this.listenerExecutor.execute(new Runnable() { // from class: io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PlaybackVideoGraphWrapper.InputVideoSink.$r8$lambda$Pgj6dp8NYe3MCNN0A5DMxUhLmJo(this.f$0, listener);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$Pgj6dp8NYe3MCNN0A5DMxUhLmJo(InputVideoSink inputVideoSink, VideoSink.Listener listener) {
            inputVideoSink.getClass();
            listener.onFirstFrameRendered(inputVideoSink);
        }

        @Override // io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener
        public void onFrameDropped(PlaybackVideoGraphWrapper playbackVideoGraphWrapper) {
            final VideoSink.Listener listener = this.listener;
            this.listenerExecutor.execute(new Runnable() { // from class: io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    PlaybackVideoGraphWrapper.InputVideoSink.m2639$r8$lambda$M1nMuAjUYRIskfcJlWyZPdTc(this.f$0, listener);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$M1nMuA-jU-YRIsk-fcJlWyZPdTc, reason: not valid java name */
        public static /* synthetic */ void m2639$r8$lambda$M1nMuAjUYRIskfcJlWyZPdTc(InputVideoSink inputVideoSink, VideoSink.Listener listener) {
            inputVideoSink.getClass();
            listener.onFrameDropped((VideoSink) Assertions.checkStateNotNull(inputVideoSink));
        }

        @Override // io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener
        public void onVideoSizeChanged(PlaybackVideoGraphWrapper playbackVideoGraphWrapper, final VideoSize videoSize) {
            final VideoSink.Listener listener = this.listener;
            this.listenerExecutor.execute(new Runnable() { // from class: io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    PlaybackVideoGraphWrapper.InputVideoSink.$r8$lambda$QZN6pbRdMuJblMMAf8QFh1EoUUk(this.f$0, listener, videoSize);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$QZN6pbRdMuJblMMAf8QFh1EoUUk(InputVideoSink inputVideoSink, VideoSink.Listener listener, VideoSize videoSize) {
            inputVideoSink.getClass();
            listener.onVideoSizeChanged(inputVideoSink, videoSize);
        }

        public final void setPendingVideoEffects(List<Object> list) {
            if (PlaybackVideoGraphWrapper.this.previewingVideoGraphFactory.supportsMultipleInputs()) {
                this.videoEffects = ImmutableList.copyOf((Collection) list);
            } else {
                this.videoEffects = new ImmutableList.Builder().addAll((Iterable) list).addAll((Iterable) PlaybackVideoGraphWrapper.this.compositionEffects).build();
            }
        }

        public final void registerInputStream(Format format) {
            ((VideoFrameProcessor) Assertions.checkStateNotNull(this.videoFrameProcessor)).registerInputStream(this.inputType, format.buildUpon().setColorInfo(PlaybackVideoGraphWrapper.getAdjustedInputColorInfo(format.colorInfo)).build(), this.videoEffects, 0L);
        }
    }

    public final class DefaultVideoSinkListener implements VideoSink.Listener {
        public DefaultVideoSinkListener() {
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink.Listener
        public void onFirstFrameRendered(VideoSink videoSink) {
            Iterator it = PlaybackVideoGraphWrapper.this.listeners.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onFirstFrameRendered(PlaybackVideoGraphWrapper.this);
            }
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink.Listener
        public void onFrameDropped(VideoSink videoSink) {
            Iterator it = PlaybackVideoGraphWrapper.this.listeners.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onFrameDropped(PlaybackVideoGraphWrapper.this);
            }
        }

        @Override // io.bidmachine.media3.exoplayer.video.VideoSink.Listener
        public void onVideoSizeChanged(VideoSink videoSink, VideoSize videoSize) {
            Iterator it = PlaybackVideoGraphWrapper.this.listeners.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onVideoSizeChanged(PlaybackVideoGraphWrapper.this, videoSize);
            }
        }
    }

    public static final class ReflectivePreviewingSingleInputVideoGraphFactory implements PreviewingVideoGraph.Factory {
        public final VideoFrameProcessor.Factory videoFrameProcessorFactory;

        @Override // io.bidmachine.media3.common.PreviewingVideoGraph.Factory
        public boolean supportsMultipleInputs() {
            return false;
        }

        public ReflectivePreviewingSingleInputVideoGraphFactory(VideoFrameProcessor.Factory factory) {
            this.videoFrameProcessorFactory = factory;
        }

        @Override // io.bidmachine.media3.common.PreviewingVideoGraph.Factory
        public PreviewingVideoGraph create(Context context, ColorInfo colorInfo, DebugViewProvider debugViewProvider, VideoGraph.Listener listener, Executor executor, VideoCompositorSettings videoCompositorSettings, List<Object> list, long j) throws VideoFrameProcessingException {
            try {
                return ((PreviewingVideoGraph.Factory) Class.forName("io.bidmachine.media3.effect.PreviewingSingleInputVideoGraph$Factory").getConstructor(VideoFrameProcessor.Factory.class).newInstance(this.videoFrameProcessorFactory)).create(context, colorInfo, debugViewProvider, listener, executor, videoCompositorSettings, list, j);
            } catch (Exception e) {
                throw VideoFrameProcessingException.from(e);
            }
        }
    }

    public static final class ReflectiveDefaultVideoFrameProcessorFactory implements VideoFrameProcessor.Factory {
        public static final Supplier<VideoFrameProcessor.Factory> VIDEO_FRAME_PROCESSOR_FACTORY_SUPPLIER = Suppliers.memoize(new Supplier() { // from class: io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return PlaybackVideoGraphWrapper.ReflectiveDefaultVideoFrameProcessorFactory.$r8$lambda$CMzZd_bN2JGz_INB7gNJv0WwFys();
            }
        });

        public ReflectiveDefaultVideoFrameProcessorFactory() {
        }

        public static /* synthetic */ VideoFrameProcessor.Factory $r8$lambda$CMzZd_bN2JGz_INB7gNJv0WwFys() {
            try {
                Class<?> cls = Class.forName("io.bidmachine.media3.effect.DefaultVideoFrameProcessor$Factory$Builder");
                return (VideoFrameProcessor.Factory) Assertions.checkNotNull(cls.getMethod("build", new Class[0]).invoke(cls.getConstructor(new Class[0]).newInstance(new Object[0]), new Object[0]));
            } catch (Exception e) {
                throw new IllegalStateException(e);
            }
        }
    }
}
