package com.ironsource.adqualitysdk.sdk.i;

import com.hyprmx.android.sdk.api.data.Ad;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔁ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0553 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0542 f2497;

    public C0553(C0542 c0542) {
        this.f2497 = c0542;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0542 c0542 = this.f2497;
        Ad ad = (Ad) arrayList.get(0);
        c0542.getClass();
        return ad.type;
    }
}
