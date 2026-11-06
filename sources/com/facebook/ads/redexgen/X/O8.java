package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O8 implements InterfaceC2265ch {
    public static byte[] A0F;
    public static String[] A0G = {"5E2Ruv", "As2lK0wpv7EAotnDV0zySIEdp7rDAuRR", "zJq1SqXcVRZcYNSBAed6ZEYj5mJqLWdW", "HU", "Au", "wBYdOmQ4YddSL8awfUza1VzNpagTxGES", "j0tpPR2yAFbckVJ9RgjjaoWQaPtBZ6oF", "tmCUrPRgE7mum4Ug"};
    public long A01;
    public ZP A02;
    public C2272co A03;
    public String A04;
    public boolean A05;
    public boolean A06;
    public final C2279cv A0B;
    public final boolean A0C;
    public final boolean A0D;
    public final boolean[] A0E = new boolean[3];
    public final C2274cq A0A = new C2274cq(7, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
    public final C2274cq A08 = new C2274cq(8, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
    public final C2274cq A09 = new C2274cq(6, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
    public long A00 = -9223372036854775807L;
    public final C1769Mk A07 = new C1769Mk();

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0G;
            if (strArr[1].charAt(18) != strArr[5].charAt(18)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0G;
            strArr2[4] = "uL";
            strArr2[3] = "GM";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 8);
            i4++;
        }
    }

    public static void A02() {
        A0F = new byte[]{-26, -39, -44, -43, -33, -97, -47, -26, -45};
    }

    static {
        A02();
    }

    public O8(C2279cv c2279cv, boolean z, boolean z2) {
        this.A0B = c2279cv;
        this.A0C = z;
        this.A0D = z2;
    }

    @EnsuresNonNull
    private void A01() {
        AbstractC1747Ln.A02(this.A02);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A03(long r11, int r13, int r14, long r15) {
        /*
            Method dump skipped, instruction units count: 386
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.O8.A03(long, int, int, long):void");
    }

    @RequiresNonNull
    private void A04(long j, int i, long j2) {
        if (!this.A05 || this.A03.A06()) {
            this.A0A.A01(i);
            this.A08.A01(i);
        }
        this.A09.A01(i);
        this.A03.A02(j, i, j2);
    }

    @RequiresNonNull
    private void A05(byte[] bArr, int i, int i2) {
        if (!this.A05 || this.A03.A06()) {
            this.A0A.A02(bArr, i, i2);
            this.A08.A02(bArr, i, i2);
        }
        this.A09.A02(bArr, i, i2);
        this.A03.A05(bArr, i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void A5j(C1769Mk c1769Mk) {
        int i;
        A01();
        int limit = c1769Mk.A09();
        int iA0A = c1769Mk.A0A();
        byte[] bArrA0l = c1769Mk.A0l();
        long j = this.A01;
        int offset = c1769Mk.A07();
        this.A01 = j + ((long) offset);
        ZP zp = this.A02;
        int offset2 = c1769Mk.A07();
        zp.AK9(c1769Mk, offset2);
        while (true) {
            int iA04 = ZE.A04(bArrA0l, limit, iA0A, this.A0E);
            if (iA04 == iA0A) {
                A05(bArrA0l, limit, iA0A);
                return;
            }
            int nalUnitType = ZE.A01(bArrA0l, iA04);
            int i2 = iA04 - limit;
            if (i2 > 0) {
                A05(bArrA0l, limit, iA04);
            }
            int i3 = iA0A - iA04;
            long j2 = this.A01 - ((long) i3);
            if (i2 < 0) {
                i = -i2;
                String[] strArr = A0G;
                if (strArr[1].charAt(18) != strArr[5].charAt(18)) {
                    throw new RuntimeException();
                }
                A0G[7] = "QwZGDBNPEFP2lUdc";
            } else {
                i = 0;
            }
            A03(j2, i3, i, this.A00);
            A04(j2, nalUnitType, this.A00);
            limit = iA04 + 3;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void A6B(InterfaceC2069Yw interfaceC2069Yw, C2286d2 c2286d2) {
        c2286d2.A05();
        this.A04 = c2286d2.A04();
        this.A02 = interfaceC2069Yw.ALm(c2286d2.A03(), 2);
        this.A03 = new C2272co(this.A02, this.A0C, this.A0D);
        this.A0B.A03(interfaceC2069Yw, c2286d2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AI2() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AI3(long j, int i) {
        if (j != -9223372036854775807L) {
            this.A00 = j;
        }
        this.A06 |= (i & 2) != 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2265ch
    public final void AKN() {
        this.A01 = 0L;
        this.A06 = false;
        this.A00 = -9223372036854775807L;
        ZE.A0H(this.A0E);
        this.A0A.A00();
        this.A08.A00();
        this.A09.A00();
        if (this.A03 != null) {
            this.A03.A01();
        }
    }
}
