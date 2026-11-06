package ads_mobile_sdk;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.textclassifier.TextClassifier;
import android.webkit.CookieManager;
import android.webkit.DownloadListener;
import android.widget.RelativeLayout;
import android.widget.Toolbar;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.google.android.libraries.ads.mobile.sdk.R$drawable;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.common.base.Splitter;
import com.ironsource.C3522b4;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class yy0 extends OnBackPressedCallback implements h0, ay0 {
    public static final /* synthetic */ KProperty[] E = {kk.a(yy0.class, "hasContentViewBeenSet", "getHasContentViewBeenSet()Z", 0)};
    public final Mutex A;
    public boolean B;
    public Job C;
    public boolean D;
    public final Context a;
    public final CoroutineScope b;
    public final CoroutineContext c;
    public final CoroutineScope d;
    public final ex0 e;
    public final ur3 f;
    public final String g;
    public final o21 h;
    public final lo i;
    public final Optional j;
    public Job k;
    public final tn3 l;
    public final AtomicBoolean m;
    public final AtomicBoolean n;
    public ky o;
    public ComponentActivity p;
    public RelativeLayout q;
    public View r;
    public dy s;
    public Toolbar t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public final yy y;
    public int z;

    public static final void a(String str, String str2, String str3, String str4, long j) {
    }

    public static final void d(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void e(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public abstract void a(int i);

    public abstract Object b(Continuation continuation);

    public Object c(Continuation continuation) {
        return a(this, continuation);
    }

    public boolean f() {
        return false;
    }

    public boolean h() {
        return false;
    }

    public boolean i() {
        return false;
    }

    public abstract r31 j();

    public abstract int l();

    @Override // ads_mobile_sdk.h0
    public final void onConfigurationChanged(Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ yy0(Context context, CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineScope coroutineScope2, CoroutineContext coroutineContext2, ex0 ex0Var, ur3 ur3Var, String str, o21 o21Var, lo loVar) {
        Optional optionalEmpty = Optional.empty();
        Intrinsics.checkNotNullExpressionValue(optionalEmpty, "empty(...)");
        this(context, coroutineScope, coroutineContext, coroutineScope2, coroutineContext2, ex0Var, ur3Var, str, o21Var, loVar, optionalEmpty);
    }

    public static final void c(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void f(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void h(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public void a(ky closeReason) {
        Intrinsics.checkNotNullParameter(closeReason, "closeReason");
        this.o = closeReason;
        ComponentActivity componentActivity = this.p;
        if (componentActivity != null) {
            componentActivity.finish();
        }
    }

    public final RelativeLayout b(ComponentActivity componentActivity) throws InterruptedException {
        Window window;
        p();
        if (i()) {
            j().setLayerType(1, null);
        } else {
            Window window2 = componentActivity.getWindow();
            if (window2 != null) {
                window2.setFlags(16777216, 16777216);
            }
        }
        RelativeLayout relativeLayout = new RelativeLayout(componentActivity);
        relativeLayout.setId(View.generateViewId());
        relativeLayout.setBackgroundColor(this.w ? 0 : -16777216);
        this.q = relativeLayout;
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            ex0 ex0Var = this.e;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:enable_blur_transparent_background", C3522b4.i.W);
            if (((Boolean) ex0Var.a("gads:enable_blur_transparent_background", Boolean.TRUE, yr.b)).booleanValue() && (window = componentActivity.getWindow()) != null) {
                window.setBackgroundBlurRadius(this.z);
            }
        }
        if (this.x) {
            CookieManager.getInstance().setAcceptThirdPartyCookies(j(), false);
            ex0 ex0Var2 = this.e;
            ex0Var2.getClass();
            Intrinsics.checkNotNullParameter("gads:custom_webview_disable_text_classifier:enabled", C3522b4.i.W);
            Boolean bool = Boolean.FALSE;
            ir irVar = yr.b;
            if (((Boolean) ex0Var2.a("gads:custom_webview_disable_text_classifier:enabled", bool, irVar)).booleanValue() && i >= 27) {
                j().setTextClassifier(TextClassifier.NO_OP);
            }
            ex0 ex0Var3 = this.e;
            ex0Var3.getClass();
            Intrinsics.checkNotNullParameter("gads:custom_webview_disable_downloads:enabled", C3522b4.i.W);
            if (((Boolean) ex0Var3.a("gads:custom_webview_disable_downloads:enabled", bool, irVar)).booleanValue()) {
                j().setDownloadListener(new DownloadListener() { // from class: ads_mobile_sdk.yy0$$ExternalSyntheticLambda12
                    @Override // android.webkit.DownloadListener
                    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                        yy0.a(str, str2, str3, str4, j);
                    }
                });
            }
            if (i >= 28) {
                componentActivity.setShowWhenLocked(true);
            } else {
                componentActivity.getWindow().addFlags(524288);
            }
            this.t = a(relativeLayout);
        } else {
            relativeLayout.addView(g(), -1, -1);
            ex0 ex0Var4 = this.e;
            int iIntValue = ((Number) ex0Var4.a("gad:interstitial:close_button_padding_dip", by0.a(ex0Var4, "gad:interstitial:close_button_padding_dip", C3522b4.i.W, 20), yr.f)).intValue();
            ex0 ex0Var5 = this.e;
            ex0Var5.getClass();
            Intrinsics.checkNotNullParameter("gads:force_top_right_close_button:enabled", C3522b4.i.W);
            boolean zBooleanValue = ((Boolean) ex0Var5.a("gads:force_top_right_close_button:enabled", Boolean.TRUE, yr.b)).booleanValue();
            ey eyVar = new ey(zBooleanValue ? iIntValue : 0, zBooleanValue ? 0 : iIntValue, iIntValue);
            ex0 ex0Var6 = this.e;
            ex0Var6.getClass();
            Intrinsics.checkNotNullParameter("gads:close_button_asset_name", C3522b4.i.W);
            Intrinsics.checkNotNullParameter("white", "defaultValue");
            dy dyVar = new dy(componentActivity, (String) ex0Var6.a("gads:close_button_asset_name", "white", yr.o), eyVar);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(10);
            if (zBooleanValue) {
                layoutParams.addRule(11);
            } else {
                layoutParams.addRule(9);
            }
            this.s = dyVar;
            dyVar.a = new cy0(this);
            if ((!this.u || h()) && !f()) {
                dy dyVar2 = this.s;
                if (dyVar2 != null) {
                    dyVar2.setVisibility(0);
                }
                this.u = false;
            } else {
                dy dyVar3 = this.s;
                if (dyVar3 != null) {
                    dyVar3.setVisibility(8);
                }
                this.u = true;
            }
            RelativeLayout relativeLayout2 = this.q;
            if (relativeLayout2 != null) {
                relativeLayout2.addView(dyVar, layoutParams);
            }
            a(dyVar);
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(10);
        layoutParams2.addRule(9);
        componentActivity.setContentView(relativeLayout, layoutParams2);
        if (k() == yy.d) {
            BuildersKt__BuildersKt.runBlocking$default(null, new dy0(this, null), 1, null);
        }
        return relativeLayout;
    }

    public final void n() {
        this.v = true;
    }

    @Override // ads_mobile_sdk.h0
    public final void onResume() {
        ComponentActivity componentActivity;
        Window window;
        ComponentActivity componentActivity2 = this.p;
        if (componentActivity2 != null && !componentActivity2.isInMultiWindowMode() && (componentActivity = this.p) != null && (window = componentActivity.getWindow()) != null) {
            WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(window, window.getDecorView());
            Intrinsics.checkNotNullExpressionValue(insetsController, "getInsetsController(...)");
            if (this.v) {
                insetsController.setSystemBarsBehavior(2);
            }
            insetsController.hide(this.v ? WindowInsetsCompat.Type.systemBars() : WindowInsetsCompat.Type.statusBars());
        }
        if (!j().k.get()) {
            j().onResume();
        }
        Optional optional = this.j;
        final sy0 sy0Var = sy0.a;
        optional.ifPresent(new Consumer() { // from class: ads_mobile_sdk.yy0$$ExternalSyntheticLambda10
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                yy0.e(sy0Var, obj);
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yy0(Context applicationContext, CoroutineScope uiScope, CoroutineContext uiContext, CoroutineScope backgroundScope, CoroutineContext backgroundContext, ex0 flags, ur3 traceLogger, String afmaVersion, o21 gmaUtil, lo backButtonStateDelegate, Optional adActivityLifecycleEventEmitter) {
        super(true);
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(backButtonStateDelegate, "backButtonStateDelegate");
        Intrinsics.checkNotNullParameter(adActivityLifecycleEventEmitter, "adActivityLifecycleEventEmitter");
        this.a = applicationContext;
        this.b = uiScope;
        this.c = uiContext;
        this.d = backgroundScope;
        this.e = flags;
        this.f = traceLogger;
        this.g = afmaVersion;
        this.h = gmaUtil;
        this.i = backButtonStateDelegate;
        this.j = adActivityLifecycleEventEmitter;
        this.l = new tn3(Boolean.FALSE);
        this.m = new AtomicBoolean(false);
        this.n = new AtomicBoolean(false);
        this.y = yy.d;
        this.A = MutexKt.Mutex$default(false, 1, null);
    }

    public final View g() {
        View view = this.r;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("contentView");
        return null;
    }

    public static final void g(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public yy k() {
        return this.y;
    }

    public static final void b(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final void m() {
        CoroutineScope coroutineScope = this.d;
        my0 block = new my0(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        this.k = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    @Override // androidx.activity.OnBackPressedCallback
    public final void handleOnBackPressed() {
        OnBackPressedDispatcher onBackPressedDispatcher;
        if (j().canGoBack()) {
            j().goBack();
            return;
        }
        if (!((mo) this.i).a.get() && !j().k.get()) {
            CoroutineScope coroutineScope = this.b;
            jy0 block = new jy0(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            return;
        }
        this.o = ky.a;
        setEnabled(false);
        ComponentActivity componentActivity = this.p;
        if (componentActivity == null || (onBackPressedDispatcher = componentActivity.getOnBackPressedDispatcher()) == null) {
            return;
        }
        onBackPressedDispatcher.onBackPressed();
    }

    public final void p() {
        try {
            ComponentActivity componentActivity = this.p;
            if (componentActivity == null) {
                return;
            }
            componentActivity.setRequestedOrientation(l());
        } catch (IllegalStateException e) {
            Splitter splitter = f01.a;
            f01.c("Unable to update orientation: " + e, null);
        }
    }

    public Unit d(Continuation continuation) {
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.h0
    public final void e() {
        this.l.setValue(this, E[0], Boolean.TRUE);
    }

    public Object e(Continuation continuation) {
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.h0
    public final void onPause() {
        o();
        Optional optional = this.j;
        final qy0 qy0Var = qy0.a;
        optional.ifPresent(new Consumer() { // from class: ads_mobile_sdk.yy0$$ExternalSyntheticLambda4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                yy0.c(qy0Var, obj);
            }
        });
    }

    public void onStop() {
        if (!j().k.get()) {
            j().onPause();
        }
        o();
        Optional optional = this.j;
        final uy0 uy0Var = uy0.a;
        optional.ifPresent(new Consumer() { // from class: ads_mobile_sdk.yy0$$ExternalSyntheticLambda11
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                yy0.g(uy0Var, obj);
            }
        });
    }

    @Override // ads_mobile_sdk.h0
    public final void onDestroy() {
        o();
        Optional optional = this.j;
        final py0 py0Var = py0.a;
        optional.ifPresent(new Consumer() { // from class: ads_mobile_sdk.yy0$$ExternalSyntheticLambda7
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                yy0.b(py0Var, obj);
            }
        });
    }

    public final void o() {
        ComponentActivity componentActivity = this.p;
        if (componentActivity == null || !componentActivity.isFinishing() || this.n.get()) {
            return;
        }
        CoroutineScope coroutineScope = this.b;
        wy0 block = new wy0(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public Toolbar a(RelativeLayout expandableLayout) {
        Intrinsics.checkNotNullParameter(expandableLayout, "expandableLayout");
        return a(expandableLayout, "");
    }

    @Override // ads_mobile_sdk.h0
    public final void c() {
        Optional optional = this.j;
        final ry0 ry0Var = ry0.a;
        optional.ifPresent(new Consumer() { // from class: ads_mobile_sdk.yy0$$ExternalSyntheticLambda8
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                yy0.d(ry0Var, obj);
            }
        });
    }

    public final Toolbar a(RelativeLayout expandableLayout, String str) {
        Intrinsics.checkNotNullParameter(expandableLayout, "expandableLayout");
        Toolbar toolbar = new Toolbar(this.p);
        toolbar.setId(View.generateViewId());
        g().setId(View.generateViewId());
        toolbar.setBackgroundColor(-12303292);
        toolbar.setTitleMarginStart(0);
        toolbar.setSubtitle(str);
        toolbar.setVisibility(0);
        toolbar.setContentDescription("gma_custom_webview_toolbar");
        try {
            toolbar.setNavigationIcon(this.a.getResources().getDrawable(R$drawable.admob_close_button_white_cross, null));
        } catch (Resources.NotFoundException e) {
            f01.a("Error obtaining close icon.", e, null, 4);
        } catch (NullPointerException e2) {
            f01.a("Error obtaining close icon.", e2, null, 4);
        }
        toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: ads_mobile_sdk.yy0$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                yy0.a(this.f$0, view);
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        expandableLayout.addView(toolbar, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(3, toolbar.getId());
        layoutParams2.addRule(12);
        expandableLayout.addView(g(), layoutParams2);
        return toolbar;
    }

    @Override // ads_mobile_sdk.h0
    public final void b() {
        Optional optional = this.j;
        final vy0 vy0Var = vy0.a;
        optional.ifPresent(new Consumer() { // from class: ads_mobile_sdk.yy0$$ExternalSyntheticLambda6
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                yy0.h(vy0Var, obj);
            }
        });
    }

    public static final void a(yy0 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a(ky.b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x015a, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r0, r6, r2) != r3) goto L72;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0054 A[PHI: r0 r4
      0x0054: PHI (r0v7 kotlinx.coroutines.sync.Mutex) = (r0v6 kotlinx.coroutines.sync.Mutex), (r0v26 kotlinx.coroutines.sync.Mutex) binds: [B:60:0x010f, B:22:0x004b] A[DONT_GENERATE, DONT_INLINE]
      0x0054: PHI (r4v8 ads_mobile_sdk.yy0) = (r4v7 ads_mobile_sdk.yy0), (r4v10 ads_mobile_sdk.yy0) binds: [B:60:0x010f, B:22:0x004b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0145 A[Catch: all -> 0x0142, TRY_LEAVE, TryCatch #1 {all -> 0x0142, blocks: (B:62:0x0112, B:64:0x0116, B:66:0x011a, B:69:0x0145), top: B:80:0x0112 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.yy0 r17, kotlin.coroutines.Continuation r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 364
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yy0.a(ads_mobile_sdk.yy0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c5 A[PHI: r2 r11
      0x00c5: PHI (r2v7 ads_mobile_sdk.yy0) = (r2v6 ads_mobile_sdk.yy0), (r2v12 ads_mobile_sdk.yy0) binds: [B:40:0x00c2, B:18:0x003b] A[DONT_GENERATE, DONT_INLINE]
      0x00c5: PHI (r11v3 ads_mobile_sdk.r31) = (r11v2 ads_mobile_sdk.r31), (r11v10 ads_mobile_sdk.r31) binds: [B:40:0x00c2, B:18:0x003b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.r31 r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yy0.a(ads_mobile_sdk.r31, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            j().p = this;
            Intrinsics.checkNotNullParameter(context, "context");
            context.startActivity(this.h.a(context, this));
            m();
            return true;
        } catch (ActivityNotFoundException e) {
            xs3.a(this.d, new ky0(this, null));
            xs3.a("Exception starting Activity", e, 4);
            ((as3) this.f).a("AdActivityLauncher.show", (Throwable) e);
            return false;
        } catch (SecurityException e2) {
            xs3.a(this.d, new ly0(this, null));
            xs3.a("Exception starting Activity", e2, 4);
            ((as3) this.f).a("AdActivityLauncher.show", (Throwable) e2);
            return false;
        }
    }

    public void a(dy closeButton) {
        Intrinsics.checkNotNullParameter(closeButton, "closeButton");
    }

    @Override // ads_mobile_sdk.h0
    public final void a(ComponentActivity activity) throws InterruptedException {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.p = activity;
        if (this.n.get()) {
            activity.finish();
            return;
        }
        if (!this.m.getAndSet(true)) {
            Job job = this.k;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, null, 1, null);
            }
            activity.getOnBackPressedDispatcher().addCallback(activity, this);
            RelativeLayout relativeLayoutB = b(activity);
            CoroutineScope coroutineScope = this.d;
            ny0 block = new ny0(this, relativeLayoutB, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        Optional optional = this.j;
        final oy0 oy0Var = oy0.a;
        optional.ifPresent(new Consumer() { // from class: ads_mobile_sdk.yy0$$ExternalSyntheticLambda5
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                yy0.a(oy0Var, obj);
            }
        });
    }

    public static final void a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    @Override // ads_mobile_sdk.h0
    public final void a() {
        if (!j().k.get()) {
            j().onResume();
        }
        Optional optional = this.j;
        final ty0 ty0Var = ty0.a;
        optional.ifPresent(new Consumer() { // from class: ads_mobile_sdk.yy0$$ExternalSyntheticLambda9
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                yy0.f(ty0Var, obj);
            }
        });
    }

    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.r = view;
    }

    public final void a(int i, boolean z) {
        ComponentActivity componentActivity;
        Window window;
        RelativeLayout relativeLayout = this.q;
        if (relativeLayout != null) {
            relativeLayout.setBackgroundColor(z ? 0 : -16777216);
        }
        this.w = z;
        this.z = i;
        if (Build.VERSION.SDK_INT >= 31) {
            ex0 ex0Var = this.e;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:enable_blur_transparent_background", C3522b4.i.W);
            if (!((Boolean) ex0Var.a("gads:enable_blur_transparent_background", Boolean.TRUE, yr.b)).booleanValue() || (componentActivity = this.p) == null || (window = componentActivity.getWindow()) == null) {
                return;
            }
            window.setBackgroundBlurRadius(i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0073, code lost:
    
        if (r6.b(r0) == r1) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0081 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:13:0x002d, B:36:0x007d, B:38:0x0081, B:39:0x0084, B:41:0x0088), top: B:46:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(boolean r9, kotlin.coroutines.Continuation r10) throws java.lang.Throwable {
        /*
            r8 = this;
            boolean r0 = r10 instanceof ads_mobile_sdk.xy0
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.xy0 r0 = (ads_mobile_sdk.xy0) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.xy0 r0 = new ads_mobile_sdk.xy0
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L46
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            kotlinx.coroutines.sync.Mutex r9 = r0.b
            ads_mobile_sdk.yy0 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L31
            goto L7d
        L31:
            r10 = move-exception
            goto L8e
        L33:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3b:
            boolean r9 = r0.c
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            ads_mobile_sdk.yy0 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r2
            goto L5b
        L46:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.sync.Mutex r10 = r8.A
            r0.a = r8
            r0.b = r10
            r0.c = r9
            r0.f = r4
            java.lang.Object r2 = r10.lock(r5, r0)
            if (r2 != r1) goto L5a
            goto L75
        L5a:
            r6 = r8
        L5b:
            boolean r2 = r6.D     // Catch: java.lang.Throwable -> L76
            if (r2 != 0) goto L87
            r6.B = r9     // Catch: java.lang.Throwable -> L76
            if (r9 != 0) goto L87
            r6.D = r4     // Catch: java.lang.Throwable -> L76
            kotlinx.coroutines.Job r9 = r6.C     // Catch: java.lang.Throwable -> L76
            if (r9 == 0) goto L7b
            r0.a = r6     // Catch: java.lang.Throwable -> L76
            r0.b = r10     // Catch: java.lang.Throwable -> L76
            r0.f = r3     // Catch: java.lang.Throwable -> L76
            java.lang.Object r9 = r6.b(r0)     // Catch: java.lang.Throwable -> L76
            if (r9 != r1) goto L7b
        L75:
            return r1
        L76:
            r9 = move-exception
            r7 = r10
            r10 = r9
            r9 = r7
            goto L8e
        L7b:
            r9 = r10
            r0 = r6
        L7d:
            kotlinx.coroutines.Job r10 = r0.C     // Catch: java.lang.Throwable -> L31
            if (r10 == 0) goto L84
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r10, r5, r4, r5)     // Catch: java.lang.Throwable -> L31
        L84:
            r0.C = r5     // Catch: java.lang.Throwable -> L31
            goto L88
        L87:
            r9 = r10
        L88:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            r9.unlock(r5)
            return r10
        L8e:
            r9.unlock(r5)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yy0.a(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public Object a(FullScreenContentError fullScreenContentError, Continuation continuation) {
        return Unit.INSTANCE;
    }

    public Object a(View view, Continuation continuation) {
        return Unit.INSTANCE;
    }
}
