package com.vungle.ads;

import com.iab.omid.library.vungle.d;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class WebViewError extends VungleError {
    /* JADX WARN: Multi-variable type inference failed */
    public WebViewError() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ WebViewError(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str);
    }

    public WebViewError(String str) {
        super(Sdk.SDKError.Reason.WEBVIEW_ERROR, d.a("WebViewError: ", str), null);
    }
}
