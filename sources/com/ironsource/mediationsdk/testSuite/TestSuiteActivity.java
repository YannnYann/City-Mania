package com.ironsource.mediationsdk.testSuite;

import android.app.Activity;
import android.graphics.Insets;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.WindowInsets;
import android.widget.RelativeLayout;
import android.window.OnBackInvokedCallback;
import com.ironsource.C3552cg;
import com.ironsource.C3813r4;
import com.ironsource.Of;
import com.ironsource.W8;
import com.ironsource.Xf;
import com.ironsource.mediationsdk.logger.IronLog;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class TestSuiteActivity extends Activity implements W8 {
    private RelativeLayout a;
    private C3552cg b;
    private Xf c;
    private OnBackInvokedCallback d;

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsets a(View view, WindowInsets insets) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsets.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        view.setPadding(0, insets2.top, 0, insets2.bottom);
        return insets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b() {
    }

    private final String c() {
        Bundle extras;
        if (getIntent() == null || getIntent().getExtras() == null || (extras = getIntent().getExtras()) == null) {
            return null;
        }
        return extras.getString("controllerUrl");
    }

    private final JSONObject d() {
        String strB = new Of().b(this);
        if (strB != null) {
            try {
                if (strB.length() != 0) {
                    return new JSONObject(strB);
                }
            } catch (Exception unused) {
                return new JSONObject();
            }
        }
        return new JSONObject();
    }

    private final RelativeLayout.LayoutParams e() {
        return new RelativeLayout.LayoutParams(-1, -1);
    }

    private final void f() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT < 33 || (onBackInvokedCallback = this.d) == null) {
            return;
        }
        try {
            getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(onBackInvokedCallback);
            this.d = null;
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error("Failed to unregister OnBackInvokedCallback: " + e);
        }
    }

    private final void g() {
        if (Build.VERSION.SDK_INT >= 35) {
            RelativeLayout relativeLayout = this.a;
            RelativeLayout relativeLayout2 = null;
            if (relativeLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mContainer");
                relativeLayout = null;
            }
            relativeLayout.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.ironsource.mediationsdk.testSuite.TestSuiteActivity$$ExternalSyntheticLambda1
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    return TestSuiteActivity.a(view, windowInsets);
                }
            });
            RelativeLayout relativeLayout3 = this.a;
            if (relativeLayout3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mContainer");
            } else {
                relativeLayout2 = relativeLayout3;
            }
            relativeLayout2.requestApplyInsets();
        }
    }

    public final RelativeLayout getContainer() {
        RelativeLayout relativeLayout = this.a;
        if (relativeLayout != null) {
            return relativeLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mContainer");
        return null;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.ironsource.W8
    public void onClosed() {
        runOnUiThread(new Runnable() { // from class: com.ironsource.mediationsdk.testSuite.TestSuiteActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                TestSuiteActivity.a(this.f$0);
            }
        });
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.a = relativeLayout;
        setContentView(relativeLayout, e());
        g();
        C3552cg c3552cg = new C3552cg(this, this, d(), c());
        this.b = c3552cg;
        Xf xf = new Xf(c3552cg);
        this.c = xf;
        xf.d();
        RelativeLayout relativeLayout2 = this.a;
        C3552cg c3552cg2 = null;
        if (relativeLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mContainer");
            relativeLayout2 = null;
        }
        C3552cg c3552cg3 = this.b;
        if (c3552cg3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
        } else {
            c3552cg2 = c3552cg3;
        }
        relativeLayout2.addView(c3552cg2.d(), e());
        a();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        f();
        Xf xf = this.c;
        C3552cg c3552cg = null;
        if (xf == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNativeBridge");
            xf = null;
        }
        xf.a();
        RelativeLayout relativeLayout = this.a;
        if (relativeLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mContainer");
            relativeLayout = null;
        }
        relativeLayout.removeAllViews();
        C3552cg c3552cg2 = this.b;
        if (c3552cg2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
        } else {
            c3552cg = c3552cg2;
        }
        c3552cg.a();
        super.onDestroy();
    }

    @Override // com.ironsource.W8
    public void onUIReady() {
        runOnUiThread(new Runnable() { // from class: com.ironsource.mediationsdk.testSuite.TestSuiteActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                TestSuiteActivity.b(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(TestSuiteActivity testSuiteActivity) {
        C3552cg c3552cg = testSuiteActivity.b;
        C3552cg c3552cg2 = null;
        if (c3552cg == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
            c3552cg = null;
        }
        if (c3552cg.c().getParent() == null) {
            RelativeLayout relativeLayout = testSuiteActivity.a;
            if (relativeLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mContainer");
                relativeLayout = null;
            }
            C3552cg c3552cg3 = testSuiteActivity.b;
            if (c3552cg3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
                c3552cg3 = null;
            }
            relativeLayout.removeView(c3552cg3.d());
            RelativeLayout relativeLayout2 = testSuiteActivity.a;
            if (relativeLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mContainer");
                relativeLayout2 = null;
            }
            C3552cg c3552cg4 = testSuiteActivity.b;
            if (c3552cg4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
                c3552cg4 = null;
            }
            relativeLayout2.addView(c3552cg4.c(), testSuiteActivity.e());
            C3552cg c3552cg5 = testSuiteActivity.b;
            if (c3552cg5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWebViewWrapper");
            } else {
                c3552cg2 = c3552cg5;
            }
            c3552cg2.b();
        }
    }

    private final void a() {
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: com.ironsource.mediationsdk.testSuite.TestSuiteActivity$$ExternalSyntheticLambda2
                public final void onBackInvoked() {
                    TestSuiteActivity.b();
                }
            };
            this.d = onBackInvokedCallback;
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, onBackInvokedCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(TestSuiteActivity testSuiteActivity) {
        testSuiteActivity.finish();
    }
}
