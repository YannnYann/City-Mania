package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OK implements InterfaceC2068Yv {
    public static String[] A03 = {"7uz0Som4IG7TRWUehbwdgdVh7", "ZE8Da8Lubk2vJGYn2ZK7Xov", "", "m2c0uAYXJLgCDZXbFoOgS74g90TEYPYl", "5e9mSvnYBnLPWsiL1gzdh4fKQ0IS5IUE", "dMYl5Gqwxen9108n6AVe8CHIAYXdaLv7", "guwhY1tlqdTdtQ", "vK4M4cRyPXyhwSvTSzmPlbql"};
    public static final InterfaceC2072Yz A04 = new InterfaceC2072Yz() { // from class: com.facebook.ads.redexgen.X.OM
        @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
        public final InterfaceC2068Yv[] A5w() {
            return OK.A00();
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
        public final /* synthetic */ InterfaceC2068Yv[] A5x(Uri uri, Map map) {
            return AbstractC2071Yy.A01(this, uri, map);
        }
    };
    public boolean A00;
    public final OJ A02 = new OJ();
    public final C1769Mk A01 = new C1769Mk(16384);

    public static /* synthetic */ InterfaceC2068Yv[] A00() {
        return new InterfaceC2068Yv[]{new OK()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AAq(InterfaceC2069Yw interfaceC2069Yw) {
        this.A02.A6B(interfaceC2069Yw, new C2286d2(0, 1));
        interfaceC2069Yw.A6x();
        interfaceC2069Yw.AKP(new Q4(-9223372036854775807L));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        int i = q9.read(this.A01.A0l(), 0, 16384);
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
            byte[] bArrA0l = c1769Mk.A0l();
            if (A03[5].charAt(19) != 'e') {
                throw new RuntimeException();
            }
            A03[2] = "";
            q9.AI6(bArrA0l, 0, 10);
            c1769Mk.A0f(0);
            if (c1769Mk.A0K() != 4801587) {
                q9.AK3();
                q9.A4X(length);
                int i = length;
                int syncBytes = 0;
                while (true) {
                    q9.AI6(c1769Mk.A0l(), 0, 7);
                    c1769Mk.A0f(0);
                    int headerPosition = c1769Mk.A0M();
                    if (headerPosition != 44096 && headerPosition != 44097) {
                        syncBytes = 0;
                        q9.AK3();
                        i++;
                        if (i - length >= 8192) {
                            return false;
                        }
                        q9.A4X(i);
                    } else {
                        syncBytes++;
                        if (syncBytes >= 4) {
                            return true;
                        }
                        int headerPosition2 = AbstractC2054Yg.A02(c1769Mk.A0l(), headerPosition);
                        if (headerPosition2 == -1) {
                            return false;
                        }
                        q9.A4X(headerPosition2 - 7);
                    }
                }
            } else {
                c1769Mk.A0g(3);
                int iA0H = c1769Mk.A0H();
                length += iA0H + 10;
                q9.A4X(iA0H);
            }
        }
    }
}
