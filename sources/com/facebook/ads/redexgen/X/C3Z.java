package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3Z, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3Z extends C4H implements InterfaceC1834Ox {
    public static byte[] A0J;
    public static String[] A0K = {"dJ1YV3jThjOwmigxZfa0WIEeV1TCs5d", "hQKoR2s3XjG2tZwsIwpqT2xBbm3fjsKt", "xiXXnVe2lpGRoK7OeNWdVisEgpez07tP", "LSwr", "ihVCdHgoZFWIWG03j", "mJMbvy0sGnDWHltuIsS6w9lBBRVC4B86", "ZAPRWjlsGBrRu8ymN", "xuGgiynb"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public long A04;
    public long A05;
    public MediaFormat A06;
    public VC A07;
    public PW A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public final Context A0E;
    public final C1854Qd A0F;
    public final boolean A0G;
    public final boolean A0H;
    public final InterfaceC1865Qo A0I;

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0J, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 83);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A0J = new byte[]{98, 74, 75, 70, 78, 108, 64, 75, 74, 76, 110, 90, 75, 70, 64, 125, 74, 65, 75, 74, 93, 74, 93, 116, 118, 99, 21, 104, 126, 120, 21, 90, 90, 88, 21, 95, 94, 88, 95, 93, 72, 62, 119, 127, 127, 119, 124, 117, 62, 98, 113, 103, 62, 116, 117, 115, 127, 116, 117, 98, 61, 61, 63, 113, 56, 46, 63, 113, 57, 58, 58, 57, 63, 40, 113, 40, 37, 44, 57, 42, 42, 40, 102, 63, 42, 57, 44, 46, 63, 102, 57, 46, 45, 102, 39, 46, 61, 46, 39, 74, 94, 79, 66, 68, 4, 89, 74, 92, 50, 57, 48, 63, 63, 52, 61, 124, 50, 62, 36, 63, 37, 23, 26, 13, 16, 19, 11, 26, 113, 124, 107, 118, 104, 117, 109, 124, 15, 3, 26, 79, 11, 12, 18, 23, 22, 79, 17, 11, 24, 7, 16, 20, 16, 24, 94, 67, 7, 82, 29, 7, 3, 29, 7, 1, 79, 77, 86, 80, 77, 86, 75, 70, 39, 53, 57, 36, 56, 49, 121, 38, 53, 32, 49, 98, 112, 124, 98, 100, 127, 118, 115, 108, 123, 102, 111, 101, 125, 108};
    }

    static {
        A09();
    }

    public C3Z(Context context, C2026Xc c2026Xc, C2029Xf c2029Xf, TG tg, InterfaceC1897Ru interfaceC1897Ru, boolean z, boolean z2, boolean z3, Handler handler, InterfaceC1855Qe interfaceC1855Qe, QG qg, LZ... lzArr) {
        this(context, c2026Xc, c2029Xf, tg, interfaceC1897Ru, z, z2, z3, handler, interfaceC1855Qe, new SI(qg, lzArr));
    }

    public C3Z(Context context, C2026Xc c2026Xc, C2029Xf c2029Xf, TG tg, InterfaceC1897Ru interfaceC1897Ru, boolean z, boolean z2, boolean z3, Handler handler, InterfaceC1855Qe interfaceC1855Qe, InterfaceC1865Qo interfaceC1865Qo) {
        super(1, c2026Xc, c2029Xf, tg, interfaceC1897Ru, z, false, 0, 0);
        this.A01 = 0;
        this.A02 = 0;
        this.A05 = 0L;
        this.A0E = context.getApplicationContext();
        this.A0I = interfaceC1865Qo;
        this.A0G = z2;
        this.A0H = z3;
        this.A0F = new C1854Qd(handler, interfaceC1855Qe);
        interfaceC1865Qo.AKn(new SG(this));
        interfaceC1865Qo.AKi(c2026Xc.A0E);
    }

    @MetaExoPlayerCustomization
    private int A00() {
        int i = this.A0z.A09;
        if (this.A0z.A0I) {
            int i2 = this.A0z.A03;
            int i3 = this.A0z.A04;
            int xHEAACEffectType = this.A0z.A05;
            return YE.A00(i2, i3, xHEAACEffectType);
        }
        return i;
    }

    public static int A01(VC vc) {
        if (A07(99, 9, 120).equals(vc.A0W)) {
            return vc.A0C;
        }
        return 2;
    }

    private int A02(C1919Sq c1919Sq, VC vc) {
        if (A07(38, 22, 67).equals(c1919Sq.A03) && N1.A02 < 24 && (N1.A02 != 23 || !N1.A18(this.A0E))) {
            return -1;
        }
        return vc.A0B;
    }

    private final int A03(C1919Sq c1919Sq, VC vc, VC[] vcArr) {
        int maxInputSize = A02(c1919Sq, vc);
        return maxInputSize;
    }

    private final MediaFormat A04(VC vc, String str, int i) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(A07(150, 4, 46), str);
        mediaFormat.setInteger(A07(108, 13, 2), vc.A06);
        mediaFormat.setInteger(A07(172, 11, 7), vc.A0G);
        MX.A06(mediaFormat, vc.A0X);
        MX.A04(mediaFormat, A07(Sdk.SDKError.Reason.PRIVACY_URL_ERROR_VALUE, 14, 49), i);
        if (N1.A02 >= 23) {
            mediaFormat.setInteger(A07(164, 8, 108), 0);
        }
        if (vc.A0R != null && vc.A0R.equals(A07(154, 10, 96)) && this.A0z.A0J) {
            mediaFormat.setInteger(A07(60, 19, 15), A00());
            mediaFormat.setInteger(A07(79, 20, 24), this.A0z.A0A);
        }
        return mediaFormat;
    }

    public static /* synthetic */ PW A05(C3Z c3z) {
        return null;
    }

    private void A08() {
        long jA8G = this.A0I.A8G(AB7());
        if (jA8G != Long.MIN_VALUE) {
            if (!this.A0A) {
                long newCurrentPositionUs = this.A04;
                jA8G = Math.max(newCurrentPositionUs, jA8G);
            }
            this.A04 = jA8G;
            this.A0A = false;
        }
    }

    private boolean A0A(VC vc) {
        String str = vc.A0W;
        String mimeType = A07(99, 9, 120);
        if (mimeType.equals(str)) {
            return false;
        }
        return this.A0I.ALg(vc);
    }

    public static boolean A0B(String str) {
        if (N1.A02 < 24 && A07(23, 15, 104).equals(str)) {
            if (A07(183, 7, 66).equals(N1.A05) && (N1.A03.startsWith(A07(190, 8, 90)) || N1.A03.startsWith(A07(Sdk.SDKError.Reason.TPAT_ERROR_VALUE, 7, 44)) || N1.A03.startsWith(A07(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, 8, 74)))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1X() {
        super.A1X();
        this.A0I.AID();
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1Y() {
        A08();
        this.A0I.pause();
        super.A1Y();
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1Z() {
        try {
            this.A0I.flush();
            try {
                super.A1Z();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.A1Z();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1a(long j, boolean z) throws AnonymousClass96 {
        super.A1a(j, z);
        if (this.A0C) {
            this.A0I.A72();
        } else {
            this.A0I.flush();
        }
        this.A04 = j;
        this.A09 = true;
        this.A0A = true;
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1b(boolean z, boolean z2) throws AnonymousClass96 {
        super.A1b(z, z2);
        this.A0F.A08(this.A0h);
        if (A1V().A00) {
            this.A0I.A6v();
        } else {
            this.A0I.A6Y();
        }
        this.A0I.AKy(A1W());
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final int A1g(InterfaceC1916Sn interfaceC1916Sn, C1919Sq c1919Sq, VC vc, VC vc2) {
        if (this.A0z.A0U && A02(c1919Sq, vc2) <= this.A00 && c1919Sq.A0U(vc, vc2, true) && vc.A08 == 0 && vc.A09 == 0 && vc2.A08 == 0 && vc2.A09 == 0) {
            return 1;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0048  */
    @Override // com.facebook.ads.redexgen.X.C4H
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A1h(com.facebook.ads.redexgen.X.TG r10, com.facebook.ads.redexgen.X.InterfaceC1897Ru r11, com.facebook.ads.redexgen.X.VC r12) throws com.facebook.ads.redexgen.X.TK {
        /*
            r9 = this;
            java.lang.String r5 = r12.A0W
            boolean r0 = com.facebook.ads.redexgen.X.L8.A0C(r5)
            r3 = 0
            if (r0 != 0) goto La
            return r3
        La:
            int r0 = com.facebook.ads.redexgen.X.N1.A02
            r4 = 21
            if (r0 < r4) goto L29
            r8 = 32
        L12:
            boolean r7 = com.facebook.ads.redexgen.X.C4H.A1G(r12)
            r6 = 4
            if (r7 == 0) goto L2b
            boolean r0 = r9.A0A(r12)
            if (r0 == 0) goto L2b
            com.facebook.ads.redexgen.X.Sq r0 = com.facebook.ads.redexgen.X.TN.A0I()
            if (r0 == 0) goto L2b
            r0 = r8 | 8
            r0 = r0 | r6
            return r0
        L29:
            r8 = 0
            goto L12
        L2b:
            r2 = 99
            r1 = 9
            r0 = 120(0x78, float:1.68E-43)
            java.lang.String r0 = A07(r2, r1, r0)
            boolean r0 = r0.equals(r5)
            r5 = 1
            if (r0 == 0) goto L48
            com.facebook.ads.redexgen.X.Qo r2 = r9.A0I
            int r1 = r12.A06
            int r0 = r12.A0C
            boolean r0 = r2.ALi(r1, r0)
            if (r0 == 0) goto L53
        L48:
            com.facebook.ads.redexgen.X.Qo r1 = r9.A0I
            int r0 = r12.A06
            r2 = 2
            boolean r0 = r1.ALi(r0, r2)
            if (r0 != 0) goto L54
        L53:
            return r5
        L54:
            java.util.List r1 = r9.A1l(r10, r12, r3)
            boolean r0 = r1.isEmpty()
            if (r0 == 0) goto L63
            int r0 = com.facebook.ads.redexgen.X.PX.A00(r5)
            return r0
        L63:
            if (r7 != 0) goto L6a
            int r0 = com.facebook.ads.redexgen.X.PX.A00(r2)
            return r0
        L6a:
            java.lang.Object r2 = r1.get(r3)
            com.facebook.ads.redexgen.X.Sq r2 = (com.facebook.ads.redexgen.X.C1919Sq) r2
            int r0 = com.facebook.ads.redexgen.X.N1.A02
            if (r0 < r4) goto L8d
            int r0 = r12.A0G
            r1 = -1
            if (r0 == r1) goto L81
            int r0 = r12.A0G
            boolean r0 = r2.A0Q(r0)
            if (r0 == 0) goto L8e
        L81:
            int r0 = r12.A06
            if (r0 == r1) goto L8d
            int r0 = r12.A06
            boolean r0 = r2.A0P(r0)
            if (r0 == 0) goto L8e
        L8d:
            r3 = 1
        L8e:
            if (r3 == 0) goto L9f
            boolean r0 = r2.A0T(r12)
            if (r0 == 0) goto L9f
            r0 = 16
        L98:
            if (r3 == 0) goto L9d
        L9a:
            r0 = r0 | r8
            r0 = r0 | r6
            return r0
        L9d:
            r6 = 3
            goto L9a
        L9f:
            r0 = 8
            goto L98
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3Z.A1h(com.facebook.ads.redexgen.X.TG, com.facebook.ads.redexgen.X.Ru, com.facebook.ads.redexgen.X.VC):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003b  */
    @Override // com.facebook.ads.redexgen.X.C4H
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.facebook.ads.redexgen.X.C1919Sq> A1l(com.facebook.ads.redexgen.X.TG r5, com.facebook.ads.redexgen.X.VC r6, boolean r7) throws com.facebook.ads.redexgen.X.TK {
        /*
            r4 = this;
            java.lang.String r0 = r6.A0W
            if (r0 != 0) goto L28
            java.util.List r3 = java.util.Collections.emptyList()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3Z.A0K
            r0 = 4
            r1 = r2[r0]
            r0 = 6
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L20
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L20:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3Z.A0K
            java.lang.String r1 = "Pcas"
            r0 = 7
            r2[r0] = r1
            return r3
        L28:
            boolean r3 = r4.A0A(r6)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C3Z.A0K
            r0 = 0
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 31
            if (r1 == r0) goto L5a
            if (r3 == 0) goto L71
        L3b:
            com.facebook.ads.redexgen.X.Sq r0 = com.facebook.ads.redexgen.X.TN.A0I()
            if (r0 == 0) goto L71
            java.util.List r3 = java.util.Collections.singletonList(r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C3Z.A0K
            r0 = 3
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 19
            if (r1 == r0) goto L64
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3Z.A0K
            java.lang.String r1 = "wzAq8m9B4I3i9ifDjepFX8ivHYW1Clz"
            r0 = 0
            r2[r0] = r1
            return r3
        L5a:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3Z.A0K
            java.lang.String r1 = "JffLfi0vHy3seiOp3go0b68"
            r0 = 7
            r2[r0] = r1
            if (r3 == 0) goto L71
            goto L3b
        L64:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3Z.A0K
            java.lang.String r1 = "SdIYnzIVnDGBOVLyaHZ6DsfwYGmLymel"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "h3QOruHZ6rG9P1RQjfureWnYKyouTutT"
            r0 = 1
            r2[r0] = r1
            return r3
        L71:
            java.lang.String r1 = r6.A0W
            r0 = 0
            java.util.List r0 = r5.A8P(r1, r7, r0)
            java.util.List r0 = java.util.Collections.unmodifiableList(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3Z.A1l(com.facebook.ads.redexgen.X.TG, com.facebook.ads.redexgen.X.VC, boolean):java.util.List");
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1o() throws AnonymousClass96 {
        try {
            this.A0I.AIF();
        } catch (C1864Qn e) {
            throw A1T(e, e.A01, e.A02, IronSourceConstants.errorCode_isReadyException);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1s(VC vc) throws AnonymousClass96 {
        super.A1s(vc);
        this.A07 = vc;
        this.A0F.A05(this.A07, null);
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1u(T2 t2) {
        if (this.A09 && !t2.A04()) {
            long j = t2.A01;
            if (A0K[0].length() == 31) {
                String[] strArr = A0K;
                strArr[2] = "SvawHhH1x8GbPGYUd1Y93MPn0ACiLicP";
                strArr[1] = "6uHIbcitojGzvCSlo3fyQ1WMRiEqRzHo";
                if (Math.abs(j - this.A04) > 500000) {
                    long j2 = t2.A01;
                    String[] strArr2 = A0K;
                    if (strArr2[4].length() == strArr2[6].length()) {
                        String[] strArr3 = A0K;
                        strArr3[2] = "17kJanhEdfGiqUZJVBg8atWLh4Sw2avR";
                        strArr3[1] = "vy2AT52lYTGJeQ2NFQyQo8ExJNUAUNN6";
                        this.A04 = j2;
                    }
                }
                if (A0K[7].length() == 24) {
                    throw new RuntimeException();
                }
                A0K[7] = "8wBdcseJYz9EbvVXqSDskBqQX";
                this.A09 = false;
                return;
            }
            throw new RuntimeException();
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:13:0x004e */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005d  */
    @Override // com.facebook.ads.redexgen.X.C4H
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A1v(com.facebook.ads.redexgen.X.InterfaceC1916Sn r9, android.media.MediaFormat r10) throws com.facebook.ads.redexgen.X.AnonymousClass96 {
        /*
            r8 = this;
            android.media.MediaFormat r0 = r8.A06
            if (r0 == 0) goto L55
            android.media.MediaFormat r3 = r8.A06
            r2 = 150(0x96, float:2.1E-43)
            r1 = 4
            r0 = 46
            java.lang.String r0 = A07(r2, r1, r0)
            java.lang.String r0 = r3.getString(r0)
            int r7 = com.facebook.ads.redexgen.X.L8.A00(r0)
            android.media.MediaFormat r4 = r8.A06
        L19:
            r2 = 108(0x6c, float:1.51E-43)
            r1 = 13
            r0 = 2
            java.lang.String r6 = A07(r2, r1, r0)
            int r3 = r4.getInteger(r6)
            r2 = 172(0xac, float:2.41E-43)
            r1 = 11
            r0 = 7
            java.lang.String r5 = A07(r2, r1, r0)
            int r0 = r4.getInteger(r5)
            int r0 = r0 * r3
            r8.A03 = r0
            boolean r0 = r8.A0B
            if (r0 == 0) goto L5d
            r1 = 6
            if (r3 != r1) goto L5d
            com.facebook.ads.redexgen.X.VC r0 = r8.A07
            int r0 = r0.A06
            if (r0 >= r1) goto L5d
            com.facebook.ads.redexgen.X.VC r0 = r8.A07
            int r0 = r0.A06
            int[] r3 = new int[r0]
            r1 = 0
        L4a:
            com.facebook.ads.redexgen.X.VC r0 = r8.A07
            int r0 = r0.A06
            if (r1 >= r0) goto L5e
            r3[r1] = r1
            int r1 = r1 + 1
            goto L4a
        L55:
            com.facebook.ads.redexgen.X.VC r0 = r8.A07
            int r7 = A01(r0)
            r4 = r10
            goto L19
        L5d:
            r3 = 0
        L5e:
            com.facebook.ads.redexgen.X.Ke r4 = new com.facebook.ads.redexgen.X.Ke
            r4.<init>()
            r2 = 99
            r1 = 9
            r0 = 120(0x78, float:1.68E-43)
            java.lang.String r0 = A07(r2, r1, r0)
            com.facebook.ads.redexgen.X.Ke r0 = r4.A11(r0)
            com.facebook.ads.redexgen.X.Ke r1 = r0.A0i(r7)
            int r0 = r10.getInteger(r6)
            com.facebook.ads.redexgen.X.Ke r1 = r1.A0b(r0)
            int r0 = r10.getInteger(r5)
            com.facebook.ads.redexgen.X.Ke r0 = r1.A0m(r0)
            com.facebook.ads.redexgen.X.VC r2 = r0.A14()
            com.facebook.ads.redexgen.X.Qo r1 = r8.A0I     // Catch: com.facebook.ads.redexgen.X.C1858Qh -> L90
            r0 = 0
            r1.A5i(r2, r0, r3)     // Catch: com.facebook.ads.redexgen.X.C1858Qh -> L90
            return
        L90:
            r2 = move-exception
            com.facebook.ads.redexgen.X.VC r1 = r2.A00
            r0 = 5001(0x1389, float:7.008E-42)
            com.facebook.ads.redexgen.X.96 r0 = r8.A1S(r2, r1, r0)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3Z.A1v(com.facebook.ads.redexgen.X.Sn, android.media.MediaFormat):void");
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1w(C1919Sq c1919Sq, InterfaceC1916Sn interfaceC1916Sn, VC vc, MediaCrypto mediaCrypto) {
        this.A00 = A03(c1919Sq, vc, A1e());
        this.A0B = A0B(c1919Sq.A03);
        String str = c1919Sq.A02;
        String strA07 = A07(99, 9, 120);
        this.A0D = strA07.equals(str) && !strA07.equals(vc.A0W);
        MediaFormat mediaFormatA04 = A04(vc, c1919Sq.A01, this.A00);
        interfaceC1916Sn.A5h(mediaFormatA04, null, mediaCrypto, 0, null);
        if (this.A0D) {
            this.A06 = mediaFormatA04;
            this.A06.setString(A07(150, 4, 46), vc.A0W);
        } else {
            this.A06 = null;
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    @MetaExoPlayerCustomization
    public final void A1x(String str) {
        this.A0F.A0F(str);
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1y(String str, long j, long j2) {
        this.A0F.A0G(str, j, j2);
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    @MetaExoPlayerCustomization
    public final boolean A22() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x008a  */
    @Override // com.facebook.ads.redexgen.X.C4H
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A23(long r15, long r17, com.facebook.ads.redexgen.X.InterfaceC1916Sn r19, java.nio.ByteBuffer r20, int r21, int r22, long r23, boolean r25, boolean r26) throws com.facebook.ads.redexgen.X.AnonymousClass96 {
        /*
            Method dump skipped, instruction units count: 412
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3Z.A23(long, long, com.facebook.ads.redexgen.X.Sn, java.nio.ByteBuffer, int, int, long, boolean, boolean):boolean");
    }

    public final void A26() {
        this.A0A = true;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97, com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final InterfaceC1834Ox A95() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1834Ox
    public final UW A9P() {
        return this.A0I.A9P();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1834Ox
    public final long A9S() {
        if (A9n() == 2) {
            A08();
        }
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97, com.facebook.ads.redexgen.X.PR
    public final void AAM(int i, Object obj) throws AnonymousClass96 {
        switch (i) {
            case 2:
                this.A0I.setVolume(((Float) obj).floatValue());
                break;
            case 3:
                this.A0I.AKY((VL) obj);
                break;
            case 4:
            case 5:
            case 7:
            case 8:
            default:
                super.AAM(i, obj);
                break;
            case 6:
                this.A0I.AKa((C1700Jq) obj);
                break;
            case 9:
                this.A0I.AL6(((Boolean) obj).booleanValue());
                break;
            case 10:
                this.A0I.AKZ(((Integer) obj).intValue());
                break;
            case 11:
                this.A08 = null;
                break;
            case 12:
                if (N1.A02 >= 23) {
                    RG.A00(this.A0I, obj);
                }
                break;
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final boolean AB7() {
        return super.AB7() && this.A0I.AB7();
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final boolean ABM() {
        return this.A0I.AAS() || super.ABM();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1834Ox
    public final void AKv(UW uw) {
        this.A0I.AKv(uw);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg, com.facebook.ads.redexgen.X.InterfaceC1838Pe
    public final String getName() {
        return A07(0, 23, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE);
    }
}
