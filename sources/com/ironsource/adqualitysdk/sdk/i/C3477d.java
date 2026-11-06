package com.ironsource.adqualitysdk.sdk.i;

import com.unity3d.services.core.webview.WebViewApp;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3477d implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C3495m f255;

    public C3477d(C3495m c3495m) {
        this.f255 = c3495m;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C3495m c3495m = this.f255;
        Object obj = arrayList.get(0);
        c3495m.getClass();
        WebViewApp.setCurrentApp((C3491k) obj);
        return null;
    }
}
