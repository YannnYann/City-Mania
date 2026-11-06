package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Oq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1827Oq implements InterfaceC2068Yv {
    public static byte[] A03;
    public static String[] A04 = {"x", "MiUD8Isflwo", "KZKaSVAY", "mp8bdMD1yg5xa0iWi32P6T4pt0URnEjo", "zIPFGAzXK1NPSfEVzLcBth4U9l189OV3", "ollVFlEdibIM6SsOFXYDJd5zCVU5wYsQ", "LVFdRt7YRf1", "WfjrlLhSwLMWW1ghpgSewv2b9IikS1nc"};
    public static final InterfaceC2072Yz A05;
    public InterfaceC2069Yw A00;
    public AbstractC2183bN A01;
    public boolean A02;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 107);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        String[] strArr = A04;
        if (strArr[1].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        A04[0] = "J";
        A03 = new byte[]{122, 93, 85, 80, 89, 88, 28, 72, 83, 28, 88, 89, 72, 89, 78, 81, 85, 82, 89, 28, 94, 85, 72, 79, 72, 78, 89, 93, 81, 28, 72, 69, 76, 89};
    }

    static {
        A02();
        A05 = new InterfaceC2072Yz() { // from class: com.facebook.ads.redexgen.X.Or
            @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
            public final InterfaceC2068Yv[] A5w() {
                return C1827Oq.A04();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
            public final /* synthetic */ InterfaceC2068Yv[] A5x(Uri uri, Map map) {
                return AbstractC2071Yy.A01(this, uri, map);
            }
        };
    }

    public static C1769Mk A00(C1769Mk c1769Mk) {
        c1769Mk.A0f(0);
        return c1769Mk;
    }

    @EnsuresNonNullIf
    private boolean A03(Q9 q9) throws IOException {
        C2179bJ c2179bJ = new C2179bJ();
        if (!c2179bJ.A05(q9, true) || (c2179bJ.A04 & 2) != 2) {
            return false;
        }
        int length = Math.min(c2179bJ.A00, 8);
        C1769Mk c1769Mk = new C1769Mk(length);
        q9.AI6(c1769Mk.A0l(), 0, length);
        if (C1831Ou.A01(A00(c1769Mk))) {
            this.A01 = new C1831Ou();
        } else if (C1822Ol.A06(A00(c1769Mk))) {
            this.A01 = new C1822Ol();
        } else {
            if (!C1824On.A02(A00(c1769Mk))) {
                return false;
            }
            this.A01 = new C1824On();
        }
        return true;
    }

    public static /* synthetic */ InterfaceC2068Yv[] A04() {
        return new InterfaceC2068Yv[]{new C1827Oq()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AAq(InterfaceC2069Yw interfaceC2069Yw) {
        this.A00 = interfaceC2069Yw;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        AbstractC1747Ln.A02(this.A00);
        if (this.A01 == null) {
            if (A03(q9)) {
                q9.AK3();
            } else {
                throw L9.A01(A01(0, 34, 87), null);
            }
        }
        boolean z = this.A02;
        String[] strArr = A04;
        if (strArr[7].charAt(17) == strArr[5].charAt(17)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[1] = "R5brB6y4piA";
        strArr2[6] = "kwYf40qjcdA";
        if (!z) {
            ZP zpALm = this.A00.ALm(0, 1);
            this.A00.A6x();
            this.A01.A0H(this.A00, zpALm);
            this.A02 = true;
        }
        return this.A01.A0B(q9, zh);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AKO(long j, long j2) {
        if (this.A01 != null) {
            this.A01.A0G(j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final boolean ALN(Q9 q9) throws IOException {
        try {
            return A03(q9);
        } catch (L9 unused) {
            return false;
        }
    }
}
