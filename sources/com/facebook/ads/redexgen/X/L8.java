package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class L8 {
    public static byte[] A00;
    public static String[] A01 = {"mtj5AQZYnC8ZYCgNjgiGa", "9O58BTwK8QpcbA3X6JRwP5oJLMZW7S", "iPIls1WSFCVGfJIo7lr2cSH8ysr", "REttTrJRchZ3AtecVlPOO", "ltUsr5pNisVr9fJwLlHjI2fYwYY", "SNC", "c8upypToN0Fp2Q0KPNP0YDydruE1Whq3", "dJqAUyGQwlClrsBpC8sa4cubBo774T"};
    public static final ArrayList<L6> A02;
    public static final Pattern A03;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static L7 A04(String str) {
        Matcher matcher = A03.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String str2 = (String) AbstractC1747Ln.A01(matcher.group(1));
        String strGroup = matcher.group(2);
        try {
            return new L7(Integer.parseInt(str2, 16), strGroup != null ? Integer.parseInt(strGroup) : 0);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 23);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0B() {
        A00 = new byte[]{84, 103, 122, 62, 107, 86, 36, 34, 81, 107, 39, 112, 75, 39, 80, 58, 39, 51, 87, 113, 56, 119, 35, 34, 53, 48, 86, 36, 34, 81, 58, 39, 51, 87, 113, 59, 38, 56, 119, 35, 35, 53, 46, 102, 100, 42, 52, 120, 122, 52, 45, 40, 57, 57, 37, 32, 42, 40, 61, 32, 38, 39, 102, 42, 44, 40, 100, 127, 121, 113, 68, 85, 85, 73, 76, 70, 68, 81, 76, 74, 75, 10, 70, 64, 68, 8, 18, 21, 29, 28, 13, 13, 17, 20, 30, 28, 9, 20, 18, 19, 82, 25, 11, 31, 14, 8, 31, 14, 1, 16, 16, 12, 9, 3, 1, 20, 9, 15, 14, 79, 9, 4, 83, 43, 58, 58, 38, 35, 41, 43, 62, 35, 37, 36, 101, 58, 45, 57, 77, 92, 92, 64, 69, 79, 77, 88, 69, 67, 66, 3, 88, 88, 65, 64, 7, 84, 65, 64, 1, 16, 16, 12, 9, 3, 1, 20, 9, 15, 14, 79, 22, 15, 2, 19, 21, 2, 30, 15, 15, 19, 22, 28, 30, 11, 22, 16, 17, 80, 7, 82, 28, 30, 18, 26, 13, 30, 82, 18, 16, 11, 22, 16, 17, 103, 118, 118, 106, 111, 101, 103, 114, 111, 105, 104, 41, 126, 43, 99, 107, 117, 97, 87, 70, 70, 90, 95, 85, 87, 66, 95, 89, 88, 25, 78, 27, 95, 91, 87, 81, 83, 27, 67, 68, 95, 41, 56, 56, 36, 33, 43, 41, 60, 33, 39, 38, 103, 48, 101, 37, 56, 124, 101, 43, 45, 41, 101, 126, 120, 112, 47, 62, 62, 34, 39, 45, 47, 58, 39, 33, 32, 97, 54, 99, 35, 62, 122, 99, 56, 58, 58, 109, 124, 124, 96, 101, 111, 109, 120, 101, 99, 98, 35, 116, 33, 125, 121, 101, 111, 103, 120, 101, 97, 105, 33, 120, 116, 63, 107, 36, 53, 53, 41, 44, 38, 36, 49, 44, 42, 43, 106, 61, 104, 55, 36, 50, 38, 38, 71, 86, 86, 74, 79, 69, 71, 82, 79, 73, 72, 9, 94, 11, 85, 69, 82, 67, 21, 19, 57, 40, 40, 52, 49, 59, 57, 44, 49, 55, 54, 119, 32, 117, 43, 45, 58, 42, 49, 40, 127, 107, 122, 119, 113, 2, 22, 7, 10, 12, 76, 2, 0, 80, 20, 0, 17, 28, 26, 90, 20, 22, 65, 5, 17, 0, 13, 11, 75, 1, 5, 7, 87, 72, 92, 77, 64, 70, 6, 76, 72, 74, 26, 4, 67, 70, 74, 6, 18, 3, 14, 8, 72, 1, 11, 6, 4, 27, 15, 30, 19, 21, 85, 29, 77, 75, 75, 87, 27, 22, 27, 13, 125, 105, 120, 117, 115, 51, 123, 43, 45, 45, 49, 113, 112, 125, 107, 31, 11, 26, 23, 17, 81, 19, 22, 31, 79, 71, 83, 66, 79, 73, 9, 75, 78, 75, 23, 45, 57, 40, 37, 35, 99, 33, 60, 127, 6, 18, 3, 14, 8, 72, 10, 23, 83, 6, 74, 11, 6, 19, 10, 54, 34, 51, 62, 56, 120, 58, 39, 50, 48, 25, 13, 28, 17, 23, 87, 21, 8, 29, 31, 85, 52, 73, 101, 113, 96, 109, 107, 43, 105, 116, 97, 99, 41, 72, 54, 35, 55, 38, 43, 45, 109, 45, 50, 55, 49, 81, 69, 84, 89, 95, 31, 66, 81, 71, 14, 26, 11, 6, 0, 64, 27, 29, 26, 10, 66, 7, 11, 91, 79, 94, 83, 85, 21, 76, 84, 94, 20, 94, 78, 73, 20, 0, 17, 28, 26, 90, 3, 27, 17, 91, 17, 1, 6, 91, 29, 17, 82, 70, 87, 90, 92, 28, 69, 93, 87, 29, 87, 71, 64, 29, 91, 87, 8, 67, 65, 92, 85, 90, 95, 86, 14, 95, 81, 65, 40, 60, 45, 32, 38, 102, 63, 39, 45, 103, 45, 61, 58, 103, 60, 33, 45, 114, 57, 59, 38, 47, 32, 37, 44, 116, 57, 123, 80, 68, 85, 88, 94, 30, 71, 94, 67, 83, 88, 66, 115, 103, 118, 123, 125, 61, 101, 115, 100, 34, 54, 39, 42, 44, 108, 59, 110, 37, 47, 34, 32, 49, 37, 52, 57, 63, 127, 40, 125, 39, 49, 38, 15, 24, 94, 95, 49, 38, 51, 97, 49, 38, 51, 99, 37, 35, 39, 112, 118, 126, 83, 85, 81, 7, 0, 8, 24, 20, 31, 30, 24, 43, 9, 30, 29, 18, 3, 101, 96, 98, 50, 76, 73, 75, 28, 14, 15, 9, 89, 81, 65, 70, 86, 70, 86, 81, 71, 10, 26, 29, 6, 17, 1, 6, 25, 106, 122, 125, 118, 17, 3, 20, 68, 28, 14, 25, 14, 2, 16, 14, 87, 107, 121, 103, 106, 27, 29, 85, 77, 104, 110, 32, 62, 96, 108, 100, 51, 53, 61, 1, 11, 6, 4, 53, 56, 43, 108, 117, 107, 126, 44, 48, 52, 56, 62, 60, 10, 14, 2, 4, 6, 76, 9, 19, 6, 4, 54, 51, 58, 106, 109, 104, 109, 49, 19, 23, 19, 27, 42, 7, 14, 27, 117, 104, 44, 121, 117, 104, 44, 121, 54, 112, 111, 106, 108, 89, 94, 90, 90, 112, 97, 124, 112, 80, 65, 92, 80, 11, 82, 80, 80, 109, 114, 127, 126, 116, 112, 111, 98, 99, 105, 41, 103, 112, 54, 55, 118, 105, 100, 101, 111, 47, 97, 118, 99, 93, 66, 79, 78, 68, 4, 79, 68, 71, 73, 82, 6, 93, 66, 88, 66, 68, 69, 25, 6, 11, 10, 0, 64, 7, 10, 25, 12, 75, 84, 89, 88, 82, 18, 80, 77, 9, 75, 16, 88, 78, 112, 111, 98, 99, 105, 41, 107, 118, 99, 97, 87, 72, 69, 68, 78, 14, 76, 81, 68, 70, 19, 8, 23, 26, 27, 17, 81, 9, 8, 29, 79, 46, 49, 60, 61, 55, 119, 32, 117, 46, 54, 60, 118, 55, 54, 106, 118, 46, 40, 96, 45, 50, 63, 62, 52, 116, 35, 118, 45, 53, 63, 
        117, 52, 53, 105, 117, 45, 43, 98, 119, 110, 115, 99, 104, 114, 102, 96, 32, 40, 37, 35, 99, 106, 108, 106, 34, 70, 64, 9, 89, 88, 90, 90};
    }

    static {
        A0B();
        A02 = new ArrayList<>();
        A03 = Pattern.compile(A06(0, 43, 29));
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ad A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00bb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000e A[RETURN] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1091)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A00(java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 244
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.L8.A00(java.lang.String):int");
    }

    public static int A01(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (A0C(str)) {
            return 1;
        }
        if (A0F(str)) {
            return 2;
        }
        if (A0E(str)) {
            return 3;
        }
        if (A0D(str)) {
            return 4;
        }
        if (A06(108, 15, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE).equals(str) || A06(203, 18, 17).equals(str) || A06(337, 20, 49).equals(str)) {
            return 5;
        }
        if (A06(176, 27, 104).equals(str)) {
            return 6;
        }
        return A02(str);
    }

    public static int A02(String str) {
        int customMimeTypeCount = A02.size();
        if (0 < customMimeTypeCount) {
            A02.get(0);
            throw new NullPointerException(A06(837, 8, 105));
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00d1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00dc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00dd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0011 A[RETURN] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1091)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A03(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instruction units count: 338
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.L8.A03(java.lang.String, java.lang.String):int");
    }

    public static String A05(int i) {
        switch (i) {
            case 32:
                return A06(926, 13, 42);
            case 33:
                return A06(889, 9, 23);
            case 35:
                return A06(916, 10, 120);
            case 64:
            case 102:
            case 103:
            case 104:
                return A06(493, 15, 112);
            case ads_mobile_sdk.fh.A0 /* 96 */:
            case ads_mobile_sdk.fh.H0 /* 97 */:
            case ads_mobile_sdk.fh.Q0 /* 98 */:
            case ads_mobile_sdk.fh.R0 /* 99 */:
            case 100:
            case 101:
                String[] strArr = A01;
                if (strArr[4].length() != strArr[7].length()) {
                    String[] strArr2 = A01;
                    strArr2[3] = "LCbKix87SzKcoSBSZWqCz";
                    strArr2[0] = "3ttbU07808CCVPTdtk2R4";
                    return A06(949, 11, 54);
                }
                String[] strArr3 = A01;
                strArr3[3] = "M3sQ8KyfmqZQHEmxjPGDN";
                strArr3[0] = "0hEddkjVzZCjW4rfvbBtt";
                return A06(949, 11, 12);
            case 105:
            case 107:
                String[] strArr4 = A01;
                if (strArr4[3].length() != strArr4[0].length()) {
                    throw new RuntimeException();
                }
                String[] strArr5 = A01;
                strArr5[3] = "B0QBz88rqLzYWNygzkLMX";
                strArr5[0] = "9VWXOakvbi7XiKmY7mlUt";
                return A06(508, 10, 64);
            case 106:
                return A06(939, 10, 17);
            case 108:
                return A06(819, 10, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
            case 163:
                return A06(960, 10, 105);
            case 165:
                return A06(382, 9, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
            case 166:
                return A06(400, 10, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE);
            case 169:
            case 172:
                return A06(576, 13, 45);
            case 170:
            case 171:
                return A06(589, 16, 98);
            case 173:
                return A06(544, 10, 85);
            case 174:
                return A06(391, 9, 98);
            case 177:
                String[] strArr6 = A01;
                if (strArr6[3].length() != strArr6[0].length()) {
                    throw new RuntimeException();
                }
                A01[5] = "5Qc";
                return A06(989, 19, 76);
            default:
                return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x02c9, code lost:
    
        if (r3.startsWith(A06(47, 4, 14)) != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x02d8, code lost:
    
        if (r3.startsWith(A06(744, 4, 63)) == false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x02e4, code lost:
    
        return A06(391, 9, 98);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02f2, code lost:
    
        if (r3.startsWith(A06(752, 4, 34)) == false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02fe, code lost:
    
        return A06(576, 13, 45);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x030c, code lost:
    
        if (r3.startsWith(A06(756, 4, 53)) == false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0318, code lost:
    
        return A06(605, 28, 36);
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0326, code lost:
    
        if (r3.startsWith(A06(760, 4, com.vungle.ads.internal.protos.Sdk.SDKError.Reason.TPAT_ERROR_VALUE)) != false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0328, code lost:
    
        r4 = A06(764, 4, 98);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x033c, code lost:
    
        if (com.facebook.ads.redexgen.X.L8.A01[5].length() == 24) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x033e, code lost:
    
        com.facebook.ads.redexgen.X.L8.A01[5] = "ZzQ5FlcoVEujuGTwVJIJwXLiZ7T";
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0349, code lost:
    
        if (r3.startsWith(r4) == false) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x034b, code lost:
    
        r2 = com.facebook.ads.redexgen.X.L8.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0361, code lost:
    
        if (r2[4].length() == r2[7].length()) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0363, code lost:
    
        com.facebook.ads.redexgen.X.L8.A01[5] = "BKYZ1k7dxzd7aGCBjwQbt";
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x036e, code lost:
    
        return A06(589, 16, 98);
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0374, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0382, code lost:
    
        if (r3.startsWith(A06(768, 4, 25)) == false) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x038e, code lost:
    
        return A06(633, 28, 94);
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x039c, code lost:
    
        if (r3.startsWith(A06(854, 4, 8)) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x03a8, code lost:
    
        return A06(544, 10, 85);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x03b6, code lost:
    
        if (r3.startsWith(A06(1008, 6, 22)) == false) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x03c2, code lost:
    
        return A06(661, 12, 38);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x03d0, code lost:
    
        if (r3.startsWith(A06(io.bidmachine.protobuf.EventTypeExtended.EVENT_TYPE_EXTENDED_NURL_VALUE, 4, 112)) == false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x03dc, code lost:
    
        return A06(424, 10, 112);
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x03ea, code lost:
    
        if (r3.startsWith(A06(858, 4, 61)) == false) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x03f6, code lost:
    
        return A06(com.vungle.ads.internal.protos.Sdk.SDKError.Reason.CONFIG_REFRESH_FAILED_VALUE, 20, 59);
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0404, code lost:
    
        if (r3.startsWith(A06(com.ironsource.mediationsdk.logger.IronSourceError.ERROR_RV_LOAD_SUCCESS_UNEXPECTED, 4, 57)) == false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0414, code lost:
    
        if (com.facebook.ads.redexgen.X.L8.A01[6].charAt(2) == 'u') goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0416, code lost:
    
        com.facebook.ads.redexgen.X.L8.A01[5] = "mPB1XR6AUS767usBTRbHStbC5kPY";
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0424, code lost:
    
        return A06(866, 3, 19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0425, code lost:
    
        r2 = com.facebook.ads.redexgen.X.L8.A01;
        r2[4] = "5mZwtWm4YShUr67lcQDSFt4704s";
        r2[7] = "VeyvGObawMeK3aS0g0WKjsEE6tCgX8";
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0439, code lost:
    
        return A06(866, 8, 51);
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0447, code lost:
    
        if (r3.contains(A06(723, 6, 39)) == false) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0453, code lost:
    
        return A06(70, 19, 50);
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0461, code lost:
    
        if (r3.contains(A06(796, 6, 18)) != false) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0470, code lost:
    
        if (r3.contains(A06(717, 6, 81)) == false) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x047c, code lost:
    
        return A06(51, 19, 94);
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0481, code lost:
    
        return A09(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:?, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:?, code lost:
    
        return A06(493, 15, 112);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0171, code lost:
    
        if (r4 != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0173, code lost:
    
        r4 = null;
        r0 = A06(849, 5, 15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0181, code lost:
    
        if (r3.startsWith(r0) == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0183, code lost:
    
        r0 = A04(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0187, code lost:
    
        if (r0 == null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0189, code lost:
    
        r4 = A05(r0.A01);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x018f, code lost:
    
        if (r4 != null) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0191, code lost:
    
        r2 = com.facebook.ads.redexgen.X.L8.A01;
        r1 = r2[4];
        r0 = r2[7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01a3, code lost:
    
        if (r1.length() == r0.length()) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01a5, code lost:
    
        r2 = com.facebook.ads.redexgen.X.L8.A01;
        r2[3] = "l7tGEfnzmmllIHSGPPfQu";
        r2[0] = "WIV4TqNKdAQoUFWvKNwIa";
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01b9, code lost:
    
        return A06(493, 15, 112);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01c3, code lost:
    
        if (r4 != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01c6, code lost:
    
        r4 = A06(829, 4, 76);
        r2 = com.facebook.ads.redexgen.X.L8.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01df, code lost:
    
        if (r2[1].length() == r2[2].length()) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01e1, code lost:
    
        r2 = com.facebook.ads.redexgen.X.L8.A01;
        r2[3] = "Og3Gw9hequS8vGBl4S8yb";
        r2[0] = "xskopta6QO33EgTkdSwZM";
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01f1, code lost:
    
        if (r3.startsWith(r4) == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0204, code lost:
    
        if (com.facebook.ads.redexgen.X.L8.A01[5].length() == 24) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0206, code lost:
    
        com.facebook.ads.redexgen.X.L8.A01[6] = "pVuuV34hmQL6nK5O10oIs4bY93WikDB2";
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0211, code lost:
    
        return A06(464, 10, 105);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0216, code lost:
    
        return A06(464, 10, 105);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0224, code lost:
    
        if (r3.startsWith(A06(833, 4, 23)) == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0226, code lost:
    
        r2 = com.facebook.ads.redexgen.X.L8.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0238, code lost:
    
        if (r2[1].length() == r2[2].length()) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x023a, code lost:
    
        com.facebook.ads.redexgen.X.L8.A01[5] = "W06z2xHNvcJuo8mpHHEEpqY21YYtV2";
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0249, code lost:
    
        return A06(474, 10, 49);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x024f, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x025d, code lost:
    
        if (r3.startsWith(A06(43, 4, 16)) != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x026c, code lost:
    
        if (r3.startsWith(A06(740, 4, 22)) == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0278, code lost:
    
        return A06(382, 9, com.vungle.ads.internal.protos.Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0286, code lost:
    
        if (r3.startsWith(A06(792, 4, 26)) != false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0295, code lost:
    
        if (r3.startsWith(A06(748, 4, com.vungle.ads.internal.protos.Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE)) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x02a1, code lost:
    
        return A06(400, 10, com.vungle.ads.internal.protos.Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x02af, code lost:
    
        if (r3.startsWith(A06(788, 4, 105)) == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x02bb, code lost:
    
        return A06(com.ironsource.InterfaceC3681k1.a.b.j, 14, 62);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String A07(java.lang.String r5) {
        /*
            Method dump skipped, instruction units count: 1160
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.L8.A07(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0007  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String A08(java.lang.String r3) {
        /*
            int r0 = r3.hashCode()
            switch(r0) {
                case -1007807498: goto L30;
                case -586683234: goto L1e;
                case 187090231: goto Lc;
                default: goto L7;
            }
        L7:
            r0 = -1
        L8:
            switch(r0) {
                case 0: goto L7b;
                case 1: goto L4c;
                case 2: goto L42;
                default: goto Lb;
            }
        Lb:
            return r3
        Lc:
            r2 = 484(0x1e4, float:6.78E-43)
            r1 = 9
            r0 = 91
            java.lang.String r0 = A06(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L7
            r0 = 1
            goto L8
        L1e:
            r2 = 694(0x2b6, float:9.73E-43)
            r1 = 11
            r0 = 71
            java.lang.String r0 = A06(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L7
            r0 = 2
            goto L8
        L30:
            r2 = 682(0x2aa, float:9.56E-43)
            r1 = 12
            r0 = 84
            java.lang.String r0 = A06(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L7
            r0 = 0
            goto L8
        L42:
            r2 = 673(0x2a1, float:9.43E-43)
            r1 = 9
            r0 = 5
            java.lang.String r0 = A06(r2, r1, r0)
            return r0
        L4c:
            r2 = 508(0x1fc, float:7.12E-43)
            r1 = 10
            r0 = 64
            java.lang.String r3 = A06(r2, r1, r0)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.L8.A01
            r0 = 3
            r1 = r2[r0]
            r0 = 0
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L6e
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L6e:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.L8.A01
            java.lang.String r1 = "gk4oipsXED0NFT32IYp6gjMWT0s"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "2XGwQ2qtdRBiFQDuMOl422X5BWjZVf"
            r0 = 7
            r2[r0] = r1
            return r3
        L7b:
            r2 = 424(0x1a8, float:5.94E-43)
            r1 = 10
            r0 = 112(0x70, float:1.57E-43)
            java.lang.String r0 = A06(r2, r1, r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.L8.A08(java.lang.String):java.lang.String");
    }

    public static String A09(String str) {
        int customMimeTypeCount = A02.size();
        if (0 < customMimeTypeCount) {
            A02.get(0);
            throw new NullPointerException(A06(729, 11, 108));
        }
        return null;
    }

    public static String A0A(String str) {
        int indexOfSlash;
        if (str == null || (indexOfSlash = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOfSlash);
    }

    public static boolean A0C(String str) {
        return A06(377, 5, 9).equals(A0A(str));
    }

    public static boolean A0D(String str) {
        return A06(814, 5, 78).equals(A0A(str)) || A06(Sdk.SDKError.Reason.AD_LOAD_FAIL_RETRY_AFTER_VALUE, 23, 33).equals(str);
    }

    public static boolean A0E(String str) {
        return A06(862, 4, 19).equals(A0A(str)) || A06(51, 19, 94).equals(str) || A06(70, 19, 50).equals(str) || A06(244, 25, 95).equals(str) || A06(357, 20, 79).equals(str) || A06(Sdk.SDKError.Reason.CONFIG_REFRESH_FAILED_VALUE, 20, 59).equals(str) || A06(290, 28, 27).equals(str) || A06(269, 21, 89).equals(str) || A06(Sdk.SDKError.Reason.AD_CLOSED_MISSING_HEARTBEAT_VALUE, 19, 82).equals(str) || A06(158, 18, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE).equals(str) || A06(Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE, 15, 93).equals(str) || A06(89, 19, 106).equals(str);
    }

    public static boolean A0F(String str) {
        return A06(874, 5, 12).equals(A0A(str));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0137 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0010 A[RETURN] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1091)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A0G(java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instruction units count: 390
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.L8.A0G(java.lang.String, java.lang.String):boolean");
    }
}
