package com.vungle.ads.internal.ui;

import android.webkit.WebView;
import com.vungle.ads.EvaluateJsError;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class w extends Lambda implements Function0 {
    public final /* synthetic */ x a;
    public final /* synthetic */ WebView b;
    public final /* synthetic */ String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(x xVar, WebView webView, String str) {
        super(0);
        this.a = xVar;
        this.b = webView;
        this.c = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Object objM2760constructorimpl;
        WebView webView = this.b;
        String str = this.c;
        try {
            Result.Companion companion = Result.Companion;
            Unit unit = null;
            if (webView != null) {
                webView.evaluateJavascript(str, null);
                unit = Unit.INSTANCE;
            }
            objM2760constructorimpl = Result.m2760constructorimpl(unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        x xVar = this.a;
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl != null) {
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Evaluate js failed ");
            sbA.append(thM2763exceptionOrNullimpl.getLocalizedMessage());
            new EvaluateJsError(sbA.toString()).setLogEntry$vungle_ads_release(xVar.a.q()).logErrorNoReturnValue$vungle_ads_release();
        }
        return Unit.INSTANCE;
    }
}
