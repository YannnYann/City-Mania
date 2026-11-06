package io.bidmachine.iab.mraid;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.graphics.Point;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.iab.CacheControl;
import io.bidmachine.iab.IabError;
import io.bidmachine.iab.measurer.MraidAdMeasurer;
import io.bidmachine.iab.mraid.MraidAdView;
import io.bidmachine.iab.utils.Assets;
import io.bidmachine.iab.utils.ClickAreaFactory;
import io.bidmachine.iab.utils.IabClickCallback;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.iab.utils.IabLoadingWrapper;
import io.bidmachine.iab.utils.IabProgressWrapper;
import io.bidmachine.iab.utils.IabTimerHelper;
import io.bidmachine.iab.utils.Utils;
import io.bidmachine.iab.view.CloseableLayout;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.model.engagedclick.EngagedClickParams;
import io.bidmachine.util.ViewUtils;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"ViewConstructor"})
public class MraidView extends CloseableLayout implements CloseableLayout.OnCloseClickListener, IabClickCallback {
    public final AtomicBoolean A;
    public final CloseableLayout.OnCloseClickListener B;
    public final IabElementStyle C;
    public final IabElementStyle D;
    public final IabElementStyle E;
    public final IabElementStyle F;
    public boolean G;
    public IabTimerHelper H;
    public IabProgressWrapper I;
    public boolean J;
    public Integer K;
    public final MutableContextWrapper h;
    public final MraidAdView i;
    public CloseableLayout j;
    public CloseableLayout k;
    public IabLoadingWrapper l;
    public WeakReference m;
    public String n;
    public MraidViewListener o;
    public final MraidAdMeasurer p;
    public final CacheControl q;
    public final float r;
    public final float s;
    public final float t;
    public final boolean u;
    public final boolean v;
    public final boolean w;
    public final boolean x;
    public final boolean y;
    public final AtomicBoolean z;

    public static class Builder {
        public final MraidPlacementType a;
        public CacheControl b;
        public String c;
        public String d;
        public String e;
        public String[] f;
        public IabElementStyle g;
        public IabElementStyle h;
        public IabElementStyle i;
        public IabElementStyle j;
        public float k;
        public float l;
        public MraidViewListener listener;
        public float m;
        public MraidAdMeasurer mraidAdMeasurer;
        public boolean n;
        public boolean o;
        public boolean p;
        public boolean q;
        public boolean r;
        public EngagedClickParams s;

        public Builder() {
            this(MraidPlacementType.INLINE);
        }

        public MraidView build(Context context) {
            return new MraidView(context, this, null);
        }

        public Builder forceUseNativeCloseButton(boolean forceUseNativeCloseButton) {
            this.o = forceUseNativeCloseButton;
            return this;
        }

        public Builder setAdMeasurer(MraidAdMeasurer mraidAdMeasurer) {
            this.mraidAdMeasurer = mraidAdMeasurer;
            return this;
        }

        public Builder setAutoViewabilityCheck(boolean isAutoViewabilityCheck) {
            this.r = isAutoViewabilityCheck;
            return this;
        }

        public Builder setBaseUrl(String baseUrl) {
            this.c = baseUrl;
            return this;
        }

        public Builder setCacheControl(CacheControl cacheControl) {
            this.b = cacheControl;
            return this;
        }

        public Builder setCloseStyle(IabElementStyle closeStyle) {
            this.g = closeStyle;
            return this;
        }

        public Builder setCloseTimeSec(float closeTimeSec) {
            this.l = closeTimeSec;
            return this;
        }

        public Builder setCountDownStyle(IabElementStyle countDownStyle) {
            this.h = countDownStyle;
            return this;
        }

        public Builder setDurationSec(float durationSec) {
            this.m = durationSec;
            return this;
        }

        public Builder setEngagedClickParams(EngagedClickParams engagedClickParams) {
            this.s = engagedClickParams;
            return this;
        }

        public Builder setIsTag(boolean isTag) {
            this.n = isTag;
            return this;
        }

        public Builder setListener(MraidViewListener listener) {
            this.listener = listener;
            return this;
        }

        public Builder setLoadingStyle(IabElementStyle loadingStyle) {
            this.i = loadingStyle;
            return this;
        }

        public Builder setPlaceholderTimeoutSec(float placeholderTimeoutSec) {
            this.k = placeholderTimeoutSec;
            return this;
        }

        public Builder setProductLink(String productLink) {
            this.d = productLink;
            return this;
        }

        public Builder setProgressStyle(IabElementStyle progressStyle) {
            this.j = progressStyle;
            return this;
        }

        public Builder setR1(boolean r1) {
            this.p = r1;
            return this;
        }

        public Builder setR2(boolean r2) {
            this.q = r2;
            return this;
        }

        public Builder(MraidPlacementType mraidPlacementType) {
            this.f = null;
            this.k = 3.0f;
            this.l = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.m = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.r = false;
            this.a = mraidPlacementType;
            this.b = CacheControl.FullLoad;
            this.c = "https://localhost";
        }
    }

    public class a implements IabTimerHelper.TimerHelperCallback {
        public a() {
        }

        @Override // io.bidmachine.iab.utils.IabTimerHelper.TimerHelperCallback
        public void onTimerFinish() {
            if (MraidView.this.I != null) {
                MraidView.this.I.detach();
            }
            if (MraidView.this.i.isOpenNotified() || !MraidView.this.x || MraidView.this.t <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                return;
            }
            MraidView.this.g();
        }

        @Override // io.bidmachine.iab.utils.IabTimerHelper.TimerHelperCallback
        public void onTimerTick(float f, long j, long j2) {
            int i = (int) (j2 / 1000);
            int i2 = (int) (j / 1000);
            if (MraidView.this.I != null) {
                MraidView.this.I.changePercentage(f, i2, i);
            }
        }
    }

    public class b implements CloseableLayout.OnCloseClickListener {
        public b() {
        }

        @Override // io.bidmachine.iab.view.CloseableLayout.OnCloseClickListener
        public void onCloseClick() {
            MraidView.this.c(IabError.placeholder("Close button clicked"));
            MraidView.this.j();
        }

        @Override // io.bidmachine.iab.view.CloseableLayout.OnCloseClickListener
        public void onCountDownFinish() {
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MraidViewState mraidViewState = MraidView.this.i.getMraidViewState();
            if (mraidViewState == MraidViewState.RESIZED) {
                MraidView.this.e();
                return;
            }
            if (mraidViewState == MraidViewState.EXPANDED) {
                MraidView.this.d();
            } else if (MraidView.this.h()) {
                MraidView.this.i.close();
                MraidView.this.j();
            }
        }
    }

    public static /* synthetic */ class d {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[CacheControl.values().length];
            a = iArr;
            try {
                iArr[CacheControl.FullLoad.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[CacheControl.Stream.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[CacheControl.PartialLoad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class e implements MraidAdView.Listener {
        public e() {
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public boolean ignoreExpandUrl(MraidAdView mraidAdView) {
            return false;
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onCalendarEventIntention(MraidAdView mraidAdView, String str) {
            MraidView.this.b(str);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onChangeOrientationIntention(MraidAdView mraidAdView, MraidOrientationProperties mraidOrientationProperties) {
            MraidView.this.a(mraidOrientationProperties);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onCloseIntention(MraidAdView mraidAdView) {
            MraidView.this.f();
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onExpand(MraidAdView mraidAdView) {
            mraidAdView.handleExpanded();
            MraidView.this.k();
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public boolean onExpandIntention(MraidAdView mraidAdView, WebView webView, MraidOrientationProperties mraidOrientationProperties, boolean z) {
            return MraidView.this.a(webView, mraidOrientationProperties, z);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onExpandLoadFailed(MraidAdView mraidAdView) {
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onExpandLoadStart(MraidAdView mraidAdView) {
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onMraidAdViewExpired(MraidAdView mraidAdView, IabError iabError) {
            MraidView.this.a(iabError);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onMraidAdViewLoadFailed(MraidAdView mraidAdView, IabError iabError) {
            MraidView.this.b(iabError);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onMraidAdViewPageCommitVisible(MraidAdView mraidAdView) {
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onMraidAdViewPageLoaded(MraidAdView mraidAdView, String str, WebView webView, boolean z) {
            MraidView.this.a(str, webView, z);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onMraidAdViewShowFailed(MraidAdView mraidAdView, IabError iabError) {
            MraidView.this.c(iabError);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onMraidAdViewShown(MraidAdView mraidAdView) {
            MraidView.this.m();
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onMraidLoadedIntention(MraidAdView mraidAdView) {
            MraidView.this.l();
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onOpenPrivacySheet(MraidAdView mraidAdView, PrivacySheetParams privacySheetParams) {
            MraidView.this.a(privacySheetParams);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onOpenUrlIntention(MraidAdView mraidAdView, String str, Point point) {
            MraidView.this.c(str);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onPlayVideoIntention(MraidAdView mraidAdView, String str) {
            MraidView.this.a(str);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onStorePictureIntention(MraidAdView mraidAdView, String str) {
            MraidView.this.d(str);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
        public void onSyncCustomCloseIntention(MraidAdView mraidAdView, boolean z) {
            if (MraidView.this.v) {
                return;
            }
            if (z && !MraidView.this.G) {
                MraidView.this.G = true;
            }
            MraidView.this.a(z);
        }

        public /* synthetic */ e(MraidView mraidView, a aVar) {
            this();
        }
    }

    public /* synthetic */ MraidView(Context context, Builder builder, a aVar) {
        this(context, builder);
    }

    @Override // io.bidmachine.iab.view.CloseableLayout
    public boolean canBeClosed() {
        if (getOnScreenTimeMs() > 30000 || this.i.isReceivedJsError()) {
            return true;
        }
        if (this.v || !this.i.isUseCustomClose()) {
            return super.canBeClosed();
        }
        return false;
    }

    @Override // io.bidmachine.iab.utils.IabClickCallback
    public void clickHandled() {
        setLoadingVisible(false);
    }

    @Override // io.bidmachine.iab.utils.IabClickCallback
    public void clickVerified() {
        MraidAdMeasurer mraidAdMeasurer = this.p;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.onAdClicked();
        }
    }

    public void destroy() {
        this.o = null;
        this.m = null;
        Activity activityPeekActivity = peekActivity();
        if (activityPeekActivity != null) {
            a(activityPeekActivity);
        }
        a((View) this.j);
        a((View) this.k);
        this.i.destroy();
        IabTimerHelper iabTimerHelper = this.H;
        if (iabTimerHelper != null) {
            iabTimerHelper.detach();
        }
    }

    public void load(final String htmlData) {
        MraidAdMeasurer mraidAdMeasurer = this.p;
        if (mraidAdMeasurer != null && htmlData != null) {
            htmlData = mraidAdMeasurer.prepareCreativeForMeasure(htmlData);
        }
        int i = d.a[this.q.ordinal()];
        if (i == 1) {
            e(htmlData);
            return;
        }
        if (i == 2) {
            this.n = htmlData;
            l();
        } else {
            if (i != 3) {
                return;
            }
            l();
            e(htmlData);
        }
    }

    public final void n() {
        setCloseClickListener(this.B);
        setCloseVisibility(true, this.r);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.J = true;
        a(getVisibility());
    }

    @Override // io.bidmachine.iab.view.CloseableLayout.OnCloseClickListener
    public void onCloseClick() {
        f();
    }

    @Override // io.bidmachine.iab.view.CloseableLayout.OnCloseClickListener
    public void onCountDownFinish() {
        if (!this.i.isOpenNotified() && this.x && this.t == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            g();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.J = false;
        a(getVisibility());
    }

    public void onViewabilityChanged(boolean isViewable) {
        this.i.onViewabilityChanged(isViewable);
    }

    @Override // io.bidmachine.iab.view.CloseableLayout, android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        a(i);
    }

    public Activity peekActivity() {
        WeakReference weakReference = this.m;
        if (weakReference != null) {
            return (Activity) weakReference.get();
        }
        return null;
    }

    public Context peekContext() {
        Activity activityPeekActivity = peekActivity();
        return activityPeekActivity == null ? getContext() : activityPeekActivity;
    }

    public void setLastInteractedActivity(Activity activity) {
        if (activity != null) {
            this.m = new WeakReference(activity);
            this.h.setBaseContext(activity);
        }
    }

    public void setLoadingVisible(boolean visible) {
        if (!visible) {
            IabLoadingWrapper iabLoadingWrapper = this.l;
            if (iabLoadingWrapper != null) {
                iabLoadingWrapper.setVisibility(8);
                return;
            }
            return;
        }
        if (this.l == null) {
            IabLoadingWrapper iabLoadingWrapper2 = new IabLoadingWrapper(null);
            this.l = iabLoadingWrapper2;
            iabLoadingWrapper2.attach(getContext(), this, this.E);
        }
        this.l.setVisibility(0);
        this.l.bringToFront();
    }

    public void show(Activity activity) {
        int i = d.a[this.q.ordinal()];
        if (i != 1) {
            if (i == 2) {
                if (h()) {
                    n();
                }
                e(this.n);
                this.n = null;
            } else if (i == 3) {
                if (i()) {
                    if (h()) {
                        a((CloseableLayout) this, this.i.isUseCustomClose());
                    }
                } else if (h()) {
                    n();
                }
            }
        } else if (h()) {
            a((CloseableLayout) this, this.i.isUseCustomClose());
        }
        this.i.show();
        setLastInteractedActivity(activity);
        a(this.i.getLastOrientationProperties());
    }

    public MraidView(Context context, Builder builder) {
        super(context);
        this.z = new AtomicBoolean(false);
        this.A = new AtomicBoolean(false);
        this.G = false;
        this.J = false;
        this.h = new MutableContextWrapper(context);
        this.o = builder.listener;
        this.q = builder.b;
        this.r = builder.k;
        this.s = builder.l;
        float f = builder.m;
        this.t = f;
        this.u = builder.n;
        this.v = builder.o;
        this.w = builder.p;
        this.x = builder.q;
        this.y = builder.r;
        MraidAdMeasurer mraidAdMeasurer = builder.mraidAdMeasurer;
        this.p = mraidAdMeasurer;
        this.C = builder.g;
        this.D = builder.h;
        this.E = builder.i;
        IabElementStyle iabElementStyle = builder.j;
        this.F = iabElementStyle;
        MraidAdView mraidAdViewBuild = new MraidAdView.Builder(context.getApplicationContext(), builder.a, new e(this, null)).setBaseUrl(builder.c).setProductLink(builder.d).setAllowedNativeFeatures(builder.f).setPageFinishedScript(builder.e).setEngagedClickParams(builder.s).build();
        this.i = mraidAdViewBuild;
        addView(mraidAdViewBuild, new FrameLayout.LayoutParams(-1, -1, 17));
        if (f > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            IabProgressWrapper iabProgressWrapper = new IabProgressWrapper(null);
            this.I = iabProgressWrapper;
            iabProgressWrapper.attach(context, this, iabElementStyle);
            IabTimerHelper iabTimerHelper = new IabTimerHelper(this, new a());
            this.H = iabTimerHelper;
            iabTimerHelper.setTime(f);
        }
        this.B = new b();
        setCloseClickListener(this);
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.registerAdContainer(this);
            mraidAdMeasurer.registerAdView(mraidAdViewBuild.getWebView());
        }
    }

    public final void e(String str) {
        this.i.load(str);
    }

    public void f() {
        if (this.i.isOpenNotified() || !this.w) {
            Utils.onUiThread(new c());
        } else {
            g();
        }
    }

    public final void g() {
        IabElementStyle iabElementStyleResolveDefCloseStyle = Assets.resolveDefCloseStyle(getContext(), this.C);
        this.i.handleRedirect(new ClickAreaFactory(iabElementStyleResolveDefCloseStyle.getHorizontalPosition().intValue(), iabElementStyleResolveDefCloseStyle.getVerticalPosition().intValue()));
    }

    public boolean h() {
        return this.i.isInterstitial();
    }

    public final boolean i() {
        return this.i.isLoaded();
    }

    public final void j() {
        MraidViewListener mraidViewListener = this.o;
        if (mraidViewListener != null) {
            mraidViewListener.onClose(this);
        }
    }

    public final void k() {
        MraidViewListener mraidViewListener = this.o;
        if (mraidViewListener != null) {
            mraidViewListener.onExpand(this);
        }
    }

    public final void l() {
        MraidViewListener mraidViewListener;
        if (this.z.getAndSet(true) || (mraidViewListener = this.o) == null) {
            return;
        }
        mraidViewListener.onLoaded(this);
    }

    public final void m() {
        MraidAdMeasurer mraidAdMeasurer = this.p;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.onAdShown();
        }
        MraidViewListener mraidViewListener = this.o;
        if (mraidViewListener != null) {
            mraidViewListener.onShown(this);
        }
    }

    public final void d() {
        a((View) this.k);
        this.k = null;
        Activity activityPeekActivity = peekActivity();
        if (activityPeekActivity != null) {
            a(activityPeekActivity);
        }
        this.i.closeExpanded();
    }

    public final void e() {
        a((View) this.j);
        this.j = null;
        this.i.closeResized();
    }

    public final void c(IabError iabError) {
        MraidAdMeasurer mraidAdMeasurer = this.p;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.onError(iabError);
        }
        MraidViewListener mraidViewListener = this.o;
        if (mraidViewListener != null) {
            mraidViewListener.onShowFailed(this, iabError);
        }
    }

    public final void b(IabError iabError) {
        MraidAdMeasurer mraidAdMeasurer = this.p;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.onError(iabError);
        }
        MraidViewListener mraidViewListener = this.o;
        if (mraidViewListener != null) {
            mraidViewListener.onLoadFailed(this, iabError);
        }
    }

    public final void c(String str) {
        if (this.o == null) {
            return;
        }
        setLoadingVisible(true);
        this.o.onOpenUrl(this, str, this);
    }

    public final void a(IabError iabError) {
        MraidAdMeasurer mraidAdMeasurer = this.p;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.onError(iabError);
        }
        MraidViewListener mraidViewListener = this.o;
        if (mraidViewListener != null) {
            mraidViewListener.onExpired(this, iabError);
        }
    }

    public final void b(Activity activity) {
        this.K = Integer.valueOf(activity.getRequestedOrientation());
    }

    public final void b(String str) {
        if (this.o == null) {
            return;
        }
        setLoadingVisible(true);
        MraidAdMeasurer mraidAdMeasurer = this.p;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.onAdClicked();
        }
        this.o.onCalendarEvent(this, str, this);
    }

    public final void d(String str) {
        if (this.o == null) {
            return;
        }
        setLoadingVisible(true);
        MraidAdMeasurer mraidAdMeasurer = this.p;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.onAdClicked();
        }
        this.o.onStorePicture(this, str, this);
    }

    public final void a(String str) {
        MraidViewListener mraidViewListener = this.o;
        if (mraidViewListener != null) {
            mraidViewListener.onPlayVideo(this, str);
        }
    }

    public final void a(View view) {
        if (view == null) {
            return;
        }
        if (view instanceof ViewGroup) {
            ((ViewGroup) view).removeAllViews();
        }
        Utils.removeFromParent(view);
    }

    public void a(int i) {
        if (this.y) {
            boolean z = this.J && ViewUtils.isViewVisible(i);
            if (this.A.compareAndSet(!z, z)) {
                onViewabilityChanged(z);
            }
        }
    }

    public final void a(String str, WebView webView, boolean z) {
        setLoadingVisible(false);
        if (h()) {
            a((CloseableLayout) this, z);
        }
        MraidAdMeasurer mraidAdMeasurer = this.p;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.onAdViewReady(webView);
        }
        if (this.q != CacheControl.FullLoad || this.u || str.equals("data:text/html,<html></html>")) {
            return;
        }
        l();
    }

    public final void a(PrivacySheetParams privacySheetParams) {
        MraidViewListener mraidViewListener = this.o;
        if (mraidViewListener == null) {
            return;
        }
        mraidViewListener.onOpenPrivacySheet(this, privacySheetParams);
    }

    public final boolean a(WebView webView, MraidOrientationProperties mraidOrientationProperties, boolean z) {
        CloseableLayout closeableLayout = this.k;
        if (closeableLayout == null || closeableLayout.getParent() == null) {
            View topmostView = MraidUtils.getTopmostView(peekContext(), this);
            if (!(topmostView instanceof ViewGroup)) {
                MraidLog.e("MraidView", "Can't add expanded view because can't find required parent", new Object[0]);
                return false;
            }
            CloseableLayout closeableLayout2 = new CloseableLayout(getContext());
            this.k = closeableLayout2;
            closeableLayout2.setCloseClickListener(this);
            ((ViewGroup) topmostView).addView(this.k);
        }
        Utils.removeFromParent(webView);
        this.k.addView(webView);
        a(this.k, z);
        a(mraidOrientationProperties);
        return true;
    }

    public final void a(CloseableLayout closeableLayout, boolean z) {
        setCloseClickListener(this);
        closeableLayout.setCloseStyle(this.C);
        closeableLayout.setCountDownStyle(this.D);
        a(z);
    }

    public final void a(boolean z) {
        boolean z2 = !z || this.v;
        CloseableLayout closeableLayout = this.j;
        if (closeableLayout != null) {
            closeableLayout.setCloseVisibility(z2, this.s);
            return;
        }
        CloseableLayout closeableLayout2 = this.k;
        if (closeableLayout2 != null) {
            closeableLayout2.setCloseVisibility(z2, this.s);
        } else if (h()) {
            setCloseVisibility(z2, this.G ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : this.s);
        }
    }

    public final void a(Activity activity) {
        Integer num = this.K;
        if (num != null) {
            activity.setRequestedOrientation(num.intValue());
            this.K = null;
        }
    }

    public final void a(MraidOrientationProperties mraidOrientationProperties) {
        if (mraidOrientationProperties == null) {
            return;
        }
        Activity activityPeekActivity = peekActivity();
        MraidLog.d("MraidView", "applyOrientation: %s", mraidOrientationProperties);
        if (activityPeekActivity == null) {
            MraidLog.d("MraidView", "no any interacted activities", new Object[0]);
        } else {
            b(activityPeekActivity);
            activityPeekActivity.setRequestedOrientation(mraidOrientationProperties.obtainTargetActivityOrientation(activityPeekActivity));
        }
    }
}
