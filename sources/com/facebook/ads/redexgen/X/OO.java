package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OO implements InterfaceC2068Yv {
    public static String[] A03 = {"p1adl8IUa2eu0dGTxXaFBoizQYd7cPnt", "diieC9oxRTogf9RAHnBNHRXejOvyxJpx", "kkGExPJisKikUUo7ZDcfbH9eFAUyqfDV", "2geYVKGa9pxxi", "e3gpZ7RPdMBGV", "CWc2mkArbCBB2hcEx2xbuCazULuXgshm", "ST", "5pjvfoGpqYOAvBfOrVKaLDy7mxDFLaNl"};
    public static final InterfaceC2072Yz A04 = new InterfaceC2072Yz() { // from class: com.facebook.ads.redexgen.X.OP
        @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
        public final InterfaceC2068Yv[] A5w() {
            return OO.A00();
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
        public final /* synthetic */ InterfaceC2068Yv[] A5x(Uri uri, Map map) {
            return AbstractC2071Yy.A01(this, uri, map);
        }
    };
    public boolean A00;
    public final ON A02 = new ON();
    public final C1769Mk A01 = new C1769Mk(2786);

    public static /* synthetic */ InterfaceC2068Yv[] A00() {
        return new InterfaceC2068Yv[]{new OO()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AAq(InterfaceC2069Yw interfaceC2069Yw) {
        this.A02.A6B(interfaceC2069Yw, new C2286d2(0, 1));
        interfaceC2069Yw.A6x();
        interfaceC2069Yw.AKP(new Q4(-9223372036854775807L));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        int i = q9.read(this.A01.A0l(), 0, 2786);
        if (i == -1) {
            return -1;
        }
        this.A01.A0f(0);
        this.A01.A0e(i);
        if (!this.A00) {
            this.A02.AI3(0L, 4);
            this.A00 = true;
        }
        this.A02.A5j(this.A01);
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AKO(long j, long j2) {
        this.A00 = false;
        this.A02.AKN();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final boolean ALN(Q9 q9) throws IOException {
        C1769Mk c1769Mk = new C1769Mk(10);
        int length = 0;
        while (true) {
            q9.AI6(c1769Mk.A0l(), 0, 10);
            c1769Mk.A0f(0);
            if (c1769Mk.A0K() != 4801587) {
                break;
            }
            c1769Mk.A0g(3);
            int iA0H = c1769Mk.A0H();
            length += iA0H + 10;
            q9.A4X(iA0H);
        }
        q9.AK3();
        q9.A4X(length);
        int i = length;
        int syncBytes = 0;
        while (true) {
            q9.AI6(c1769Mk.A0l(), 0, 6);
            c1769Mk.A0f(0);
            int iA0M = c1769Mk.A0M();
            int headerPosition = A03[6].length();
            if (headerPosition == 14) {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[3] = "NUA0WGqxCkDWZ";
            strArr[4] = "likpFnC3j04t3";
            if (iA0M != 2935) {
                syncBytes = 0;
                q9.AK3();
                i++;
                int headerPosition2 = i - length;
                if (headerPosition2 >= 8192) {
                    return false;
                }
                q9.A4X(i);
            } else {
                syncBytes++;
                if (syncBytes >= 4) {
                    return true;
                }
                int headerPosition3 = AbstractC2051Yd.A05(c1769Mk.A0l());
                if (headerPosition3 == -1) {
                    return false;
                }
                q9.A4X(headerPosition3 - 6);
            }
        }
    }
}
