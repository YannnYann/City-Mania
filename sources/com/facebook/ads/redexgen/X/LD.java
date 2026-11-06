package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class LD implements InterfaceC3302th {
    public static String[] A03 = {"Na1M2xtPmNO6TGoBOTfz6W7sL", "NXgjiqOw56LkYo9vjUyKCJFkjhtyi7C8", "4ziZA6ESoQLsGfJUoTByf59fKooQ7r8t", "rFFbDiuFtzKHqY9KAlXyAYcJ0hDplqAr", "v5vMjmEC9sFXjlaJD136yYX2MbKv0Grm", "0CTzYPQEJFurrXZBo", "OynCGhJ6itg9uXDX8VFFdDhh", "0r9XxdliGGlKFzR29Dn383gkf"};
    public final /* synthetic */ int A00;
    public final /* synthetic */ LB A01;
    public final /* synthetic */ GT A02;

    public LD(LB lb, int i, GT gt) {
        this.A01 = lb;
        this.A00 = i;
        this.A02 = gt;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3302th
    public final void AFA(C3301tg c3301tg) {
        if (this.A00 == 0) {
            GT gt = this.A02;
            if (A03[5].length() == 1) {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[2] = "2tqUSz0ARXn35PCtkpYy8WG3hanwOx3H";
            strArr[4] = "6Zde9YOrWRraU6s8i4byj3LUllDRZGeL";
            gt.A1k(this.A01.A04);
        }
        this.A02.A1o(c3301tg.A00() != null, true);
    }
}
