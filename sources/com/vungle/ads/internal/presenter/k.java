package com.vungle.ads.internal.presenter;

import android.webkit.WebView;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class k extends Lambda implements Function0 {
    public final /* synthetic */ r a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(r rVar) {
        super(0);
        this.a = rVar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        com.vungle.ads.internal.ui.x xVar = this.a.d;
        WebView webView = xVar.m;
        if (webView != null) {
            xVar.a(webView, "window.vungle.mraidBridgeExt.notifyPresentAppStoreFailed(0)");
        }
        return Unit.INSTANCE;
    }
}
