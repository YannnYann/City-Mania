package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.Log;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7y, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C14177y implements TE {
    public static byte[] A0M;
    public static String[] A0N = {"EODIHkgA2ZyrIgnLGnp0dpS4o2nJxdd", "WQo", "GliZIkNeiCnyTXys850SVrhp4KurKCVm", "6oWQL2d3pXYFDFwkyJzEliAr3yK7LktZ", "mstNtXyga4JetAb1MMzdB19HSEn7nvfv", "1tgZmsf1cc3q2ZPragL47xg7EPzshINt", "vZm65Fq1JHlbcWfmwU5AQjRPykSJkysz", "BT6lEJ7JTAeLRZHkfDUXugVZieTM5hq"};
    public long A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public Uri A05;
    public TE A06;
    public NX A07;
    public NX A08;

    @MetaExoPlayerCustomization
    public C2352e7 A09;
    public C2366eL A0A;
    public boolean A0B;
    public boolean A0C;
    public final TE A0D;
    public final TE A0E;
    public final TE A0F;
    public final InterfaceC2356eB A0G;
    public final InterfaceC2359eE A0H;
    public final InterfaceC2365eK A0I;
    public final boolean A0J;
    public final boolean A0K;
    public final boolean A0L;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0M, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 25);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A0M = new byte[]{21, 55, 53, 62, 51, 18, 55, 34, 55, 5, 57, 35, 36, 53, 51, 30, 50, 40, 49, 57, 51, 122, 41, 125, 40, 45, 57, 60, 41, 56, 125, 47, 56, 57, 52, 47, 56, 62, 41, 56, 57, 125, 8, 15, 20, 115, 125, 9, 53, 52, 46, 125, 48, 52, 58, 53, 41, 125, 62, 60, 40, 46, 56, 125, 47, 56, 49, 60, 41, 52, 43, 56, 125, 8, 15, 20, 46, 125, 58, 56, 41, 125, 47, 56, 46, 50, 49, 43, 56, 57, 125, 52, 51, 62, 50, 47, 47, 56, 62, 41, 49, 36, 115, 13, 12, 33, 3, 1, 10, 7, 6, 32, 27, 22, 7, 17, 48, 7, 3, 6};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ea A[Catch: all -> 0x0105, TRY_ENTER, TryCatch #0 {all -> 0x0105, blocks: (B:2:0x0000, B:6:0x0037, B:12:0x0059, B:14:0x006b, B:20:0x008e, B:21:0x0095, B:25:0x009e, B:27:0x00a4, B:29:0x00aa, B:31:0x00b0, B:33:0x00b6, B:34:0x00b8, B:36:0x00bd, B:35:0x00ba, B:46:0x00f0, B:47:0x00f3, B:49:0x00f9, B:50:0x00fc, B:44:0x00ea, B:24:0x009c), top: B:57:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f0 A[Catch: all -> 0x0105, TryCatch #0 {all -> 0x0105, blocks: (B:2:0x0000, B:6:0x0037, B:12:0x0059, B:14:0x006b, B:20:0x008e, B:21:0x0095, B:25:0x009e, B:27:0x00a4, B:29:0x00aa, B:31:0x00b0, B:33:0x00b6, B:34:0x00b8, B:36:0x00bd, B:35:0x00ba, B:46:0x00f0, B:47:0x00f3, B:49:0x00f9, B:50:0x00fc, B:44:0x00ea, B:24:0x009c), top: B:57:0x0000 }] */
    @Override // com.facebook.ads.redexgen.X.TE
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long AHv(com.facebook.ads.redexgen.X.NX r13) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C14177y.AHv(com.facebook.ads.redexgen.X.NX):long");
    }

    static {
        A05();
    }

    public C14177y(InterfaceC2356eB interfaceC2356eB, final TE te, TE te2, final NL nl, InterfaceC2365eK interfaceC2365eK, int i, final LS ls, final int i2, InterfaceC2359eE interfaceC2359eE) {
        this.A0G = interfaceC2356eB;
        this.A0D = te2;
        this.A0I = interfaceC2365eK == null ? InterfaceC2365eK.A00 : interfaceC2365eK;
        this.A0J = (i & 1) != 0;
        this.A0L = (i & 2) != 0;
        this.A0K = (i & 4) != 0;
        if (te != null) {
            te = ls != null ? new TE(te, ls, i2) { // from class: com.facebook.ads.redexgen.X.9A
                public static byte[] A03;
                public static String[] A04 = {"fi42VJOcvh6gHZK2DTPtDLqKKJ6VNkoR", "48gk7M", "6L6spAAwpgwWYSE0", "d4FLyAPw7CK6GF6vAtSemAxDbucATq9m", "bvhFcp", "6GnnHW3XSw", "yktXoX", "ep06XeFGBv"};
                public final int A00;
                public final LS A01;
                public final TE A02;

                public static String A00(int i3, int i4, int i5) {
                    byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i3, i3 + i4);
                    int i6 = 0;
                    while (true) {
                        int length = bArrCopyOfRange.length;
                        if (A04[3].charAt(7) == 'J') {
                            throw new RuntimeException();
                        }
                        String[] strArr = A04;
                        strArr[7] = "vffMbrqZhi";
                        strArr[5] = "OYF6OnDYEA";
                        if (i6 >= length) {
                            return new String(bArrCopyOfRange);
                        }
                        bArrCopyOfRange[i6] = (byte) ((bArrCopyOfRange[i6] ^ i5) ^ 8);
                        i6++;
                    }
                }

                public static void A01() {
                    A03 = new byte[]{33, 35, 62, 50, 52, 52, 53, 30, 35, 5, 57, 35, 62, 38};
                }

                static {
                    A01();
                }

                {
                    this.A02 = (TE) AbstractC1747Ln.A01(te);
                    AbstractC1747Ln.A01(ls);
                    this.A01 = null;
                    this.A00 = i2;
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final void A4T(InterfaceC1793Ni interfaceC1793Ni) {
                    AbstractC1747Ln.A01(interfaceC1793Ni);
                    this.A02.A4T(interfaceC1793Ni);
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final Map<String, List<String>> A9W() {
                    return this.A02.A9W();
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final Uri AA2() {
                    return this.A02.AA2();
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final long AHv(NX nx) throws IOException {
                    throw new NullPointerException(A00(0, 14, 89));
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final void close() throws IOException {
                    this.A02.close();
                }

                @Override // com.facebook.ads.redexgen.X.KR
                public final int read(byte[] bArr, int i3, int i4) throws IOException {
                    throw new NullPointerException(A00(0, 14, 89));
                }
            } : te;
            this.A0F = te;
            this.A0E = nl != null ? new TE(te, nl) { // from class: com.facebook.ads.redexgen.X.98
                public static String[] A04 = {"UJHVwBYxPEVBKbkCLrBMcLtCT6WuZcAu", "JGdCep40AY2ra8A5tRqCMSkWjrTrM01Y", "jpmm8WTAjiaT6F1GW", "hCOCNPdYrQe6i9Dr4VlHJtZD0QWRqRvI", "UM18O6ty1otoSDqmzVN25H8CnUfpg3Id", "liOUxUbxSG7kHzPVcyH04AFcb3RIHNnN", "83qHFCna6vZvrK3QM6kBLRxUZ4hvrfyz", "80YJwI2nBCNK3O4CL"};
                public long A00;
                public boolean A01;
                public final NL A02;
                public final TE A03;

                {
                    this.A03 = (TE) AbstractC1747Ln.A01(te);
                    this.A02 = (NL) AbstractC1747Ln.A01(nl);
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final void A4T(InterfaceC1793Ni interfaceC1793Ni) {
                    AbstractC1747Ln.A01(interfaceC1793Ni);
                    this.A03.A4T(interfaceC1793Ni);
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final Map<String, List<String>> A9W() {
                    return this.A03.A9W();
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final Uri AA2() {
                    return this.A03.AA2();
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final long AHv(NX nx) throws IOException {
                    this.A00 = this.A03.AHv(nx);
                    if (this.A00 == 0) {
                        return 0L;
                    }
                    if (nx.A03 == -1) {
                        long j = this.A00;
                        if (A04[6].charAt(14) == 's') {
                            throw new RuntimeException();
                        }
                        String[] strArr = A04;
                        strArr[5] = "TpcC34pmvpLXayexhoYKr45IxXzse8Ke";
                        strArr[0] = "xYCJnhqVgzWyWEoMI8eoYFyWKlfa4Hwu";
                        if (j != -1) {
                            nx = nx.A05(0L, this.A00);
                        }
                    }
                    this.A01 = true;
                    this.A02.AHx(nx);
                    return this.A00;
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final void close() throws IOException {
                    try {
                        this.A03.close();
                        boolean z = this.A01;
                        String[] strArr = A04;
                        if (strArr[4].charAt(17) != strArr[3].charAt(17)) {
                            throw new RuntimeException();
                        }
                        String[] strArr2 = A04;
                        strArr2[7] = "Q3XntvrUZwdHLkhNL";
                        strArr2[2] = "I621lVCee7gkMKd4D";
                        if (z) {
                            this.A01 = false;
                            this.A02.close();
                        }
                    } catch (Throwable th) {
                        if (this.A01) {
                            this.A01 = false;
                            this.A02.close();
                        }
                        throw th;
                    }
                }

                @Override // com.facebook.ads.redexgen.X.KR
                public final int read(byte[] bArr, int i3, int i4) throws IOException {
                    if (this.A00 == 0) {
                        return -1;
                    }
                    TE te3 = this.A03;
                    if (A04[6].charAt(14) == 's') {
                        throw new RuntimeException();
                    }
                    String[] strArr = A04;
                    strArr[5] = "2c3CIpWyvIGDnm7MoZsVV0a27dM3iQpB";
                    strArr[0] = "mK1vyJexEQCNSP1Qdv3UbXCFrYuSPrXM";
                    int bytesRead = te3.read(bArr, i3, i4);
                    if (bytesRead > 0) {
                        this.A02.write(bArr, i3, bytesRead);
                        if (this.A00 != -1) {
                            this.A00 -= (long) bytesRead;
                        }
                    }
                    return bytesRead;
                }
            } : null;
        } else {
            this.A0F = C9B.A02;
            this.A0E = null;
        }
        this.A0H = interfaceC2359eE;
    }

    private int A00(NX nx) {
        if (this.A0L && this.A0C) {
            return 0;
        }
        if (!this.A0K || nx.A03 != -1) {
            return -1;
        }
        if (A0N[2].charAt(18) != '0') {
            throw new RuntimeException();
        }
        A0N[2] = "W4c5ltPVk8tlmclkH20KnHifTbatFjEL";
        return 1;
    }

    public static Uri A01(InterfaceC2356eB interfaceC2356eB, String str, Uri redirectedUri) {
        Uri redirectedUri2 = AbstractC2376eV.A01(interfaceC2356eB.A83(str));
        return redirectedUri2 != null ? redirectedUri2 : redirectedUri;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void A03() throws IOException {
        if (this.A06 == null) {
            return;
        }
        try {
            this.A06.close();
        } finally {
            this.A07 = null;
            this.A06 = null;
            if (this.A0A != null) {
                this.A0G.AIu(this.A0A);
                this.A0A = null;
            }
        }
    }

    private void A04() {
        if (0 != 0 && this.A04 > 0) {
            this.A0G.A7k();
            throw new NullPointerException(A02(103, 17, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01c3  */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A06(com.facebook.ads.redexgen.X.NX r22, boolean r23, boolean r24) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 492
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C14177y.A06(com.facebook.ads.redexgen.X.NX, boolean, boolean):void");
    }

    private void A07(String str) throws IOException {
        this.A00 = 0L;
        if (A0D()) {
            C2378eX c2378eX = new C2378eX();
            C2378eX.A00(c2378eX, this.A03);
            this.A0G.A4f(str, c2378eX);
        }
    }

    @MetaExoPlayerCustomization
    private void A08(String str, Uri uri) {
        if (!A0D()) {
            return;
        }
        C2378eX c2378eX = new C2378eX();
        if (!uri.equals(this.A05)) {
            C2378eX.A01(c2378eX, this.A05);
        } else {
            C2378eX.A01(c2378eX, null);
        }
        try {
            this.A0G.A4f(str, c2378eX);
        } catch (C2353e8 e) {
            String message = A02(15, 88, 68);
            Log.w(A02(0, 15, 79), message, e);
        }
    }

    private void A09(Throwable th) {
        if (A0B() || (th instanceof C2353e8)) {
            this.A0C = true;
        }
    }

    private boolean A0A() {
        return this.A06 == this.A0F;
    }

    private boolean A0B() {
        return this.A06 == this.A0D;
    }

    private boolean A0C() {
        return !A0B();
    }

    private boolean A0D() {
        return this.A06 == this.A0E;
    }

    public final InterfaceC2356eB A0E() {
        return this.A0G;
    }

    public final InterfaceC2365eK A0F() {
        return this.A0I;
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final void A4T(InterfaceC1793Ni interfaceC1793Ni) {
        AbstractC1747Ln.A01(interfaceC1793Ni);
        this.A0D.A4T(interfaceC1793Ni);
        this.A0F.A4T(interfaceC1793Ni);
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final Map<String, List<String>> A9W() {
        if (A0C()) {
            return this.A0F.A9W();
        }
        return Collections.emptyMap();
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final Uri AA2() {
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final void close() throws IOException {
        this.A08 = null;
        this.A05 = null;
        this.A03 = 0L;
        A04();
        try {
            A03();
        } catch (Throwable e) {
            A09(e);
            throw e;
        }
    }

    @Override // com.facebook.ads.redexgen.X.KR
    public final int read(byte[] bArr, int i, int i2) throws Throwable {
        if (i2 == 0) {
            return 0;
        }
        if (this.A00 == 0) {
            return -1;
        }
        NX currentDataSpec = (NX) AbstractC1747Ln.A01(this.A08);
        NX nx = (NX) AbstractC1747Ln.A01(this.A07);
        try {
            if (this.A03 >= this.A01) {
                A06(currentDataSpec, true, false);
            }
            try {
                int bytesRead = ((TE) AbstractC1747Ln.A01(this.A06)).read(bArr, i, i2);
                if (bytesRead != -1) {
                    if (A0B()) {
                        this.A04 += (long) bytesRead;
                    }
                    this.A03 += (long) bytesRead;
                    this.A02 += (long) bytesRead;
                    if (this.A00 != -1) {
                        this.A00 -= (long) bytesRead;
                    }
                } else if (A0C() && (nx.A03 == -1 || this.A02 < nx.A03)) {
                    A07((String) N1.A0f(currentDataSpec.A08));
                } else if (this.A00 > 0 || this.A00 == -1) {
                    A03();
                    A06(currentDataSpec, false, false);
                    return read(bArr, i, i2);
                }
                return bytesRead;
            } catch (Throwable th) {
                e = th;
                A09(e);
                throw e;
            }
        } catch (Throwable th2) {
            e = th2;
        }
    }
}
