package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7o, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C14077o extends KM {
    public static String[] A04 = {"9yCAU6vHH5iW2uzgCW6HgdGPEZSQZZfL", "J47", "6rlZoFx9Uu0Bsrona1cKRXumzm4YYBbS", "bhq", "umQrlUDl61wUXIIBom7yT3QugrS", "j4Wkewb2uBFqLUCHLR63rcK9C", "eNU4QeIs11d2vjS0Im22LGZCKxJhHCKO", "6j5HGQ5u8FmBkqYMwiejF76PKOqfr1XC"};
    public final /* synthetic */ C14057m A00;
    public final /* synthetic */ LG A01;
    public final /* synthetic */ C13997g A02;
    public final /* synthetic */ boolean A03;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14077o(C14057m c14057m, boolean z, boolean z2, C13997g c13997g, LG lg) {
        super(z);
        this.A00 = c14057m;
        this.A03 = z2;
        this.A02 = c13997g;
        this.A01 = lg;
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A00() {
        this.A00.A01.AGw(this.A01, AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.X.KM
    public final void A01(boolean z) {
        if (!C2888mv.A1t(this.A00.A04) || !this.A03) {
            EnumC2980oR enumC2980oR = this.A00.A05;
            if (A04[4].length() == 16) {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[1] = "NG7";
            strArr[3] = "cbl";
            if (enumC2980oR == EnumC2980oR.A0L) {
                this.A00.A04.A0F().AFU();
            }
            this.A00.A0C.set(true);
            this.A00.A01.AGt(this.A01);
            return;
        }
        this.A00.A06 = M1.A01(this.A00.A04, this.A02, 0, new C1736Lc(this));
    }
}
