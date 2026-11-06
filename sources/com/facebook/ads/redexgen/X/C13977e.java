package com.facebook.ads.redexgen.X;

import com.facebook.ads.CacheFlag;
import java.util.EnumSet;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7e, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13977e extends KI {
    public static String[] A00 = {"Ze8NKKgwBfy46YDq5I0lzRS5nG7yrU8J", "E1ojaS3uTXsRavQORrTdUhX9c7MV5aHd", "ItCt9Q9mXWs9PIywah58uBD5YWxogfVc", "TvzxiXVOv8ol3X69Q34742hsr7pKLonV", "WogP6aaFjSX27EG5W88ejxN6ir7ZffIG", "o9NxBVrFd1YzPTzVCo2rgQ7Rf3HS8hqa", "2XopQN6Gw1", "j82AvX7B8A16DzVk8Gq1uvpNrrFgPLHx"};

    public C13977e(C1643Hi c1643Hi, C2466fy c2466fy) {
        super(c1643Hi, c2466fy);
    }

    private KG A00(Runnable runnable) {
        return new KG(this, runnable);
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final AbstractC2419fD A0H() {
        C1750Lq successfullyLoadedAdapter = (C1750Lq) this.A01;
        if (successfullyLoadedAdapter != null) {
            return successfullyLoadedAdapter.A09();
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final void A0O() {
        C1750Lq interstitialAdapter = (C1750Lq) this.A01;
        if (interstitialAdapter != null) {
            interstitialAdapter.A0B();
        }
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final void A0Q(InterfaceC2393en interfaceC2393en, C2830ly c2830ly, C2828lw c2828lw, C2467fz c2467fz) {
        C1750Lq c1750Lq = (C1750Lq) interfaceC2393en;
        KH kh = new KH(this, c2467fz, c1750Lq);
        A0G().postDelayed(kh, c2830ly.A05().A05());
        EnumSet<CacheFlag> enumSet = this.A08.A0B;
        if (enumSet == null) {
            enumSet = CacheFlag.ALL;
            if (A00[7].charAt(1) == 'D') {
                throw new RuntimeException();
            }
            A00[5] = "sZ24rCHUkfT3uSPodHZqWzeJet0EqBqU";
        }
        c1750Lq.A0A(this.A0B, A00(kh), c2467fz, enumSet, this.A08.A04, this.A08.A05, this.A08.A02);
    }
}
