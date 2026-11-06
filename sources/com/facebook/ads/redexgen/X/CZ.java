package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class CZ implements InterfaceC3434vp {
    public static String[] A02 = {"z07VqEjGvJ", "HVUavbLQzawZdZVBJZvs2mdfMmVurwko", "OXCJr9QWCT6iNhGP7b2SKXpA8jzUGtxO", "XfWPaMhvYm", "d0mI5Otk4DkPTVLBqA06pYB2qhxVYO4x", "4lS6eLthtLYEvbxsvILcFz16jeQVP", "9TNy9PrFUeRgfy9Rk5pKZK4U", "r8zM3TRfMT7OJmVxj71ND5jlCBdKG"};
    public final /* synthetic */ C2999ol A00;
    public final /* synthetic */ CY A01;

    public CZ(CY cy, C2999ol c2999ol) {
        this.A01 = cy;
        this.A00 = c2999ol;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3434vp
    public final void ADv() {
        if (this.A00.A02() == 0) {
            C2224c2 c2224c2 = this.A01.A02;
            String[] strArr = A02;
            if (strArr[3].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[3] = "rJocaZsUv9";
            strArr2[6] = "3nzpDtzjz9tePwbisyAfJiul";
            c2224c2.A0U();
        }
        if (this.A01.A03 != null) {
            this.A01.A03.A0U();
        }
    }
}
