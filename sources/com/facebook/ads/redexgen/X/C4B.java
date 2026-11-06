package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4B, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C4B extends C8j {
    public static byte[] A0H;
    public static String[] A0I = {"ytgtQf0A3GxvRwRaFRi9yCxHj8", "EpeU1U9Laobaxc7aJ25Fd92PabAJtcL", "msyjK3DKiUJ5ISHOy1TiuFE", "AvFd6pVSC", "bPSjgDzbqbbGLdyPvR", "aG34NznxVE", "9eAEyh167wCJ5dZD2wzfFvpqSAeGnNwX", "1xnDDanEqsTw5quyQRBAb3xT4Pg5jsn7"};
    public C8l A00;
    public float A01;
    public int A02;
    public int A03;
    public long A04;
    public final float A05;
    public final int A06;
    public final int A07;
    public final long A08;
    public final long A09;
    public final long A0A;
    public final AbstractC14399l<WG> A0B;
    public final float A0C;
    public final int A0D;
    public final long A0E;
    public final InterfaceC1754Lu A0F;
    public final InterfaceC2018Ws A0G;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public C4B(@MetaExoPlayerCustomization("Used for OculusAdaptiveTrackSelection") U8 u8, @MetaExoPlayerCustomization("Used to retain old value for Oculus") int[] iArr, int i, InterfaceC2018Ws interfaceC2018Ws, int i2, long j, long j2, long j3, int i3, int i4, float f, float f2, long j4, List<WG> list, InterfaceC1754Lu interfaceC1754Lu) {
        super(u8, iArr, i);
        if (j3 < j) {
            MV.A07(A03(0, 22, 24), A03(22, 90, 67));
            j3 = j;
        }
        this.A0G = interfaceC2018Ws;
        this.A0D = i2;
        this.A08 = j * 1000;
        this.A0E = j2 * 1000;
        this.A09 = 1000 * j3;
        this.A07 = i3;
        this.A06 = i4;
        this.A0C = f;
        this.A05 = f2;
        this.A0B = AbstractC14399l.A05(list);
        this.A0A = j4;
        this.A0F = interfaceC1754Lu;
        this.A01 = 1.0f;
        this.A02 = 0;
        this.A04 = -9223372036854775807L;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 10);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0H = new byte[]{99, -122, -125, -110, -106, -117, -104, -121, 118, -108, -125, -123, -115, 117, -121, -114, -121, -123, -106, -117, -111, -112, -114, -79, -73, -62, -64, -63, -74, -69, -76, 109, -70, -74, -69, -111, -62, -65, -82, -63, -74, -68, -69, -95, -68, -97, -78, -63, -82, -74, -69, -114, -77, -63, -78, -65, -111, -74, -64, -80, -82, -65, -79, -102, -64, 109, -63, -68, 109, -81, -78, 109, -82, -63, 109, -71, -78, -82, -64, -63, 109, -70, -74, -69, -111, -62, -65, -82, -63, -74, -68, -69, -109, -68, -65, -98, -62, -82, -71, -74, -63, -58, -106, -69, -80, -65, -78, -82, -64, -78, -102, -64};
    }

    static {
        A04();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4e != com.google.common.collect.ImmutableList$Builder<com.facebook.ads.androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection$AdaptationCheckpoint> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4e != com.google.common.collect.ImmutableList$Builder<com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection$AdaptationCheckpoint>> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9l != com.google.common.collect.ImmutableList<java.lang.Integer> */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.AbstractC14399l<com.facebook.ads.redexgen.X.AbstractC14399l<com.facebook.ads.redexgen.X.WG>> A00(com.facebook.ads.redexgen.X.WX[] r13) {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C4B.A00(com.facebook.ads.redexgen.X.WX[]):com.facebook.ads.redexgen.X.9l");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0096, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vi != com.google.common.collect.Multimap<java.lang.Double, java.lang.Integer> */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.AbstractC14399l<java.lang.Integer> A02(long[][] r14) {
        /*
            Method dump skipped, instruction units count: 203
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C4B.A02(long[][]):com.facebook.ads.redexgen.X.9l");
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4e != com.google.common.collect.ImmutableList$Builder<com.facebook.ads.androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection$AdaptationCheckpoint> */
    public static void A05(List<C13194e<WG>> list, long[] jArr) {
        long j = 0;
        int i = 0;
        while (true) {
            int length = jArr.length;
            if (A0I[1].length() == 8) {
                throw new RuntimeException();
            }
            A0I[2] = "RgHk1yngzUfgMkKEBMQXOUl";
            if (i < length) {
                long totalBitrate = jArr[i];
                j += totalBitrate;
                i++;
            } else {
                for (int i2 = 0; i2 < list.size(); i2++) {
                    C13194e<WG> c13194e = list.get(i2);
                    if (A0I[1].length() == 8) {
                        throw new RuntimeException();
                    }
                    A0I[5] = "YJeCE6NHECK9IKWROc6C9mzK";
                    if (c13194e != null) {
                        c13194e.A04(new WG(j, jArr[i2]));
                    }
                }
                return;
            }
        }
    }

    public static long[][] A06(WX[] wxArr) {
        long[][] jArr = new long[wxArr.length][];
        for (int i = 0; i < wxArr.length; i++) {
            WX wx = wxArr[i];
            if (wx == null) {
                jArr[i] = new long[0];
            } else {
                jArr[i] = new long[wx.A02.length];
                for (int i2 = 0; i2 < wx.A02.length; i2++) {
                    U8 u8 = wx.A01;
                    int j = wx.A02[i2];
                    int i3 = A0I[7].charAt(25);
                    if (i3 != 80) {
                        throw new RuntimeException();
                    }
                    A0I[7] = "VbEp8zA6NMgTAUJUczvF6PnIEPWnCVjU";
                    long bitrate = u8.A08(j).A05;
                    long[] jArr2 = jArr[i];
                    if (bitrate == -1) {
                        bitrate = 0;
                    }
                    jArr2[i2] = bitrate;
                }
                Arrays.sort(jArr[i]);
            }
        }
        return jArr;
    }

    @Override // com.facebook.ads.redexgen.X.C8j, com.facebook.ads.redexgen.X.RA
    public final void A6W() {
        this.A00 = null;
    }

    @Override // com.facebook.ads.redexgen.X.C8j, com.facebook.ads.redexgen.X.RA
    public final void A6t() {
        this.A04 = -9223372036854775807L;
        this.A00 = null;
    }

    @Override // com.facebook.ads.redexgen.X.RA
    public final int A9g() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.C8j, com.facebook.ads.redexgen.X.RA
    public final void AGO(float f) {
        this.A01 = f;
    }
}
