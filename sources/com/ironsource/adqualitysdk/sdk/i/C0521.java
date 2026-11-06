package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.models.vast.InLine;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓑ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0521 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0108 f2355;

    public C0521(C0108 c0108) {
        this.f2355 = c0108;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0108 c0108 = this.f2355;
        InLine inLine = (InLine) arrayList.get(0);
        c0108.getClass();
        return inLine.getCreatives();
    }
}
