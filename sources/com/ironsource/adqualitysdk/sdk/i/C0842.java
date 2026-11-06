package com.ironsource.adqualitysdk.sdk.i;

import com.chartboost.sdk.Chartboost;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.忄, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0842 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0728 f3258;

    public C0842(C0728 c0728) {
        this.f3258 = c0728;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0728 c0728 = this.f3258;
        c0728.getClass();
        Chartboost.setDelegate(new C0747(c0728, Chartboost.getDelegate(), c0875));
        return null;
    }
}
