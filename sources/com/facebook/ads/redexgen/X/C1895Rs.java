package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1895Rs implements InterfaceC1977Uz {
    public static byte[] A03;
    public static String[] A04 = {"dheE", "Iwl2", "MEE4GexDrhsXhj", "D0RnELDLc4WQvimbBPbg52MLoCkd3U7O", "PyJuBTzi61xP0Rgs", "6HCI0jtPHoSOK2", "ApHe7VzdSKcwRAS0SKPKUFrd8tVtm3mv", "uvkaOnOj7C7QVT"};
    public InterfaceC2068Yv A00;
    public Q9 A01;
    public final InterfaceC2072Yz A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 4);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{-120, 127, -62, -50, -44, -53, -61, 127, -47, -60, -64, -61, 127, -45, -57, -60, 127, -46, -45, -47, -60, -64, -52, -115, 108, -115, -116, -125, 62, -115, -124, 62, -110, -122, -125, 62, 127, -108, 127, -121, -118, 127, -128, -118, -125, 62, -125, -106, -110, -112, 127, -127, -110, -115, -112, -111, 62, 70};
    }

    static {
        A01();
    }

    public C1895Rs(InterfaceC2072Yz interfaceC2072Yz) {
        this.A02 = interfaceC2072Yz;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1977Uz
    @MetaExoPlayerCustomization
    public final void A6X() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1977Uz
    public final long A8B() {
        if (this.A01 != null) {
            return this.A01.A9Q();
        }
        return -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0068  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1977Uz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void AAp(@com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization(" To be replaced with DataReader after upstream is updated") com.facebook.ads.redexgen.X.TE r16, android.net.Uri r17, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r18, long r19, long r21, com.facebook.ads.redexgen.X.InterfaceC2069Yw r23) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1895Rs.AAp(com.facebook.ads.redexgen.X.TE, android.net.Uri, java.util.Map, long, long, com.facebook.ads.redexgen.X.Yw):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1977Uz
    public final int AIZ(ZH zh) throws IOException {
        return ((InterfaceC2068Yv) AbstractC1747Ln.A01(this.A00)).AIY((Q9) AbstractC1747Ln.A01(this.A01), zh);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1977Uz
    public final void AIp() {
        if (this.A00 != null) {
            this.A00.AIp();
            String[] strArr = A04;
            if (strArr[2].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[4] = "PSKkZCh97ktz0s4q";
            strArr2[5] = "8E6IFM17kqru9U";
            this.A00 = null;
        }
        this.A01 = null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1977Uz
    public final void AKO(long j, long j2) {
        ((InterfaceC2068Yv) AbstractC1747Ln.A01(this.A00)).AKO(j, j2);
    }
}
