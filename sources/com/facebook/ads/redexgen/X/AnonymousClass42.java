package com.facebook.ads.redexgen.X;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.42, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AnonymousClass42 extends C8C {
    public static byte[] A05;
    public static String[] A06 = {"xbnCgKFzPDtux71hi6SpiioG4IwmRHBk", "3owY3Ap9luKWwPsAK25ne8wIVcCUn5JR", "FALgiAFIRpKoJzILG2rL", "VYC3eNSa18fVQa4jjeRnJSXlztjlcjqe", "6zSgZNb2SgCQYSVm7OWWQdLKxVFzji9G", "C3fF681Isvt2M5djOp3Dlhy5YNaLaBgK", "ZbCLQeP0ma1QvLm1XWzLDe6emcm3qYWC", "I30lsL6qeO5KldQ"};
    public static final Pattern A07;
    public float A00;
    public float A01;
    public Map<String, C2220by> A02;
    public final C2215bt A03;
    public final boolean A04;

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 62);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A05 = new byte[]{-73, -127, -104, -109, -127, -75, -67, -124, -126, -109, -126, -104, -127, -75, -67, -124, -126, -109, -127, -75, -67, -124, -126, -76, -109, -121, -74, -127, -75, -67, -124, -126, -84, -106, -12, 25, 17, 28, 31, 23, 37, 21, -22, -7, 34, 37, 32, 20, 39, -19, -42, -18, -20, -13, -13, -20, -15, -22, -93, -86, -42, -9, -4, -17, -24, -67, -86, -93, -17, -20, -15, -24, -93, -27, -24, -23, -14, -11, -24, -93, -86, -55, -14, -11, -16, -28, -9, -67, -86, -93, -17, -20, -15, -24, -67, -93, 2, 26, 24, 31, 31, 24, 29, 22, -49, 19, 24, 16, 27, 30, 22, 36, 20, -49, 27, 24, 29, 20, -49, 17, 20, 21, 30, 33, 20, -49, 18, 30, 28, 31, 27, 20, 35, 20, -49, 21, 30, 33, 28, 16, 35, -23, -49, -69, -45, -47, -40, -40, -47, -42, -49, -120, -52, -47, -55, -44, -41, -49, -35, -51, -120, -44, -47, -42, -51, -120, -33, -47, -36, -48, -120, -50, -51, -33, -51, -38, -120, -53, -41, -44, -35, -43, -42, -37, -120, -36, -48, -55, -42, -120, -50, -41, -38, -43, -55, -36, -94, -120, -32, -8, -10, -3, -3, -10, -5, -12, -83, -10, -5, 3, -18, -7, -10, -15, -83, 1, -10, -6, -10, -5, -12, -57, -83, -53, -21, -39, -68, -35, -37, -25, -36, -35, -22, 12, 45, 50, 37, 30, -13, -7, 18, 15, 18, 19, 27, 18, -60, 5, 16, 13, 11, 18, 17, 9, 18, 24, -34, -60, -37, -59, -10, -27, -18, -12, -13, -35, 4, -4, 12, 27, 18, 25, 29, -55, -14, 23, 15, 24, 6, -2, -7, -41, -61, -10, 23, 28, 15, 8, 22, 0, -85, -90, -124, 112, -93, -60, -55, -68, -75, -61, -83, 112, -79, -62, -75, 112, -66, -65, -60, 112, -61, -59, -64, -64, -65, -62, -60, -75, -76, -2, -7, -41, -50, -61, -10, 23, 28, 15, 8, 22, 0, -38, -52, -51, -39, -57, -39, -75, -79, -90, -66, -73, -86, -72, -67, 21, 17, 6, 30, 23, 10, 24, 30, 121, 87};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0D(String str, C2215bt c2215bt, List<List<C1936Th>> list, List<Long> list2) {
        String strA07 = A07(34, 9, Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE);
        AbstractC1747Ln.A07(str.startsWith(strA07));
        String[] strArrSplit = str.substring(strA07.length()).split(A07(32, 1, 66), c2215bt.A01);
        int length = strArrSplit.length;
        int i = c2215bt.A01;
        String strA072 = A07(Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 10, 58);
        if (length != i) {
            MV.A07(strA072, A07(143, 55, 42) + str);
            return;
        }
        long jA04 = A04(strArrSplit[c2215bt.A02]);
        String strA073 = A07(198, 25, 79);
        if (jA04 == -9223372036854775807L) {
            MV.A07(strA072, strA073 + str);
            return;
        }
        long jA042 = A04(strArrSplit[c2215bt.A00]);
        if (jA042 == -9223372036854775807L) {
            MV.A07(strA072, strA073 + str);
            return;
        }
        C2220by c2220by = (this.A02 == null || c2215bt.A03 == -1) ? null : this.A02.get(strArrSplit[c2215bt.A03].trim());
        String str2 = strArrSplit[c2215bt.A04];
        C2217bv c2217bvA02 = C2217bv.A02(str2);
        String strA04 = C2217bv.A04(str2);
        String strA074 = A07(331, 2, 64);
        String strA075 = A07(0, 1, 111);
        C1936Th c1936ThA06 = A06(strA04.replace(strA074, strA075).replace(A07(335, 2, 45), strA075).replace(A07(333, 2, 51), A07(353, 2, Sdk.SDKError.Reason.TPAT_ERROR_VALUE)), c2220by, c2217bvA02, this.A01, this.A00);
        int iA03 = A03(jA042, list2, list);
        for (int iA032 = A03(jA04, list2, list); iA032 < iA03; iA032++) {
            list.get(iA032).add(c1936ThA06);
        }
    }

    static {
        A09();
        A07 = Pattern.compile(A07(1, 31, 27));
    }

    public AnonymousClass42() {
        this(null);
    }

    public AnonymousClass42(List<byte[]> list) {
        super(A07(Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 10, 58));
        this.A01 = -3.4028235E38f;
        this.A00 = -3.4028235E38f;
        if (list != null && !list.isEmpty()) {
            this.A04 = true;
            String strA0q = N1.A0q(list.get(0));
            String formatLine = A07(43, 7, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
            AbstractC1747Ln.A07(strA0q.startsWith(formatLine));
            this.A03 = (C2215bt) AbstractC1747Ln.A01(C2215bt.A00(strA0q));
            A0A(new C1769Mk(list.get(1)));
            return;
        }
        this.A04 = false;
        this.A03 = null;
    }

    public static float A00(int i) {
        switch (i) {
            case 0:
                return 0.05f;
            case 1:
                if (A06[1].charAt(29) == 'X') {
                    throw new RuntimeException();
                }
                String[] strArr = A06;
                strArr[0] = "ioNayQ3WXGIOa3oyuyV3JORtfQpSd3Hu";
                strArr[6] = "voG9Dz1LHbY8eCjev7dDxv9y22HrDzXa";
                return 0.5f;
            case 2:
                return 0.95f;
            default:
                return -3.4028235E38f;
        }
    }

    public static int A01(int i) {
        switch (i) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                MV.A07(A07(Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 10, 58), A07(239, 19, 102) + i);
                return Integer.MIN_VALUE;
            case 1:
            case 2:
            case 3:
                if (A06[5].charAt(12) != 'M') {
                    throw new RuntimeException();
                }
                A06[5] = "wbmolFowgyKoMv8BT53csS9QgncO0HGb";
                return 2;
            case 4:
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 0;
        }
    }

    public static int A02(int i) {
        switch (i) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                MV.A07(A07(Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 10, 58), A07(239, 19, 102) + i);
                return Integer.MIN_VALUE;
            case 1:
            case 4:
            case 7:
                String[] strArr = A06;
                if (strArr[3].charAt(4) == strArr[4].charAt(4)) {
                    throw new RuntimeException();
                }
                A06[1] = "wr3J1YuF59dNmHzqw7UYwGvsz4dBhi1l";
                return 0;
            case 2:
            case 5:
            case 8:
                return 1;
            case 3:
            case 6:
            case 9:
                return 2;
        }
    }

    public static int A03(long j, List<Long> sortedCueTimesUs, List<List<C1936Th>> list) {
        ArrayList arrayList;
        int i = 0;
        int insertionIndex = sortedCueTimesUs.size();
        int i2 = insertionIndex - 1;
        while (true) {
            if (i2 < 0) {
                break;
            }
            if (sortedCueTimesUs.get(i2).longValue() == j) {
                return i2;
            }
            if (sortedCueTimesUs.get(i2).longValue() < j) {
                i = i2 + 1;
                break;
            }
            i2--;
        }
        sortedCueTimesUs.add(i, Long.valueOf(j));
        if (i == 0) {
            arrayList = new ArrayList();
        } else {
            int insertionIndex2 = i - 1;
            arrayList = new ArrayList(list.get(insertionIndex2));
        }
        list.add(i, arrayList);
        return i;
    }

    public static long A04(String str) {
        Matcher matcher = A07.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        return (Long.parseLong((String) N1.A0f(matcher.group(1))) * 60 * 60 * 1000000) + (Long.parseLong((String) N1.A0f(matcher.group(2))) * 60 * 1000000) + (Long.parseLong((String) N1.A0f(matcher.group(3))) * 1000000) + (Long.parseLong((String) N1.A0f(matcher.group(4))) * 10000);
    }

    public static Layout.Alignment A05(int i) {
        switch (i) {
            case -1:
                return null;
            case 0:
            default:
                MV.A07(A07(Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 10, 58), A07(239, 19, 102) + i);
                return null;
            case 1:
            case 4:
            case 7:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    public static C1936Th A06(String str, C2220by c2220by, C2217bv c2217bv, float f, float f2) {
        int i;
        SpannableString spannableString = new SpannableString(str);
        C1737Ld c1737LdA0G = new C1737Ld().A0G(spannableString);
        if (c2220by != null) {
            if (c2220by.A04 != null) {
                spannableString.setSpan(new ForegroundColorSpan(c2220by.A04.intValue()), 0, spannableString.length(), 33);
            }
            if (c2220by.A02 == 3 && c2220by.A03 != null) {
                spannableString.setSpan(new BackgroundColorSpan(c2220by.A03.intValue()), 0, spannableString.length(), 33);
            }
            if (c2220by.A00 != -3.4028235E38f && f2 != -3.4028235E38f) {
                c1737LdA0G.A08(c2220by.A00 / f2, 1);
            }
            if (c2220by.A06 && c2220by.A07) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (c2220by.A06) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (c2220by.A07) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (c2220by.A09) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (c2220by.A08) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        if (c2217bv.A00 != -1) {
            i = c2217bv.A00;
        } else if (c2220by != null) {
            i = c2220by.A01;
        } else {
            i = -1;
        }
        C1737Ld cue = c1737LdA0G.A0F(A05(i));
        cue.A0A(A02(i)).A09(A01(i));
        if (c2217bv.A01 != null && f2 != -3.4028235E38f && f != -3.4028235E38f) {
            PointF pointF = c2217bv.A01;
            String[] strArr = A06;
            if (strArr[0].charAt(16) == strArr[6].charAt(16)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[3] = "b936oxykl6opzTKM5E1tJSe50SsxvTBB";
            strArr2[4] = "jgdA59R252I7vX8iLnId3nHL3h1eX2f6";
            c1737LdA0G.A04(pointF.x / f);
            c1737LdA0G.A07(c2217bv.A01.y / f2, 0);
        } else {
            c1737LdA0G.A04(A00(c1737LdA0G.A01()));
            c1737LdA0G.A07(A00(c1737LdA0G.A00()), 0);
        }
        return c1737LdA0G.A0H();
    }

    public static Map<String, C2220by> A08(C1769Mk c1769Mk) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        C2216bu c2216buA00 = null;
        while (true) {
            String strA0T = c1769Mk.A0T();
            if (strA0T == null || (c1769Mk.A07() != 0 && c1769Mk.A0B() == 91)) {
                break;
            }
            if (strA0T.startsWith(A07(43, 7, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE))) {
                c2216buA00 = C2216bu.A00(strA0T);
            } else if (strA0T.startsWith(A07(233, 6, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE))) {
                if (c2216buA00 == null) {
                    String currentLine = A07(50, 46, 69) + strA0T;
                    MV.A07(A07(Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 10, 58), currentLine);
                } else {
                    C2220by c2220byA04 = C2220by.A04(strA0T, c2216buA00);
                    if (c2220byA04 != null) {
                        linkedHashMap.put(c2220byA04.A05, c2220byA04);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private void A0A(C1769Mk c1769Mk) {
        while (true) {
            String strA0T = c1769Mk.A0T();
            if (strA0T != null) {
                if (A07(266, 13, 107).equalsIgnoreCase(strA0T)) {
                    A0B(c1769Mk);
                } else if (A07(Sdk.SDKError.Reason.SILENT_MODE_MONITOR_ERROR_VALUE, 12, 101).equalsIgnoreCase(strA0T)) {
                    this.A02 = A08(c1769Mk);
                } else if (A07(279, 11, 101).equalsIgnoreCase(strA0T)) {
                    MV.A06(A07(Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 10, 58), A07(290, 29, 18));
                } else if (A07(258, 8, 66).equalsIgnoreCase(strA0T)) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0B(com.facebook.ads.redexgen.X.C1769Mk r8) {
        /*
            r7 = this;
        L0:
            java.lang.String r3 = r8.A0T()
            if (r3 == 0) goto L9d
            int r0 = r8.A07()
            if (r0 == 0) goto L14
            int r1 = r8.A0B()
            r0 = 91
            if (r1 == r0) goto L9d
        L14:
            r2 = 33
            r1 = 1
            r0 = 30
            java.lang.String r0 = A07(r2, r1, r0)
            java.lang.String[] r4 = r3.split(r0)
            int r1 = r4.length
            r0 = 2
            if (r1 == r0) goto L26
            goto L0
        L26:
            r6 = 0
            r0 = r4[r6]
            java.lang.String r0 = r0.trim()
            java.lang.String r5 = com.facebook.ads.redexgen.X.XC.A01(r0)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass42.A06
            r0 = 0
            r1 = r2[r0]
            r0 = 6
            r2 = r2[r0]
            r0 = 16
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L97
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass42.A06
            java.lang.String r1 = "ifXCIfHfH71dM6rZrRRLzSgLVtHG8Ljd"
            r0 = 5
            r2[r0] = r1
            int r1 = r5.hashCode()
            r0 = 1
            switch(r1) {
                case 1879649548: goto L6b;
                case 1879649549: goto L59;
                default: goto L54;
            }
        L54:
            r6 = -1
        L55:
            switch(r6) {
                case 0: goto L89;
                case 1: goto L7b;
                default: goto L58;
            }
        L58:
            goto L0
        L59:
            r3 = 345(0x159, float:4.83E-43)
            r2 = 8
            r1 = 103(0x67, float:1.44E-43)
            java.lang.String r1 = A07(r3, r2, r1)
            boolean r1 = r5.equals(r1)
            if (r1 == 0) goto L54
            r6 = 1
            goto L55
        L6b:
            r3 = 337(0x151, float:4.72E-43)
            r2 = 8
            r1 = 7
            java.lang.String r1 = A07(r3, r2, r1)
            boolean r1 = r5.equals(r1)
            if (r1 == 0) goto L54
            goto L55
        L7b:
            r0 = r4[r0]     // Catch: java.lang.NumberFormatException -> L0
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L0
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L0
            r7.A00 = r0     // Catch: java.lang.NumberFormatException -> L0
            goto L0
        L89:
            r0 = r4[r0]     // Catch: java.lang.NumberFormatException -> L0
            java.lang.String r0 = r0.trim()     // Catch: java.lang.NumberFormatException -> L0
            float r0 = java.lang.Float.parseFloat(r0)     // Catch: java.lang.NumberFormatException -> L0
            r7.A01 = r0     // Catch: java.lang.NumberFormatException -> L0
            goto L0
        L97:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L9d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass42.A0B(com.facebook.ads.redexgen.X.Mk):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00a5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0062 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0C(com.facebook.ads.redexgen.X.C1769Mk r8, java.util.List<java.util.List<com.facebook.ads.redexgen.X.C1936Th>> r9, java.util.List<java.lang.Long> r10) {
        /*
            r7 = this;
            boolean r0 = r7.A04
            if (r0 == 0) goto Laa
            com.facebook.ads.redexgen.X.bt r4 = r7.A03
        L6:
            java.lang.String r3 = r8.A0T()
            if (r3 == 0) goto Lad
            r2 = 43
            r1 = 7
            r0 = 117(0x75, float:1.64E-43)
            java.lang.String r0 = A07(r2, r1, r0)
            boolean r5 = r3.startsWith(r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.AnonymousClass42.A06
            r0 = 5
            r1 = r1[r0]
            r0 = 12
            char r1 = r1.charAt(r0)
            r0 = 77
            if (r1 == r0) goto L2e
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L2e:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass42.A06
            java.lang.String r1 = "SxKBgYOXD0g7VRKd6wElRSFayzrxKQkC"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "SJNjeDKc8h4oj7g5XsxtT3LxguPyqJDp"
            r0 = 6
            r2[r0] = r1
            if (r5 == 0) goto L41
            com.facebook.ads.redexgen.X.bt r4 = com.facebook.ads.redexgen.X.C2215bt.A00(r3)
            goto L6
        L41:
            r6 = 34
            r5 = 9
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.AnonymousClass42.A06
            r0 = 5
            r1 = r1[r0]
            r0 = 12
            char r1 = r1.charAt(r0)
            r0 = 77
            if (r1 == r0) goto L8c
            r0 = 114(0x72, float:1.6E-43)
            java.lang.String r0 = A07(r6, r5, r0)
            boolean r0 = r3.startsWith(r0)
            if (r0 == 0) goto L6
        L60:
            if (r4 != 0) goto La5
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r2 = 96
            r1 = 47
            r0 = 113(0x71, float:1.58E-43)
            java.lang.String r0 = A07(r2, r1, r0)
            java.lang.StringBuilder r0 = r5.append(r0)
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r3 = r0.toString()
            r2 = 223(0xdf, float:3.12E-43)
            r1 = 10
            r0 = 58
            java.lang.String r0 = A07(r2, r1, r0)
            com.facebook.ads.redexgen.X.MV.A07(r0, r3)
            goto L6
        L8c:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AnonymousClass42.A06
            java.lang.String r1 = "Z6D3xawGOuqjWgS5bOOG"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "y8qvQfw3u7PeS7Q"
            r0 = 7
            r2[r0] = r1
            r0 = 114(0x72, float:1.6E-43)
            java.lang.String r0 = A07(r6, r5, r0)
            boolean r0 = r3.startsWith(r0)
            if (r0 == 0) goto L6
            goto L60
        La5:
            r7.A0D(r3, r4, r9, r10)
            goto L6
        Laa:
            r4 = 0
            goto L6
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass42.A0C(com.facebook.ads.redexgen.X.Mk, java.util.List, java.util.List):void");
    }

    @Override // com.facebook.ads.redexgen.X.C8C
    public final InterfaceC2191bV A0g(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        C1769Mk c1769Mk = new C1769Mk(bArr, i);
        if (!this.A04) {
            A0A(c1769Mk);
        }
        A0C(c1769Mk, arrayList, arrayList2);
        return new C1815Oe(arrayList, arrayList2);
    }
}
