package com.vungle.ads.internal.ui.view;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import com.vungle.ads.internal.presenter.f0;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class g implements Runnable {
    public final j a;

    public g(j widget) {
        Intrinsics.checkNotNullParameter(widget, "widget");
        this.a = widget;
    }

    public static final void a(g this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.run();
    }

    @Override // java.lang.Runnable
    public final void run() {
        WebView webView = this.a.b;
        if (webView == null) {
            return;
        }
        if (!Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.vungle.ads.internal.ui.view.g$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    g.a(this.f$0);
                }
            });
            return;
        }
        try {
            try {
                Result.Companion companion = Result.Companion;
                webView.onPause();
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            try {
                webView.stopLoading();
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th2));
            }
            Unit unit = null;
            try {
                webView.setWebChromeClient(null);
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th3) {
                Result.Companion companion4 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th3));
            }
            try {
                webView.setWebViewClient(new WebViewClient());
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th4) {
                Result.Companion companion5 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th4));
            }
            if (Build.VERSION.SDK_INT >= 29) {
                try {
                    webView.setWebViewRenderProcessClient(null);
                    Result.m2760constructorimpl(Unit.INSTANCE);
                } catch (Throwable th5) {
                    Result.Companion companion6 = Result.Companion;
                    Result.m2760constructorimpl(ResultKt.createFailure(th5));
                }
            }
            try {
                webView.loadUrl(AndroidWebViewClient.BLANK_PAGE);
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th6) {
                Result.Companion companion7 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th6));
            }
            try {
                webView.clearHistory();
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th7) {
                Result.Companion companion8 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th7));
            }
            try {
                webView.removeAllViews();
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th8) {
                Result.Companion companion9 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th8));
            }
            try {
                this.a.removeAllViews();
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th9) {
                Result.Companion companion10 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th9));
            }
            try {
                String eventId = this.a.getEventId();
                if (eventId != null) {
                    f0.a(eventId);
                    unit = Unit.INSTANCE;
                }
                Result.m2760constructorimpl(unit);
            } catch (Throwable th10) {
                Result.Companion companion11 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th10));
            }
            try {
                webView.destroy();
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th11) {
                Result.Companion companion12 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th11));
            }
            this.a.b = null;
        } catch (Throwable th12) {
            boolean z = v.a;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Destroy webview: ");
            sbA.append(th12.getMessage());
            u.b("MRAIDAdWidget", sbA.toString());
        }
    }
}
