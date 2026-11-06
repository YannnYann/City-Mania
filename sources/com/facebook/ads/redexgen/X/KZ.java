package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class KZ {
    public static byte[] A00;
    public static String[] A01 = {"s6eTro15lWrN1uwL9pj87lgTuT3iC4YK", "XX9eU2AJVRzM", "gr", "", "IUBUZJHVJQeexMrIgEQcCiuR", "uiFudZs8Y5L4yhfTVQYhHqlK6DH37w4j", "bekYEYJJqeC1t0voGZZnbm21vK", "FDTR9M8InciSn5tgRX8Gvy5gWEysByuu"};

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 105);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{76, 3, 3, 1, 68, 11, 9, 89, 69, 10, 8, 95, 88, 23, 18, 2, 5, 90, 21, 25, 6, 71, 8, 31, 0, 71, 10, 4, 15, 0, 75, 77, 29, 47, 103, 109, 96, 98, 100, 44, 38, 60, 116, 48, 42, 63, 61, 111, 43, 49, 38, 59, 120, 39, 101, 108, 47, 118, 101, 38, 34, 47, 101, 38, 34, 47, 34, 66, 1, 7, 84, 23, 10, 73, 105, 42, 55, 115, 112, 51, 46, 59, 57, 62, 125, 96, 119, 84, 21, 29, 120, 57, 38, 35, 37, 20, 74, 73, 112, 45, 51, 56, 56, 98, 101, 47, 119, 117, 117, 51, 106, 124, 107, 27, 66, 84, 67, 80, 103, 62, 44, 43, 36, 51, 106, 120, 127, 107, 105, 105, 122, 86, 87, 77, 92, 87, 77, 20, 109, 64, 73, 92, 65, 80, 80, 76, 73, 67, 65, 84, 73, 79, 78, 15, 77, 80, 20, 121, 104, 104, 116, 113, 123, 121, 108, 113, 119, 118, 55, 111, 125, 122, 117, 24, 12, 29, 16, 22, 86, 74, 30, 9, 9, 79, 91, 74, 71, 65, 1, 79, 77, 29, 2, 22, 7, 10, 12, 76, 2, 0, 87, 37, 49, 32, 45, 43, 107, 37, 41, 54, 1, 21, 4, 9, 15, 79, 1, 13, 18, 77, 23, 2, 117, 97, 112, 125, 123, 59, 113, 117, 119, 39, 82, 70, 87, 90, 92, 28, 86, 82, 80, 0, 30, 89, 92, 80, 94, 74, 91, 86, 80, 16, 89, 83, 94, 92, 53, 33, 48, 61, 59, 123, 57, 61, 48, 61, 73, 93, 76, 65, 71, 7, 69, 88, 28, 63, 43, 58, 55, 49, 113, 51, 46, 59, 57, 78, 90, 75, 70, 64, 0, 64, 72, 72, 82, 70, 87, 90, 92, 28, 68, 82, 69, 45, 57, 40, 37, 35, 99, 59, 41, 46, 33, 99, 119, 102, 107, 109, 45, 122, 47, 111, 99, 118, 112, 109, 113, 105, 99, 98, 102, 106, 108, 110, 36, 97, 123, 110, 108, 52, 37, 56, 52, 111, 54, 52, 52, 18, 13, 0, 1, 11, 75, 9, 20, 86, 20, 3, 28, 17, 16, 26, 90, 24, 5, 71, 1, 95, 64, 77, 76, 70, 6, 68, 89, 29, 24, 7, 10, 11, 1, 65, 25, 11, 12, 3, 16, 15, 2, 3, 9, 73, 30, 75, 0, 10, 16, 103, 120, 117, 116, 126, 62, 105, 60, 124, 112, 101, 99, 126, 98, 122, 112, 23, 8, 5, 4, 14, 78, 25, 76, 12, 18, 23, 8, 5, 4, 14};
    }

    static {
        A04();
    }

    /* JADX WARN: Code restructure failed: missing block: B:129:0x0309, code lost:
    
        if (r3.endsWith(r0) != false) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x030b, code lost:
    
        r0 = com.facebook.ads.redexgen.X.KZ.A01[1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0318, code lost:
    
        if (r0.length() == 12) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x031a, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x032a, code lost:
    
        if (r3.endsWith(r0) != false) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x032d, code lost:
    
        com.facebook.ads.redexgen.X.KZ.A01[0] = "E7RMZLn66ke6VSQIEg1xZdRPIAAfyJIg";
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0334, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0335, code lost:
    
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A00(android.net.Uri r8) {
        /*
            Method dump skipped, instruction units count: 822
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.KZ.A00(android.net.Uri):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0264 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0265 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0266 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0267 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0268 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0269 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x026a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x026b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x026c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x026d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x026e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x025f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0260 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0261 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0262 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0263 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d A[RETURN] */
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
    public static int A01(java.lang.String r24) {
        /*
            Method dump skipped, instruction units count: 786
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.KZ.A01(java.lang.String):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A02(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r4) {
        /*
            r2 = 130(0x82, float:1.82E-43)
            r1 = 12
            r0 = 80
            java.lang.String r0 = A03(r2, r1, r0)
            java.lang.Object r4 = r4.get(r0)
            java.util.List r4 = (java.util.List) r4
            if (r4 == 0) goto L31
            boolean r3 = r4.isEmpty()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.KZ.A01
            r0 = 4
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 32
            if (r1 == r0) goto L3f
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.KZ.A01
            java.lang.String r1 = "aBewb2LwdntVE2AO0KZR5d9pKl1zOJ9e"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "SS0Pz8KqxdU2SurOTojBbcidCl"
            r0 = 6
            r2[r0] = r1
            if (r3 == 0) goto L37
        L31:
            r0 = 0
        L32:
            int r0 = A01(r0)
            return r0
        L37:
            r0 = 0
            java.lang.Object r0 = r4.get(r0)
            java.lang.String r0 = (java.lang.String) r0
            goto L32
        L3f:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.KZ.A02(java.util.Map):int");
    }
}
