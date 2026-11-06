package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.fairbid.mediation.config.MediationConfig;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵂ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0670 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0529 f2734;

    public C0670(C0529 c0529) {
        this.f2734 = c0529;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0529 c0529 = this.f2734;
        MediationConfig mediationConfig = (MediationConfig) arrayList.get(0);
        c0529.getClass();
        return mediationConfig.getAdapterConfigurations();
    }
}
