package io.bidmachine.iab.vast.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.ironsource.G5;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.iab.CacheControl;
import io.bidmachine.iab.IabError;
import io.bidmachine.iab.measurer.MraidAdMeasurer;
import io.bidmachine.iab.measurer.VastAdMeasurer;
import io.bidmachine.iab.mraid.MraidInterstitial;
import io.bidmachine.iab.mraid.MraidInterstitialListener;
import io.bidmachine.iab.utils.Assets;
import io.bidmachine.iab.utils.IabClickCallback;
import io.bidmachine.iab.utils.IabCloseWrapper;
import io.bidmachine.iab.utils.IabCountDownWrapper;
import io.bidmachine.iab.utils.IabCtaWrapper;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.iab.utils.IabElementWrapper;
import io.bidmachine.iab.utils.IabLoadingWrapper;
import io.bidmachine.iab.utils.IabMuteWrapper;
import io.bidmachine.iab.utils.IabProgressWrapper;
import io.bidmachine.iab.utils.IabRepeatWrapper;
import io.bidmachine.iab.utils.Utils;
import io.bidmachine.iab.vast.TrackingEvent;
import io.bidmachine.iab.vast.VastExtension;
import io.bidmachine.iab.vast.VastHelper;
import io.bidmachine.iab.vast.VastLog;
import io.bidmachine.iab.vast.VastPlaybackListener;
import io.bidmachine.iab.vast.VastRequest;
import io.bidmachine.iab.vast.VastRequestManager;
import io.bidmachine.iab.vast.VastSpecError;
import io.bidmachine.iab.vast.VastVideoLoadedListener;
import io.bidmachine.iab.vast.VastViewListener;
import io.bidmachine.iab.vast.VideoType;
import io.bidmachine.iab.vast.processor.VastAd;
import io.bidmachine.iab.vast.tags.AppodealExtensionTag;
import io.bidmachine.iab.vast.tags.CompanionTag;
import io.bidmachine.iab.vast.tags.PostBannerTag;
import io.bidmachine.iab.vast.view.IabVideoTexture;
import io.bidmachine.iab.view.CloseableLayout;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.utils.BaseWebChromeClient;
import io.bidmachine.util.ViewUtils;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class VastView extends RelativeLayout {
    public int A;
    public int B;
    public int C;
    public int D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public boolean L;
    public boolean M;
    public boolean N;
    public final List O;
    public final List P;
    public final Runnable Q;
    public final Runnable R;
    public final B S;
    public final B T;
    public final LinkedList U;
    public int V;
    public float W;
    public final String a;
    public final B a0;
    public IabVideoTexture b;
    public final TextureView.SurfaceTextureListener b0;
    public FrameLayout c;
    public final MediaPlayer.OnCompletionListener c0;
    public Surface d;
    public final MediaPlayer.OnErrorListener d0;
    public FrameLayout e;
    public final MediaPlayer.OnPreparedListener e0;
    public CloseableLayout f;
    public final MediaPlayer.OnVideoSizeChangedListener f0;
    public IabCloseWrapper g;
    public VastHelper.OnScreenStateChangeListener g0;
    public IabCountDownWrapper h;
    public final View.OnTouchListener h0;
    public IabRepeatWrapper i;
    public final WebChromeClient i0;
    public IabMuteWrapper j;
    public final WebViewClient j0;
    public IabLoadingWrapper k;
    public IabProgressWrapper l;
    public IabCtaWrapper m;
    public MediaPlayer n;
    public View o;
    public CompanionTag p;
    public CompanionTag q;
    public ImageView r;
    public MraidInterstitial s;
    public VastRequest t;
    public C u;
    public VastViewListener v;
    public VastPlaybackListener w;
    public VastAdMeasurer x;
    public MraidAdMeasurer y;
    public z z;

    public interface B {
        void a(int i, int i2, float f);
    }

    public static class PostBannerAdMeasurer implements MraidAdMeasurer {
        public final VastView a;
        public final MraidAdMeasurer b;

        public PostBannerAdMeasurer(VastView vastView, MraidAdMeasurer mraidAdMeasurer) {
            this.a = vastView;
            this.b = mraidAdMeasurer;
        }

        @Override // io.bidmachine.iab.measurer.AdMeasurer
        public void onAdClicked() {
            this.b.onAdClicked();
        }

        @Override // io.bidmachine.iab.measurer.AdMeasurer
        public void onAdShown() {
            this.b.onAdShown();
        }

        @Override // io.bidmachine.iab.measurer.AdMeasurer
        public void onError(IabError iabError) {
            this.b.onError(iabError);
        }

        @Override // io.bidmachine.iab.measurer.MraidAdMeasurer
        public String prepareCreativeForMeasure(String html) {
            return this.b.prepareCreativeForMeasure(html);
        }

        @Override // io.bidmachine.iab.measurer.AdMeasurer
        public void registerAdContainer(ViewGroup container) {
            this.b.registerAdContainer(this.a);
        }

        @Override // io.bidmachine.iab.measurer.AdMeasurer
        public void onAdViewReady(WebView webView) {
            this.b.onAdViewReady(webView);
        }

        @Override // io.bidmachine.iab.measurer.AdMeasurer
        public void registerAdView(WebView webView) {
            this.b.registerAdView(webView);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.iab.vast.activity.VastView$a, reason: case insensitive filesystem */
    public class RunnableC4214a implements Runnable {
        public RunnableC4214a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VastView.this.isPlaybackStarted()) {
                VastView.this.d();
            }
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.iab.vast.activity.VastView$b, reason: case insensitive filesystem */
    public class RunnableC4215b implements Runnable {
        public RunnableC4215b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (VastView.this.isPlaybackStarted() && VastView.this.n.isPlaying()) {
                    int duration = VastView.this.n.getDuration();
                    int currentPosition = VastView.this.n.getCurrentPosition();
                    if (currentPosition > 0) {
                        float f = (currentPosition * 100.0f) / duration;
                        VastView.this.S.a(duration, currentPosition, f);
                        VastView.this.T.a(duration, currentPosition, f);
                        VastView.this.a0.a(duration, currentPosition, f);
                        if (f > 105.0f) {
                            VastLog.e(VastView.this.a, "Playback tracking: video hang detected", new Object[0]);
                            VastView.this.g();
                        }
                    }
                }
            } catch (Exception e) {
                VastLog.e(VastView.this.a, "Playback tracking exception: %s", e.getMessage());
            }
            VastView.this.postDelayed(this, 16L);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.iab.vast.activity.VastView$c, reason: case insensitive filesystem */
    public class C4216c implements B {
        public C4216c() {
        }

        @Override // io.bidmachine.iab.vast.activity.VastView.B
        public void a(int i, int i2, float f) {
            IabCountDownWrapper iabCountDownWrapper;
            VastView vastView = VastView.this;
            C c = vastView.u;
            if (c.i || c.b == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || !vastView.a(vastView.t)) {
                return;
            }
            VastView vastView2 = VastView.this;
            float f2 = vastView2.u.b * 1000.0f;
            float f3 = i2;
            float f4 = f2 - f3;
            int i3 = (int) ((f3 * 100.0f) / f2);
            VastLog.d(vastView2.a, "Skip percent: %s", Integer.valueOf(i3));
            if (i3 < 100 && (iabCountDownWrapper = VastView.this.h) != null) {
                iabCountDownWrapper.changePercentage(i3, (int) Math.ceil(((double) f4) / 1000.0d));
            }
            if (f4 <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                VastView vastView3 = VastView.this;
                C c2 = vastView3.u;
                c2.b = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                c2.i = true;
                vastView3.setCloseControlsVisible(true);
            }
        }
    }

    public class d implements B {
        public d() {
        }

        @Override // io.bidmachine.iab.vast.activity.VastView.B
        public void a(int i, int i2, float f) {
            VastView vastView = VastView.this;
            C c = vastView.u;
            if (c.h && c.c == 3) {
                return;
            }
            if (vastView.t.getMaxDurationMillis() > 0 && i2 > VastView.this.t.getMaxDurationMillis() && VastView.this.t.getVideoType() == VideoType.Rewarded) {
                VastView vastView2 = VastView.this;
                vastView2.u.i = true;
                vastView2.setCloseControlsVisible(true);
            }
            VastView vastView3 = VastView.this;
            int i3 = vastView3.u.c;
            if (f > i3 * 25.0f) {
                if (i3 == 3) {
                    VastLog.d(vastView3.a, "Video at third quartile: (%s)", Float.valueOf(f));
                    VastView.this.c(TrackingEvent.thirdQuartile);
                    if (VastView.this.w != null) {
                        VastView.this.w.onVideoThirdQuartile();
                    }
                } else if (i3 == 0) {
                    VastLog.d(vastView3.a, "Video at start: (%s)", Float.valueOf(f));
                    VastView.this.c(TrackingEvent.start);
                    if (VastView.this.w != null) {
                        VastView.this.w.onVideoStarted(i, VastView.this.u.f ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : 1.0f);
                    }
                } else if (i3 == 1) {
                    VastLog.d(vastView3.a, "Video at first quartile: (%s)", Float.valueOf(f));
                    VastView.this.c(TrackingEvent.firstQuartile);
                    if (VastView.this.w != null) {
                        VastView.this.w.onVideoFirstQuartile();
                    }
                } else if (i3 == 2) {
                    VastLog.d(vastView3.a, "Video at midpoint: (%s)", Float.valueOf(f));
                    VastView.this.c(TrackingEvent.midpoint);
                    if (VastView.this.w != null) {
                        VastView.this.w.onVideoMidpoint();
                    }
                }
                VastView.this.u.c++;
            }
        }
    }

    public class e implements B {
        public e() {
        }

        @Override // io.bidmachine.iab.vast.activity.VastView.B
        public void a(int i, int i2, float f) {
            if (VastView.this.U.size() == 2 && ((Integer) VastView.this.U.getFirst()).intValue() > ((Integer) VastView.this.U.getLast()).intValue()) {
                VastLog.e(VastView.this.a, "Playing progressing error: seek", new Object[0]);
                VastView.this.U.removeFirst();
            }
            if (VastView.this.U.size() == 19) {
                Integer num = (Integer) VastView.this.U.getFirst();
                int iIntValue = num.intValue();
                Integer num2 = (Integer) VastView.this.U.getLast();
                int iIntValue2 = num2.intValue();
                VastLog.d(VastView.this.a, "Playing progressing position: last=%d, first=%d)", num2, num);
                if (iIntValue2 > iIntValue) {
                    VastView.this.U.removeFirst();
                } else {
                    VastView.l(VastView.this);
                    if (VastView.this.V >= 3) {
                        VastView.this.c(IabError.internal("Playing progressing error: video hang detected"));
                        return;
                    }
                }
            }
            try {
                VastView.this.U.addLast(Integer.valueOf(i2));
                if (i == 0 || i2 <= 0) {
                    return;
                }
                VastView vastView = VastView.this;
                if (vastView.l != null) {
                    VastLog.d(vastView.a, "Playing progressing percent: %s", Float.valueOf(f));
                    if (VastView.this.W < f) {
                        VastView.this.W = f;
                        int i3 = i / 1000;
                        VastView.this.l.changePercentage(f, Math.min(i3, (int) Math.ceil(i2 / 1000.0f)), i3);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public class f implements TextureView.SurfaceTextureListener {
        public f() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            VastLog.d(VastView.this.a, "onSurfaceTextureAvailable", new Object[0]);
            VastView.this.d = new Surface(surfaceTexture);
            VastView.this.G = true;
            if (VastView.this.H) {
                VastView.this.H = false;
                VastView.this.startPlayback("onSurfaceTextureAvailable");
            } else if (VastView.this.isPlaybackStarted()) {
                VastView vastView = VastView.this;
                vastView.n.setSurface(vastView.d);
                VastView.this.r();
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            VastLog.d(VastView.this.a, "onSurfaceTextureDestroyed", new Object[0]);
            VastView vastView = VastView.this;
            vastView.d = null;
            vastView.G = false;
            if (VastView.this.isPlaybackStarted()) {
                VastView.this.n.setSurface(null);
                VastView.this.l();
            }
            return false;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            VastLog.d(VastView.this.a, "onSurfaceTextureSizeChanged: %d/%d", Integer.valueOf(i), Integer.valueOf(i2));
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    public class g implements MediaPlayer.OnCompletionListener {
        public g() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            VastLog.d(VastView.this.a, "MediaPlayer - onCompletion", new Object[0]);
            VastView.this.g();
        }
    }

    public class h implements MediaPlayer.OnErrorListener {
        public h() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            VastView.this.c(IabError.internal(String.format("MediaPlayer - onError: what - %s, extra - %s", Integer.valueOf(i), Integer.valueOf(i2))));
            return true;
        }
    }

    public class i implements MediaPlayer.OnPreparedListener {
        public i() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            VastLog.d(VastView.this.a, "MediaPlayer - onPrepared", new Object[0]);
            VastView vastView = VastView.this;
            if (vastView.u.j) {
                return;
            }
            vastView.c(TrackingEvent.creativeView);
            VastView.this.c(TrackingEvent.fullscreen);
            VastView.this.y();
            VastView.this.setLoadingViewVisibility(false);
            VastView.this.J = true;
            if (!VastView.this.u.g) {
                mediaPlayer.start();
                VastView.this.u();
            }
            VastView.this.x();
            int i = VastView.this.u.d;
            if (i > 0) {
                mediaPlayer.seekTo(i);
                VastView.this.c(TrackingEvent.resume);
                if (VastView.this.w != null) {
                    VastView.this.w.onVideoResumed();
                }
            }
            VastView vastView2 = VastView.this;
            if (!vastView2.u.m) {
                vastView2.l();
            }
            VastView vastView3 = VastView.this;
            if (vastView3.u.k) {
                return;
            }
            vastView3.h();
            if (VastView.this.t.shouldPreloadCompanion()) {
                VastView.this.a(false);
            }
        }
    }

    public class j implements MediaPlayer.OnVideoSizeChangedListener {
        public j() {
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
            VastLog.d(VastView.this.a, "onVideoSizeChanged", new Object[0]);
            VastView.this.C = i;
            VastView.this.D = i2;
            VastView.this.d();
        }
    }

    public class k implements View.OnClickListener {
        public k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (VastView.this.isPlaybackStarted() || VastView.this.u.j) {
                VastView.this.t();
            }
        }
    }

    public class l implements VastHelper.OnScreenStateChangeListener {
        public l() {
        }

        @Override // io.bidmachine.iab.vast.VastHelper.OnScreenStateChangeListener
        public void onScreenStateChange(boolean z) {
            VastView.this.z();
        }
    }

    public class m implements View.OnTouchListener {
        public m() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action != 0 && action != 1) {
                return false;
            }
            VastView.this.O.add(view);
            if (view.hasFocus()) {
                return false;
            }
            view.requestFocus();
            return false;
        }
    }

    public class n extends BaseWebChromeClient {
        public n() {
        }

        private boolean a(JsResult jsResult) {
            jsResult.cancel();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            VastLog.d("JS alert", str2, new Object[0]);
            return a(jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            VastLog.d("JS confirm", str2, new Object[0]);
            return a(jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            VastLog.d("JS prompt", str2, new Object[0]);
            return a(jsPromptResult);
        }
    }

    public class p implements VastVideoLoadedListener {
        public final /* synthetic */ boolean a;
        public final /* synthetic */ CacheControl b;

        public p(boolean z, CacheControl cacheControl) {
            this.a = z;
            this.b = cacheControl;
        }

        @Override // io.bidmachine.iab.vast.VastVideoLoadedListener
        public void onError(VastRequest vastRequest, IabError iabError) {
            VastView vastView = VastView.this;
            vastView.b(vastView.v, vastRequest, IabError.placeholder(String.format("Error loading video after showing with %s - %s", this.b, iabError)));
        }

        @Override // io.bidmachine.iab.vast.VastVideoLoadedListener
        public void onSuccess(VastRequest vastRequest, VastAd vastAd) {
            VastView.this.a(vastRequest, vastAd, this.a);
        }
    }

    public class q implements CloseableLayout.OnCloseClickListener {
        public q() {
        }

        @Override // io.bidmachine.iab.view.CloseableLayout.OnCloseClickListener
        public void onCloseClick() {
            VastView vastView = VastView.this;
            vastView.b(vastView.v, VastView.this.t, IabError.placeholder("Close button clicked"));
        }

        @Override // io.bidmachine.iab.view.CloseableLayout.OnCloseClickListener
        public void onCountDownFinish() {
        }
    }

    public class r implements View.OnClickListener {
        public r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VastView.this.i();
        }
    }

    public class s implements View.OnClickListener {
        public s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VastRequest vastRequest = VastView.this.t;
            if (vastRequest != null && vastRequest.isR1()) {
                VastView vastView = VastView.this;
                if (!vastView.u.l && vastView.i()) {
                    return;
                }
            }
            if (VastView.this.I) {
                VastView.this.e();
            } else {
                VastView.this.handleBackPress();
            }
        }
    }

    public class t implements View.OnClickListener {
        public t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VastView.this.A();
        }
    }

    public class u implements View.OnClickListener {
        public u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VastView.this.q();
        }
    }

    public class v implements View.OnClickListener {
        public v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VastView.this.i();
        }
    }

    public class w extends z {
        public final /* synthetic */ WeakReference f;

        public class a implements View.OnClickListener {
            public a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VastView.this.i();
                VastView.this.e();
            }
        }

        public class b extends AnimatorListenerAdapter {
            public b() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                VastView.this.c.setVisibility(8);
            }
        }

        public class c implements View.OnClickListener {
            public c() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VastView.this.i();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public w(Context context, Uri uri, String str, WeakReference weakReference) {
            super(context, uri, str);
            this.f = weakReference;
        }

        @Override // io.bidmachine.iab.vast.activity.VastView.z
        public void a(Bitmap bitmap) {
            ImageView imageView = (ImageView) this.f.get();
            if (imageView != null) {
                if (bitmap == null) {
                    imageView.setOnClickListener(new a());
                    return;
                }
                imageView.setImageBitmap(bitmap);
                imageView.setAlpha(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                imageView.animate().alpha(1.0f).setDuration(100L).setListener(new b()).start();
                imageView.setOnClickListener(new c());
            }
        }
    }

    public class x implements IabClickCallback {
        public final List a;

        public x(List list) {
            this.a = list;
        }

        @Override // io.bidmachine.iab.utils.IabClickCallback
        public void clickHandled() {
            if (VastView.this.isCompanionShown()) {
                VastView.this.setLoadingViewVisibility(false);
            } else if (VastView.this.E) {
                VastView.this.r();
            } else {
                VastView.this.l();
            }
        }

        @Override // io.bidmachine.iab.utils.IabClickCallback
        public void clickVerified() {
            VastView.this.a(this.a);
            if (VastView.this.x != null) {
                VastView.this.x.onAdClicked();
            }
        }
    }

    public final class y implements MraidInterstitialListener {
        public y() {
        }

        @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
        public void onCalendarEvent(MraidInterstitial mraidInterstitial, String str, IabClickCallback iabClickCallback) {
        }

        @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
        public void onClose(MraidInterstitial mraidInterstitial) {
            VastView.this.f();
        }

        @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
        public void onExpired(MraidInterstitial mraidInterstitial, IabError iabError) {
            VastView.this.a(iabError);
        }

        @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
        public void onLoadFailed(MraidInterstitial mraidInterstitial, IabError iabError) {
            VastView.this.b(iabError);
        }

        @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
        public void onLoaded(MraidInterstitial mraidInterstitial) {
            VastView vastView = VastView.this;
            if (vastView.u.j) {
                vastView.setLoadingViewVisibility(false);
                mraidInterstitial.showInView(VastView.this, false);
            }
        }

        @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
        public void onOpenPrivacySheet(MraidInterstitial mraidInterstitial, PrivacySheetParams privacySheetParams) {
        }

        @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
        public void onOpenUrl(MraidInterstitial mraidInterstitial, String str, IabClickCallback iabClickCallback) {
            iabClickCallback.clickHandled();
            VastView vastView = VastView.this;
            vastView.a(vastView.q, str);
        }

        @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
        public void onPlayVideo(MraidInterstitial mraidInterstitial, String str) {
        }

        @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
        public void onShowFailed(MraidInterstitial mraidInterstitial, IabError iabError) {
            VastView.this.b(iabError);
        }

        @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
        public void onShown(MraidInterstitial mraidInterstitial) {
        }

        @Override // io.bidmachine.iab.mraid.MraidInterstitialListener
        public void onStorePicture(MraidInterstitial mraidInterstitial, String str, IabClickCallback iabClickCallback) {
        }

        public /* synthetic */ y(VastView vastView, k kVar) {
            this();
        }
    }

    public static abstract class z extends Thread {
        public final WeakReference a;
        public final Uri b;
        public final String c;
        public Bitmap d;
        public boolean e;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                z zVar = z.this;
                zVar.a(zVar.d);
            }
        }

        public z(Context context, Uri uri, String str) {
            this.a = new WeakReference(context);
            this.b = uri;
            this.c = str;
            if (str == null && (uri == null || TextUtils.isEmpty(uri.getPath()) || !new File(uri.getPath()).exists())) {
                a((Bitmap) null);
            } else {
                start();
            }
        }

        public abstract void a(Bitmap bitmap);

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Context context = (Context) this.a.get();
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            if (context != null) {
                try {
                    Uri uri = this.b;
                    if (uri != null) {
                        mediaMetadataRetriever.setDataSource(context, uri);
                    } else {
                        String str = this.c;
                        if (str != null) {
                            mediaMetadataRetriever.setDataSource(str, new HashMap());
                        }
                    }
                    this.d = mediaMetadataRetriever.getFrameAtTime((Long.parseLong(mediaMetadataRetriever.extractMetadata(9)) / 2) * 1000, 2);
                } catch (Exception e) {
                    VastLog.e("MediaFrameRetriever", e.getMessage(), new Object[0]);
                }
            }
            try {
                mediaMetadataRetriever.release();
            } catch (IOException e2) {
                VastLog.e("MediaFrameRetriever", e2.getMessage(), new Object[0]);
            }
            if (this.e) {
                return;
            }
            Utils.onUiThread(new a());
        }

        public void a() {
            this.e = true;
        }
    }

    public VastView(Context context) {
        this(context, null);
    }

    private int getAvailableHeight() {
        return (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
    }

    private int getAvailableWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public static /* synthetic */ int l(VastView vastView) {
        int i2 = vastView.V;
        vastView.V = i2 + 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCloseControlsVisible(boolean visible) {
        this.L = visible;
        w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLoadingViewVisibility(boolean visible) {
        IabLoadingWrapper iabLoadingWrapper = this.k;
        if (iabLoadingWrapper == null) {
            return;
        }
        if (!visible) {
            iabLoadingWrapper.setVisibility(8);
        } else {
            iabLoadingWrapper.setVisibility(0);
            this.k.bringToFront();
        }
    }

    private void setMute(boolean isMuted) {
        this.u.f = isMuted;
        x();
        c(this.u.f ? TrackingEvent.mute : TrackingEvent.unmute);
    }

    private void setPlaceholderViewVisible(boolean visible) {
        CloseableLayout closeableLayout = this.f;
        VastRequest vastRequest = this.t;
        closeableLayout.setCloseVisibility(visible, vastRequest != null ? vastRequest.getPlaceholderTimeoutSec() : 3.0f);
    }

    @Override // android.view.ViewGroup
    public void addView(View child) {
        super.addView(child);
        this.e.bringToFront();
    }

    public void destroy() {
        MraidInterstitial mraidInterstitial = this.s;
        if (mraidInterstitial != null) {
            mraidInterstitial.destroy();
            this.s = null;
            this.q = null;
        }
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = null;
        z zVar = this.z;
        if (zVar != null) {
            zVar.a();
            this.z = null;
        }
    }

    public boolean display(VastRequest vastRequest, Boolean isFullscreen) {
        return a(vastRequest, isFullscreen, false);
    }

    public VastViewListener getListener() {
        return this.v;
    }

    public void handleBackPress() {
        if (this.f.isVisible() && this.f.canBeClosed()) {
            b(this.v, this.t, IabError.placeholder("OnBackPress event fired"));
            return;
        }
        if (isSkipEnabled()) {
            if (!isCompanionShown()) {
                m();
                return;
            }
            VastRequest vastRequest = this.t;
            if (vastRequest == null || vastRequest.getVideoType() != VideoType.NonRewarded) {
                return;
            }
            if (this.q == null) {
                e();
                return;
            }
            MraidInterstitial mraidInterstitial = this.s;
            if (mraidInterstitial != null) {
                mraidInterstitial.dispatchClose();
            } else {
                f();
            }
        }
    }

    public boolean isCompanionShown() {
        return this.u.j;
    }

    public boolean isFinished() {
        VastRequest vastRequest = this.t;
        if (vastRequest == null) {
            return false;
        }
        if (vastRequest.getCompanionCloseTime() == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && this.u.h) {
            return true;
        }
        return this.t.getCompanionCloseTime() > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && this.u.j;
    }

    public boolean isFullscreen() {
        return this.u.e;
    }

    public boolean isLoaded() {
        VastRequest vastRequest = this.t;
        return (vastRequest == null || vastRequest.getVastAd() == null) ? false : true;
    }

    public boolean isPlaybackStarted() {
        return this.n != null && this.J;
    }

    public boolean isSkipEnabled() {
        C c = this.u;
        return c.i || c.b == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public boolean isVideoFileLoaded() {
        VastRequest vastRequest = this.t;
        return vastRequest != null && vastRequest.checkFile();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.E) {
            startPlayback("onAttachedToWindow");
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (isLoaded()) {
            i(this.t.getVastAd().getAppodealExtension());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopPlayback();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof A)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        A a = (A) parcelable;
        super.onRestoreInstanceState(a.getSuperState());
        C c = a.a;
        if (c != null) {
            this.u = c;
        }
        VastRequest vastRequest = VastRequestManager.get(this.u.a);
        if (vastRequest != null) {
            a(vastRequest, (Boolean) null, true);
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        if (isPlaybackStarted()) {
            this.u.d = this.n.getCurrentPosition();
        }
        A a = new A(super.onSaveInstanceState());
        a.a = this.u;
        return a;
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        removeCallbacks(this.Q);
        post(this.Q);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean hasWindowFocus) {
        super.onWindowFocusChanged(hasWindowFocus);
        VastLog.d(this.a, "onWindowFocusChanged: %s", Boolean.valueOf(hasWindowFocus));
        this.E = hasWindowFocus;
        z();
    }

    public void setAdMeasurer(VastAdMeasurer vastAdMeasurer) {
        this.x = vastAdMeasurer;
    }

    public void setCanAutoResume(boolean canAutoResume) {
        this.M = canAutoResume;
        this.u.m = canAutoResume;
    }

    public void setCanIgnorePostBanner(boolean canIgnorePostBanner) {
        this.N = canIgnorePostBanner;
        this.u.n = canIgnorePostBanner;
    }

    public void setListener(VastViewListener listener) {
        this.v = listener;
    }

    public void setPlaybackListener(VastPlaybackListener playbackListener) {
        this.w = playbackListener;
    }

    public void setPostBannerAdMeasurer(MraidAdMeasurer mraidAdMeasurer) {
        this.y = mraidAdMeasurer != null ? new PostBannerAdMeasurer(this, mraidAdMeasurer) : null;
    }

    public void startPlayback(String who) {
        VastLog.d(this.a, "startPlayback: %s", who);
        if (isLoaded()) {
            setPlaceholderViewVisible(false);
            if (this.u.j) {
                s();
                return;
            }
            if (!this.E) {
                this.F = true;
                return;
            }
            if (this.G) {
                stopPlayback();
                k();
                d();
                n();
                VastHelper.addScreenStateChangeListener(this, this.g0);
            } else {
                this.H = true;
            }
            if (this.c.getVisibility() != 0) {
                this.c.setVisibility(0);
            }
        }
    }

    public void stopPlayback() {
        this.u.g = false;
        if (this.n != null) {
            VastLog.d(this.a, "stopPlayback", new Object[0]);
            try {
                if (this.n.isPlaying()) {
                    this.n.stop();
                }
                this.n.setSurface(null);
                this.n.release();
            } catch (Exception e2) {
                VastLog.e(this.a, e2);
            }
            this.n = null;
            this.J = false;
            this.K = false;
            c();
            VastHelper.removeScreenStateChangeListener(this);
        }
    }

    public VastView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public final void A() {
        setMute(!this.u.f);
    }

    public final void g(VastExtension vastExtension) {
        if (vastExtension != null && !vastExtension.getProgressStyle().isVisible().booleanValue()) {
            IabProgressWrapper iabProgressWrapper = this.l;
            if (iabProgressWrapper != null) {
                iabProgressWrapper.detach();
                return;
            }
            return;
        }
        if (this.l == null) {
            IabProgressWrapper iabProgressWrapper2 = new IabProgressWrapper(null);
            this.l = iabProgressWrapper2;
            this.P.add(iabProgressWrapper2);
        }
        this.l.attach(getContext(), this.e, a(vastExtension, vastExtension != null ? vastExtension.getProgressStyle() : null));
        this.l.changePercentage(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0, 0);
    }

    public final void h(VastExtension vastExtension) {
        if (vastExtension == null || !vastExtension.getRepeatStyle().isVisible().booleanValue()) {
            IabRepeatWrapper iabRepeatWrapper = this.i;
            if (iabRepeatWrapper != null) {
                iabRepeatWrapper.detach();
                return;
            }
            return;
        }
        if (this.i == null) {
            IabRepeatWrapper iabRepeatWrapper2 = new IabRepeatWrapper(new u());
            this.i = iabRepeatWrapper2;
            this.P.add(iabRepeatWrapper2);
        }
        this.i.attach(getContext(), this.e, a(vastExtension, vastExtension.getRepeatStyle()));
    }

    public final void i(VastExtension vastExtension) {
        IabElementStyle iabElementStyleCopyWith;
        IabElementStyle iabElementStyleCopyWith2 = vastExtension != null ? Assets.DEF_VIDEO_STYLE.copyWith(vastExtension.getVideoStyle()) : Assets.DEF_VIDEO_STYLE;
        if (vastExtension == null || !vastExtension.isVideoClickable()) {
            this.c.setOnClickListener(null);
            this.c.setClickable(false);
        } else {
            this.c.setOnClickListener(new v());
        }
        this.c.setBackgroundColor(iabElementStyleCopyWith2.getFillColor().intValue());
        o();
        if (this.p == null || this.u.j) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            this.c.setLayoutParams(layoutParams);
            return;
        }
        this.o = a(getContext(), this.p);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(this.o.getLayoutParams());
        if ("inline".equals(iabElementStyleCopyWith2.getStyle())) {
            iabElementStyleCopyWith = Assets.DEF_INLINE_BANNER_STYLE;
            if (getResources().getConfiguration().orientation == 2) {
                layoutParams2.addRule(15);
                layoutParams3.height = -1;
                layoutParams3.addRule(10);
                layoutParams3.addRule(12);
                if (iabElementStyleCopyWith2.getHorizontalPosition().intValue() == 3) {
                    layoutParams2.addRule(9);
                    layoutParams2.addRule(0, this.o.getId());
                    layoutParams3.addRule(11);
                } else {
                    layoutParams2.addRule(11);
                    layoutParams2.addRule(1, this.o.getId());
                    layoutParams3.addRule(9);
                }
            } else {
                layoutParams2.addRule(14);
                layoutParams3.width = -1;
                layoutParams3.addRule(9);
                layoutParams3.addRule(11);
                if (iabElementStyleCopyWith2.getVerticalPosition().intValue() == 48) {
                    layoutParams2.addRule(10);
                    layoutParams2.addRule(2, this.o.getId());
                    layoutParams3.addRule(12);
                } else {
                    layoutParams2.addRule(12);
                    layoutParams2.addRule(3, this.o.getId());
                    layoutParams3.addRule(10);
                }
            }
        } else {
            IabElementStyle iabElementStyle = Assets.DEF_BANNER_STYLE;
            layoutParams2.addRule(13);
            iabElementStyleCopyWith = iabElementStyle;
        }
        if (vastExtension != null) {
            iabElementStyleCopyWith = iabElementStyleCopyWith.copyWith(vastExtension.getCtaStyle());
        }
        iabElementStyleCopyWith.applyPadding(getContext(), this.o);
        iabElementStyleCopyWith.applyMargin(getContext(), layoutParams3);
        iabElementStyleCopyWith.applyRelativeAlignment(layoutParams3);
        this.o.setBackgroundColor(iabElementStyleCopyWith.getFillColor().intValue());
        iabElementStyleCopyWith2.applyPadding(getContext(), this.c);
        iabElementStyleCopyWith2.applyMargin(getContext(), layoutParams2);
        this.c.setLayoutParams(layoutParams2);
        addView(this.o, layoutParams3);
        a(TrackingEvent.creativeView);
    }

    public final void j() {
        VastLog.d(this.a, "finishVideoPlaying", new Object[0]);
        stopPlayback();
        VastRequest vastRequest = this.t;
        if (vastRequest == null || vastRequest.isAutoClose() || !(this.t.getVastAd().getAppodealExtension() == null || this.t.getVastAd().getAppodealExtension().getPostBannerTag().isVisible())) {
            e();
            return;
        }
        if (isSkipEnabled()) {
            c(TrackingEvent.close);
        }
        setLoadingViewVisibility(false);
        o();
        s();
    }

    public final void k() {
        if (this.r != null) {
            p();
        } else {
            MraidInterstitial mraidInterstitial = this.s;
            if (mraidInterstitial != null) {
                mraidInterstitial.destroy();
                this.s = null;
                this.q = null;
            }
        }
        this.I = false;
    }

    public final void l() {
        if (!isPlaybackStarted() || this.u.g) {
            return;
        }
        VastLog.d(this.a, "pausePlayback", new Object[0]);
        C c = this.u;
        c.g = true;
        c.d = this.n.getCurrentPosition();
        this.n.pause();
        c();
        a();
        c(TrackingEvent.pause);
        VastPlaybackListener vastPlaybackListener = this.w;
        if (vastPlaybackListener != null) {
            vastPlaybackListener.onVideoPaused();
        }
    }

    public final void m() {
        VastLog.e(this.a, "performVideoCloseClick", new Object[0]);
        stopPlayback();
        if (this.K) {
            e();
            return;
        }
        if (!this.u.h) {
            c(TrackingEvent.skip);
            VastPlaybackListener vastPlaybackListener = this.w;
            if (vastPlaybackListener != null) {
                vastPlaybackListener.onVideoSkipped();
            }
        }
        VastRequest vastRequest = this.t;
        if (vastRequest != null && vastRequest.getVideoType() == VideoType.Rewarded && this.u.h) {
            VastPlaybackListener vastPlaybackListener2 = this.w;
            if (vastPlaybackListener2 != null) {
                vastPlaybackListener2.onVideoCompleted();
            }
            VastViewListener vastViewListener = this.v;
            if (vastViewListener != null) {
                vastViewListener.onComplete(this, this.t);
            }
        }
        j();
    }

    public final void n() {
        try {
            if (!isLoaded() || this.u.j) {
                return;
            }
            if (this.n == null) {
                MediaPlayer mediaPlayer = new MediaPlayer();
                this.n = mediaPlayer;
                mediaPlayer.setLooping(false);
                this.n.setAudioStreamType(3);
                this.n.setOnCompletionListener(this.c0);
                this.n.setOnErrorListener(this.d0);
                this.n.setOnPreparedListener(this.e0);
                this.n.setOnVideoSizeChangedListener(this.f0);
            }
            this.n.setSurface(this.d);
            Uri fileUri = isVideoFileLoaded() ? this.t.getFileUri() : null;
            if (fileUri == null) {
                setLoadingViewVisibility(true);
                this.n.setDataSource(this.t.getVastAd().getPickedMediaFileTag().getText());
            } else {
                setLoadingViewVisibility(false);
                this.n.setDataSource(getContext(), fileUri);
            }
            this.n.prepareAsync();
        } catch (Exception e2) {
            VastLog.e(this.a, e2);
            c(IabError.throwable("Exception during preparing MediaPlayer", e2));
        }
    }

    public final void o() {
        View view = this.o;
        if (view != null) {
            Utils.removeFromParent(view);
            this.o = null;
        }
    }

    public final void p() {
        if (this.r != null) {
            b();
            removeView(this.r);
            this.r = null;
        }
    }

    public final void q() {
        if (isLoaded()) {
            C c = this.u;
            c.j = false;
            c.d = 0;
            k();
            i(this.t.getVastAd().getAppodealExtension());
            startPlayback("restartPlayback");
        }
    }

    public final void r() {
        C c = this.u;
        if (!c.m) {
            if (isPlaybackStarted()) {
                this.n.start();
                this.n.pause();
                setLoadingViewVisibility(false);
                return;
            } else {
                if (this.u.j) {
                    return;
                }
                startPlayback("resumePlayback (canAutoResume: false)");
                return;
            }
        }
        if (c.g && this.E) {
            VastLog.d(this.a, "resumePlayback", new Object[0]);
            this.u.g = false;
            if (!isPlaybackStarted()) {
                if (this.u.j) {
                    return;
                }
                startPlayback("resumePlayback");
                return;
            }
            this.n.start();
            y();
            u();
            setLoadingViewVisibility(false);
            c(TrackingEvent.resume);
            VastPlaybackListener vastPlaybackListener = this.w;
            if (vastPlaybackListener != null) {
                vastPlaybackListener.onVideoResumed();
            }
        }
    }

    public final void s() {
        b(false);
    }

    public final void t() {
        Iterator it = this.P.iterator();
        while (it.hasNext()) {
            ((IabElementWrapper) it.next()).toggleShow();
        }
    }

    public final void u() {
        v();
        c();
        this.R.run();
    }

    public final void v() {
        this.U.clear();
        this.V = 0;
        this.W = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public final void w() {
        boolean z2;
        boolean z3;
        if (this.L) {
            z2 = true;
            if (isSkipEnabled() || this.I) {
                z3 = false;
            } else {
                z3 = true;
                z2 = false;
            }
        } else {
            z3 = false;
            z2 = false;
        }
        IabCloseWrapper iabCloseWrapper = this.g;
        if (iabCloseWrapper != null) {
            iabCloseWrapper.setVisibility(z2 ? 0 : 8);
        }
        IabCountDownWrapper iabCountDownWrapper = this.h;
        if (iabCountDownWrapper != null) {
            iabCountDownWrapper.setVisibility(z3 ? 0 : 8);
        }
    }

    public final void x() {
        IabMuteWrapper iabMuteWrapper;
        if (!isPlaybackStarted() || (iabMuteWrapper = this.j) == null) {
            return;
        }
        iabMuteWrapper.setMuted(this.u.f);
        if (this.u.f) {
            this.n.setVolume(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            VastPlaybackListener vastPlaybackListener = this.w;
            if (vastPlaybackListener != null) {
                vastPlaybackListener.onVideoVolumeChanged(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                return;
            }
            return;
        }
        this.n.setVolume(1.0f, 1.0f);
        VastPlaybackListener vastPlaybackListener2 = this.w;
        if (vastPlaybackListener2 != null) {
            vastPlaybackListener2.onVideoVolumeChanged(1.0f);
        }
    }

    public final void y() {
        if (isLoaded()) {
            t();
        }
    }

    public final void z() {
        if (!this.E || !VastHelper.isScreenOn(getContext())) {
            l();
            return;
        }
        if (this.F) {
            this.F = false;
            startPlayback("onWindowFocusChanged");
        } else if (this.u.j) {
            setLoadingViewVisibility(false);
        } else {
            r();
        }
    }

    public static class A extends View.BaseSavedState {
        public static final Parcelable.Creator<A> CREATOR = new a();
        public C a;

        public class a implements Parcelable.Creator {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public A createFromParcel(Parcel parcel) {
                return new A(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public A[] newArray(int i) {
                return new A[i];
            }
        }

        public A(Parcel parcel) {
            super(parcel);
            this.a = (C) parcel.readParcelable(C.class.getClassLoader());
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.a, 0);
        }

        public A(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public VastView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.a = "VastView-" + Integer.toHexString(hashCode());
        this.u = new C();
        this.A = 0;
        this.B = 0;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = false;
        this.L = false;
        this.M = true;
        this.N = false;
        this.O = new ArrayList();
        this.P = new ArrayList();
        this.Q = new RunnableC4214a();
        this.R = new RunnableC4215b();
        this.S = new C4216c();
        this.T = new d();
        this.U = new LinkedList();
        this.V = 0;
        this.W = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.a0 = new e();
        f fVar = new f();
        this.b0 = fVar;
        this.c0 = new g();
        this.d0 = new h();
        this.e0 = new i();
        this.f0 = new j();
        this.g0 = new l();
        this.h0 = new m();
        this.i0 = new n();
        this.j0 = new o();
        setBackgroundColor(-16777216);
        setOnClickListener(new k());
        IabVideoTexture iabVideoTexture = new IabVideoTexture(context);
        this.b = iabVideoTexture;
        iabVideoTexture.setSurfaceTextureListener(fVar);
        FrameLayout frameLayout = new FrameLayout(context);
        this.c = frameLayout;
        frameLayout.addView(this.b, new FrameLayout.LayoutParams(-1, -1, 17));
        addView(this.c, new RelativeLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.e = frameLayout2;
        frameLayout2.setBackgroundColor(0);
        addView(this.e, new ViewGroup.LayoutParams(-1, -1));
        CloseableLayout closeableLayout = new CloseableLayout(getContext());
        this.f = closeableLayout;
        closeableLayout.setBackgroundColor(0);
        addView(this.f, new ViewGroup.LayoutParams(-1, -1));
    }

    public final void d(VastExtension vastExtension) {
        if (vastExtension != null && !vastExtension.getLoadingStyle().isVisible().booleanValue()) {
            IabLoadingWrapper iabLoadingWrapper = this.k;
            if (iabLoadingWrapper != null) {
                iabLoadingWrapper.detach();
                return;
            }
            return;
        }
        if (this.k == null) {
            this.k = new IabLoadingWrapper(null);
        }
        this.k.attach(getContext(), this, a(vastExtension, vastExtension != null ? vastExtension.getLoadingStyle() : null));
    }

    public final void e(VastExtension vastExtension) {
        if (vastExtension != null && !vastExtension.getMuteStyle().isVisible().booleanValue()) {
            IabMuteWrapper iabMuteWrapper = this.j;
            if (iabMuteWrapper != null) {
                iabMuteWrapper.detach();
                return;
            }
            return;
        }
        if (this.j == null) {
            IabMuteWrapper iabMuteWrapper2 = new IabMuteWrapper(new t());
            this.j = iabMuteWrapper2;
            this.P.add(iabMuteWrapper2);
        }
        this.j.attach(getContext(), this.e, a(vastExtension, vastExtension != null ? vastExtension.getMuteStyle() : null));
    }

    public final void f(VastExtension vastExtension) {
        this.f.setCountDownStyle(a(vastExtension, vastExtension != null ? vastExtension.getCountDownStyle() : null));
        if (isFullscreen()) {
            this.f.setCloseStyle(a(vastExtension, vastExtension != null ? vastExtension.getCloseStyle() : null));
            this.f.setCloseClickListener(new q());
        }
        d(vastExtension);
    }

    public class o extends WebViewClient {
        public o() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            webView.setBackgroundColor(0);
            webView.setLayerType(1, null);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            VastView.this.o();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (webResourceRequest.hasGesture()) {
                VastView.this.O.add(webView);
            }
            return shouldOverrideUrlLoading(webView, webResourceRequest.getUrl().toString());
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (!VastView.this.O.contains(webView)) {
                return true;
            }
            VastLog.d(VastView.this.a, "banner clicked", new Object[0]);
            VastView vastView = VastView.this;
            vastView.a(vastView.p, str);
            return true;
        }
    }

    public final void c(VastExtension vastExtension) {
        if (vastExtension == null || !vastExtension.isVideoClickable()) {
            return;
        }
        this.P.clear();
    }

    public final void b(VastExtension vastExtension) {
        if (vastExtension != null && !vastExtension.getCountDownStyle().isVisible().booleanValue()) {
            IabCountDownWrapper iabCountDownWrapper = this.h;
            if (iabCountDownWrapper != null) {
                iabCountDownWrapper.detach();
                return;
            }
            return;
        }
        if (this.h == null) {
            IabCountDownWrapper iabCountDownWrapper2 = new IabCountDownWrapper(null);
            this.h = iabCountDownWrapper2;
            this.P.add(iabCountDownWrapper2);
        }
        this.h.attach(getContext(), this.e, a(vastExtension, vastExtension != null ? vastExtension.getCountDownStyle() : null));
    }

    public final void c(IabError iabError) {
        VastLog.e(this.a, "handlePlaybackError - %s", iabError);
        this.K = true;
        a(VastSpecError.SHOWING);
        a(this.v, this.t, iabError);
        j();
    }

    public final boolean a(VastRequest vastRequest, Boolean bool, boolean z2) {
        stopPlayback();
        if (!z2) {
            this.u = new C();
        }
        if (bool != null) {
            this.u.e = bool.booleanValue();
        }
        this.t = vastRequest;
        if (vastRequest == null) {
            e();
            VastLog.e(this.a, "VastRequest is null. Stop playing...", new Object[0]);
            return false;
        }
        VastAd vastAd = vastRequest.getVastAd();
        if (vastAd == null) {
            e();
            VastLog.e(this.a, "VastAd is null. Stop playing...", new Object[0]);
            return false;
        }
        CacheControl cacheControl = vastRequest.getCacheControl();
        if (cacheControl == CacheControl.PartialLoad && !isVideoFileLoaded()) {
            a(vastRequest, vastAd, cacheControl, z2);
            return true;
        }
        if (cacheControl == CacheControl.Stream && !isVideoFileLoaded()) {
            a(vastRequest, vastAd, cacheControl, z2);
            vastRequest.performCache(getContext().getApplicationContext(), null);
            return true;
        }
        a(vastRequest, vastAd, z2);
        return true;
    }

    public final void c(TrackingEvent trackingEvent) {
        VastLog.d(this.a, "Track Event: %s", trackingEvent);
        VastRequest vastRequest = this.t;
        VastAd vastAd = vastRequest != null ? vastRequest.getVastAd() : null;
        if (vastAd != null) {
            a(vastAd.getTrackingEventListMap(), trackingEvent);
        }
    }

    public static class C implements Parcelable {
        public static final Parcelable.Creator<C> CREATOR = new a();
        public String a;
        public float b;
        public int c;
        public int d;
        public boolean e;
        public boolean f;
        public boolean g;
        public boolean h;
        public boolean i;
        public boolean j;
        public boolean k;
        public boolean l;
        public boolean m;
        public boolean n;

        public class a implements Parcelable.Creator {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C createFromParcel(Parcel parcel) {
                return new C(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C[] newArray(int i) {
                return new C[i];
            }
        }

        public C() {
            this.a = null;
            this.b = 5.0f;
            this.c = 0;
            this.d = 0;
            this.e = true;
            this.f = false;
            this.g = false;
            this.h = false;
            this.i = false;
            this.j = false;
            this.k = false;
            this.l = false;
            this.m = true;
            this.n = false;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.a);
            parcel.writeFloat(this.b);
            parcel.writeInt(this.c);
            parcel.writeInt(this.d);
            parcel.writeByte(this.e ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.g ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.h ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.i ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.j ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.k ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.l ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.m ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.n ? (byte) 1 : (byte) 0);
        }

        public C(Parcel parcel) {
            this.a = null;
            this.b = 5.0f;
            this.c = 0;
            this.d = 0;
            this.e = true;
            this.f = false;
            this.g = false;
            this.h = false;
            this.i = false;
            this.j = false;
            this.k = false;
            this.l = false;
            this.m = true;
            this.n = false;
            this.a = parcel.readString();
            this.b = parcel.readFloat();
            this.c = parcel.readInt();
            this.d = parcel.readInt();
            this.e = parcel.readByte() != 0;
            this.f = parcel.readByte() != 0;
            this.g = parcel.readByte() != 0;
            this.h = parcel.readByte() != 0;
            this.i = parcel.readByte() != 0;
            this.j = parcel.readByte() != 0;
            this.k = parcel.readByte() != 0;
            this.l = parcel.readByte() != 0;
            this.m = parcel.readByte() != 0;
            this.n = parcel.readByte() != 0;
        }
    }

    public final void c() {
        removeCallbacks(this.R);
    }

    public final void h() {
        VastLog.d(this.a, "handleImpressions", new Object[0]);
        VastRequest vastRequest = this.t;
        if (vastRequest != null) {
            this.u.k = true;
            a(vastRequest.getVastAd().getImpressionUrlList());
        }
    }

    public final void d() {
        int i2;
        int i3 = this.C;
        if (i3 != 0 && (i2 = this.D) != 0) {
            this.b.setVideoSize(i3, i2);
        } else {
            VastLog.d(this.a, "configureVideoSurface - skip: videoWidth or videoHeight is 0", new Object[0]);
        }
    }

    public final void g() {
        VastLog.d(this.a, "handleComplete", new Object[0]);
        C c = this.u;
        c.i = true;
        if (!this.K && !c.h) {
            c.h = true;
            VastPlaybackListener vastPlaybackListener = this.w;
            if (vastPlaybackListener != null) {
                vastPlaybackListener.onVideoCompleted();
            }
            VastViewListener vastViewListener = this.v;
            if (vastViewListener != null) {
                vastViewListener.onComplete(this, this.t);
            }
            VastRequest vastRequest = this.t;
            if (vastRequest != null && vastRequest.isR2() && !this.u.l) {
                i();
            }
            c(TrackingEvent.complete);
        }
        if (this.u.h) {
            j();
        }
    }

    public final void b(VastViewListener vastViewListener, VastRequest vastRequest, IabError iabError) {
        a(vastViewListener, vastRequest, iabError);
        if (vastViewListener == null || vastRequest == null) {
            return;
        }
        vastViewListener.onFinish(this, vastRequest, false);
    }

    public final void b(boolean z2) {
        VastView vastView;
        VastViewListener vastViewListener;
        if (!isLoaded() || this.I) {
            return;
        }
        this.I = true;
        this.u.j = true;
        int i2 = getResources().getConfiguration().orientation;
        int i3 = this.B;
        if (i2 != i3 && (vastViewListener = this.v) != null) {
            vastViewListener.onOrientationRequested(this, this.t, i3);
        }
        IabProgressWrapper iabProgressWrapper = this.l;
        if (iabProgressWrapper != null) {
            iabProgressWrapper.detach();
        }
        IabMuteWrapper iabMuteWrapper = this.j;
        if (iabMuteWrapper != null) {
            iabMuteWrapper.detach();
        }
        IabRepeatWrapper iabRepeatWrapper = this.i;
        if (iabRepeatWrapper != null) {
            iabRepeatWrapper.detach();
        }
        a();
        if (this.u.n) {
            if (this.r == null) {
                this.r = a(getContext());
            }
            this.r.setImageBitmap(this.b.getBitmap());
            addView(this.r, new FrameLayout.LayoutParams(-1, -1));
            this.e.bringToFront();
            return;
        }
        a(z2);
        if (this.q == null) {
            setCloseControlsVisible(true);
            if (this.r != null) {
                vastView = this;
                vastView.z = vastView.new w(getContext(), this.t.getFileUri(), this.t.getVastAd().getPickedMediaFileTag().getText(), new WeakReference(this.r));
            } else {
                vastView = this;
            }
            addView(vastView.r, new FrameLayout.LayoutParams(-1, -1));
        } else {
            vastView = this;
            setCloseControlsVisible(false);
            vastView.c.setVisibility(8);
            o();
            IabCtaWrapper iabCtaWrapper = vastView.m;
            if (iabCtaWrapper != null) {
                iabCtaWrapper.setVisibility(8);
            }
            MraidInterstitial mraidInterstitial = vastView.s;
            if (mraidInterstitial != null) {
                if (mraidInterstitial.isReady()) {
                    setLoadingViewVisibility(false);
                    vastView.s.showInView(this, false);
                } else {
                    setLoadingViewVisibility(true);
                }
            } else {
                setLoadingViewVisibility(false);
                b(IabError.internal("CompanionInterstitial is null"));
            }
        }
        stopPlayback();
        vastView.e.bringToFront();
        b(TrackingEvent.creativeView);
    }

    public final void f() {
        VastRequest vastRequest;
        VastLog.e(this.a, "handleCompanionClose", new Object[0]);
        b(TrackingEvent.close);
        VastViewListener vastViewListener = this.v;
        if (vastViewListener == null || (vastRequest = this.t) == null) {
            return;
        }
        vastViewListener.onFinish(this, vastRequest, isFinished());
    }

    public final void e() {
        VastRequest vastRequest;
        VastLog.e(this.a, "handleClose", new Object[0]);
        c(TrackingEvent.close);
        VastViewListener vastViewListener = this.v;
        if (vastViewListener == null || (vastRequest = this.t) == null) {
            return;
        }
        vastViewListener.onFinish(this, vastRequest, isFinished());
    }

    public final void a(VastRequest vastRequest, VastAd vastAd, CacheControl cacheControl, boolean z2) {
        vastRequest.setVastVideoLoadedListener(new p(z2, cacheControl));
        f(vastAd.getAppodealExtension());
        setPlaceholderViewVisible(true);
        setLoadingViewVisibility(true);
    }

    public final void a(VastRequest vastRequest, VastAd vastAd, boolean z2) {
        int i2;
        AppodealExtensionTag appodealExtension = vastAd.getAppodealExtension();
        this.A = vastRequest.getPreferredVideoOrientation();
        if (appodealExtension != null && appodealExtension.getCtaStyle().isVisible().booleanValue()) {
            this.p = appodealExtension.getCompanionTag();
        } else {
            this.p = null;
        }
        if (this.p == null) {
            this.p = vastAd.getBanner(getContext());
        }
        i(appodealExtension);
        a(appodealExtension, this.o != null);
        a(appodealExtension);
        b(appodealExtension);
        e(appodealExtension);
        h(appodealExtension);
        g(appodealExtension);
        d(appodealExtension);
        c(appodealExtension);
        setLoadingViewVisibility(false);
        VastAdMeasurer vastAdMeasurer = this.x;
        if (vastAdMeasurer != null) {
            vastAdMeasurer.registerAdContainer(this);
            this.x.registerAdView(this.b);
        }
        VastViewListener vastViewListener = this.v;
        if (vastViewListener != null) {
            if (this.u.j) {
                i2 = this.B;
            } else {
                i2 = this.A;
            }
            vastViewListener.onOrientationRequested(this, vastRequest, i2);
        }
        if (!z2) {
            this.u.a = vastRequest.getId();
            C c = this.u;
            c.m = this.M;
            c.n = this.N;
            if (appodealExtension != null) {
                c.f = appodealExtension.isMuted();
            }
            this.u.b = vastRequest.getFusedVideoCloseTimeSec();
            VastAdMeasurer vastAdMeasurer2 = this.x;
            if (vastAdMeasurer2 != null) {
                vastAdMeasurer2.onAdViewReady(this.b);
                this.x.onAdShown();
            }
            VastViewListener vastViewListener2 = this.v;
            if (vastViewListener2 != null) {
                vastViewListener2.onShown(this, vastRequest);
            }
        }
        setCloseControlsVisible(a(vastRequest));
        startPlayback("load (restoring: " + z2 + ")");
    }

    public final boolean i() {
        VastLog.e(this.a, "handleInfoClicked", new Object[0]);
        VastRequest vastRequest = this.t;
        if (vastRequest != null) {
            return a(vastRequest.getVastAd().getClickTrackingUrlList(), this.t.getVastAd().getClickThroughUrl());
        }
        return false;
    }

    public final boolean a(VastRequest vastRequest) {
        return vastRequest.getVideoType() != VideoType.Rewarded || vastRequest.getMaxDurationMillis() <= 0;
    }

    public final void a(VastExtension vastExtension, boolean z2) {
        if (!z2 && (vastExtension == null || vastExtension.getCtaStyle().isVisible().booleanValue())) {
            if (this.m == null) {
                IabCtaWrapper iabCtaWrapper = new IabCtaWrapper(new r());
                this.m = iabCtaWrapper;
                this.P.add(iabCtaWrapper);
            }
            this.m.attach(getContext(), this.e, a(vastExtension, vastExtension != null ? vastExtension.getCtaStyle() : null));
            return;
        }
        IabCtaWrapper iabCtaWrapper2 = this.m;
        if (iabCtaWrapper2 != null) {
            iabCtaWrapper2.detach();
        }
    }

    public final void b() {
        z zVar = this.z;
        if (zVar != null) {
            zVar.a();
            this.z = null;
        }
    }

    public final void b(IabError iabError) {
        VastRequest vastRequest;
        VastLog.e(this.a, "handleCompanionShowError - %s", iabError);
        a(VastSpecError.GENERAL_COMPANION);
        a(this.v, this.t, iabError);
        if (this.q != null) {
            k();
            b(true);
            return;
        }
        VastViewListener vastViewListener = this.v;
        if (vastViewListener == null || (vastRequest = this.t) == null) {
            return;
        }
        vastViewListener.onFinish(this, vastRequest, isFinished());
    }

    public final void a(VastExtension vastExtension) {
        if (vastExtension != null && !vastExtension.getCloseStyle().isVisible().booleanValue()) {
            IabCloseWrapper iabCloseWrapper = this.g;
            if (iabCloseWrapper != null) {
                iabCloseWrapper.detach();
                return;
            }
            return;
        }
        if (this.g == null) {
            IabCloseWrapper iabCloseWrapper2 = new IabCloseWrapper(new s());
            this.g = iabCloseWrapper2;
            this.P.add(iabCloseWrapper2);
        }
        this.g.attach(getContext(), this.e, a(vastExtension, vastExtension != null ? vastExtension.getCloseStyle() : null));
    }

    public final void b(TrackingEvent trackingEvent) {
        VastLog.d(this.a, "Track Companion Event: %s", trackingEvent);
        CompanionTag companionTag = this.q;
        if (companionTag != null) {
            a(companionTag.getTrackingEventListMap(), trackingEvent);
        }
    }

    public final IabElementStyle a(VastExtension vastExtension, IabElementStyle iabElementStyle) {
        if (vastExtension == null) {
            return null;
        }
        if (iabElementStyle == null) {
            IabElementStyle iabElementStyle2 = new IabElementStyle();
            iabElementStyle2.setStrokeColor(vastExtension.getAssetsColor());
            iabElementStyle2.setFillColor(vastExtension.getAssetsBackgroundColor());
            return iabElementStyle2;
        }
        if (!iabElementStyle.hasStrokeColor()) {
            iabElementStyle.setStrokeColor(vastExtension.getAssetsColor());
        }
        if (!iabElementStyle.hasFillColor()) {
            iabElementStyle.setFillColor(vastExtension.getAssetsBackgroundColor());
        }
        return iabElementStyle;
    }

    public final View a(Context context, CompanionTag companionTag) {
        float width;
        float height;
        boolean zIsTablet = Utils.isTablet(context);
        if (companionTag.getWidth() > 0) {
            width = companionTag.getWidth();
        } else {
            width = zIsTablet ? 728.0f : 320.0f;
        }
        int iDpToPx = Utils.dpToPx(context, width);
        if (companionTag.getHeight() > 0) {
            height = companionTag.getHeight();
        } else {
            height = zIsTablet ? 90.0f : 50.0f;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDpToPx, Utils.dpToPx(context, height));
        WebView webView = new WebView(context);
        webView.setId(ViewUtils.generateViewId());
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setScrollContainer(false);
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        webView.setScrollBarStyle(33554432);
        webView.setFocusableInTouchMode(false);
        webView.setBackgroundColor(0);
        webView.setOnTouchListener(this.h0);
        webView.setWebViewClient(this.j0);
        webView.setWebChromeClient(this.i0);
        String html = companionTag.getHtml();
        if (html != null) {
            webView.loadDataWithBaseURL("", html, "text/html", G5.O, null);
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setId(ViewUtils.generateViewId());
        frameLayout.setLayoutParams(layoutParams);
        frameLayout.addView(webView, new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    public final void a(boolean z2) {
        if (isLoaded()) {
            k kVar = null;
            if (!z2) {
                CompanionTag companion = this.t.getVastAd().getCompanion(getAvailableWidth(), getAvailableHeight());
                if (this.q != companion) {
                    if (companion != null && this.t.shouldUseScreenSizeForCompanionOrientation()) {
                        this.B = Utils.orientationBySize(companion.getWidth(), companion.getHeight());
                    } else {
                        this.B = this.A;
                    }
                    this.q = companion;
                    MraidInterstitial mraidInterstitial = this.s;
                    if (mraidInterstitial != null) {
                        mraidInterstitial.destroy();
                        this.s = null;
                    }
                }
            }
            if (this.q == null) {
                if (this.r == null) {
                    this.r = a(getContext());
                    return;
                }
                return;
            }
            if (this.s == null) {
                p();
                String htmlForMraid = this.q.getHtmlForMraid();
                if (htmlForMraid != null) {
                    AppodealExtensionTag appodealExtension = this.t.getVastAd().getAppodealExtension();
                    PostBannerTag postBannerTag = appodealExtension != null ? appodealExtension.getPostBannerTag() : null;
                    MraidInterstitial.Builder listener = MraidInterstitial.newBuilder().setBaseUrl(null).setCacheControl(CacheControl.FullLoad).setCloseTime(this.t.getCompanionCloseTime()).forceUseNativeCloseButton(this.t.isForceUseNativeCloseTime()).setIsTag(false).setAdMeasurer(this.y).setListener(new y(this, kVar));
                    if (postBannerTag != null) {
                        listener.setCloseStyle(postBannerTag.getCloseStyle());
                        listener.setCountDownStyle(postBannerTag.getCountDownStyle());
                        listener.setLoadingStyle(postBannerTag.getLoadingStyle());
                        listener.setProgressStyle(postBannerTag.getProgressStyle());
                        listener.setDurationSec(postBannerTag.getDurationSec());
                        listener.setProductLink(postBannerTag.getProductLink());
                        if (postBannerTag.isForceUseNativeClose()) {
                            listener.forceUseNativeCloseButton(true);
                        }
                        listener.setR1(postBannerTag.isR1());
                        listener.setR2(postBannerTag.isR2());
                    }
                    try {
                        MraidInterstitial mraidInterstitialBuild = listener.build(getContext());
                        this.s = mraidInterstitialBuild;
                        mraidInterstitialBuild.load(htmlForMraid);
                        return;
                    } catch (Throwable th) {
                        b(IabError.throwable("Exception during companion creation", th));
                        return;
                    }
                }
                b(IabError.badContent("Companion creative is null"));
            }
        }
    }

    public final ImageView a(Context context) {
        ImageView imageView = new ImageView(context);
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        return imageView;
    }

    public final void a() {
        Iterator it = this.P.iterator();
        while (it.hasNext()) {
            ((IabElementWrapper) it.next()).cancelHide();
        }
    }

    public final void a(IabError iabError) {
        VastLog.e(this.a, "handleCompanionExpired - %s", iabError);
        a(VastSpecError.GENERAL_COMPANION);
        if (this.q != null) {
            k();
            a(true);
        }
    }

    public final boolean a(CompanionTag companionTag, String str) {
        VastRequest vastRequest = this.t;
        ArrayList arrayList = null;
        VastAd vastAd = vastRequest != null ? vastRequest.getVastAd() : null;
        ArrayList<String> wrapperCompanionClickTrackingUrlList = vastAd != null ? vastAd.getWrapperCompanionClickTrackingUrlList() : null;
        List<String> companionClickTrackingList = companionTag != null ? companionTag.getCompanionClickTrackingList() : null;
        if (wrapperCompanionClickTrackingUrlList != null || companionClickTrackingList != null) {
            arrayList = new ArrayList();
            if (companionClickTrackingList != null) {
                arrayList.addAll(companionClickTrackingList);
            }
            if (wrapperCompanionClickTrackingUrlList != null) {
                arrayList.addAll(wrapperCompanionClickTrackingUrlList);
            }
        }
        return a(arrayList, str);
    }

    public final boolean a(List list, String str) {
        VastLog.d(this.a, "processClickThroughEvent: %s", str);
        this.u.l = true;
        if (str == null) {
            return false;
        }
        if (this.v != null && this.t != null) {
            l();
            setLoadingViewVisibility(true);
            this.v.onClick(this, this.t, new x(list), str);
        }
        return true;
    }

    public final void a(TrackingEvent trackingEvent) {
        VastLog.d(this.a, "Track Banner Event: %s", trackingEvent);
        CompanionTag companionTag = this.p;
        if (companionTag != null) {
            a(companionTag.getTrackingEventListMap(), trackingEvent);
        }
    }

    public final void a(Map map, TrackingEvent trackingEvent) {
        if (map != null && !map.isEmpty()) {
            a((List) map.get(trackingEvent));
        } else {
            VastLog.d(this.a, "Processing Event - fail: %s (tracking event map is null or empty)", trackingEvent);
        }
    }

    public final void a(List list) {
        if (isLoaded()) {
            if (list != null && !list.isEmpty()) {
                VastRequest vastRequest = this.t;
                if (vastRequest != null) {
                    vastRequest.fireUrls(list, null);
                    return;
                }
                return;
            }
            VastLog.d(this.a, "\turl list is null", new Object[0]);
        }
    }

    public final void a(VastViewListener vastViewListener, VastRequest vastRequest, IabError iabError) {
        if (vastViewListener == null || vastRequest == null) {
            return;
        }
        vastViewListener.onShowFailed(this, vastRequest, iabError);
    }

    public final void a(VastSpecError vastSpecError) {
        VastRequest vastRequest = this.t;
        if (vastRequest != null) {
            vastRequest.sendVastSpecError(vastSpecError);
        }
    }
}
