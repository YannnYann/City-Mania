package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class D9 implements InterfaceC3136r1 {
    public static String[] A01 = {"tGW0cF9y", "qUzSciTRRM6xSuOkWqL3Pr4EcVOacphd", "RYjcntvzHnS6SS1FlEHG2Rbs", "9kR3NF4c6R4xZzP2wsTe6sF6wbJ5EJ1", "PRUk5T0MtZpkng1JLXpPnUCNLuv", "Uo92mfG6aBCAtHy3ONArhsOhgre8nXL7", "q7AYzDAxgooV7kNaJTuRmRFhZLJNm10k", "oR6SVtAT1ayuhXGoWwuXwkRgILLH0wXQ"};
    public final /* synthetic */ D8 A00;

    public D9(D8 d8) {
        this.A00 = d8;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3136r1
    public final void ADh(AbstractC3137r2 abstractC3137r2) {
        if (abstractC3137r2.getToolbarActionMode() == 8) {
            this.A00.A0p();
            return;
        }
        D8 d8 = this.A00;
        String[] strArr = A01;
        if (strArr[7].charAt(3) != strArr[1].charAt(3)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[7] = "pwLSj17rG04zm26jSCx9l8KylDN9JeUb";
        strArr2[1] = "GtjSaVkJLqMOqvChl2luYiadxg5GCXHm";
        d8.A07.A04(EnumC2916nN.A07, null);
        if (this.A00.A0t()) {
            return;
        }
        this.A00.A05.A0F().ABl();
        this.A00.A0A.A5C(this.A00.A0B.A8X());
    }
}
