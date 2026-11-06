package io.bidmachine.nativead.view;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.core.Logger;
import io.bidmachine.iab.utils.Assets;
import io.bidmachine.iab.vast.view.CircleCountdownView;
import io.bidmachine.internal.C4227k;
import io.bidmachine.internal.C4228l;
import io.bidmachine.internal.U;
import io.bidmachine.rendering.internal.AdActivity;
import io.bidmachine.util.DeviceUtilsKt;
import io.bidmachine.util.ViewUtils;
import io.bidmachine.utils.lazy.LazyValue;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: loaded from: classes5.dex */
public final class VideoPlayerActivity extends AdActivity implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {
    public static final Companion Companion = new Companion(null);
    public static C4227k disclaimerData;
    public static VideoPlayerActivityListener listener;
    public C4228l disclaimerTextView;
    public VideoPlayerActivityListener listener$1;
    public int seekTo;
    public VideoView videoView;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Intent createIntent(Context context, String fileUri, int i, VideoPlayerActivityListener listener, C4227k c4227k) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(fileUri, "fileUri");
            Intrinsics.checkNotNullParameter(listener, "listener");
            VideoPlayerActivity.listener = listener;
            VideoPlayerActivity.disclaimerData = c4227k;
            Intent intent = new Intent(context, (Class<?>) VideoPlayerActivity.class);
            intent.putExtra("io.bidmachine.fileUri", fileUri);
            intent.putExtra("io.bidmachine.seekTo", i);
            return intent;
        }

        public Companion() {
        }
    }

    public interface VideoPlayerActivityListener {
        void videoPlayerActivityClosed(int i, boolean z);
    }

    public static final void finishActivity$lambda$13(VideoPlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.getWindow().clearFlags(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
        } catch (Exception e) {
            Logger.w(e);
        }
    }

    public static final String onCreate$lambda$0(VideoPlayerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        return "VideoPlayerActivity started, position: " + this$0.seekTo;
    }

    public static final void onCreate$lambda$7$lambda$6(VideoPlayerActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.closeClicked();
    }

    public final void closeClicked() {
        VideoPlayerActivityListener videoPlayerActivityListener = this.listener$1;
        if (videoPlayerActivityListener != null) {
            VideoView videoView = this.videoView;
            videoPlayerActivityListener.videoPlayerActivityClosed((videoView == null || !videoView.isPlaying()) ? 0 : videoView.getCurrentPosition(), false);
        }
        finishActivity();
    }

    public final void finishActivity() {
        listener = null;
        runOnUiThread(new Runnable() { // from class: io.bidmachine.nativead.view.VideoPlayerActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                VideoPlayerActivity.finishActivity$lambda$13(this.f$0);
            }
        });
        finish();
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        VideoPlayerActivityListener videoPlayerActivityListener = this.listener$1;
        if (videoPlayerActivityListener != null) {
            videoPlayerActivityListener.videoPlayerActivityClosed(0, true);
        }
        finishActivity();
    }

    @Override // io.bidmachine.rendering.internal.AdActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
        Intent intent = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "getIntent()");
        String stringExtra = intent.getStringExtra("io.bidmachine.fileUri");
        this.seekTo = intent.getIntExtra("io.bidmachine.seekTo", 0);
        Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.nativead.view.VideoPlayerActivity$$ExternalSyntheticLambda0
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return VideoPlayerActivity.onCreate$lambda$0(this.f$0);
            }
        });
        if (stringExtra == null) {
            return;
        }
        this.listener$1 = listener;
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(ViewUtils.createMatchParentParams());
        VideoView videoView = new VideoView(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        videoView.setLayoutParams(layoutParams);
        videoView.setOnCompletionListener(this);
        videoView.setOnPreparedListener(this);
        videoView.setVideoPath(stringExtra);
        this.videoView = videoView;
        relativeLayout.addView(videoView);
        float screenDensity = DeviceUtilsKt.getScreenDensity(this);
        int iRoundToInt = MathKt__MathJVMKt.roundToInt(24 * screenDensity);
        int iRoundToInt2 = MathKt__MathJVMKt.roundToInt(8 * screenDensity);
        CircleCountdownView circleCountdownView = new CircleCountdownView(this);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iRoundToInt, iRoundToInt);
        layoutParams2.addRule(11, -1);
        layoutParams2.addRule(10, -1);
        layoutParams2.setMargins(iRoundToInt2, iRoundToInt2, iRoundToInt2, iRoundToInt2);
        circleCountdownView.setLayoutParams(layoutParams2);
        circleCountdownView.setColors(Assets.MAIN_ASSETS_COLOR, Assets.BACKGROUND_COLOR);
        circleCountdownView.setImage(Assets.getBitmapFromBase64("iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAYAAADnRuK4AAACY0lEQVR4Ae3aAWRbURTH4YNiKIqggKEYCiiKYQQABQAMARRBAVAADEEBUAAEAADBAMMwBADFADAURXYQoZdoOLie+338PQK4fnmJ5wUAAAAAAAAAAAAAAAAAAAAAAHACrnJ3uWVunpvFuM5zX3Pf99fz4KiL3HNu1+w195A7i3Gc5R5zb81ZvO0/b86CWe6ljafZZpBv4GXu9wdn8UtE761zuxP2sxrRBOLZnngWjznSbXs4g0Z0Sjztz9lFEPe5XT2iIeJp9y2IVW5Xj2iMeJotguYOVIlogHiazYO4ye3qEQ0VT/MfiPUAEZXjafYjDpjl/k41og7x/Ml9inf4MsWIOsSzzV0G40QkHhGJR0Ti6U9E4hGRePoTkXhEJJ7+RCQeEYmnPxGJR0TiqROReOpEJJ46EYmnTkTiqROReMpEJJ4CEYmnQETiKRGReEpEJJ4kIvH0JyLxiEg8/YlIPCIST38iEo+IxEP9ZbA+L6UhHhGJR0T9iUdE4hFRf+IRkXhE1It4RNQQz7bysFFE4rksPLEWkXj2RFQgHhGViUdEZeIRUZl4RFQmHhGViUdEZeIRkXjqRCQeEXUnHhGJR0T9iUdE4hFRf+IRkXhEJJ5uRCQeEYlHROM47x/PpCLa5M7igKf+8Uwuoodc4rp/PJOM6DU3i2DRP57JRjSPYNU/nslGtIxgOXA81YjuIpgPHk8loqtcYjNqPIWInuOAz7l/o8VTiOgldxENER2/Ez0N9vR1llsfOYt1bhZHMc8tc6vcIncd47rJ3edW++ttAAAAAAAAAAAAAAAAAAAAAAAAfOA/5Zwc/aYfb7AAAAAASUVORK5CYII="));
        circleCountdownView.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.nativead.view.VideoPlayerActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoPlayerActivity.onCreate$lambda$7$lambda$6(this.f$0, view);
            }
        });
        relativeLayout.addView(circleCountdownView);
        C4227k c4227k = disclaimerData;
        if (c4227k != null) {
            C4228l c4228lA = U.a(this, c4227k, relativeLayout);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams3.addRule(12);
            c4228lA.setLayoutParams(layoutParams3);
            this.disclaimerTextView = c4228lA;
            relativeLayout.addView(c4228lA);
        }
        setContentView(relativeLayout);
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        finishActivity();
        return false;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        VideoView videoView = this.videoView;
        if (videoView == null || !videoView.canSeekForward()) {
            return;
        }
        videoView.seekTo(this.seekTo);
        videoView.start();
    }
}
