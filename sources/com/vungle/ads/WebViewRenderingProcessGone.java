package com.vungle.ads;

import com.iab.omid.library.vungle.d;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class WebViewRenderingProcessGone extends VungleError {
    /* JADX WARN: Multi-variable type inference failed */
    public WebViewRenderingProcessGone() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ WebViewRenderingProcessGone(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str);
    }

    public WebViewRenderingProcessGone(String str) {
        super(Sdk.SDKError.Reason.WEBVIEW_ERROR, d.a("WebRenderingProcessGone: ", str), null);
    }
}
