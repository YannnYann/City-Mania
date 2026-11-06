package com.vungle.ads.internal.ui;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import android.window.OnBackInvokedCallback;
import androidx.appcompat.app.AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticApiModelOutline0;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.ironsource.C3522b4;
import com.vungle.ads.AdCantPlayWithoutWebView;
import com.vungle.ads.AdConfig;
import com.vungle.ads.AdNotLoadedCantPlay;
import com.vungle.ads.ConcurrentPlaybackUnsupported;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.j2;
import com.vungle.ads.internal.model.i0;
import com.vungle.ads.internal.model.j3;
import com.vungle.ads.internal.model.s3;
import com.vungle.ads.internal.presenter.f0;
import com.vungle.ads.internal.presenter.z;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.u0;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class l extends Activity {
    public static volatile u0 i;
    public static volatile com.vungle.ads.internal.presenter.a j;
    public com.vungle.ads.internal.presenter.r a;
    public s3 b;
    public u0 c;
    public Object d;
    public com.vungle.ads.internal.util.t f;
    public final com.vungle.ads.internal.util.x e = new com.vungle.ads.internal.util.x();
    public final b g = new b(this);
    public final AtomicBoolean h = new AtomicBoolean(false);

    static {
        new a();
    }

    public static final void b(l this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.vungle.ads.internal.presenter.r rVar = this$0.a;
        if (rVar != null) {
            rVar.d();
        }
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) throws Throwable {
        super.onActivityResult(i2, i3, intent);
        boolean z = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.a("AdActivity", new c(i2, i3, intent));
        if (i2 == 10001) {
            this.h.set(false);
            com.vungle.ads.internal.presenter.r rVar = this.a;
            if (rVar != null) {
                j2 j2Var = new j2(Sdk.SDKMetric.SDKMetricType.INLINE_INSTALL_STATUS);
                j2Var.c = 3L;
                AnalyticsClient.INSTANCE.a(j2Var, rVar.b(), "onActivityResultCode=" + i3);
            }
        }
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        com.vungle.ads.internal.presenter.r rVar = this.a;
        if (rVar != null) {
            rVar.d();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        try {
            super.onConfigurationChanged(newConfig);
            int i2 = newConfig.orientation;
            if (i2 == 2) {
                boolean z = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.a("AdActivity", C3522b4.i.C);
            } else if (i2 == 1) {
                boolean z2 = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.a("AdActivity", C3522b4.i.D);
            }
            com.vungle.ads.internal.presenter.r rVar = this.a;
            if (rVar != null) {
                rVar.g();
            }
        } catch (Exception e) {
            boolean z3 = com.vungle.ads.internal.util.v.a;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("onConfigurationChanged: ");
            sbA.append(e.getLocalizedMessage());
            com.vungle.ads.internal.util.u.b("AdActivity", sbA.toString());
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) throws Throwable {
        String watermark$vungle_ads_release;
        View decorView;
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(16777216, 16777216);
        u0 u0Var = i;
        com.vungle.ads.internal.presenter.a aVar = j;
        if (u0Var == null) {
            Intent intent = getIntent();
            Intrinsics.checkNotNullExpressionValue(intent, "intent");
            String strB = a.b(intent);
            if (strB == null) {
                strB = "";
            }
            if (aVar != null) {
                aVar.a(new AdNotLoadedCantPlay("Can not play fullscreen ad. placement=" + strB + " pendingData is null").setLogEntry$vungle_ads_release(this.f).logError$vungle_ads_release(), strB);
            }
            finish();
            return;
        }
        this.c = u0Var;
        i0 i0VarA = u0Var.a();
        j3 j3VarB = u0Var.b();
        z zVarC = u0Var.c();
        this.f = i0VarA.q();
        try {
            com.vungle.ads.internal.ui.view.j jVar = new com.vungle.ads.internal.ui.view.j(this, i0VarA.h());
            WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
            long j2 = getIntent().getBooleanExtra("ad_invisible_logged", false) ? 3L : 2L;
            AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
            j2 j2Var = new j2(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY);
            j2Var.a(Long.valueOf(j2));
            AnalyticsClient.a(analyticsClient, j2Var, this.f, 4);
            boolean z = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.a("AdActivity", "Log metric AD_VISIBILITY: " + j2);
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            Lazy lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new d(this));
            Intent intent2 = getIntent();
            Intrinsics.checkNotNullExpressionValue(intent2, "intent");
            String strA = a.a(intent2);
            FrameLayout frameLayout = null;
            s3 s3Var = strA != null ? new s3(strA) : null;
            this.b = s3Var;
            if (s3Var != null) {
                ((com.vungle.ads.internal.signals.j) lazy.getValue()).a(s3Var);
            }
            jVar.setCloseDelegate(new h(this, lazy));
            jVar.setOnViewTouchListener(new i(this));
            jVar.setOrientationDelegate(new j(this));
            Lazy lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new e(this));
            Lazy lazy3 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new f(this));
            com.vungle.ads.internal.executor.j jVarF = ((com.vungle.ads.internal.executor.d) ((com.vungle.ads.internal.executor.a) lazy2.getValue())).f();
            ReentrantLock reentrantLock = f0.a;
            x xVarA = f0.a(i0VarA, j3VarB, jVarF, (com.vungle.ads.internal.platform.f) lazy3.getValue());
            com.vungle.ads.internal.omsdk.d dVar = (com.vungle.ads.internal.omsdk.d) LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new g(this)).getValue();
            boolean z2 = i0VarA.z();
            dVar.getClass();
            com.vungle.ads.internal.omsdk.e eVarA = com.vungle.ads.internal.omsdk.d.a(z2);
            com.vungle.ads.internal.executor.j jVarD = ((com.vungle.ads.internal.executor.d) ((com.vungle.ads.internal.executor.a) lazy2.getValue())).d();
            xVarA.a(eVarA);
            this.e.a(xVarA);
            com.vungle.ads.internal.presenter.r rVar = new com.vungle.ads.internal.presenter.r(jVar, i0VarA, j3VarB, xVarA, jVarD, eVarA, (com.vungle.ads.internal.platform.f) lazy3.getValue());
            rVar.a(aVar);
            rVar.a(zVarC);
            rVar.a(new k(this));
            rVar.h();
            setContentView(jVar, jVar.getLayoutParams());
            try {
                Result.Companion companion = Result.Companion;
                getWindow().getDecorView().setBackgroundColor(-16777216);
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            ViewCompat.setOnApplyWindowInsetsListener(jVar, new OnApplyWindowInsetsListener() { // from class: com.vungle.ads.internal.ui.l$$ExternalSyntheticLambda2
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    return l.a(this.f$0, view, windowInsetsCompat);
                }
            });
            WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(getWindow(), getWindow().getDecorView());
            Intrinsics.checkNotNullExpressionValue(insetsController, "getInsetsController(window, window.decorView)");
            insetsController.setSystemBarsBehavior(2);
            insetsController.hide(WindowInsetsCompat.Type.systemBars());
            AdConfig adConfigJ = i0VarA.j();
            if (adConfigJ != null && (watermark$vungle_ads_release = adConfigJ.getWatermark$vungle_ads_release()) != null) {
                Window window = getWindow();
                if (window != null && (decorView = window.getDecorView()) != null) {
                    frameLayout = (FrameLayout) decorView.findViewById(R.id.content);
                }
                if (frameLayout != null) {
                    y yVar = new y(this, watermark$vungle_ads_release);
                    frameLayout.addView(yVar);
                    yVar.bringToFront();
                }
            }
            this.a = rVar;
            if (Build.VERSION.SDK_INT >= 33) {
                a();
            }
            com.vungle.ads.internal.util.d dVar2 = com.vungle.ads.internal.util.d.f;
            com.vungle.ads.internal.util.a.a(this.g);
            try {
                Result.m2760constructorimpl(registerReceiver(this.e, new IntentFilter("android.media.RINGER_MODE_CHANGED")));
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th2));
            }
        } catch (InstantiationException e) {
            if (aVar != null) {
                aVar.a(new AdCantPlayWithoutWebView(e.getMessage()).setLogEntry$vungle_ads_release(this.f).logError$vungle_ads_release(), j3VarB.b());
            }
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        if (Build.VERSION.SDK_INT >= 33) {
            Object obj = this.d;
            OnBackInvokedCallback onBackInvokedCallbackM = l$$ExternalSyntheticApiModelOutline0.m(obj) ? AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticApiModelOutline0.m(obj) : null;
            if (onBackInvokedCallbackM != null) {
                getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(onBackInvokedCallbackM);
            }
            this.d = null;
        }
        com.vungle.ads.internal.presenter.r rVar = this.a;
        if (rVar != null) {
            rVar.a((isChangingConfigurations() ? 1 : 0) | 2);
        }
        com.vungle.ads.internal.presenter.r rVar2 = this.a;
        if (rVar2 != null) {
            rVar2.a((k) null);
        }
        com.vungle.ads.internal.util.d dVar = com.vungle.ads.internal.util.d.f;
        com.vungle.ads.internal.util.a.b(this.g);
        try {
            Result.Companion companion = Result.Companion;
            unregisterReceiver(this.e);
            Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        this.a = null;
        if (i == this.c) {
            j = null;
            i = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onNewIntent(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        Intent intent2 = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent2, "getIntent()");
        Pair pair = TuplesKt.to(a.b(intent2), a.b(intent));
        String str = (String) pair.component1();
        String str2 = (String) pair.component2();
        Intent intent3 = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent3, "getIntent()");
        Pair pair2 = TuplesKt.to(a.a(intent3), a.a(intent));
        String str3 = (String) pair2.component1();
        String str4 = (String) pair2.component2();
        if ((str == null || str2 == null || Intrinsics.areEqual(str, str2)) && (str3 == null || str4 == null || Intrinsics.areEqual(str3, str4))) {
            i = null;
            j = null;
            return;
        }
        boolean z = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.a("AdActivity", "Tried to play another placement " + str2 + " while playing " + str);
        u0 u0Var = i;
        com.vungle.ads.internal.presenter.a aVar = j;
        VungleError vungleErrorLogError$vungle_ads_release = new ConcurrentPlaybackUnsupported("Trying to show " + str2 + " but " + str + " is already showing").setLogEntry$vungle_ads_release(this.f).logError$vungle_ads_release();
        if (aVar != null) {
            aVar.a(vungleErrorLogError$vungle_ads_release, str2);
        }
        if (i == u0Var) {
            i = null;
            j = null;
        }
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("onConcurrentPlaybackError: ");
        sbA.append(vungleErrorLogError$vungle_ads_release.getLocalizedMessage());
        com.vungle.ads.internal.util.u.b("AdActivity", sbA.toString());
    }

    @Override // android.app.Activity
    public final void onPause() {
        com.vungle.ads.internal.presenter.r rVar;
        com.vungle.ads.internal.presenter.a aVar;
        super.onPause();
        com.vungle.ads.internal.presenter.r rVar2 = this.a;
        if (rVar2 != null) {
            boolean z = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.a("MRAIDPresenter", "stop()");
            rVar2.a.b();
            rVar2.d.b(false);
        }
        if (!isFinishing() || (rVar = this.a) == null || rVar.k.getAndSet(true) || (aVar = rVar.i) == null) {
            return;
        }
        aVar.a("end", null, rVar.c.a);
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        com.vungle.ads.internal.presenter.r rVar = this.a;
        if (rVar != null) {
            boolean z = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.a("MRAIDPresenter", "start()");
            rVar.a.d();
            rVar.d.b(true);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(getWindow(), getWindow().getDecorView());
            Intrinsics.checkNotNullExpressionValue(insetsController, "getInsetsController(window, window.decorView)");
            insetsController.setSystemBarsBehavior(2);
            insetsController.hide(WindowInsetsCompat.Type.systemBars());
        }
    }

    @Override // android.app.Activity
    public final void setRequestedOrientation(int i2) {
        super.setRequestedOrientation(i2);
    }

    public static final com.vungle.ads.internal.signals.j a(Lazy lazy) {
        return (com.vungle.ads.internal.signals.j) lazy.getValue();
    }

    public static final WindowInsetsCompat a(l this$0, View v, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        if (!this$0.h.get()) {
            Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
            Intrinsics.checkNotNullExpressionValue(insets2, "insets.getInsets(\n      …t()\n                    )");
            v.setPadding(insets2.left, insets2.top, insets2.right, insets2.bottom);
        }
        return insets;
    }

    public final void a() {
        OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: com.vungle.ads.internal.ui.l$$ExternalSyntheticLambda1
            public final void onBackInvoked() {
                l.b(this.f$0);
            }
        };
        this.d = onBackInvokedCallback;
        getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, onBackInvokedCallback);
    }
}
