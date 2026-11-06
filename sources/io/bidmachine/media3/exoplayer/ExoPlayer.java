package io.bidmachine.media3.exoplayer;

import android.content.Context;
import android.os.Looper;
import com.google.common.base.Function;
import com.google.common.base.Supplier;
import com.unity3d.ads.core.domain.WebViewScreenCapture;
import io.bidmachine.media3.common.AudioAttributes;
import io.bidmachine.media3.common.Player;
import io.bidmachine.media3.common.PriorityTaskManager;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.Clock;
import io.bidmachine.media3.common.util.Util;
import io.bidmachine.media3.exoplayer.DefaultLivePlaybackSpeedControl;
import io.bidmachine.media3.exoplayer.ExoPlayer;
import io.bidmachine.media3.exoplayer.analytics.AnalyticsCollector;
import io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import io.bidmachine.media3.exoplayer.image.ImageOutput;
import io.bidmachine.media3.exoplayer.source.DefaultMediaSourceFactory;
import io.bidmachine.media3.exoplayer.source.MediaSource;
import io.bidmachine.media3.exoplayer.trackselection.DefaultTrackSelector;
import io.bidmachine.media3.exoplayer.trackselection.TrackSelector;
import io.bidmachine.media3.exoplayer.upstream.BandwidthMeter;
import io.bidmachine.media3.exoplayer.upstream.DefaultBandwidthMeter;
import io.bidmachine.media3.extractor.DefaultExtractorsFactory;

/* JADX INFO: loaded from: classes5.dex */
public interface ExoPlayer extends Player {

    public interface AudioOffloadListener {
        default void onOffloadedPlayback(boolean z) {
        }

        default void onSleepingForOffloadChanged(boolean z) {
        }
    }

    @Override // io.bidmachine.media3.common.Player
    ExoPlaybackException getPlayerError();

    void release();

    void setImageOutput(ImageOutput imageOutput);

    public static class PreloadConfiguration {
        public static final PreloadConfiguration DEFAULT = new PreloadConfiguration(-9223372036854775807L);
        public final long targetPreloadDurationUs;

        public PreloadConfiguration(long j) {
            this.targetPreloadDurationUs = j;
        }
    }

    public static final class Builder {
        public Function<Clock, AnalyticsCollector> analyticsCollectorFunction;
        public AudioAttributes audioAttributes;
        public Supplier<BandwidthMeter> bandwidthMeterSupplier;
        public boolean buildCalled;
        public Clock clock;
        public final Context context;
        public long detachSurfaceTimeoutMs;
        public boolean deviceVolumeControlEnabled;
        public boolean dynamicSchedulingEnabled;
        public long foregroundModeTimeoutMs;
        public boolean handleAudioBecomingNoisy;
        public boolean handleAudioFocus;
        public LivePlaybackSpeedControl livePlaybackSpeedControl;
        public Supplier<LoadControl> loadControlSupplier;
        public Looper looper;
        public long maxSeekToPreviousPositionMs;
        public Supplier<MediaSource.Factory> mediaSourceFactorySupplier;
        public boolean pauseAtEndOfMediaItems;
        public PlaybackLooperProvider playbackLooperProvider;
        public String playerName;
        public int priority;
        public PriorityTaskManager priorityTaskManager;
        public long releaseTimeoutMs;
        public Supplier<RenderersFactory> renderersFactorySupplier;
        public long seekBackIncrementMs;
        public long seekForwardIncrementMs;
        public SeekParameters seekParameters;
        public boolean skipSilenceEnabled;
        public SuitableOutputChecker suitableOutputChecker;
        public boolean suppressPlaybackOnUnsuitableOutput;
        public Supplier<TrackSelector> trackSelectorSupplier;
        public boolean useLazyPreparation;
        public boolean usePlatformDiagnostics;
        public int videoChangeFrameRateStrategy;
        public int videoScalingMode;
        public int wakeMode;

        public Builder(final Context context) {
            this(context, new Supplier() { // from class: io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.$r8$lambda$TESBDVbU6dlwA9awNTOfDngeZIk(context);
                }
            }, new Supplier() { // from class: io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda1
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.$r8$lambda$cdJjI1bk3lOH_6InCHAeAnmBXv8(context);
                }
            });
        }

        public static /* synthetic */ RenderersFactory $r8$lambda$TESBDVbU6dlwA9awNTOfDngeZIk(Context context) {
            return new DefaultRenderersFactory(context);
        }

        public static /* synthetic */ MediaSource.Factory $r8$lambda$cdJjI1bk3lOH_6InCHAeAnmBXv8(Context context) {
            return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
        }

        public Builder(final Context context, Supplier<RenderersFactory> supplier, Supplier<MediaSource.Factory> supplier2) {
            this(context, supplier, supplier2, new Supplier() { // from class: io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda2
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.m2560$r8$lambda$yYT6Z1wzML7l7NrPaghRpFOEM(context);
                }
            }, new Supplier() { // from class: io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda3
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return new DefaultLoadControl();
                }
            }, new Supplier() { // from class: io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda4
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return DefaultBandwidthMeter.getSingletonInstance(context);
                }
            }, new Function() { // from class: io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda5
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return new DefaultAnalyticsCollector((Clock) obj);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$yYT6Z1wzML7l7-NrPagh-RpFOEM, reason: not valid java name */
        public static /* synthetic */ TrackSelector m2560$r8$lambda$yYT6Z1wzML7l7NrPaghRpFOEM(Context context) {
            return new DefaultTrackSelector(context);
        }

        public Builder(Context context, Supplier<RenderersFactory> supplier, Supplier<MediaSource.Factory> supplier2, Supplier<TrackSelector> supplier3, Supplier<LoadControl> supplier4, Supplier<BandwidthMeter> supplier5, Function<Clock, AnalyticsCollector> function) {
            this.context = (Context) Assertions.checkNotNull(context);
            this.renderersFactorySupplier = supplier;
            this.mediaSourceFactorySupplier = supplier2;
            this.trackSelectorSupplier = supplier3;
            this.loadControlSupplier = supplier4;
            this.bandwidthMeterSupplier = supplier5;
            this.analyticsCollectorFunction = function;
            this.looper = Util.getCurrentOrMainLooper();
            this.audioAttributes = AudioAttributes.DEFAULT;
            this.wakeMode = 0;
            this.videoScalingMode = 1;
            this.videoChangeFrameRateStrategy = 0;
            this.useLazyPreparation = true;
            this.seekParameters = SeekParameters.DEFAULT;
            this.seekBackIncrementMs = 5000L;
            this.seekForwardIncrementMs = 15000L;
            this.maxSeekToPreviousPositionMs = 3000L;
            this.livePlaybackSpeedControl = new DefaultLivePlaybackSpeedControl.Builder().build();
            this.clock = Clock.DEFAULT;
            this.releaseTimeoutMs = 500L;
            this.detachSurfaceTimeoutMs = WebViewScreenCapture.CACHE_TTL_MS;
            this.usePlatformDiagnostics = true;
            this.playerName = "";
            this.priority = -1000;
            this.suitableOutputChecker = new DefaultSuitableOutputChecker();
        }

        public Builder setAudioAttributes(AudioAttributes audioAttributes, boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.audioAttributes = (AudioAttributes) Assertions.checkNotNull(audioAttributes);
            this.handleAudioFocus = z;
            return this;
        }

        public ExoPlayer build() {
            Assertions.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new ExoPlayerImpl(this, null);
        }
    }
}
