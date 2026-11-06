package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1924Sv implements WB {
    public static byte[] A01;
    public static String[] A02 = {"RzHtHQlp9n4Yq", "p8CNpS872ldVgXlWcqfv2QWVETdv17eW", "V5aF1AJWL9", "ks77GUXob4", "HRKDNERx4si89RhZHXNQq8TgSXRynpYh", "3Y9xJOWYHV7if", "gt8YEnjkmuFc9zNqd3YMVSmahY1sgvgv", "sIt2D0JrmTtJ"};
    public final /* synthetic */ C1918Sp A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 68);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{9, 60, 60, 45, 37, 56, 60, 45, 44, 104, 60, 39, 104, 43, 58, 45, 41, 60, 45, 104, 44, 45, 43, 39, 44, 45, 58, 104, 46, 39, 58, 104, 61, 38, 59, 61, 56, 56, 39, 58, 60, 45, 44, 104, 46, 39, 58, 37, 41, 60, 120, 105, 105, 117, 112, 122, 120, 109, 112, 118, 119, 54, 122, 124, 120, 52, 47, 41, 33, 116, 101, 101, 121, 124, 118, 116, 97, 124, 122, 123, 58, 118, 112, 116, 56, 34, 37, 45, 38, 55, 55, 43, 46, 36, 38, 51, 46, 40, 41, 104, 35, 49, 37, 52, 50, 37, 52, 4, 21, 21, 9, 12, 6, 4, 17, 12, 10, 11, 74, 21, 2, 22, 90, 75, 75, 87, 82, 88, 90, 79, 82, 84, 85, 20, 79, 79, 86, 87, 16, 67, 86, 87, 40, 57, 57, 37, 32, 42, 40, 61, 32, 38, 39, 102, 49, 100, 36, 57, 125, 100, 42, 44, 40, 100, 127, 121, 113, 86, 71, 71, 91, 94, 84, 86, 67, 94, 88, 89, 24, 79, 26, 90, 71, 3, 26, 65, 67, 67, 41, 56, 56, 36, 33, 43, 41, 60, 33, 39, 38, 103, 48, 101, 57, 61, 33, 43, 35, 60, 33, 37, 45, 101, 60, 48, 123, 47, 6, 23, 23, 11, 14, 4, 6, 19, 14, 8, 9, 72, 31, 74, 20, 18, 5, 21, 14, 23, 112, 97, 124, 112, 43, 114, 112, 112, 122, 107, 118, 122, 33, 118, 35, 125, 125, 111};
    }

    static {
        A01();
    }

    public C1924Sv(C1918Sp c1918Sp) {
        this.A00 = c1918Sp;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0009  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000d  */
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
    @Override // com.facebook.ads.redexgen.X.WB
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.facebook.ads.redexgen.X.InterfaceC1821Ok A5t(com.facebook.ads.redexgen.X.VC r7) {
        /*
            Method dump skipped, instruction units count: 414
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1924Sv.A5t(com.facebook.ads.redexgen.X.VC):com.facebook.ads.redexgen.X.Ok");
    }

    @Override // com.facebook.ads.redexgen.X.WB
    public final boolean ALg(VC vc) {
        String str = vc.A0W;
        String mimeType = A00(236, 8, 64);
        if (!mimeType.equals(str)) {
            String mimeType2 = A00(244, 10, 74);
            if (!mimeType2.equals(str)) {
                String strA00 = A00(Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, 20, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE);
                String mimeType3 = A02[5];
                if (mimeType3.length() != 32) {
                    String[] strArr = A02;
                    strArr[7] = "Gnyhutr293vH";
                    strArr[0] = "26b8fiDZGhRGw";
                    if (!strA00.equals(str)) {
                        String[] strArr2 = A02;
                        String str2 = strArr2[7];
                        String mimeType4 = strArr2[0];
                        if (str2.length() != mimeType4.length()) {
                            String[] strArr3 = A02;
                            strArr3[4] = "wD19EscZ3Anh9t64unIfECEUU9J1awUj";
                            strArr3[6] = "47akpO0sJfQt9W3qPQTcJ37OSB1CEhzE";
                            String mimeType5 = A00(167, 21, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE);
                            if (!mimeType5.equals(str)) {
                                String mimeType6 = A00(Sdk.SDKError.Reason.AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE, 20, 35);
                                if (!mimeType6.equals(str)) {
                                    String[] strArr4 = A02;
                                    if (strArr4[4].charAt(12) == strArr4[6].charAt(12)) {
                                        String[] strArr5 = A02;
                                        strArr5[7] = "ibTKBHkab6VU";
                                        strArr5[0] = "3pDH8sFnKWyBK";
                                        String mimeType7 = A00(188, 28, 12);
                                        if (!mimeType7.equals(str)) {
                                            String mimeType8 = A00(50, 19, 93);
                                            if (!mimeType8.equals(str)) {
                                                String mimeType9 = A00(142, 25, 13);
                                                if (!mimeType9.equals(str)) {
                                                    String mimeType10 = A00(69, 19, 81);
                                                    if (!mimeType10.equals(str)) {
                                                        String mimeType11 = A00(88, 19, 3);
                                                        if (!mimeType11.equals(str)) {
                                                            String mimeType12 = A00(107, 15, 33);
                                                            if (!mimeType12.equals(str)) {
                                                                return false;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                throw new RuntimeException();
            }
        }
        return true;
    }
}
