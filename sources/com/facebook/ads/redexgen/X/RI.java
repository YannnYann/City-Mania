package com.facebook.ads.redexgen.X;

import com.google.android.gms.common.api.Api;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class RI extends WT<RI> implements Comparable<RI> {
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final boolean A05;
    public final boolean A06;
    public final boolean A07;
    public final boolean A08;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static int A01(List<RI> list, List<RI> list2) {
        return list.get(0).compareTo(list2.get(0));
    }

    public RI(int i, U8 u8, int i2, C14258i c14258i, int i3, String str) {
        List<String> listA03;
        super(i, u8, i2);
        int i4 = 0;
        this.A08 = C14248h.A0S(i3, false);
        int i5 = super.A02.A0H & (~((U1) c14258i).A00);
        this.A06 = (i5 & 1) != 0;
        this.A07 = (i5 & 2) != 0;
        int i6 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int bestLanguageScore = 0;
        if (c14258i.A0K.isEmpty()) {
            listA03 = XR.A03("");
        } else {
            listA03 = c14258i.A0K;
        }
        int bestLanguageIndex = 0;
        while (true) {
            if (bestLanguageIndex >= listA03.size()) {
                break;
            }
            int iA02 = C14248h.A02(super.A02, listA03.get(bestLanguageIndex), c14258i.A0P);
            if (iA02 > 0) {
                i6 = bestLanguageIndex;
                bestLanguageScore = iA02;
                break;
            }
            bestLanguageIndex++;
        }
        this.A00 = i6;
        this.A01 = bestLanguageScore;
        this.A02 = C14248h.A00(super.A02.A0E, ((U1) c14258i).A0C);
        this.A05 = (super.A02.A0E & 1088) != 0;
        this.A03 = C14248h.A02(super.A02, str, C14248h.A0K(str) == null);
        boolean z = this.A01 > 0 || (c14258i.A0K.isEmpty() && this.A02 > 0) || this.A06 || (this.A07 && this.A03 > 0);
        if (C14248h.A0S(i3, c14258i.A0B) && z) {
            i4 = 1;
        }
        this.A04 = i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final int compareTo(RI ri) {
        AbstractC1999Vy abstractC1999VyA06 = AbstractC1999Vy.A01().A09(this.A08, ri.A08).A08(Integer.valueOf(this.A00), Integer.valueOf(ri.A00), AbstractC1979Vc.A03().A06()).A06(this.A01, ri.A01).A06(this.A02, ri.A02).A09(this.A06, ri.A06).A08(Boolean.valueOf(this.A07), Boolean.valueOf(ri.A07), this.A01 == 0 ? AbstractC1979Vc.A03() : AbstractC1979Vc.A03().A06()).A06(this.A03, ri.A03);
        if (this.A02 == 0) {
            abstractC1999VyA06 = abstractC1999VyA06.A0A(this.A05, ri.A05);
        }
        return abstractC1999VyA06.A05();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4e != com.google.common.collect.ImmutableList$Builder<com.facebook.ads.androidx.media3.exoplayer.trackselection.DefaultTrackSelector$TextTrackInfo> */
    public static AbstractC14399l<RI> A02(int i, U8 u8, C14258i c14258i, int[] iArr, String str) {
        C13194e c13194eA01 = AbstractC14399l.A01();
        for (int i2 = 0; i2 < u8.A01; i2++) {
            c13194eA01.A04(new RI(i, u8, i2, c14258i, iArr[i2], str));
        }
        return c13194eA01.A05();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.WT
    /* JADX INFO: renamed from: A03, reason: merged with bridge method [inline-methods] */
    public final boolean A09(RI ri) {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.WT
    public final int A08() {
        return this.A04;
    }
}
