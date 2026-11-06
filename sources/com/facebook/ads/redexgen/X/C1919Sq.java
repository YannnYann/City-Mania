package com.facebook.ads.redexgen.X;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.gms.ads.AdSize;
import com.ironsource.InterfaceC3681k1;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.metadata.a;
import com.unity3d.mediation.LevelPlayAdError;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1919Sq {
    public static byte[] A0B;
    public static String[] A0C = {"oLlXQoa7CKi98rZAqgeKDyRaD", "y9", "WldeVHW0EZmwOIvKRDoOVhGzaq49ITW3", "gAMDsS7pGCpXLjWGTGXe8MDS", "RPSpIK979J9ElwnIJgJbq7", "JM", "g38S24wDL9kOrI1XTFszneZC3lVjC9nV", "aNH2Ls5e2mWjYSKINmzr3WHa"};
    public final MediaCodecInfo.CodecCapabilities A00;
    public final String A01;
    public final String A02;
    public final String A03;
    public final boolean A04;
    public final boolean A05;
    public final boolean A06;
    public final boolean A07;
    public final boolean A08;
    public final boolean A09;
    public final boolean A0A;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 42);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0B = new byte[]{-72, 12, 7, -72, 107, 95, -53, -65, -6, -27, -60, -10, -10, -8, -16, -24, -25, -48, -28, -5, -58, -21, -28, -15, -15, -24, -17, -60, -25, -19, -8, -10, -9, -16, -24, -15, -9, -67, -93, -97, -47, -47, -45, -53, -61, -62, -79, -45, -50, -50, -51, -48, -46, 126, -71, -101, -76, -67, -66, -59, -66, 111, -93, -111, 124, -89, -123, 127, -124, -39, -14, -5, -4, 3, -4, -83, -31, -49, -70, -27, -61, -67, -61, -120, -95, -86, -85, -78, -85, 92, -112, 126, 105, -108, 114, 109, 114, -128, -104, -105, -100, -108, 118, -94, -105, -104, -106, 124, -95, -103, -94, -57, -34, -15, -18, -20, -103, -86, -87, -107, -74, -102, -68, -73, -73, -74, -71, -69, 103, -94, -39, -50, -36, -39, -45, -50, -73, -30, -33, -67, -113, -115, -104, 110, -123, -72, -71, -82, -81, -77, 110, -127, -106, -125, 110, -124, -91, -93, -81, -92, -91, -78, -116, -118, -107, 107, -126, -75, -74, -85, -84, -80, 107, 126, -109, -128, 107, -127, -94, -96, -84, -95, -94, -81, 107, -80, -94, -96, -78, -81, -94, -35, -37, -26, -68, -37, -49, -32, -28, -45, -38, -38, -68, -28, -41, -46, -45, -35, -68, -42, -27, -68, -47, -35, -46, -49, -59, -61, -62, -64, -46, -45, -47, -35, -46, -45, -32, -101, -103, -92, 122, -103, -96, -105, 122, -94, -107, -112, -111, -101, 122, -112, -111, -113, -101, -112, -111, -98, 122, -108, -111, -94, -113, -79, -85, -117, -78, -112, -111, -114, -116, -54, -115, -56, -19, -16, -19, -4, 0, -11, 2, -15, -71, -4, -8, -19, 5, -18, -19, -17, -9, -36, -16, -33, -28, -22, -86, -82, -30, -21, -21, -35, -15, -32, -27, -21, -85, -35, -33, -81, -53, -33, -50, -45, -39, -103, -53, -41, -36, -105, -31, -52, -82, -62, -79, -74, -68, 124, -78, -82, -80, -128, -50, -30, -47, -42, -36, -100, -45, -39, -50, -48, -117, -97, -114, -109, -103, 89, -111, 97, 91, 91, 87, -117, -106, -117, -95, -87, -67, -84, -79, -73, 119, -81, 127, 121, 121, 117, -75, -76, -87, -65, -45, -25, -42, -37, -31, -95, -39, -27, -33, -17, 3, -14, -9, -3, -67, -5, -2, -62, -17, -69, -6, -17, 2, -5, 3, 23, 6, 11, 17, -47, 15, 18, 7, 9, -66, -46, -63, -58, -52, -116, -52, -51, -46, -48, -29, -9, -26, -21, -15, -79, -12, -29, -7, 2, 22, 5, 10, 16, -48, 23, 16, 19, 3, 10, 20, -75, -62, -59, -72, -76, -65, -59, -54, -61, -48, -48, -57, -50, -91, -47, -41, -48, -42, -112, -61, -91, -61, -46, -43, -87, -82, -89, -76, -76, -85, -78, -119, -75, -69, -76, -70, 116, -87, -89, -74, -71, -12, -7, -14, -1, -1, -10, -3, -44, 0, 6, -1, 5, -65, 4, 6, 1, 1, 0, 3, 5, -67, -79, -65, -53, -64, -63, -65, -118, -55, -59, -55, -63, 124, -51, -39, -50, -49, -51, -104, -38, -36, -39, -48, -45, -42, -49, -74, -49, -32, -49, -42, -106, -118, -15, -27, -10, -16, -19, -14, -72, -82, -63, -128, -84, 28, 10, 11, 27, 18, 23, 10, -24, -42, -34, -31, -37, -34, -24, -35, 9, -9, 3, 6, 2, -5, -24, -9, 10, -5, -60, -9, -39, -9, 6, 9, -91, -109, -97, -94, -98, -105, -124, -109, -90, -105, 96, -107, -109, -94, -91, -80, -98, -86, -83, -87, -94, -113, -98, -79, -94, 107, -80, -78, -83, -83, -84, -81, -79, 105, 93, -61, -75, -77, -59, -62, -75, 125, -64, -68, -79, -55, -78, -79, -77, -69, -39, -49, -32, -53, -89, -44, -54, -72, -57, -38, -53, -108, -55, -57, -42, -39, -33, -43, -26, -47, -83, -38, -48, -66, -51, -32, -47, -102, -49, -37, -30, -47, -34, -104, -116, -92, -102, -85, -106, 114, -97, -107, -125, -110, -91, -106, 95, -93, -96, -91, -110, -91, -106, -107, 93, 81, -13, -23, -6, -27, -63, -18, -28, -46, -31, -12, -27, -82, -13, -11, -16, -16, -17, -14, -12, -84, -96, -92, -102, -85, -106, 114, -97, -107, -125, -110, -91, -106, 95, -89, 116, -110, -95, -92, -81, -80, -87, -87, -96, -89, -96, -97, 104, -85, -89, -100, -76, -99, -100, -98, -90, -38, -51, -56, -55, -45, -109, -59, -38, -57, -91, -104, -109, -108, -98, 94, -109, -98, -101, -111, -88, 92, -91, -104, -94, -104, -98, -99, -87, -100, -105, -104, -94, 98, -101, -104, -87, -106, 25, 12, 7, 8, 18, -46, 27, -48, 25, 17, 7, -47, 18, 17, -43, -47, 25, 19, -36, -66};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final OA A0O(VC vc, VC vc2) {
        int i = N1.A1E(vc.A0W, vc2.A0W) ? 0 : 0 | 8;
        if (this.A0A) {
            int i2 = vc.A0F;
            int i3 = vc2.A0F;
            String[] strArr = A0C;
            if (strArr[2].charAt(13) != strArr[6].charAt(13)) {
                throw new RuntimeException();
            }
            A0C[0] = "RiyRAThMtf6WTf6qI3XmfNV3T";
            if (i2 != i3) {
                i |= 1024;
            }
            if (!this.A04 && (vc.A0L != vc2.A0L || vc.A0A != vc2.A0A)) {
                i |= EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE;
            }
            if (!N1.A1E(vc.A0N, vc2.A0N)) {
                i |= a.o;
            }
            if (A0I(this.A03)) {
                boolean zA0A = vc.A0A(vc2);
                if (A0C[0].length() != 25) {
                    throw new RuntimeException();
                }
                A0C[4] = "cJ3aY5Vt0IDDVCHCJnrkQ";
                if (!zA0A) {
                    i |= 2;
                }
            }
            if (i == 0) {
                String str = this.A03;
                int i4 = vc.A0A(vc2) ? 3 : 2;
                String[] strArr2 = A0C;
                if (strArr2[2].charAt(13) != strArr2[6].charAt(13)) {
                    throw new RuntimeException();
                }
                String[] strArr3 = A0C;
                strArr3[7] = "hpHgVXjj432P0fqRUMDnTTjc";
                strArr3[3] = "FAUP5GhMj9bMp0Amp50EgaxI";
                return new OA(str, vc, vc2, i4, 0);
            }
        } else {
            if (vc.A06 != vc2.A06) {
                i |= 4096;
            }
            if (vc.A0G != vc2.A0G) {
                i |= 8192;
            }
            if (vc.A0C != vc2.A0C) {
                i |= 16384;
            }
            if (i == 0 && A03(371, 15, 100).equals(this.A02)) {
                Pair<Integer, Integer> pairA0B = TN.A0B(vc);
                String[] strArr4 = A0C;
                if (strArr4[1].length() != strArr4[5].length()) {
                    throw new RuntimeException();
                }
                String[] strArr5 = A0C;
                strArr5[2] = "dYZcDg4g3BcpvIWh7wqzqCtfCmY8cWRc";
                strArr5[6] = "Uq8kAmNirFT79ILf1ZuKCG3rW4EmeQ2v";
                Pair<Integer, Integer> pairA0B2 = TN.A0B(vc2);
                if (pairA0B != null && pairA0B2 != null) {
                    int iIntValue = ((Integer) pairA0B.first).intValue();
                    int iIntValue2 = ((Integer) pairA0B2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new OA(this.A03, vc, vc2, 3, 0);
                    }
                }
            }
            if (!vc.A0A(vc2)) {
                i |= 32;
            }
            if (A0H(this.A02)) {
                i |= 2;
            }
            if (i == 0) {
                return new OA(this.A03, vc, vc2, 1, 0);
            }
        }
        return new OA(this.A03, vc, vc2, 0, i);
    }

    static {
        A04();
    }

    public C1919Sq(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.A03 = (String) AbstractC1747Ln.A01(str);
        this.A02 = str2;
        this.A01 = str3;
        this.A00 = codecCapabilities;
        this.A05 = z;
        this.A07 = z2;
        this.A09 = z3;
        this.A04 = z4;
        this.A08 = z5;
        this.A06 = z6;
        this.A0A = L8.A0F(str2);
    }

    public static int A00(String str, String str2, int i) {
        int i2;
        if (i <= 1 && ((N1.A02 < 26 || i <= 0) && !A03(386, 10, 120).equals(str2) && !A03(281, 10, 81).equals(str2))) {
            if (A0C[0].length() == 25) {
                A0C[4] = "v9y8rv6hX5zHspBGzxHsCsJD2WyGa";
                if (!A03(300, 12, 64).equals(str2) && !A03(371, 15, 100).equals(str2) && !A03(415, 12, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE).equals(str2) && !A03(396, 10, 51).equals(str2) && !A03(InterfaceC3681k1.a.b.f, 9, 88).equals(str2) && !A03(Sdk.SDKError.Reason.MRAID_UNRECOGNIZED_COMMAND_VALUE, 10, 67).equals(str2)) {
                    String[] strArr = A0C;
                    if (strArr[2].charAt(13) == strArr[6].charAt(13)) {
                        String[] strArr2 = A0C;
                        strArr2[1] = "tU";
                        strArr2[5] = "0P";
                        if (!A03(332, 15, 0).equals(str2) && !A03(347, 15, 30).equals(str2) && !A03(362, 9, 72).equals(str2)) {
                            if (A03(291, 9, 82).equals(str2)) {
                                i2 = 6;
                            } else if (A03(Sdk.SDKError.Reason.DEEPLINK_OPEN_FAILED_VALUE, 10, 35).equals(str2)) {
                                i2 = 16;
                            } else {
                                i2 = 30;
                            }
                            MV.A07(A03(97, 14, 9), A03(10, 29, 89) + str + A03(6, 3, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE) + i + A03(0, 4, 110) + i2 + A03(260, 1, 5));
                            return i2;
                        }
                    }
                }
            }
            throw new RuntimeException();
        }
        return i;
    }

    public static Point A01(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int heightAlignment = videoCapabilities.getWidthAlignment();
        int widthAlignment = videoCapabilities.getHeightAlignment();
        return new Point(N1.A05(i, heightAlignment) * heightAlignment, N1.A05(i2, widthAlignment) * widthAlignment);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.C1919Sq A02(java.lang.String r14, java.lang.String r15, java.lang.String r16, android.media.MediaCodecInfo.CodecCapabilities r17, boolean r18, boolean r19, boolean r20, boolean r21, boolean r22) {
        /*
            com.facebook.ads.redexgen.X.Sq r4 = new com.facebook.ads.redexgen.X.Sq
            r5 = r14
            r8 = r17
            if (r21 != 0) goto L43
            if (r8 == 0) goto L43
            boolean r0 = A09(r8)
            if (r0 == 0) goto L43
            boolean r0 = A0J(r5)
            if (r0 != 0) goto L43
            r12 = 1
        L16:
            if (r8 == 0) goto L41
            boolean r0 = A0D(r8)
            if (r0 == 0) goto L41
            r13 = 1
        L1f:
            if (r22 != 0) goto L53
            if (r8 == 0) goto L61
            boolean r3 = A0B(r8)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1919Sq.A0C
            r0 = 2
            r1 = r2[r0]
            r0 = 6
            r2 = r2[r0]
            r0 = 13
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L45
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L41:
            r13 = 0
            goto L1f
        L43:
            r12 = 0
            goto L16
        L45:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1919Sq.A0C
            java.lang.String r1 = "aXXT7kiDz9BwRpDVbDFYUgBC"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "DuwV3KSslz32TPCjrEqhsbPE"
            r0 = 3
            r2[r0] = r1
            if (r3 == 0) goto L61
        L53:
            r14 = 1
        L54:
            r6 = r15
            r7 = r16
            r9 = r18
            r10 = r19
            r11 = r20
            r4.<init>(r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)
            return r4
        L61:
            r14 = 0
            goto L54
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1919Sq.A02(java.lang.String, java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean, boolean, boolean, boolean):com.facebook.ads.redexgen.X.Sq");
    }

    private void A05(String str) {
        StringBuilder sbAppend = new StringBuilder().append(A03(39, 16, 52)).append(str);
        String strA03 = A03(261, 3, 67);
        MV.A04(A03(97, 14, 9), sbAppend.append(strA03).append(this.A03).append(A03(4, 2, 21)).append(this.A02).append(strA03).append(N1.A04).append(A03(260, 1, 5)).toString());
    }

    private void A06(String str) {
        StringBuilder sbAppend = new StringBuilder().append(A03(Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE, 11, 29)).append(str);
        String strA03 = A03(261, 3, 67);
        MV.A04(A03(97, 14, 9), sbAppend.append(strA03).append(this.A03).append(A03(4, 2, 21)).append(this.A02).append(strA03).append(N1.A04).append(A03(260, 1, 5)).toString());
    }

    public static boolean A07() {
        String str = N1.A03;
        String[] strArr = A0C;
        if (strArr[2].charAt(13) != strArr[6].charAt(13)) {
            throw new RuntimeException();
        }
        A0C[0] = "LKEfchgav5NyhDOuNU7CGcFAh";
        return str.equals(A03(532, 7, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE)) || N1.A03.equals(A03(427, 6, 41)) || N1.A06.startsWith(A03(55, 14, 37)) || N1.A06.startsWith(A03(69, 14, 99)) || N1.A06.startsWith(A03(83, 14, 18));
    }

    public static boolean A09(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (N1.A02 >= 19) {
            boolean zA0A = A0A(codecCapabilities);
            if (A0C[0].length() != 25) {
                throw new RuntimeException();
            }
            String[] strArr = A0C;
            strArr[7] = "Vmu2s80uPCzr5FuU7WC5bUFk";
            strArr[3] = "1Foy1IVOUtqBUGA1eQyxsNb1";
            if (zA0A) {
                return true;
            }
        }
        return false;
    }

    public static boolean A0A(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported(A03(264, 17, 98));
    }

    public static boolean A0B(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return N1.A02 >= 21 && A0C(codecCapabilities);
    }

    public static boolean A0C(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported(A03(598, 15, 38));
    }

    public static boolean A0D(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return N1.A02 >= 21 && A0E(codecCapabilities);
    }

    public static boolean A0E(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported(A03(IronSourceError.ERROR_NT_INSTANCE_INIT_TIMEOUT, 17, 17));
    }

    public static boolean A0F(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        Point alignedSize = A01(videoCapabilities, i, i2);
        int i3 = alignedSize.x;
        int i4 = alignedSize.y;
        if (d == -1.0d || d < 1.0d) {
            return videoCapabilities.isSizeSupported(i3, i4);
        }
        return videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0077, code lost:
    
        if (r4 != 42) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0079, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0081, code lost:
    
        if (r4 != 42) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00db, code lost:
    
        if (r5 <= 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00dd, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ea, code lost:
    
        if (r5 <= 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ed, code lost:
    
        r7 = A0V();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f5, code lost:
    
        if (com.facebook.ads.redexgen.X.N1.A02 < 21) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00fb, code lost:
    
        if (com.facebook.ads.redexgen.X.N1.A02 > 23) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x010d, code lost:
    
        if (A03(761, 19, com.vungle.ads.internal.protos.Sdk.SDKError.Reason.TPAT_ERROR_VALUE).equals(r9.A02) == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0110, code lost:
    
        if (r7.length != 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0112, code lost:
    
        r7 = A0M(r9.A00);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0118, code lost:
    
        r6 = r7.length;
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x011b, code lost:
    
        if (r2 >= r6) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x011d, code lost:
    
        r1 = r7[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0121, code lost:
    
        if (r1.profile != r4) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0125, code lost:
    
        if (r1.level >= r3) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0127, code lost:
    
        if (r11 != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x012f, code lost:
    
        if (A0L(r9.A02, r4) != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0131, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0132, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0135, code lost:
    
        A06(A03(501, 20, 64) + r10.A0R + A03(4, 2, 21) + r9.A01);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0167, code lost:
    
        return false;
     */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean A0G(com.facebook.ads.redexgen.X.VC r10, boolean r11) {
        /*
            Method dump skipped, instruction units count: 360
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1919Sq.A0G(com.facebook.ads.redexgen.X.VC, boolean):boolean");
    }

    public static boolean A0H(String str) {
        return A03(396, 10, 51).equals(str);
    }

    public static boolean A0I(String str) {
        return N1.A06.startsWith(A03(253, 7, 52)) && A03(191, 36, 100).equals(str);
    }

    public static boolean A0J(String str) {
        if (N1.A02 <= 22) {
            if ((A03(Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR_VALUE, 10, 96).equals(N1.A06) || A03(111, 8, 79).equals(N1.A06)) && (A03(140, 22, 22).equals(str) || A03(162, 29, 19).equals(str))) {
                return true;
            }
        }
        return false;
    }

    public static boolean A0K(String str) {
        if (A03(Sdk.SDKError.Reason.INVALID_CSB_DATA_VALUE, 26, 34).equals(str) && A03(IronSourceError.ERROR_NON_EXISTENT_INSTANCE, 5, 33).equals(N1.A03)) {
            return false;
        }
        return true;
    }

    public static boolean A0L(String str, int i) {
        if (A03(751, 10, 9).equals(str) && 2 == i) {
            if (A03(539, 8, 75).equals(N1.A03) || A03(521, 6, 90).equals(N1.A03)) {
                return true;
            }
        }
        return false;
    }

    public static MediaCodecInfo.CodecProfileLevel[] A0M(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        int level;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int iIntValue = 0;
        if (codecCapabilities != null && (videoCapabilities = codecCapabilities.getVideoCapabilities()) != null) {
            iIntValue = ((Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
        }
        if (iIntValue >= 180000000) {
            level = 1024;
        } else if (iIntValue >= 120000000) {
            level = EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE;
        } else {
            String[] strArr = A0C;
            String str = strArr[7];
            String str2 = strArr[3];
            int length = str.length();
            int maxBitrate = str2.length();
            if (length != maxBitrate) {
                throw new RuntimeException();
            }
            A0C[0] = "mXm5MjkJLrmQMB6XvbEKtdrk0";
            if (iIntValue >= 60000000) {
                level = 256;
            } else if (iIntValue >= 30000000) {
                level = Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
            } else if (iIntValue >= 18000000) {
                level = 64;
            } else if (iIntValue >= 12000000) {
                level = 32;
            } else if (iIntValue >= 7200000) {
                level = 16;
            } else if (iIntValue >= 3600000) {
                level = 8;
            } else if (iIntValue >= 1800000) {
                level = 4;
            } else if (iIntValue >= 800000) {
                level = 2;
            } else {
                level = 1;
            }
        }
        MediaCodecInfo.CodecProfileLevel profileLevel = new MediaCodecInfo.CodecProfileLevel();
        profileLevel.profile = 1;
        profileLevel.level = level;
        return new MediaCodecInfo.CodecProfileLevel[]{profileLevel};
    }

    public final Point A0N(int i, int i2) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        if (this.A00 == null || (videoCapabilities = this.A00.getVideoCapabilities()) == null) {
            return null;
        }
        return A01(videoCapabilities, i, i2);
    }

    public final boolean A0P(int i) {
        if (this.A00 == null) {
            A06(A03(451, 17, 28));
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = this.A00.getAudioCapabilities();
        if (audioCapabilities == null) {
            A06(A03(433, 18, 56));
            return false;
        }
        if (A00(this.A03, this.A02, audioCapabilities.getMaxInputChannelCount()) < i) {
            A06(A03(AdSize.FULL_BANNER_WIDTH, 22, 103) + i);
            return false;
        }
        return true;
    }

    public final boolean A0Q(int i) {
        if (this.A00 == null) {
            A06(A03(563, 15, 8));
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = this.A00.getAudioCapabilities();
        if (audioCapabilities != null) {
            if (!audioCapabilities.isSampleRateSupported(i)) {
                A06(A03(578, 20, 19) + i);
                return false;
            }
            return true;
        }
        String[] strArr = A0C;
        if (strArr[7].length() != strArr[3].length()) {
            throw new RuntimeException();
        }
        A0C[4] = "kloQf9v12qmVqUQ";
        A06(A03(547, 16, 108));
        return false;
    }

    public final boolean A0R(int i, int i2, double d) {
        if (this.A00 == null) {
            A06(A03(613, 16, 60));
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = this.A00.getVideoCapabilities();
        if (videoCapabilities == null) {
            A06(A03(690, 17, 7));
            return false;
        }
        int i3 = N1.A02;
        String strA03 = A03(9, 1, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        String strA032 = A03(780, 1, 28);
        if (i3 >= 29) {
            int iA00 = C1917So.A00(videoCapabilities, i, i2, d);
            if (iA00 == 2) {
                return true;
            }
            if (iA00 == 1) {
                A06(A03(LevelPlayAdError.ERROR_CODE_LOAD_WHILE_SHOW, 19, 66) + i + strA032 + i2 + strA03 + d);
                return false;
            }
        }
        if (!A0F(videoCapabilities, i, i2, d)) {
            if (i >= i2 || !A0K(this.A03) || !A0F(videoCapabilities, i2, i, d)) {
                A06(A03(669, 21, 86) + i + strA032 + i2 + strA03 + d);
                return false;
            }
            A05(A03(648, 21, 7) + i + strA032 + i2 + strA03 + d);
        }
        return true;
    }

    @MetaExoPlayerCustomization
    public final boolean A0S(VC vc) {
        String strA07;
        if (vc.A0R == null || this.A02 == null || (strA07 = L8.A07(vc.A0R)) == null) {
            return true;
        }
        String codecMimeType = this.A02;
        if (!codecMimeType.equals(strA07)) {
            StringBuilder sb = new StringBuilder();
            String codecMimeType2 = A03(490, 11, 50);
            StringBuilder sbAppend = sb.append(codecMimeType2);
            String codecMimeType3 = vc.A0R;
            StringBuilder sbAppend2 = sbAppend.append(codecMimeType3);
            String codecMimeType4 = A03(4, 2, 21);
            A06(sbAppend2.append(codecMimeType4).append(strA07).toString());
            return false;
        }
        return A0G(vc, true);
    }

    public final boolean A0T(VC vc) {
        if (this.A0A) {
            return this.A04;
        }
        Pair<Integer, Integer> profileLevel = TN.A0B(vc);
        return profileLevel != null && ((Integer) profileLevel.first).intValue() == 42;
    }

    @Deprecated
    public final boolean A0U(VC vc, VC vc2, boolean z) {
        if (!z && vc.A0N != null && vc2.A0N == null) {
            vc2 = vc2.A07().A0t(vc.A0N).A14();
        }
        int i = A0O(vc, vc2).A01;
        return i == 2 || i == 3;
    }

    public final MediaCodecInfo.CodecProfileLevel[] A0V() {
        if (this.A00 == null || this.A00.profileLevels == null) {
            return new MediaCodecInfo.CodecProfileLevel[0];
        }
        return this.A00.profileLevels;
    }

    public final String toString() {
        return this.A03;
    }
}
