package com.ironsource.sdk.controller;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.window.OnBackInvokedCallback;
import com.ironsource.A8;
import com.ironsource.Ag;
import com.ironsource.B7;
import com.ironsource.C3458a1;
import com.ironsource.C3522b4;
import com.ironsource.C3679k;
import com.ironsource.C3697l;
import com.ironsource.C3712le;
import com.ironsource.C3800q8;
import com.ironsource.C3813r4;
import com.ironsource.C3891v8;
import com.ironsource.G2;
import com.ironsource.G5;
import com.ironsource.Pb;
import com.ironsource.W9;
import com.ironsource.Xc;
import com.ironsource.eh;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.controller.v;
import com.ironsource.sdk.utils.Logger;
import com.ironsource.sdk.utils.SDKUtils;
import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: loaded from: classes4.dex */
public class ControllerActivity extends Activity implements Xc, Ag {
    private static final String o = "ControllerActivity";
    private static final int p = 1;
    private static String q = "removeWebViewContainerView | mContainer is null";
    private static String r = "removeWebViewContainerView | view is null";
    private String a;
    private v b;
    private RelativeLayout c;
    private FrameLayout d;
    private B7 e;
    private OnBackInvokedCallback f;
    private String h;
    private C3458a1 l;
    private boolean m;
    private boolean n;
    public int currentRequestedRotation = -1;
    private boolean g = false;
    private Handler i = new Handler();
    private final Runnable j = new a();
    final RelativeLayout.LayoutParams k = new RelativeLayout.LayoutParams(-1, -1);

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ControllerActivity.this.getWindow().getDecorView().setSystemUiVisibility(SDKUtils.getActivityUIFlags(ControllerActivity.this.g));
        }
    }

    public class b implements View.OnSystemUiVisibilityChangeListener {
        public b() {
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i) {
            if ((i & 4098) == 0) {
                ControllerActivity controllerActivity = ControllerActivity.this;
                controllerActivity.i.removeCallbacks(controllerActivity.j);
                ControllerActivity controllerActivity2 = ControllerActivity.this;
                controllerActivity2.i.postDelayed(controllerActivity2.j, 500L);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ControllerActivity.this.getWindow().addFlags(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ControllerActivity.this.getWindow().clearFlags(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
        }
    }

    private boolean b(String str) {
        return (TextUtils.isEmpty(str) || str.equals(Integer.toString(1))) ? false : true;
    }

    private void c() {
        String str = o;
        Logger.i(str, "clearWebviewController");
        v vVar = this.b;
        if (vVar == null) {
            Logger.i(str, "clearWebviewController, null");
            return;
        }
        vVar.a(v.EnumC1059v.Gone);
        this.b.F();
        this.b.G();
        this.b.g(this.h, "onDestroy");
    }

    private void d() {
        Intent intent = getIntent();
        a(intent.getStringExtra(C3522b4.i.A), intent.getIntExtra(C3522b4.i.B, 0));
    }

    private boolean e() {
        return this.a == null;
    }

    private void f() {
        runOnUiThread(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        Logger.i(o, "OnBackInvokedCallback");
        if (G2.a().a(this)) {
            return;
        }
        super.onBackPressed();
    }

    private void h() {
        if (Build.VERSION.SDK_INT < 33 || this.f == null) {
            return;
        }
        try {
            getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(this.f);
            Logger.i(o, "OnBackInvokedCallback unregistered");
            this.f = null;
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error("Failed to unregister OnBackInvokedCallback: " + e);
        }
    }

    private void i() {
        ViewGroup viewGroup;
        try {
            if (this.c == null) {
                throw new Exception(q);
            }
            ViewGroup viewGroup2 = (ViewGroup) this.d.getParent();
            View viewA = a(viewGroup2);
            if (viewA == null) {
                throw new Exception(r);
            }
            if (isFinishing() && (viewGroup = (ViewGroup) viewA.getParent()) != null) {
                viewGroup.removeView(viewA);
            }
            viewGroup2.removeView(this.d);
        } catch (Exception e) {
            C3813r4.d().a(e);
            A8.a(C3712le.s, new C3891v8().a(G5.A, e.getMessage()).a());
            Logger.i(o, "removeWebViewContainerView fail " + e.getMessage());
        }
    }

    private void j() {
        int iK = this.e.K(this);
        String str = o;
        Logger.i(str, "setInitiateLandscapeOrientation");
        if (iK == 0) {
            Logger.i(str, "ROTATION_0");
            setRequestedOrientation(0);
            return;
        }
        if (iK == 2) {
            Logger.i(str, "ROTATION_180");
            setRequestedOrientation(8);
        } else if (iK == 3) {
            Logger.i(str, "ROTATION_270 Right Landscape");
            setRequestedOrientation(8);
        } else if (iK != 1) {
            Logger.i(str, "No Rotation");
        } else {
            Logger.i(str, "ROTATION_90 Left Landscape");
            setRequestedOrientation(0);
        }
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    private void k() {
        int iK = this.e.K(this);
        String str = o;
        Logger.i(str, "setInitiatePortraitOrientation");
        if (iK == 0) {
            Logger.i(str, "ROTATION_0");
            setRequestedOrientation(1);
            return;
        }
        if (iK == 2) {
            Logger.i(str, "ROTATION_180");
            setRequestedOrientation(9);
        } else if (iK == 1) {
            Logger.i(str, "ROTATION_270 Right Landscape");
            setRequestedOrientation(1);
        } else if (iK != 3) {
            Logger.i(str, "No Rotation");
        } else {
            Logger.i(str, "ROTATION_90 Left Landscape");
            setRequestedOrientation(1);
        }
    }

    @Override // com.ironsource.Xc
    public boolean onBackButtonPressed() {
        onBackPressed();
        return true;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        Logger.i(o, "onBackPressed");
        if (G2.a().a(this)) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.ironsource.Xc
    public void onCloseRequested() {
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.e = Pb.k0().a();
        try {
            new C3697l(this).a();
            new C3679k(this).a();
            v vVar = (v) W9.b((Context) this).a().k();
            this.b = vVar;
            vVar.s().setId(1);
            this.b.a((Xc) this);
            this.b.a((Ag) this);
            Intent intent = getIntent();
            this.h = intent.getStringExtra(C3522b4.i.m);
            this.g = intent.getBooleanExtra(C3522b4.i.v, false);
            this.a = intent.getStringExtra("adViewId");
            this.m = false;
            this.n = intent.getBooleanExtra(C3522b4.i.z0, false);
            if (this.g) {
                getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new b());
                runOnUiThread(this.j);
            }
            RelativeLayout relativeLayout = new RelativeLayout(this);
            this.c = relativeLayout;
            setContentView(relativeLayout, this.k);
            this.d = a(this.a);
            if (this.c.findViewById(1) == null && this.d.getParent() != null) {
                finish();
            }
            d();
            this.c.addView(this.d, this.k);
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            finish();
        }
        a();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        String str = o;
        Logger.i(str, "onDestroy");
        h();
        i();
        if (this.m) {
            return;
        }
        Logger.i(str, "onDestroy | destroyedFromBackground");
        c();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && this.b.y()) {
            this.b.x();
            return true;
        }
        if (this.g && (i == 25 || i == 24)) {
            this.i.removeCallbacks(this.j);
            this.i.postDelayed(this.j, 500L);
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.ironsource.Xc
    public void onOrientationChanged(String str, int i) {
        a(str, i);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        Logger.i(o, "onPause, isFinishing=" + isFinishing());
        t.a(this);
        v vVar = this.b;
        if (vVar != null) {
            vVar.a((Context) this);
            if (!this.n) {
                this.b.E();
            }
            this.b.b(false, C3522b4.i.Z);
            this.b.g(this.h, C3522b4.i.t0);
        }
        if (isFinishing()) {
            this.m = true;
            c();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        Logger.i(o, C3522b4.i.u0);
        v vVar = this.b;
        if (vVar != null) {
            vVar.b(this);
            if (!this.n) {
                this.b.I();
            }
            this.b.b(true, C3522b4.i.Z);
            this.b.g(this.h, C3522b4.i.u0);
        }
        t.b(this);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        Logger.i(o, "onStart");
        v vVar = this.b;
        if (vVar != null) {
            vVar.g(this.h, "onStart");
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        Logger.i(o, "onStop");
        v vVar = this.b;
        if (vVar != null) {
            vVar.g(this.h, "onStop");
        }
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        super.onUserLeaveHint();
        Logger.i(o, "onUserLeaveHint");
        v vVar = this.b;
        if (vVar != null) {
            vVar.g(this.h, "onUserLeaveHint");
        }
    }

    @Override // com.ironsource.Ag
    public void onVideoEnded() {
        toggleKeepScreen(false);
    }

    @Override // com.ironsource.Ag
    public void onVideoPaused() {
        toggleKeepScreen(false);
    }

    @Override // com.ironsource.Ag
    public void onVideoResumed() {
        toggleKeepScreen(true);
    }

    @Override // com.ironsource.Ag
    public void onVideoStarted() {
        toggleKeepScreen(true);
    }

    @Override // com.ironsource.Ag
    public void onVideoStopped() {
        toggleKeepScreen(false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.g && z) {
            runOnUiThread(this.j);
        }
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int i) {
        if (this.currentRequestedRotation != i) {
            Logger.i(o, "Rotation: Req = " + i + " Curr = " + this.currentRequestedRotation);
            this.currentRequestedRotation = i;
            super.setRequestedOrientation(i);
        }
    }

    public void toggleKeepScreen(boolean z) {
        if (z) {
            f();
        } else {
            b();
        }
    }

    private void a() {
        if (Build.VERSION.SDK_INT >= 33) {
            this.f = new OnBackInvokedCallback() { // from class: com.ironsource.sdk.controller.ControllerActivity$$ExternalSyntheticLambda0
                public final void onBackInvoked() {
                    this.f$0.g();
                }
            };
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, this.f);
        }
    }

    private void b() {
        runOnUiThread(new d());
    }

    private FrameLayout a(String str) {
        if (!b(str)) {
            return this.b.s();
        }
        return eh.a(getApplicationContext(), C3800q8.a().a(str).getPresentingView());
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    private void a(String str, int i) {
        if (str != null) {
            if (C3522b4.i.C.equalsIgnoreCase(str)) {
                j();
                return;
            }
            if (C3522b4.i.D.equalsIgnoreCase(str)) {
                k();
                return;
            }
            if (C3522b4.i.G.equalsIgnoreCase(str)) {
                if (this.e.x(this)) {
                    setRequestedOrientation(1);
                }
            } else if (getRequestedOrientation() == -1) {
                setRequestedOrientation(4);
            }
        }
    }

    private View a(ViewGroup viewGroup) {
        if (e()) {
            return viewGroup.findViewById(1);
        }
        return C3800q8.a().a(this.a).getPresentingView();
    }
}
