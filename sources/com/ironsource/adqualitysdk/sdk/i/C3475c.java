package com.ironsource.adqualitysdk.sdk.i;

import com.unity3d.services.core.webview.WebViewApp;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3475c implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C3495m f254;

    public C3475c(C3495m c3495m) {
        this.f254 = c3495m;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C3495m c3495m = this.f254;
        Object obj = arrayList.get(0);
        c3495m.getClass();
        return new C3491k(c3495m, (WebViewApp) obj, c0875);
    }
}
