package com.vungle.ads.internal.presenter;

import android.content.Context;
import android.webkit.WebView;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class e0 extends Lambda implements Function0 {
    public final /* synthetic */ Context a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e0(Context context) {
        super(0);
        this.a = context;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Object objM2760constructorimpl;
        ReentrantLock reentrantLock = f0.a;
        Context context = this.a;
        try {
            Result.Companion companion = Result.Companion;
            new WebView(context).loadData("<html><head></head><body></body></html>", "text/html", "UTF-8");
            boolean z = com.vungle.ads.internal.util.v.a;
            objM2760constructorimpl = Result.m2760constructorimpl(Integer.valueOf(com.vungle.ads.internal.util.u.a("WebViewManager", "Prewarmed webview loaded blank html")));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        if (thM2763exceptionOrNullimpl != null) {
            boolean z2 = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.a("WebViewManager", "Prewarm webview failed", thM2763exceptionOrNullimpl);
            f0.c.set(false);
        }
        return Unit.INSTANCE;
    }
}
