package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Point;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8h, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C14248h extends R9 {
    public static byte[] A07;
    public static String[] A08 = {"N3ZG1EAeWs47seL3n7lh4Wuuxpt5dQ9S", "oZrngbnpXdb0MQsdT0zVvrp", "Fim13Buiqg0QqQi", "NCw8HvhGeegFdSJV0JTkOh", "1Y8AJD0wDjMc9jtVVPnZ14pSQIsLBm5S", "5vnPQraei", "qi33", "eVlKumeRx"};
    public static final AbstractC1979Vc<Integer> A09;
    public static final AbstractC1979Vc<Integer> A0A;
    public VL A00;
    public C14258i A01;
    public WR A02;
    public final Context A03;
    public final WY A04;
    public final Object A05;
    public final boolean A06;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ae A[LOOP:0: B:3:0x000c->B:32:0x00ae, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00d5 A[SYNTHETIC] */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private <T extends com.facebook.ads.redexgen.X.WT<T>> android.util.Pair<com.facebook.ads.redexgen.X.WX, java.lang.Integer> A0A(int r19, com.facebook.ads.redexgen.X.C2001Wa r20, int[][][] r21, com.facebook.ads.redexgen.X.WS<T> r22, java.util.Comparator<java.util.List<T>> r23) {
        /*
            Method dump skipped, instruction units count: 343
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C14248h.A0A(int, com.facebook.ads.redexgen.X.Wa, int[][][], com.facebook.ads.redexgen.X.WS, java.util.Comparator):android.util.Pair");
    }

    public static String A0J(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 98);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0M() {
        A07 = new byte[]{-52, -84, -32, -49, -44, -38, -117, -50, -45, -52, -39, -39, -48, -41, -117, -50, -38, -32, -39, -33, -117, -50, -38, -39, -34, -33, -35, -52, -44, -39, -33, -34, -117, -50, -52, -39, -39, -38, -33, -117, -51, -48, -117, -52, -37, -37, -41, -44, -48, -49, -117, -30, -44, -33, -45, -38, -32, -33, -117, -35, -48, -47, -48, -35, -48, -39, -50, -48, -117, -33, -38, -117, -82, -38, -39, -33, -48, -29, -33, -103, -117, -83, -32, -44, -41, -49, -117, -33, -45, -48, -117, -33, -35, -52, -50, -42, -117, -34, -48, -41, -48, -50, -33, -38, -35, -117, -44, -39, -34, -33, -52, -39, -50, -48, -117, -30, -44, -33, -45, -117, -38, -39, -48, -117, -38, -47, -117, -33, -45, -48, -117, -39, -38, -39, -104, -49, -48, -37, -35, -48, -50, -52, -33, -48, -49, -117, -50, -38, -39, -34, -33, -35, -32, -50, -33, -38, -35, -34, -117, -33, -45, -52, -33, -117, -33, -52, -42, -48, -117, -52, -117, -82, -38, -39, -33, -48, -29, -33, -117, -52, -35, -46, -32, -40, -48, -39, -33, -103, -41, -8, -7, -12, 8, -1, 7, -25, 5, -12, -10, -2, -26, -8, -1, -8, -10, 7, 2, 5, -46, -26, -43, -38, -32, -96, -46, -44, -92, -27, -7, -24, -19, -13, -77, -27, -25, -72, 58, 78, 61, 66, 72, 8, 62, 58, 60, 12, 19, 39, 22, 27, 33, -31, 23, 19, 21, -27, -33, 28, 33, 21, -38, -45, -55, -4, -17, -22, -21, -11, -75, -25, -4, -74, -73, 2, -11, -16, -15, -5, -69, -19, 2, -17, 60, 47, 42, 43, 53, -11, 42, 53, 50, 40, 63, -13, 60, 47, 57, 47, 53, 52, 60, 47, 42, 43, 53, -11, 46, 43, 60, 41, 10, -3, -8, -7, 3, -61, 12, -63, 10, 2, -8, -62, 3, 2, -58, -62, 10, 4, -51};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0N(RY ry, U1 u1, Map<Integer, U6> map) {
        U6 u6;
        for (int i = 0; i < ry.A01; i++) {
            U6 u62 = u1.A0G.get(ry.A05(i));
            if (u62 != null && ((u6 = map.get(Integer.valueOf(u62.A01()))) == null || (u6.A01.isEmpty() && !u62.A01.isEmpty()))) {
                map.put(Integer.valueOf(u62.A01()), u62);
            }
        }
    }

    static {
        A0M();
        A09 = AbstractC1979Vc.A04(new Comparator() { // from class: com.facebook.ads.redexgen.X.WL
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return C14248h.A05((Integer) obj, (Integer) obj2);
            }
        });
        A0A = AbstractC1979Vc.A04(new Comparator() { // from class: com.facebook.ads.redexgen.X.WM
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return C14248h.A06((Integer) obj, (Integer) obj2);
            }
        });
    }

    @Deprecated
    public C14248h() {
        this(C14258i.A0J, new RT());
    }

    @Deprecated
    public C14248h(U1 u1, WY wy) {
        this(u1, wy, null);
    }

    public C14248h(U1 u1, WY wy, Context context) {
        this.A05 = new Object();
        this.A03 = context != null ? context.getApplicationContext() : null;
        this.A04 = wy;
        if (u1 instanceof C14258i) {
            this.A01 = (C14258i) u1;
        } else {
            C14258i defaultParameters = context == null ? C14258i.A0J : C14258i.A02(context);
            this.A01 = defaultParameters.A0P().A0u(u1).A0p();
        }
        this.A00 = VL.A07;
        this.A06 = context != null && N1.A18(context);
        if (!this.A06 && context != null && N1.A02 >= 32) {
            this.A02 = WR.A00(context);
        }
        if (this.A01.A08 && context == null) {
            MV.A07(A0J(188, 20, 49), A0J(1, 187, 9));
        }
    }

    @MetaExoPlayerCustomization
    public C14248h(WY wy) {
        this(C14258i.A0J, wy);
    }

    public static int A00(int i, int i2) {
        if (i != 0 && i == i2) {
            return Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        return Integer.bitCount(i & i2);
    }

    public static int A02(VC vc, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(vc.A0V)) {
            return 4;
        }
        String strA0K = A0K(str);
        String strA0K2 = A0K(vc.A0V);
        if (strA0K2 == null || strA0K == null) {
            return (z && strA0K2 == null) ? 1 : 0;
        }
        if (strA0K2.startsWith(strA0K) || strA0K.startsWith(strA0K2)) {
            return 3;
        }
        String strA0J = A0J(0, 1, 61);
        String str2 = N1.A1P(strA0K2, strA0J)[0];
        String formatLanguage = N1.A1P(strA0K, strA0J)[0];
        if (!str2.equals(formatLanguage)) {
            return 0;
        }
        return 2;
    }

    /* JADX WARN: Incorrect condition in loop: B:10:0x0024 */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A03(com.facebook.ads.redexgen.X.U8 r9, int r10, int r11, boolean r12) {
        /*
            r0 = 2147483647(0x7fffffff, float:NaN)
            if (r10 == r0) goto L7
            if (r11 != r0) goto L8
        L7:
            return r0
        L8:
            r6 = 2147483647(0x7fffffff, float:NaN)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C14248h.A08
            r0 = 0
            r1 = r1[r0]
            r0 = 25
            char r1 = r1.charAt(r0)
            r0 = 79
            if (r1 == r0) goto L80
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C14248h.A08
            java.lang.String r1 = "wfFv1AieXG9eNvhmPq2a11ljL"
            r0 = 1
            r2[r0] = r1
            r3 = 0
        L22:
            int r0 = r9.A01
            if (r3 >= r0) goto L7f
            com.facebook.ads.redexgen.X.VC r2 = r9.A08(r3)
            int r0 = r2.A0L
            if (r0 <= 0) goto L6d
            int r0 = r2.A0A
            if (r0 <= 0) goto L6d
            int r1 = r2.A0L
            int r0 = r2.A0A
            android.graphics.Point r7 = A09(r12, r10, r11, r1, r0)
            int r5 = r2.A0L
            int r0 = r2.A0A
            int r5 = r5 * r0
            int r1 = r2.A0L
            int r0 = r7.x
            float r0 = (float) r0
            r8 = 1065017672(0x3f7ae148, float:0.98)
            float r0 = r0 * r8
            int r0 = (int) r0
            if (r1 < r0) goto L6d
            int r4 = r2.A0A
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C14248h.A08
            r0 = 4
            r1 = r1[r0]
            r0 = 13
            char r1 = r1.charAt(r0)
            r0 = 76
            if (r1 == r0) goto L70
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C14248h.A08
            java.lang.String r1 = "ADP1T0Hh"
            r0 = 2
            r2[r0] = r1
            int r0 = r7.y
            float r0 = (float) r0
            float r0 = r0 * r8
            int r0 = (int) r0
            if (r4 < r0) goto L6d
        L6a:
            if (r5 >= r6) goto L6d
            r6 = r5
        L6d:
            int r3 = r3 + 1
            goto L22
        L70:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C14248h.A08
            java.lang.String r1 = "3Njng6TDHfmlDodg"
            r0 = 2
            r2[r0] = r1
            int r0 = r7.y
            float r0 = (float) r0
            float r0 = r0 * r8
            int r0 = (int) r0
            if (r4 < r0) goto L6d
            goto L6a
        L7f:
            return r6
        L80:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C14248h.A03(com.facebook.ads.redexgen.X.U8, int, int, boolean):int");
    }

    public static /* synthetic */ int A05(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        }
        if (num2.intValue() == -1) {
            return 1;
        }
        return num.intValue() - num2.intValue();
    }

    public static /* synthetic */ int A06(Integer num, Integer num2) {
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A07(java.lang.String r8) {
        /*
            r7 = 0
            if (r8 != 0) goto L4
            return r7
        L4:
            int r0 = r8.hashCode()
            r6 = 1
            r5 = 2
            r4 = 3
            r3 = 4
            switch(r0) {
                case -1851077871: goto L5c;
                case -1662735862: goto L4a;
                case -1662541442: goto L38;
                case 1331836730: goto L26;
                case 1599127257: goto L14;
                default: goto Lf;
            }
        Lf:
            r0 = -1
        L10:
            switch(r0) {
                case 0: goto L72;
                case 1: goto L71;
                case 2: goto L70;
                case 3: goto L6f;
                case 4: goto L6e;
                default: goto L13;
            }
        L13:
            return r7
        L14:
            r2 = 300(0x12c, float:4.2E-43)
            r1 = 19
            r0 = 50
            java.lang.String r0 = A0J(r2, r1, r0)
            boolean r0 = r8.equals(r0)
            if (r0 == 0) goto Lf
            r0 = 3
            goto L10
        L26:
            r2 = 263(0x107, float:3.69E-43)
            r1 = 9
            r0 = 42
            java.lang.String r0 = A0J(r2, r1, r0)
            boolean r0 = r8.equals(r0)
            if (r0 == 0) goto Lf
            r0 = 4
            goto L10
        L38:
            r2 = 290(0x122, float:4.06E-43)
            r1 = 10
            r0 = 100
            java.lang.String r0 = A0J(r2, r1, r0)
            boolean r0 = r8.equals(r0)
            if (r0 == 0) goto Lf
            r0 = 2
            goto L10
        L4a:
            r2 = 253(0xfd, float:3.55E-43)
            r1 = 10
            r0 = 36
            java.lang.String r0 = A0J(r2, r1, r0)
            boolean r0 = r8.equals(r0)
            if (r0 == 0) goto Lf
            r0 = 1
            goto L10
        L5c:
            r2 = 272(0x110, float:3.81E-43)
            r1 = 18
            r0 = 100
            java.lang.String r0 = A0J(r2, r1, r0)
            boolean r0 = r8.equals(r0)
            if (r0 == 0) goto Lf
            r0 = 0
            goto L10
        L6e:
            return r6
        L6f:
            return r5
        L70:
            return r4
        L71:
            return r3
        L72:
            r0 = 5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C14248h.A07(java.lang.String):int");
    }

    @MetaExoPlayerCustomization
    public static Point A09(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            if ((i3 > i4) != (i > i2)) {
                String[] strArr = A08;
                if (strArr[6].length() == strArr[3].length()) {
                    throw new RuntimeException();
                }
                A08[2] = "MRAL2PEWT7Lor36iYCvDrRdop0p2Kv";
                i = i2;
                i2 = i;
            }
        }
        if (i3 * i2 >= i4 * i) {
            return new Point(i, N1.A05(i * i4, i3));
        }
        return new Point(N1.A05(i2 * i3, i4), i2);
    }

    private final Pair<WX, Integer> A0B(C2001Wa c2001Wa, int[][][] iArr, final C14258i c14258i, final String str) throws AnonymousClass96 {
        return A0A(3, c2001Wa, iArr, new WS() { // from class: com.facebook.ads.redexgen.X.RP
            @Override // com.facebook.ads.redexgen.X.WS
            public final List A5o(int i, U8 u8, int[] iArr2) {
                return RI.A02(i, u8, c14258i, iArr2, str);
            }
        }, new Comparator() { // from class: com.facebook.ads.redexgen.X.WK
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return RI.A01((List) obj, (List) obj2);
            }
        });
    }

    private final Pair<WX, Integer> A0C(C2001Wa c2001Wa, int[][][] iArr, int[] iArr2, final C14258i c14258i) throws AnonymousClass96 {
        final boolean z = false;
        int i = 0;
        while (true) {
            if (i < c2001Wa.A02()) {
                if (2 == c2001Wa.A03(i) && c2001Wa.A07(i).A01 > 0) {
                    z = true;
                    break;
                }
                i++;
            } else {
                break;
            }
        }
        return A0A(1, c2001Wa, iArr, new WS() { // from class: com.facebook.ads.redexgen.X.RQ
            @Override // com.facebook.ads.redexgen.X.WS
            public final List A5o(int i2, U8 u8, int[] iArr3) {
                return this.A01.A0e(c14258i, z, i2, u8, iArr3);
            }
        }, new Comparator() { // from class: com.facebook.ads.redexgen.X.WJ
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return RO.A02((List) obj, (List) obj2);
            }
        });
    }

    private final Pair<WX, Integer> A0D(C2001Wa c2001Wa, int[][][] iArr, final int[] iArr2, final C14258i c14258i, final String str) throws AnonymousClass96 {
        return A0A(2, c2001Wa, iArr, new WS() { // from class: com.facebook.ads.redexgen.X.RS
            @Override // com.facebook.ads.redexgen.X.WS
            public final List A5o(int i, U8 u8, int[] iArr3) {
                return RH.A06(i, u8, c14258i, iArr3, str, iArr2[i]);
            }
        }, new Comparator() { // from class: com.facebook.ads.redexgen.X.WI
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return RH.A05((List) obj, (List) obj2);
            }
        });
    }

    private final WX A0E(int i, RY ry, int[][] iArr, C14258i c14258i) throws AnonymousClass96 {
        U8 u8 = null;
        int i2 = 0;
        WO wo = null;
        for (int trackIndex = 0; trackIndex < ry.A01; trackIndex++) {
            U8 trackGroup = ry.A05(trackIndex);
            int[] iArr2 = iArr[trackIndex];
            for (int groupIndex = 0; groupIndex < trackGroup.A01; groupIndex++) {
                int selectedTrackIndex = iArr2[groupIndex];
                if (A0S(selectedTrackIndex, c14258i.A0B)) {
                    WO wo2 = new WO(trackGroup.A08(groupIndex), iArr2[groupIndex]);
                    if (wo == null || wo2.compareTo(wo) > 0) {
                        u8 = trackGroup;
                        i2 = groupIndex;
                        wo = wo2;
                    }
                }
            }
        }
        if (u8 == null) {
            return null;
        }
        return new WX(u8, i2);
    }

    public static String A0K(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, A0J(250, 3, 3))) {
            return null;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0L() {
        boolean z;
        synchronized (this.A05) {
            z = this.A01.A08 && !this.A06 && N1.A02 >= 32 && this.A02 != null && this.A02.A06();
        }
        if (z) {
            A01();
        }
    }

    public static void A0P(C2001Wa c2001Wa, U1 u1, WX[] wxArr) {
        WX wx;
        int iA02 = c2001Wa.A02();
        HashMap map = new HashMap();
        for (int i = 0; i < iA02; i++) {
            A0N(c2001Wa.A07(i), u1, map);
        }
        A0N(c2001Wa.A06(), u1, map);
        for (int i2 = 0; i2 < iA02; i2++) {
            int rendererCount = c2001Wa.A03(i2);
            U6 u6 = (U6) map.get(Integer.valueOf(rendererCount));
            if (u6 != null) {
                if (!u6.A01.isEmpty() && c2001Wa.A07(i2).A04(u6.A00) != -1) {
                    wx = new WX(u6.A00, AnonymousClass19.A0B(u6.A01));
                } else {
                    wx = null;
                }
                wxArr[i2] = wx;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A0Q(com.facebook.ads.redexgen.X.C2001Wa r6, com.facebook.ads.redexgen.X.C14258i r7, com.facebook.ads.redexgen.X.WX[] r8) {
        /*
            int r5 = r6.A02()
            r4 = 0
        L5:
            if (r4 >= r5) goto L33
            com.facebook.ads.redexgen.X.RY r2 = r6.A07(r4)
            boolean r0 = r7.A0S(r4, r2)
            if (r0 != 0) goto L14
        L11:
            int r4 = r4 + 1
            goto L5
        L14:
            com.facebook.ads.redexgen.X.RJ r1 = r7.A0Q(r4, r2)
            if (r1 == 0) goto L31
            int[] r0 = r1.A03
            int r0 = r0.length
            if (r0 == 0) goto L31
            int r0 = r1.A00
            com.facebook.ads.redexgen.X.U8 r3 = r2.A05(r0)
            int[] r2 = r1.A03
            int r1 = r1.A02
            com.facebook.ads.redexgen.X.WX r0 = new com.facebook.ads.redexgen.X.WX
            r0.<init>(r3, r2, r1)
        L2e:
            r8[r4] = r0
            goto L11
        L31:
            r0 = 0
            goto L2e
        L33:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C14248h.A0Q(com.facebook.ads.redexgen.X.Wa, com.facebook.ads.redexgen.X.8i, com.facebook.ads.redexgen.X.WX[]):void");
    }

    public static void A0R(C2001Wa c2001Wa, int[][][] iArr, C1839Ph[] c1839PhArr, RA[] raArr) {
        int i = -1;
        int i2 = -1;
        int i3 = 1;
        int i4 = 0;
        while (true) {
            int tunnelingAudioRendererIndex = c2001Wa.A02();
            if (i4 >= tunnelingAudioRendererIndex) {
                break;
            }
            int i5 = c2001Wa.A03(i4);
            RA ra = raArr[i4];
            if ((i5 == 1 || i5 == 2) && ra != null && A0W(iArr[i4], c2001Wa.A07(i4), ra)) {
                if (i5 == 1) {
                    if (i != -1) {
                        i3 = 0;
                        break;
                    }
                    i = i4;
                } else {
                    if (i2 != -1) {
                        i3 = 0;
                        break;
                    }
                    i2 = i4;
                }
            }
            i4++;
        }
        int tunnelingAudioRendererIndex2 = (i == -1 || i2 == -1) ? 0 : 1;
        if ((i3 & tunnelingAudioRendererIndex2) != 0) {
            C1839Ph c1839Ph = new C1839Ph(true);
            c1839PhArr[i] = c1839Ph;
            c1839PhArr[i2] = c1839Ph;
        }
    }

    @MetaExoPlayerCustomization
    public static boolean A0S(int i, boolean z) {
        int iA03 = PX.A03(i);
        return iA03 == 4 || (z && iA03 == 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0T(VC vc) {
        boolean z;
        synchronized (this.A05) {
            z = !this.A01.A08 || this.A06 || vc.A06 <= 2 || (A0U(vc) && (N1.A02 < 32 || this.A02 == null || !this.A02.A06())) || (N1.A02 >= 32 && this.A02 != null && this.A02.A06() && this.A02.A04() && this.A02.A05() && this.A02.A07(this.A00, vc));
        }
        return z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A0U(com.facebook.ads.redexgen.X.VC r7) {
        /*
            java.lang.String r0 = r7.A0W
            r6 = 0
            if (r0 != 0) goto L6
            return r6
        L6:
            java.lang.String r3 = r7.A0W
            int r5 = r3.hashCode()
            r4 = 1
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C14248h.A08
            r0 = 6
            r1 = r2[r0]
            r0 = 3
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L7c
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C14248h.A08
            java.lang.String r1 = "Km1e"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "HhuKc9C19fuqudqOrF8WI4"
            r0 = 3
            r2[r0] = r1
            switch(r5) {
                case -2123537834: goto L69;
                case 187078296: goto L57;
                case 187078297: goto L45;
                case 1504578661: goto L33;
                default: goto L2e;
            }
        L2e:
            r0 = -1
        L2f:
            switch(r0) {
                case 0: goto L7b;
                case 1: goto L7b;
                case 2: goto L7b;
                case 3: goto L7b;
                default: goto L32;
            }
        L32:
            return r6
        L33:
            r2 = 226(0xe2, float:3.17E-43)
            r1 = 10
            r0 = 119(0x77, float:1.67E-43)
            java.lang.String r0 = A0J(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L2e
            r0 = 1
            goto L2f
        L45:
            r2 = 217(0xd9, float:3.04E-43)
            r1 = 9
            r0 = 34
            java.lang.String r0 = A0J(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L2e
            r0 = 3
            goto L2f
        L57:
            r2 = 208(0xd0, float:2.91E-43)
            r1 = 9
            r0 = 15
            java.lang.String r0 = A0J(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L2e
            r0 = 0
            goto L2f
        L69:
            r2 = 236(0xec, float:3.31E-43)
            r1 = 14
            r0 = 80
            java.lang.String r0 = A0J(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L2e
            r0 = 2
            goto L2f
        L7b:
            return r4
        L7c:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C14248h.A0U(com.facebook.ads.redexgen.X.VC):boolean");
    }

    public static boolean A0W(int[][] iArr, RY ry, RA ra) {
        if (ra == null) {
            return false;
        }
        int iA04 = ry.A04(ra.A9y());
        for (int i = 0; i < ra.length(); i++) {
            int trackGroupIndex = PX.A05(iArr[iA04][ra.A8t(i)]);
            if (trackGroupIndex != 32) {
                return false;
            }
        }
        return true;
    }

    private final WX[] A0X(C2001Wa c2001Wa, int[][][] iArr, int[] iArr2, C14258i c14258i) throws AnonymousClass96 {
        String str;
        int iA02 = c2001Wa.A02();
        WX[] wxArr = new WX[iA02];
        Pair<WX, Integer> pairA0C = A0C(c2001Wa, iArr, iArr2, c14258i);
        if (pairA0C != null) {
            int iIntValue = ((Integer) pairA0C.second).intValue();
            WX wx = (WX) pairA0C.first;
            if (A08[1].length() == 30) {
                throw new RuntimeException();
            }
            String[] strArr = A08;
            strArr[6] = "i1l7";
            strArr[3] = "8gR5IAybtJJSc0KWEFd8Nb";
            wxArr[iIntValue] = wx;
        }
        if (pairA0C == null) {
            str = null;
        } else {
            U8 u8 = ((WX) pairA0C.first).A01;
            int rendererCount = ((WX) pairA0C.first).A02[0];
            str = u8.A08(rendererCount).A0V;
        }
        Pair<WX, Integer> pairA0D = A0D(c2001Wa, iArr, iArr2, c14258i, str);
        if (pairA0D != null) {
            wxArr[((Integer) pairA0D.second).intValue()] = (WX) pairA0D.first;
        }
        Pair<WX, Integer> pairA0B = A0B(c2001Wa, iArr, c14258i, str);
        if (pairA0B != null) {
            wxArr[((Integer) pairA0B.second).intValue()] = (WX) pairA0B.first;
        }
        for (int i = 0; i < iA02; i++) {
            int iA03 = c2001Wa.A03(i);
            if (iA03 != 2 && iA03 != 1 && iA03 != 3) {
                wxArr[i] = A0E(iA03, c2001Wa.A07(i), iArr[i], c14258i);
            }
        }
        return wxArr;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2008Wi
    public final boolean A0Y() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.R9
    @MetaExoPlayerCustomization
    public final Pair<C1839Ph[], RA[]> A0d(C2001Wa c2001Wa, int[][][] iArr, int[] iArr2, C1887Rk c1887Rk, Timeline timeline) throws Throwable {
        C14258i c14258i;
        synchronized (this.A05) {
            try {
                c14258i = this.A01;
                if (c14258i.A08 && N1.A02 >= 32 && this.A02 != null) {
                    this.A02.A03(this, (Looper) AbstractC1747Ln.A02(Looper.myLooper()));
                }
            } catch (Throwable th) {
                th = th;
                while (true) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            }
        }
        int iA02 = c2001Wa.A02();
        WX[] wxArrA0X = A0X(c2001Wa, iArr, iArr2, c14258i);
        A0P(c2001Wa, c14258i, wxArrA0X);
        A0Q(c2001Wa, c14258i, wxArrA0X);
        for (int rendererCount = 0; rendererCount < iA02; rendererCount++) {
            int iA03 = c2001Wa.A03(rendererCount);
            if (c14258i.A0R(rendererCount) || c14258i.A0H.contains(Integer.valueOf(iA03))) {
                wxArrA0X[rendererCount] = null;
            }
        }
        RA[] raArrA6A = this.A04.A6A(wxArrA0X, A00(), c1887Rk, timeline);
        C1839Ph[] c1839PhArr = new C1839Ph[iA02];
        for (int i = 0; i < iA02; i++) {
            c1839PhArr[i] = !(c14258i.A0R(i) || c14258i.A0H.contains(Integer.valueOf(c2001Wa.A03(i)))) && (c2001Wa.A03(i) == -2 || raArrA6A[i] != null) ? C1839Ph.A01 : null;
        }
        if (c14258i.A0D) {
            A0R(c2001Wa, iArr, c1839PhArr, raArrA6A);
        }
        return Pair.create(c1839PhArr, raArrA6A);
    }

    public final /* synthetic */ AbstractC14399l A0e(C14258i c14258i, boolean z, int i, U8 u8, int[] iArr) {
        return RO.A03(i, u8, c14258i, iArr, z, new InterfaceC2019Wt() { // from class: com.facebook.ads.redexgen.X.RR
            @Override // com.facebook.ads.redexgen.X.InterfaceC2019Wt
            public final boolean A4d(Object obj) {
                return this.A00.A0T((VC) obj);
            }
        });
    }
}
