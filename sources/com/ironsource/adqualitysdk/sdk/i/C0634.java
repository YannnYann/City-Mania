package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.fairbid.mediation.MediationManager;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴏ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0634 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0529 f2650;

    public C0634(C0529 c0529) {
        this.f2650 = c0529;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0529 c0529 = this.f2650;
        MediationManager mediationManager = (MediationManager) arrayList.get(0);
        c0529.getClass();
        return mediationManager.getPlacementsHandler();
    }
}
