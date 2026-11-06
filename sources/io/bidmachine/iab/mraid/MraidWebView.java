package io.bidmachine.iab.mraid;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import com.ironsource.C3522b4;
import io.bidmachine.iab.utils.Utils;
import io.bidmachine.util.DeviceUtilsKt;
import io.bidmachine.util.UiUtils;
import java.lang.ref.WeakReference;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"SetJavaScriptEnabled"})
public final class MraidWebView extends WebView {
    public static final Companion Companion = new Companion(null);
    public static final MraidWebChromeClient g = new MraidWebChromeClient();
    public final WebViewGestureDetector a;
    public final MraidScreenMetrics b;
    public MraidWebViewListener c;
    public boolean d;
    public boolean e;
    public final WeakReference f;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public final class a implements View.OnTouchListener {
        public a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            MraidWebViewController controller;
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
            MraidWebView.this.a.onTouchEvent(motionEvent);
            int action = motionEvent.getAction();
            if ((action == 0 || action == 1) && !view.hasFocus()) {
                view.requestFocus();
            }
            if (motionEvent.getAction() != 0 || (controller = MraidWebView.this.getController()) == null) {
                return false;
            }
            controller.onWebViewClicked();
            return false;
        }
    }

    public static final class b extends Lambda implements Function0 {
        public static final b a = new b();

        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return C3522b4.i.t0;
        }
    }

    public static final class c extends Lambda implements Function0 {
        public static final c a = new c();

        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return C3522b4.i.u0;
        }
    }

    public static final class d extends Lambda implements Function0 {
        public final /* synthetic */ Configuration a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Configuration configuration) {
            super(0);
            this.a = configuration;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "onConfigurationChanged: " + Utils.orientationToString(this.a.orientation);
        }
    }

    public static final class e extends Lambda implements Function0 {
        public final /* synthetic */ boolean a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(boolean z) {
            super(0);
            this.a = z;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "setAudioMuted: " + this.a;
        }
    }

    public static final class f extends Lambda implements Function0 {
        public static final f a = new f();

        public f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "setAudioMuted: not supported";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MraidWebView(Context context, MraidWebViewController controller) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(controller, "controller");
        this.a = new WebViewGestureDetector(context);
        this.b = new MraidScreenMetrics(context);
        this.f = new WeakReference(controller);
        setScrollContainer(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setScrollBarStyle(33554432);
        setFocusableInTouchMode(false);
        setOnTouchListener(new a());
        setWebChromeClient(g);
        WebSettings settings = getSettings();
        settings.setSupportZoom(false);
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setMediaPlaybackRequiresUserGesture(false);
        setBackgroundColor(0);
    }

    public static final void a(MraidWebView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.updateMraidScreenMetrics$bidmachine_android_sdk_bb_3_8_0();
    }

    public static final void b(MraidWebView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.updateMraidScreenMetrics$bidmachine_android_sdk_bb_3_8_0();
    }

    private final void setAudioMuted(boolean z) {
        try {
            if (!WebViewFeature.isFeatureSupported(WebViewFeature.MUTE_AUDIO)) {
                MraidLog.w("MraidWebView", f.a);
            } else {
                WebViewCompat.setAudioMuted(this, z);
                MraidLog.d("MraidWebView", new e(z));
            }
        } catch (Throwable th) {
            MraidLog.e("MraidWebView", th);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.d = false;
        this.e = true;
        try {
            reset();
            removeAllViews();
            super.destroy();
        } catch (Throwable th) {
            MraidLog.e("MraidWebView", th);
        }
        this.f.clear();
    }

    public final void doPause() {
        MraidLog.d("MraidWebView", b.a);
        try {
            onPause();
        } catch (Throwable th) {
            MraidLog.e("MraidWebView", th);
        }
        setAudioMuted(true);
    }

    public final void doResume() {
        MraidLog.d("MraidWebView", c.a);
        try {
            onResume();
        } catch (Throwable th) {
            MraidLog.e("MraidWebView", th);
        }
        setAudioMuted(false);
    }

    public final Point getClickPoint() {
        return this.a.getClickPoint();
    }

    public final long getClickTimeMs() {
        return this.a.getClickTimeMs();
    }

    public final MraidWebViewController getController() {
        return (MraidWebViewController) this.f.get();
    }

    public final MraidScreenMetrics getMraidScreenMetrics() {
        return this.b;
    }

    public final MraidWebViewListener getMraidWebViewListener() {
        return this.c;
    }

    public final boolean isDestroyed() {
        return this.e;
    }

    @Override // android.webkit.WebView, android.view.View
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        MraidLog.d("MraidWebView", new d(newConfig));
        UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.iab.mraid.MraidWebView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MraidWebView.a(this.f$0);
            }
        });
    }

    public final void onPageFinished() {
        this.d = true;
        updateMraidScreenMetrics$bidmachine_android_sdk_bb_3_8_0();
    }

    @Override // android.webkit.WebView, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.iab.mraid.MraidWebView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MraidWebView.b(this.f$0);
            }
        });
    }

    public final void onViewabilityChanged(boolean z) {
        if (z) {
            doResume();
        } else {
            doPause();
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            doResume();
        } else {
            doPause();
        }
    }

    @Override // android.view.View
    public boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        return false;
    }

    public final void reset() {
        stopLoading();
        loadUrl("");
        doPause();
    }

    public final void resetClicked() {
        this.a.resetClick();
    }

    public final void setMraidWebViewListener(MraidWebViewListener mraidWebViewListener) {
        this.c = mraidWebViewListener;
    }

    public final void updateMraidScreenMetrics$bidmachine_android_sdk_bb_3_8_0() {
        MraidWebViewListener mraidWebViewListener;
        if (!this.d || this.e) {
            return;
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext()");
        Object parent = getParent();
        View view = parent instanceof View ? (View) parent : null;
        if (view == null) {
            view = this;
        }
        DisplayMetrics displayMetrics = DeviceUtilsKt.getDisplayMetrics(context);
        boolean screenSize = this.b.setScreenSize(displayMetrics.widthPixels, displayMetrics.heightPixels);
        int[] iArr = new int[2];
        View viewObtainRootView = MraidUtils.INSTANCE.obtainRootView(context, view);
        viewObtainRootView.getLocationOnScreen(iArr);
        boolean rootViewPosition = this.b.setRootViewPosition(iArr[0], iArr[1], viewObtainRootView.getWidth(), viewObtainRootView.getHeight()) | screenSize;
        view.getLocationOnScreen(iArr);
        boolean defaultAdPosition = rootViewPosition | this.b.setDefaultAdPosition(iArr[0], iArr[1], view.getWidth(), view.getHeight());
        getLocationOnScreen(iArr);
        if ((!defaultAdPosition && !this.b.setCurrentAdPosition(iArr[0], iArr[1], getWidth(), getHeight())) || (mraidWebViewListener = this.c) == null) {
            return;
        }
        mraidWebViewListener.onMraidScreenMetricsChanged(this.b);
    }

    public final boolean wasClicked() {
        return this.a.isClicked();
    }
}
