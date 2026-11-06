package io.bidmachine.nativead.view;

import android.R;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.iab.utils.Assets;
import io.bidmachine.iab.vast.TrackingEvent;
import io.bidmachine.iab.vast.VastRequest;
import io.bidmachine.iab.vast.VastSpecError;
import io.bidmachine.iab.vast.processor.VastAd;
import io.bidmachine.iab.vast.view.CircleCountdownView;
import io.bidmachine.nativead.NativeAdObject;
import io.bidmachine.nativead.NativeData;
import io.bidmachine.nativead.NativeInteractor;
import io.bidmachine.nativead.NativeMediaPrivateData;
import io.bidmachine.nativead.tasks.DownloadVastVideoTask;
import io.bidmachine.nativead.tasks.DownloadVideoTask;
import io.bidmachine.nativead.utils.ImageHelper;
import io.bidmachine.nativead.utils.NativeNetworkExecutor;
import io.bidmachine.nativead.view.MediaView;
import io.bidmachine.nativead.view.VideoPlayerActivity;
import io.bidmachine.rendering.Repository;
import io.bidmachine.util.ColorUtils;
import io.bidmachine.util.Tag;
import io.bidmachine.utils.lazy.LazyValue;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Lazy;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class MediaView extends RelativeLayout implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener, VideoPlayerActivity.VideoPlayerActivityListener {
    public static final Companion Companion = new Companion(null);
    public volatile boolean error;
    public boolean finishedOrExpanded;
    public boolean hasVideo;
    public ImageView imageView;
    public boolean isInitialized;
    public boolean isMuted;
    public boolean isVideoFinishNotified;
    public boolean isVideoStartNotified;
    public MediaPlayer mediaPlayer;
    public boolean mediaPlayerPrepared;
    public boolean mediaPlayerPreparing;
    public CircleCountdownView muteButton;
    public NativeData nativeData;
    public NativeInteractor nativeInteractor;
    public NativeMediaPrivateData nativeMediaData;
    public ImageView playButton;
    public ProgressBar progressBarView;
    public int quartile;
    public final Lazy repository$delegate;
    public boolean startPlayVideoWhenReady;
    public NativeState state;
    public TextureView textureView;
    public int videoDuration;
    public int videoHeight;
    public boolean videoSizeWasChanged;
    public Timer videoVisibilityCheckerTimer;
    public int videoWidth;
    public boolean viewOnScreen;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NativeState.values().length];
            try {
                iArr[NativeState.Image.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NativeState.Loading.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NativeState.Playing.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[NativeState.Paused.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1, reason: invalid class name */
    public static final class AnonymousClass1 extends TimerTask {
        public AnonymousClass1() {
        }

        public static final void run$lambda$0(MediaView this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.pausePlayer();
            if (this$0.finishedOrExpanded) {
                this$0.stopVideoVisibilityCheckerTimer();
            }
        }

        public static final String run$lambda$1(int i) {
            return "Video started: " + i + '%';
        }

        public static final String run$lambda$2(int i) {
            return "Video at first quartile: " + i + '%';
        }

        public static final String run$lambda$3(int i) {
            return "Video at midpoint: " + i + '%';
        }

        public static final String run$lambda$4(int i) {
            return "Video at third quartile: " + i + '%';
        }

        public static final void run$lambda$5(MediaView this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.tryPlayVideo();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            final int currentPosition;
            try {
                if (MediaView.this.error) {
                    MediaView.this.clearPlayerOnError();
                    return;
                }
                if (!MediaView.this.isAdOnScreen()) {
                    final MediaView mediaView = MediaView.this;
                    Utils.onUiThread(new Runnable() { // from class: io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaView.AnonymousClass1.run$lambda$0(mediaView);
                        }
                    });
                    return;
                }
                try {
                    MediaPlayer mediaPlayer = MediaView.this.mediaPlayer;
                    if (mediaPlayer != null && MediaView.this.isMediaPlayerAvailable() && !MediaView.this.error && mediaPlayer.isPlaying()) {
                        if (MediaView.this.videoDuration == 0) {
                            MediaView.this.videoDuration = mediaPlayer.getDuration();
                        }
                        if (MediaView.this.videoDuration != 0 && (currentPosition = (mediaPlayer.getCurrentPosition() * 100) / MediaView.this.videoDuration) >= MediaView.this.quartile * 25) {
                            if (MediaView.this.quartile == 0) {
                                Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda1
                                    @Override // io.bidmachine.utils.lazy.LazyValue
                                    public final Object get() {
                                        return MediaView.AnonymousClass1.run$lambda$1(currentPosition);
                                    }
                                });
                                MediaView.this.processEvent(TrackingEvent.start);
                            } else if (MediaView.this.quartile == 1) {
                                Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda2
                                    @Override // io.bidmachine.utils.lazy.LazyValue
                                    public final Object get() {
                                        return MediaView.AnonymousClass1.run$lambda$2(currentPosition);
                                    }
                                });
                                MediaView.this.processEvent(TrackingEvent.firstQuartile);
                            } else if (MediaView.this.quartile == 2) {
                                Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda3
                                    @Override // io.bidmachine.utils.lazy.LazyValue
                                    public final Object get() {
                                        return MediaView.AnonymousClass1.run$lambda$3(currentPosition);
                                    }
                                });
                                MediaView.this.processEvent(TrackingEvent.midpoint);
                            } else if (MediaView.this.quartile == 3) {
                                Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda4
                                    @Override // io.bidmachine.utils.lazy.LazyValue
                                    public final Object get() {
                                        return MediaView.AnonymousClass1.run$lambda$4(currentPosition);
                                    }
                                });
                                MediaView.this.processEvent(TrackingEvent.thirdQuartile);
                            }
                            MediaView.this.quartile++;
                        }
                    }
                    Logger.d("MediaView is on screen");
                    final MediaView mediaView2 = MediaView.this;
                    Utils.onUiThread(new Runnable() { // from class: io.bidmachine.nativead.view.MediaView$startVideoVisibilityCheckerTimer$1$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            MediaView.AnonymousClass1.run$lambda$5(mediaView2);
                        }
                    });
                } catch (IllegalStateException unused) {
                    MediaView.this.clearPlayerOnError();
                }
            } catch (Throwable unused2) {
                MediaView.this.clearPlayerOnError();
            }
        }
    }

    public static final void clearPlayerOnError$lambda$17(MediaView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.startPlayVideoWhenReady = false;
            this$0.cleanUpMediaPlayer();
            this$0.updateViewState(NativeState.Image);
            this$0.stopVideoVisibilityCheckerTimer();
            this$0.error = true;
            this$0.hasVideo = false;
            this$0.processErrorEvent();
        } catch (Exception e) {
            Logger.w(e);
        }
    }

    public static final void createMuteButton$lambda$19$lambda$18(MediaView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.isMediaPlayerAvailable()) {
            if (this$0.isMuted) {
                MediaPlayer mediaPlayer = this$0.mediaPlayer;
                if (mediaPlayer != null) {
                    mediaPlayer.setVolume(1.0f, 1.0f);
                }
                this$0.isMuted = false;
            } else {
                MediaPlayer mediaPlayer2 = this$0.mediaPlayer;
                if (mediaPlayer2 != null) {
                    mediaPlayer2.setVolume(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                }
                this$0.isMuted = true;
            }
            this$0.updateMuteButton();
        }
    }

    public static final void createVideoView$lambda$6$lambda$5(MediaView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.startPlayVideoWhenReady = true;
        this$0.tryPlayVideo();
    }

    public static final void createVideoView$lambda$9$lambda$8(MediaView this$0, TextureView this_apply, View view) {
        Uri videoUri;
        String path;
        MediaPlayer mediaPlayer;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        NativeMediaPrivateData nativeMediaPrivateData = this$0.nativeMediaData;
        if (nativeMediaPrivateData == null || (videoUri = nativeMediaPrivateData.getVideoUri()) == null || (path = videoUri.getPath()) == null || (mediaPlayer = this$0.mediaPlayer) == null) {
            return;
        }
        Logger.d("Video has been clicked");
        this$0.finishedOrExpanded = true;
        int currentPosition = (this$0.isMediaPlayerAvailable() && mediaPlayer.isPlaying()) ? mediaPlayer.getCurrentPosition() : 0;
        this$0.pausePlayer();
        Context context = this_apply.getContext();
        VideoPlayerActivity.Companion companion = VideoPlayerActivity.Companion;
        Context context2 = this_apply.getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "context");
        NativeData nativeData = this$0.nativeData;
        Utils.startActivity(context, companion.createIntent(context2, path, currentPosition, this$0, nativeData != null ? nativeData.getDisclaimerData() : null));
    }

    private final Repository getRepository() {
        return (Repository) this.repository$delegate.getValue();
    }

    public static final void release$lambda$10(MediaView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.cleanUpMediaPlayer();
    }

    public static final String videoPlayerActivityClosed$lambda$22(int i, boolean z) {
        return "MediaView videoPlayerActivityClosed, position: " + i + ", finished: " + z;
    }

    public final void applyNative(Object obj, NativeData nativeData, NativeMediaPrivateData nativeMediaPrivateData, NativeInteractor nativeInteractor) {
        String videoUrl;
        String videoAdm;
        this.nativeData = nativeData;
        this.nativeMediaData = nativeMediaPrivateData;
        this.nativeInteractor = nativeInteractor;
        if (nativeMediaPrivateData.getVideoUri() != null || (((videoUrl = nativeData.getVideoUrl()) != null && !StringsKt__StringsKt.isBlank(videoUrl)) || ((videoAdm = nativeData.getVideoAdm()) != null && !StringsKt__StringsKt.isBlank(videoAdm)))) {
            this.hasVideo = true;
        }
        createView(obj);
    }

    public final void cleanUpMediaPlayer() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer == null) {
            return;
        }
        this.mediaPlayer = null;
        try {
            if (!this.error) {
                if (mediaPlayer.isPlaying()) {
                    mediaPlayer.stop();
                }
                mediaPlayer.reset();
            }
            mediaPlayer.setOnCompletionListener(null);
            mediaPlayer.setOnErrorListener(null);
            mediaPlayer.setOnPreparedListener(null);
            mediaPlayer.setOnVideoSizeChangedListener(null);
            mediaPlayer.release();
        } catch (Throwable th) {
            Logger.w(th);
        }
    }

    public final void clearPlayerOnError() {
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MediaView.clearPlayerOnError$lambda$17(this.f$0);
            }
        });
    }

    public final void createImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setAdjustViewBounds(true);
        this.imageView = imageView;
        addView(imageView);
    }

    public final MediaPlayer createMediaPlayer() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setOnCompletionListener(this);
        mediaPlayer.setOnErrorListener(this);
        mediaPlayer.setOnPreparedListener(this);
        mediaPlayer.setOnVideoSizeChangedListener(this);
        mediaPlayer.setAudioStreamType(3);
        this.mediaPlayer = mediaPlayer;
        updateVolume();
        return mediaPlayer;
    }

    public final void createMuteButton() {
        Context context = getContext();
        float screenDensity = Utils.getScreenDensity(context);
        int iRoundToInt = MathKt__MathJVMKt.roundToInt(40 * screenDensity);
        int iRoundToInt2 = MathKt__MathJVMKt.roundToInt(8 * screenDensity);
        CircleCountdownView circleCountdownView = new CircleCountdownView(context);
        circleCountdownView.setColors(Assets.MAIN_ASSETS_COLOR, Assets.BACKGROUND_COLOR);
        circleCountdownView.setPadding(iRoundToInt2, iRoundToInt2, iRoundToInt2, iRoundToInt2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iRoundToInt, iRoundToInt);
        layoutParams.addRule(9);
        layoutParams.addRule(10);
        circleCountdownView.setLayoutParams(layoutParams);
        circleCountdownView.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaView.createMuteButton$lambda$19$lambda$18(this.f$0, view);
            }
        });
        this.muteButton = circleCountdownView;
        updateMuteButton();
        addView(circleCountdownView);
    }

    public final void createVideoView(Object obj) {
        Uri videoUri;
        int iRoundToInt = MathKt__MathJVMKt.roundToInt(50 * Utils.getScreenDensity(getContext()));
        String path = null;
        ProgressBar progressBar = new ProgressBar(getContext(), null, R.attr.progressBarStyleLarge);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iRoundToInt, iRoundToInt);
        layoutParams.addRule(13, -1);
        progressBar.setLayoutParams(layoutParams);
        Integer colorARGBSafely = ColorUtils.parseColorARGBSafely("#6b000000");
        if (colorARGBSafely != null) {
            progressBar.setBackgroundColor(colorARGBSafely.intValue());
        }
        progressBar.setVisibility(4);
        this.progressBarView = progressBar;
        addView(progressBar);
        ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(R.drawable.ic_media_play);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iRoundToInt, iRoundToInt);
        layoutParams2.addRule(13, -1);
        imageView.setLayoutParams(layoutParams2);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaView.createVideoView$lambda$6$lambda$5(this.f$0, view);
            }
        });
        imageView.setVisibility(4);
        this.playButton = imageView;
        addView(imageView);
        final TextureView textureView = new TextureView(getContext());
        textureView.setSurfaceTextureListener(this);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.addRule(13);
        textureView.setLayoutParams(layoutParams3);
        textureView.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaView.createVideoView$lambda$9$lambda$8(this.f$0, textureView, view);
            }
        });
        this.textureView = textureView;
        addView(textureView);
        createMuteButton();
        createMediaPlayer();
        NativeData nativeData = this.nativeData;
        NativeMediaPrivateData nativeMediaPrivateData = this.nativeMediaData;
        if (nativeMediaPrivateData != null && (videoUri = nativeMediaPrivateData.getVideoUri()) != null) {
            path = videoUri.getPath();
        }
        if (path != null && new File(path).exists()) {
            this.startPlayVideoWhenReady = true;
            return;
        }
        if (nativeData != null) {
            updateViewState(NativeState.Loading);
            String videoUrl = nativeData.getVideoUrl();
            String videoAdm = nativeData.getVideoAdm();
            if (videoUrl != null && !StringsKt__StringsKt.isBlank(videoUrl)) {
                executeTask(new DownloadVideoTask(obj, getRepository(), new DownloadVideoTask.OnLoadedListener() { // from class: io.bidmachine.nativead.view.MediaView$createVideoView$listener$1
                    @Override // io.bidmachine.nativead.tasks.DownloadVideoTask.OnLoadedListener
                    public void onVideoLoaded(DownloadVideoTask task, Uri videoFileUri) {
                        Intrinsics.checkNotNullParameter(task, "task");
                        Intrinsics.checkNotNullParameter(videoFileUri, "videoFileUri");
                        Logger.d("MediaView video is loaded");
                        NativeMediaPrivateData nativeMediaData = this.this$0.getNativeMediaData();
                        if (nativeMediaData != null) {
                            nativeMediaData.setVideoUri(videoFileUri);
                        }
                        this.this$0.prepareMediaPlayer();
                    }

                    @Override // io.bidmachine.nativead.tasks.DownloadVideoTask.OnLoadedListener
                    public void onVideoLoadingError(DownloadVideoTask task) {
                        Intrinsics.checkNotNullParameter(task, "task");
                        Logger.d("MediaView video is not loaded");
                        this.this$0.updateViewState(NativeState.Image);
                        this.this$0.hasVideo = false;
                    }
                }, videoUrl, null, 16, null));
                return;
            }
            if (videoAdm == null || StringsKt__StringsKt.isBlank(videoAdm)) {
                return;
            }
            DownloadVastVideoTask.OnLoadedListener onLoadedListener = new DownloadVastVideoTask.OnLoadedListener() { // from class: io.bidmachine.nativead.view.MediaView$createVideoView$listener$2
                @Override // io.bidmachine.nativead.tasks.DownloadVastVideoTask.OnLoadedListener
                public void onVideoLoaded(DownloadVastVideoTask task, Uri videoFileUri, VastRequest vastRequest) {
                    Intrinsics.checkNotNullParameter(task, "task");
                    Intrinsics.checkNotNullParameter(videoFileUri, "videoFileUri");
                    Intrinsics.checkNotNullParameter(vastRequest, "vastRequest");
                    Logger.d("MediaView video is loaded");
                    NativeMediaPrivateData nativeMediaData = this.this$0.getNativeMediaData();
                    if (nativeMediaData != null) {
                        nativeMediaData.setVideoUri(videoFileUri);
                    }
                    NativeMediaPrivateData nativeMediaData2 = this.this$0.getNativeMediaData();
                    if (nativeMediaData2 != null) {
                        nativeMediaData2.setVastRequest(vastRequest);
                    }
                    this.this$0.prepareMediaPlayer();
                }

                @Override // io.bidmachine.nativead.tasks.DownloadVastVideoTask.OnLoadedListener
                public void onVideoLoadingError(DownloadVastVideoTask task) {
                    Intrinsics.checkNotNullParameter(task, "task");
                    Logger.d("MediaView video is not loaded");
                    this.this$0.updateViewState(NativeState.Image);
                    this.this$0.hasVideo = false;
                }
            };
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            executeTask(new DownloadVastVideoTask(context, obj, getRepository(), onLoadedListener, videoAdm, null, 32, null));
        }
    }

    public final void createView(Object obj) {
        if (!this.isInitialized) {
            this.isInitialized = true;
            createImageView();
            if (this.hasVideo) {
                createVideoView(obj);
            } else {
                updateViewState(NativeState.Image);
            }
        }
        NativeMediaPrivateData nativeMediaPrivateData = this.nativeMediaData;
        ImageView imageView = this.imageView;
        if (nativeMediaPrivateData == null || imageView == null) {
            return;
        }
        ImageHelper.fillImageView(getContext(), imageView, nativeMediaPrivateData.getImageUri(), nativeMediaPrivateData.getImageDrawable());
    }

    public final void executeTask(Runnable runnable) {
        NativeNetworkExecutor.getInstance().execute(runnable);
    }

    public final void fireUrls(List<String> list) {
        if (list == null) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            Utils.simpleTrackUrl(it.next(), NativeNetworkExecutor.getInstance());
        }
    }

    public final NativeData getNativeData() {
        return this.nativeData;
    }

    public final NativeInteractor getNativeInteractor() {
        return this.nativeInteractor;
    }

    public final NativeMediaPrivateData getNativeMediaData() {
        return this.nativeMediaData;
    }

    public final boolean isAdOnScreen() {
        return getGlobalVisibleRect(new Rect()) && isShown() && hasWindowFocus();
    }

    public final boolean isMediaPlayerAvailable() {
        return (this.error || this.mediaPlayer == null) ? false : true;
    }

    public final void notifyVideoFinished() {
        if (this.isVideoFinishNotified) {
            return;
        }
        processEvent(TrackingEvent.complete);
        this.isVideoFinishNotified = true;
        Logger.d("MediaView: video finished");
    }

    public final void notifyVideoStarted() {
        if (this.isVideoStartNotified) {
            return;
        }
        processImpressions();
        this.isVideoStartNotified = true;
        Logger.d("MediaView: video started");
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        videoFinished();
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Logger.d("MediaView: onError");
        clearPlayerOnError();
        return true;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateTextureLayoutParams();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (mode == Integer.MIN_VALUE) {
            size = Math.min(size, measuredWidth);
        } else if (mode != 1073741824) {
            size = measuredWidth;
        }
        int i3 = (int) (size * 0.5625f);
        if (mode2 != 1073741824 || size2 >= i3) {
            size2 = i3;
        } else {
            size = (int) (size2 * 1.7777778f);
        }
        if (Math.abs(size2 - measuredHeight) >= 2 || Math.abs(size - measuredWidth) >= 2) {
            getLayoutParams().width = size;
            getLayoutParams().height = size2;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        Logger.d("MediaView: onPrepared");
        this.mediaPlayerPrepared = true;
        if (this.startPlayVideoWhenReady) {
            tryPlayVideo();
        } else {
            updateViewState(NativeState.Paused);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        Intrinsics.checkNotNullParameter(surfaceTexture, "surfaceTexture");
        try {
            MediaPlayer mediaPlayerCreateMediaPlayer = this.mediaPlayer;
            if (mediaPlayerCreateMediaPlayer == null) {
                mediaPlayerCreateMediaPlayer = createMediaPlayer();
            }
            mediaPlayerCreateMediaPlayer.setSurface(new Surface(surfaceTexture));
            prepareMediaPlayer();
        } catch (Exception e) {
            Logger.w(e);
            updateViewState(NativeState.Image);
            this.hasVideo = false;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
        Intrinsics.checkNotNullParameter(surface, "surface");
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surface, int i, int i2) {
        Intrinsics.checkNotNullParameter(surface, "surface");
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surface) {
        Intrinsics.checkNotNullParameter(surface, "surface");
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        this.videoWidth = i;
        this.videoHeight = i2;
        this.videoSizeWasChanged = true;
        updateTextureLayoutParams();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        if (i != 0) {
            pausePlayer();
        } else if (this.startPlayVideoWhenReady) {
            tryPlayVideo();
        }
        super.onWindowVisibilityChanged(i);
    }

    public final void pausePlayer() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null) {
                return;
            }
            if (isMediaPlayerAvailable() && mediaPlayer.isPlaying()) {
                mediaPlayer.pause();
            }
            if (this.state != NativeState.Loading) {
                updateViewState(NativeState.Paused);
            }
        } catch (Exception e) {
            Logger.w(e);
        }
    }

    public final void prepareMediaPlayer() {
        Uri videoUri;
        try {
            NativeMediaPrivateData nativeMediaPrivateData = this.nativeMediaData;
            if (nativeMediaPrivateData == null || (videoUri = nativeMediaPrivateData.getVideoUri()) == null || this.mediaPlayerPrepared || this.mediaPlayerPreparing || this.error) {
                return;
            }
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null) {
                mediaPlayer.setDataSource(getContext(), videoUri);
                mediaPlayer.prepareAsync();
            }
            this.mediaPlayerPreparing = true;
        } catch (Exception e) {
            Logger.w(e);
        }
    }

    public final void processErrorEvent() {
        VastRequest vastRequest;
        NativeMediaPrivateData nativeMediaPrivateData = this.nativeMediaData;
        if (nativeMediaPrivateData == null || (vastRequest = nativeMediaPrivateData.getVastRequest()) == null) {
            return;
        }
        vastRequest.sendVastSpecError(VastSpecError.SHOWING);
    }

    public final void processEvent(TrackingEvent trackingEvent) {
        NativeInteractor nativeInteractor;
        VastRequest vastRequest;
        VastAd vastAd;
        Map<TrackingEvent, List<String>> trackingEventListMap;
        NativeMediaPrivateData nativeMediaPrivateData = this.nativeMediaData;
        if (nativeMediaPrivateData != null && (vastRequest = nativeMediaPrivateData.getVastRequest()) != null && (vastAd = vastRequest.getVastAd()) != null && (trackingEventListMap = vastAd.getTrackingEventListMap()) != null) {
            fireUrls(trackingEventListMap.get(trackingEvent));
        }
        if (trackingEvent != TrackingEvent.complete || (nativeInteractor = this.nativeInteractor) == null) {
            return;
        }
        nativeInteractor.dispatchVideoPlayFinished();
    }

    public final void processImpressions() {
        VastRequest vastRequest;
        VastAd vastAd;
        List<String> impressionUrlList;
        NativeMediaPrivateData nativeMediaPrivateData = this.nativeMediaData;
        if (nativeMediaPrivateData == null || (vastRequest = nativeMediaPrivateData.getVastRequest()) == null || (vastAd = vastRequest.getVastAd()) == null || (impressionUrlList = vastAd.getImpressionUrlList()) == null) {
            return;
        }
        fireUrls(impressionUrlList);
    }

    public final void release() {
        new Thread(new Runnable() { // from class: io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                MediaView.release$lambda$10(this.f$0);
            }
        }).start();
    }

    public final void setInitialized(boolean z) {
        this.isInitialized = z;
    }

    public final void setNativeAdObject(NativeAdObject nativeAdObject) {
        Intrinsics.checkNotNullParameter(nativeAdObject, "nativeAdObject");
        Tag tag = nativeAdObject.getTag();
        Intrinsics.checkNotNullExpressionValue(tag, "nativeAdObject.tag");
        applyNative(tag, nativeAdObject, nativeAdObject, nativeAdObject);
    }

    public final void setNativeData(NativeData nativeData) {
        this.nativeData = nativeData;
    }

    public final void setNativeInteractor(NativeInteractor nativeInteractor) {
        this.nativeInteractor = nativeInteractor;
    }

    public final void setNativeMediaData(NativeMediaPrivateData nativeMediaPrivateData) {
        this.nativeMediaData = nativeMediaPrivateData;
    }

    public final void startVideoVisibilityCheckerTimer() {
        if (this.hasVideo) {
            Timer timer = new Timer();
            this.videoVisibilityCheckerTimer = timer;
            timer.schedule(new AnonymousClass1(), 0L, 500);
        }
    }

    public final void stopVideoVisibilityCheckerTimer() {
        Timer timer = this.videoVisibilityCheckerTimer;
        if (timer != null) {
            timer.cancel();
        }
        this.videoVisibilityCheckerTimer = null;
    }

    public final void tryPlayVideo() {
        try {
            MediaPlayer mediaPlayerCreateMediaPlayer = this.mediaPlayer;
            if (mediaPlayerCreateMediaPlayer == null) {
                mediaPlayerCreateMediaPlayer = createMediaPlayer();
            }
            if (!this.mediaPlayerPrepared) {
                prepareMediaPlayer();
            }
            if (isMediaPlayerAvailable() && this.mediaPlayerPrepared && this.viewOnScreen && isAdOnScreen()) {
                if (!mediaPlayerCreateMediaPlayer.isPlaying()) {
                    mediaPlayerCreateMediaPlayer.start();
                    notifyVideoStarted();
                    if (this.videoVisibilityCheckerTimer == null) {
                        startVideoVisibilityCheckerTimer();
                    }
                }
                if (mediaPlayerCreateMediaPlayer.getCurrentPosition() > 0) {
                    NativeState nativeState = this.state;
                    NativeState nativeState2 = NativeState.Playing;
                    if (nativeState != nativeState2) {
                        updateViewState(nativeState2);
                    }
                }
            }
        } catch (Exception e) {
            Logger.w(e);
            clearPlayerOnError();
        }
    }

    public final void updateMuteButton() {
        if (this.isMuted) {
            CircleCountdownView circleCountdownView = this.muteButton;
            if (circleCountdownView != null) {
                circleCountdownView.setImage(Assets.getBitmapFromBase64("iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAMAAADQmBKKAAAAwFBMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALOy8QAAAAQHRSTlMAT5vPRxSr/1OTn4c4s9cYEMu/XwTDu3fbYwjvt+NA8wwg3/fHKOdLj/tbPDBv03+jl4sca2d7NCTrLINDr6dz72VdRQAAA8FJREFUeAHt2dWW6zgURdEd3GFmZqZi7O7//6rmW7ZiK2VHkYo8X0MreI5GENAiEAgEAoFAIBAIhSORcBSfRSzOf8VjOFMimUpncDFZ/i+XxzkKRZJkKYrLKJNKRZUq/xdJVKAONaoV1WlpNFtQ1qZaUYd23R5U9alUVOlTlBxATZVKRUMeG/WgpE61ojEF6i9SJaJWNKHTKAMF05lSUYgu+vMPLFrQxXJlpGhdLm/gsG3TxVZ/UbRLkrsejhX2bkkL3UVb/meZgLekQ0VrUb7P/43z8JZ0Ba1F67eia7i5qfFY01DRBO5uxxQte2aK2pCYFimaDc0UQaaSpCgyMFIEuT1FcZgowglbiu5MFOGU1ZJ27ZiBIpyUEIvC0F+E0+5pt3zQX4R3xGk3gfYivGOwo11TU5EPj23aPBVMFk0e4CJBuz0MFpHh2DvnT3YrBotIjjZweF7SZg5zRSQ5LsMhSZsslKV4XDSAK9kGXXiizRCKFnSouhdRVnRHmzQ8qzRrI0p4KZIO0VabllkFHuWLFPgukk+IJG1C8KhEqhXxl9EAoudzFv47UrGIbw6njv0ReFOjalGfb9YQlWlTgCdtqhatraISRK2x/w8Recmi0IkPaNp/kHpRCaIX/1sRL1s0hCBKy7LlP0i9aA9BgTYZfUHyohxEEVrKGoPkRTH5j/WtziBp0Vx+jt1rDZIVvcgHwZXeIElRHIIVLQe9QZKiEgQ9Wkp6gyRFOwg2vscrL1w0kv8TMtIYJC/KQXBDS1djkLxoqucVUijSH6RUtKZlpx6kXhTS8rVXKLqlJaUepF6UpOVaPUi9qErLncagmdeiPi2vGoOmHos2tIlpDILHojtautAZ5LEoS8tveoM8FbX6tNThSYPngLeikP9DB154DngpEq/RhjeFEc8A/0UHeDSN0D/4L1rBq0q92qdP8F00HkDNgqfAd9HvgM4i+C6KQmsR/BZ1Aa1F8Fv0B/QWwWdRrgC9RfBZNAD0FsFvETQX4bMV4bMV4bMV4bMV4bMV4bMV4bMV4ZMVtSHxyo8pKsLd/IkfU5SEm1iKFqNFy0c4VZpP5AcVNeEU2pE0XXQ3JsluAsdazRwtBosGq/19tIVjqyeSxovk7kl+pqIH8nMVxen01JxRlIQxT3So3jinyBqm8NjyvgI4ihYwpU9RceM6aaswpUO79l0FEIqMB73SMl4UZNvIAsak33KSefl+tIY5t22SnL2IOWJREia1Qvf3vRZcPE74r9QAn0TlNvvUiEcRCAQCgUAgEAgEdPgLbm7XQrhD8bcAAAAASUVORK5CYII="));
                return;
            }
            return;
        }
        CircleCountdownView circleCountdownView2 = this.muteButton;
        if (circleCountdownView2 != null) {
            circleCountdownView2.setImage(Assets.getBitmapFromBase64("iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAMAAADQmBKKAAAAw1BMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAcKsgAAAAQXRSTlMABFeXn38wGNP/u0AMw8tP11+/3/eTOPNH+0tnc3fvb+tDi49TEKMcY8drKCCvFJt7qyQ047eHCCw8g89bp9vns9m2qsEAAAOSSURBVHgB7drVYuNKEEXR03YMJ0aBQXHAYWbm/P9PXZyZBimOHiTVQK9H4zZDFTzP8zzP8zzP83JQtfpSo4mfRqvNfy138HPo9vhNf4CfQYPaMFAQF9IUdSAtpm3UhSza5O+kmBb5O6nPtGgMOQNmmEwhp84MSQ0VUCuz1bGCQ62tM8MGSlebk+RwE67WVlbSNkq2xf8lO0jZbWQk7SmUaZvfxS3kS6pX00NuIct+SNdBNT08RLajmLakU0kP1/GJ40Pa5idV9JD4jBrR1u5W0UN8rkHbaRU9xAIbtM0q6CEWqSU0rZ+V30MstGMXnZffQyx2Qcu49B7iC5c09UvvIb7QbdN0UHYP8ZWrdRrmuyX3EIbDa2TYoalRcg9hIM/PkLZMw40qt8cJYtREynFCw6DcHjeIcfDF+W/L7UkFkRtw7c5pOCm1xw3KLprRcIfc1MFyxMXyBHEGx/06tfk9cmr1SRYRlFzDMaJhBzmFLCiIURe2BxrqyGfGwoK4B8chtTbyWS4wiI+wBTTsIpf1IoNC2O5jagPkwiKDOFjwBN2SCAphe6J2KBHEE1im1JJ7iaAGLLs0jCWChrA9UwskgngGy4jakUjQCiwNag2RoCdYZtTqIkGXsLxQ2xMJCmHpUAtFgtqwNKk9iwRFsJxQi0SCbmDZt46SCBrC8uA+mv5JfQpLjdqrSNAWLAfUzkWCBj/bR8c+LNvUNiSCItgOpb9+bMHSTah1JIIeYOnQsCsQ1IftgtozBIIC2G6pbQsEPStY1IRaDbm8FRm0AtsODS3k8lRg0C0WPGJvyGc3KizovQXbCQ1LyOn4uaigKRx3NATIS631JkUEPcGh3qlNulX/6bkNV42GUdV/C6d77iMaHqr94zy5+GJodljtaGG+iZT9mIaXSocvp/tIe6Vhfl/heGq4iQwdmraqHOApZGjd0DDZlx5xqpCmNfEh8IimNyU9Jg9omUovEjzGNJ1Kr1o8TmiKT4SXUXYSWi6E13UCp6enRBeasErbTUt05evskrZJE6igqI9sK3M6akAVRSNk6S7R1QCqKEqukKaCiK5ToJKig6ycN6aEXZRrFpPkzQ5c90dvTLtUKFv3pXExvYfrJWKGbQUh28yy9nOtwCcHENNj2voAciZM+diHILrWA4gSv3tc7/J3j61u5jTOIG5/zm/eN+7xM7i+4b/eAoWfRHf1I1wawPM8z/M8z/M872/KUtAsVj+VvQAAAABJRU5ErkJggg=="));
        }
    }

    public final void updateTextureLayoutParams() {
        int width = getWidth();
        int height = getHeight();
        if (width == 0 || height == 0 || !this.videoSizeWasChanged || this.videoWidth == 0 || this.videoHeight == 0) {
            return;
        }
        this.videoSizeWasChanged = false;
        TextureView textureView = this.textureView;
        if (textureView == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = textureView.getLayoutParams();
        int i = this.videoWidth;
        int i2 = this.videoHeight;
        if (i > i2) {
            layoutParams.width = width;
            layoutParams.height = (width * i2) / i;
        } else {
            layoutParams.width = (i * height) / i2;
            layoutParams.height = height;
        }
        textureView.setLayoutParams(layoutParams);
    }

    public final void updateViewState(NativeState nativeState) {
        this.state = nativeState;
        int i = WhenMappings.$EnumSwitchMapping$0[nativeState.ordinal()];
        if (i == 1) {
            ImageView imageView = this.imageView;
            if (imageView != null) {
                imageView.setVisibility(0);
                imageView.bringToFront();
            }
            if (this.hasVideo) {
                TextureView textureView = this.textureView;
                if (textureView != null) {
                    textureView.setVisibility(4);
                }
                ProgressBar progressBar = this.progressBarView;
                if (progressBar != null) {
                    progressBar.setVisibility(4);
                }
                ImageView imageView2 = this.playButton;
                if (imageView2 != null) {
                    imageView2.setVisibility(4);
                }
                CircleCountdownView circleCountdownView = this.muteButton;
                if (circleCountdownView == null) {
                    return;
                }
                circleCountdownView.setVisibility(4);
                return;
            }
            return;
        }
        if (i == 2) {
            ImageView imageView3 = this.imageView;
            if (imageView3 != null) {
                imageView3.setVisibility(0);
                imageView3.bringToFront();
            }
            if (this.hasVideo) {
                ProgressBar progressBar2 = this.progressBarView;
                if (progressBar2 != null) {
                    progressBar2.setVisibility(0);
                }
                ProgressBar progressBar3 = this.progressBarView;
                if (progressBar3 != null) {
                    progressBar3.bringToFront();
                }
                TextureView textureView2 = this.textureView;
                if (textureView2 != null) {
                    textureView2.setVisibility(4);
                }
                ImageView imageView4 = this.playButton;
                if (imageView4 != null) {
                    imageView4.setVisibility(4);
                }
                CircleCountdownView circleCountdownView2 = this.muteButton;
                if (circleCountdownView2 == null) {
                    return;
                }
                circleCountdownView2.setVisibility(4);
                return;
            }
            return;
        }
        if (i != 3) {
            if (i != 4) {
                return;
            }
            ImageView imageView5 = this.imageView;
            if (imageView5 != null) {
                imageView5.setVisibility(0);
                imageView5.bringToFront();
            }
            if (this.hasVideo) {
                ImageView imageView6 = this.playButton;
                if (imageView6 != null) {
                    imageView6.setVisibility(0);
                }
                ImageView imageView7 = this.playButton;
                if (imageView7 != null) {
                    imageView7.bringToFront();
                }
                TextureView textureView3 = this.textureView;
                if (textureView3 != null) {
                    textureView3.setVisibility(4);
                }
                ProgressBar progressBar4 = this.progressBarView;
                if (progressBar4 != null) {
                    progressBar4.setVisibility(4);
                }
                CircleCountdownView circleCountdownView3 = this.muteButton;
                if (circleCountdownView3 == null) {
                    return;
                }
                circleCountdownView3.setVisibility(4);
                return;
            }
            return;
        }
        ImageView imageView8 = this.imageView;
        if (imageView8 != null) {
            imageView8.setVisibility(4);
        }
        if (this.hasVideo) {
            TextureView textureView4 = this.textureView;
            if (textureView4 != null) {
                textureView4.setVisibility(0);
            }
            TextureView textureView5 = this.textureView;
            if (textureView5 != null) {
                textureView5.bringToFront();
            }
            CircleCountdownView circleCountdownView4 = this.muteButton;
            if (circleCountdownView4 != null) {
                circleCountdownView4.setVisibility(0);
            }
            CircleCountdownView circleCountdownView5 = this.muteButton;
            if (circleCountdownView5 != null) {
                circleCountdownView5.bringToFront();
            }
            updateMuteButton();
            ProgressBar progressBar5 = this.progressBarView;
            if (progressBar5 != null) {
                progressBar5.setVisibility(4);
            }
            ImageView imageView9 = this.playButton;
            if (imageView9 == null) {
                return;
            }
            imageView9.setVisibility(4);
        }
    }

    public final void updateVolume() {
        if (isMediaPlayerAvailable()) {
            if (this.isMuted) {
                MediaPlayer mediaPlayer = this.mediaPlayer;
                if (mediaPlayer != null) {
                    mediaPlayer.setVolume(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                    return;
                }
                return;
            }
            MediaPlayer mediaPlayer2 = this.mediaPlayer;
            if (mediaPlayer2 != null) {
                mediaPlayer2.setVolume(1.0f, 1.0f);
            }
        }
    }

    public final void videoFinished() {
        MediaPlayer mediaPlayer;
        notifyVideoFinished();
        stopVideoVisibilityCheckerTimer();
        pausePlayer();
        if (isMediaPlayerAvailable() && (mediaPlayer = this.mediaPlayer) != null) {
            mediaPlayer.seekTo(0);
        }
        this.finishedOrExpanded = true;
    }

    @Override // io.bidmachine.nativead.view.VideoPlayerActivity.VideoPlayerActivityListener
    public void videoPlayerActivityClosed(final int i, final boolean z) {
        MediaPlayer mediaPlayer;
        Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.nativead.view.MediaView$$ExternalSyntheticLambda0
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return MediaView.videoPlayerActivityClosed$lambda$22(i, z);
            }
        });
        try {
            if (z) {
                videoFinished();
            } else {
                if (!isMediaPlayerAvailable() || (mediaPlayer = this.mediaPlayer) == null) {
                    return;
                }
                mediaPlayer.seekTo(i);
            }
        } catch (Exception e) {
            Logger.w(e);
        }
    }
}
