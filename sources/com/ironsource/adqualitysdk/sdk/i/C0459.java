package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import tv.superawesome.lib.samodelspace.saad.SAAd;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0459 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0846 f2210;

    public C0459(C0846 c0846) {
        this.f2210 = c0846;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0846 c0846 = this.f2210;
        SAAd sAAd = (SAAd) arrayList.get(0);
        c0846.getClass();
        return sAAd.writeToJson();
    }
}
