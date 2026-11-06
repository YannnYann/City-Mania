package com.ironsource.adqualitysdk.sdk.i;

import com.smaato.sdk.core.ad.AdPresenter;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0704 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0049 f2842;

    public C0704(C0049 c0049) {
        this.f2842 = c0049;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0049 c0049 = this.f2842;
        AdPresenter adPresenter = (AdPresenter) arrayList.get(0);
        c0049.getClass();
        return adPresenter.getAdSpaceId();
    }
}
