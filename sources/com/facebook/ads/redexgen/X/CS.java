package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class CS extends AbstractC2225c3 {
    public final /* synthetic */ InterfaceC2909nG A00;
    public final /* synthetic */ C3102qT A01;
    public final /* synthetic */ C2999ol A02;
    public final /* synthetic */ CQ A03;
    public final /* synthetic */ String A04;
    public final /* synthetic */ Map A05;

    public CS(CQ cq, String str, C2999ol c2999ol, InterfaceC2909nG interfaceC2909nG, Map map, C3102qT c3102qT) {
        this.A03 = cq;
        this.A04 = str;
        this.A02 = c2999ol;
        this.A00 = interfaceC2909nG;
        this.A05 = map;
        this.A01 = c3102qT;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2225c3
    public final void A03() {
        if (!this.A03.A0A.A0Z() && !TextUtils.isEmpty(this.A04) && !this.A03.A07.get(this.A02.A02())) {
            this.A00.AC7(this.A04, new C3303ti(this.A05).A05(this.A03.A02).A04(this.A01).A07());
            C2435fT.A07(this.A03.A00, this.A03.A08);
            this.A03.A07.put(this.A02.A02(), true);
        }
    }
}
