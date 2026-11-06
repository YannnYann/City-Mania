package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class KH extends AbstractRunnableC3004oq {
    public static String[] A03 = {"yrAoLlhy", "vjKRanDE0ikxU4tUHx1JmWQDvFUAaqx2", "G8wXLa7S", "9J53mmPk6os8gDVcVJiXfdfZJDEQMT6X", "kfMskHW9TbZqzkqhamfHgTOsKT3rM1iE", "Mg52vw4TxXqfT32sREgq1aGh5Zqj2TwE", "nRFH5QMgskhjbVKjSOKCK9T059kaNprb", "vKZwNFsd8PUl35Ni"};
    public final /* synthetic */ C1750Lq A00;
    public final /* synthetic */ C2467fz A01;
    public final /* synthetic */ C13977e A02;

    public KH(C13977e c13977e, C2467fz c2467fz, C1750Lq c1750Lq) {
        this.A02 = c13977e;
        this.A01 = c2467fz;
        this.A00 = c1750Lq;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        this.A02.A0S(this.A01);
        this.A02.A0P(this.A00);
        this.A02.A00 = null;
        C2947nt c2947ntA00 = C2947nt.A00(AdErrorType.INTERSTITIAL_AD_TIMEOUT);
        this.A02.A0B.A0F().A6F(c2947ntA00.A03().getErrorCode(), c2947ntA00.A04());
        if (this.A02.A07 != null) {
            AbstractC2394eo abstractC2394eo = this.A02.A07;
            if (A03[2].length() == 26) {
                throw new RuntimeException();
            }
            A03[2] = "dFgz35Aa9EKDn";
            abstractC2394eo.A0G(c2947ntA00);
        }
    }
}
