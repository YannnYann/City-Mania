package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdExperienceType;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.EnumSet;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2466fy {
    public static String[] A0E = {"erlsxJKV5RGKo0fyhsjft4C8myFkBTFD", "xxCOSS58nTJL4g358MAx2boWparhVsnt", "50HA7KO7TX73z1", "kwTSvTyvqMkAeNvnsZNufhK8xoNKpC5A", "CvvJJ5wn5WoPjh", "PJeUG8MSArG13FCqdbuWaTyquTMQa3YW", "KbVXHt7uQSAfPtAdYM2eE220TAgmiqZ3", "QWgxf2msfb1fWKXeTjGnwNJbVHOPLzwf"};
    public int A00;
    public long A01;
    public RewardData A02;
    public EnumC2931nc A03;
    public String A04;
    public String A05;
    public boolean A06;
    public final InterfaceC2836m5 A07;
    public final EnumC2949nw A08;
    public final EnumC2950nx A09;
    public final String A0A;
    public final EnumSet<CacheFlag> A0B;
    public final int A0C;
    public final AdPlacementType A0D;

    public C2466fy(String str, EnumC2950nx enumC2950nx, AdPlacementType adPlacementType, EnumC2949nw enumC2949nw, int i, InterfaceC2836m5 interfaceC2836m5) {
        this(str, enumC2950nx, adPlacementType, enumC2949nw, i, EnumSet.of(CacheFlag.NONE), interfaceC2836m5);
    }

    public C2466fy(String str, EnumC2950nx enumC2950nx, AdPlacementType adPlacementType, EnumC2949nw enumC2949nw, int i, EnumSet<CacheFlag> cacheFlags, InterfaceC2836m5 interfaceC2836m5) {
        this.A0A = str;
        this.A0D = adPlacementType;
        this.A08 = enumC2949nw;
        this.A0C = i;
        this.A0B = cacheFlags;
        this.A09 = enumC2950nx;
        this.A00 = -1;
        this.A07 = interfaceC2836m5;
    }

    public final C2970oH A00(C1643Hi c1643Hi, C2954o1 c2954o1, AdExperienceType adExperienceType) {
        return new C2970oH(c1643Hi, this.A0A, this.A08 != null ? new C3087qE(this.A08.A04(), this.A08.A03()) : null, this.A09, this.A0C, c2954o1, AbstractC3093qK.A01(C2888mv.A0L(c1643Hi)), this.A04, adExperienceType != null ? adExperienceType.getAdExperienceType() : null, this.A07);
    }

    public final Set<AdPlacementType> A01() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(2);
        if (this.A0D == AdPlacementType.BANNER && this.A09 == EnumC2950nx.A0C) {
            linkedHashSet.add(AdPlacementType.BANNER);
            linkedHashSet.add(AdPlacementType.MEDIUM_RECTANGLE);
            return linkedHashSet;
        }
        AdPlacementType adPlacementType = this.A0D;
        String[] strArr = A0E;
        if (strArr[1].charAt(17) != strArr[6].charAt(17)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0E;
        strArr2[1] = "zbxk3g2hc91z08wwyMRddWTvjbNPPYOq";
        strArr2[6] = "pRmd8QufQxWOhwmR0MzBqVe9WVYKkaUX";
        if (adPlacementType != null) {
            linkedHashSet.add(this.A0D);
            return linkedHashSet;
        }
        if (this.A08 == null) {
            linkedHashSet.add(AdPlacementType.NATIVE);
            return linkedHashSet;
        }
        if (this.A08 == EnumC2949nw.A07) {
            linkedHashSet.add(AdPlacementType.INTERSTITIAL);
            return linkedHashSet;
        }
        linkedHashSet.add(AdPlacementType.BANNER);
        return linkedHashSet;
    }

    public final void A02(int i) {
        this.A00 = i;
    }

    public final void A03(long j) {
        this.A01 = j;
    }

    public final void A04(RewardData rewardData) {
        this.A02 = rewardData;
    }

    public final void A05(EnumC2931nc enumC2931nc) {
        this.A03 = enumC2931nc;
    }

    public final void A06(String str) {
        this.A04 = str;
    }

    public final void A07(String str) {
        this.A05 = str;
    }

    public final void A08(boolean z) {
        this.A06 = z;
    }
}
