package com.vungle.ads.internal.platform;

import android.content.Context;
import android.webkit.WebSettings;
import androidx.core.util.Consumer;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class g {
    public static void a(Context context, Consumer consumer) {
        Object objM2760constructorimpl;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        try {
            Result.Companion companion = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(WebSettings.getDefaultUserAgent(context));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2766isSuccessimpl(objM2760constructorimpl)) {
            consumer.accept((String) objM2760constructorimpl);
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl != null) {
            boolean z = v.a;
            u.a("WebViewUtil", "Failed to get user agent", thM2763exceptionOrNullimpl);
            consumer.accept(null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005d A[PHI: r2
      0x005d: PHI (r2v2 int) = (r2v1 int), (r2v0 int) binds: [B:26:0x0067, B:21:0x005b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(android.webkit.WebView r4, com.vungle.ads.internal.model.f0 r5) {
        /*
            java.lang.String r0 = "webView"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            android.webkit.WebSettings r0 = r4.getSettings()
            java.lang.String r1 = "webView.settings"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 0
            r0.setBuiltInZoomControls(r1)
            r2 = 1
            r0.setJavaScriptEnabled(r2)
            r0.setLoadWithOverviewMode(r2)
            r0.setSaveFormData(r2)
            r0.setUseWideViewPort(r1)
            r0.setAllowFileAccess(r2)
            if (r5 == 0) goto L2f
            java.lang.Boolean r3 = r5.a()
            if (r3 == 0) goto L2f
            boolean r3 = r3.booleanValue()
            goto L30
        L2f:
            r3 = r1
        L30:
            r0.setAllowFileAccessFromFileURLs(r3)
            if (r5 == 0) goto L40
            java.lang.Boolean r3 = r5.b()
            if (r3 == 0) goto L40
            boolean r3 = r3.booleanValue()
            goto L41
        L40:
            r3 = r1
        L41:
            r0.setAllowUniversalAccessFromFileURLs(r3)
            r3 = 4
            r4.setVisibility(r3)
            r0.setMediaPlaybackRequiresUserGesture(r1)
            r0 = 0
            if (r5 == 0) goto L53
            java.lang.Integer r5 = r5.c()
            goto L54
        L53:
            r5 = r0
        L54:
            if (r5 != 0) goto L57
            goto L5f
        L57:
            int r3 = r5.intValue()
            if (r3 != r2) goto L5f
        L5d:
            r1 = r2
            goto L6a
        L5f:
            if (r5 != 0) goto L62
            goto L6a
        L62:
            int r5 = r5.intValue()
            r2 = 2
            if (r5 != r2) goto L6a
            goto L5d
        L6a:
            r4.setLayerType(r1, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.platform.g.a(android.webkit.WebView, com.vungle.ads.internal.model.f0):void");
    }
}
