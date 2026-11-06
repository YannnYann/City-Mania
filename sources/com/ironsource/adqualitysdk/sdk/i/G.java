package com.ironsource.adqualitysdk.sdk.i;

import com.vungle.warren.model.Advertisement;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class G implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ J f99;

    public G(J j) {
        this.f99 = j;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        J j = this.f99;
        Advertisement advertisement = (Advertisement) arrayList.get(0);
        j.getClass();
        return advertisement.getAdMarketId();
    }
}
