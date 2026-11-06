package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.json.JSONObject;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public final class YH {
    public static byte[] A00;
    public static String[] A01 = {"qnwqctT6ageO1xl3dFxNmj0l", "6DllNKJrbB", "Q7", "Zsf0dCDvEOjJrtmBer1H6rN5VyjI0QwC", "zVW1DUPU1YxLWRSsgR4pVO2JJMe7GGhC", "QKeXNxXVlWNwk2QLqX4uD4lq1qh3Z9rY", "Il", "E7csg90lErhJ6bkx9OV"};

    public /* synthetic */ YH(AbstractC12661i abstractC12661i) {
        this();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 48);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A00 = new byte[]{123, 120, 121, 126, 127, 124, 125, 114, 115, 112, 113, 118, 119, 116, 117, 106, 107, 104, 105, 110, 111, 108, 109, 98, 99, 96, 91, 88, 89, 94, 95, 92, 93, 82, 83, 80, 81, 86, 87, 84, 85, 74, 75, 72, 73, 78, 79, 76, 77, 66, 67, 64, 10, 11, 8, 9, 14, 15, 12, 13, 2, 3, 17, 21, 68, 71, 85, 67, 98, 67, 74, 82, 71, 10, 92, 61, 26, 46, 63, 50, 52, 11, 59, 4, 8, 26, 12, 15, 1, 8, 88, 93, 29, 21, 83, 73, 105, 85, 79, 84, 94, 117, 84, 20, 14, 43, 20, 24, 10, 28, 31, 17, 24, 72, 77, 82, 73, 117, 82, 84, 79, 72, 65, 14, 8, 8, 8, 15, 76, 95, 72, 73, 83, 85, 84, 101, 60, 123, 108, 108, 60, 36, 60, 77, 87, 68, 91, 65, 91, 70, 93, 91, 91, 90, 65, 83, 95, 70, 65, 93, 95, 78, 60, 99};
    }

    static {
        A07();
    }

    public YH() {
    }

    private final long A00(long j) {
        return (j << 1) ^ (j >> 63);
    }

    private final long A01(List<YF> list, int i, int i2) {
        HashMap map = new HashMap();
        int i3 = i + i2;
        for (int i4 = i + 1; i4 < i3; i4++) {
            long jA03 = list.get(i4).A03();
            long jA01 = list.get(i4).A01();
            Long lValueOf = Long.valueOf(jA03);
            Long lValueOf2 = Long.valueOf(jA03);
            Object obj = map.get(lValueOf2);
            if (obj == null) {
                obj = 0;
                map.put(lValueOf2, obj);
            }
            map.put(lValueOf, Integer.valueOf(((Number) obj).intValue() + 1));
            Long lValueOf3 = Long.valueOf(jA01);
            Long lValueOf4 = Long.valueOf(jA01);
            Object obj2 = map.get(lValueOf4);
            if (obj2 == null) {
                obj2 = 0;
                map.put(lValueOf4, obj2);
            }
            map.put(lValueOf3, Integer.valueOf(((Number) obj2).intValue() + 1));
        }
        long j = 3333;
        int i5 = 0;
        Iterator it = map.entrySet().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A01[7].length() != 19) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[6] = "u6";
            strArr[2] = "2Z";
            if (zHasNext) {
                Map.Entry entry = (Map.Entry) it.next();
                long jLongValue = ((Number) entry.getKey()).longValue();
                int iIntValue = ((Number) entry.getValue()).intValue();
                if (i5 < iIntValue) {
                    i5 = iIntValue;
                    String[] strArr2 = A01;
                    if (strArr2[4].charAt(18) != strArr2[5].charAt(18)) {
                        throw new RuntimeException();
                    }
                    A01[0] = "HAyBDUSIlz45orPJ7SvTyDzH";
                    j = jLongValue;
                }
            } else {
                int i6 = i + i2;
                for (int i7 = i + 1; i7 < i6; i7++) {
                    list.get(i7).A09(list.get(i7).A03() - j);
                    list.get(i7).A07(list.get(i7).A01() - j);
                }
                return j;
            }
        }
    }

    private final String A03(String str) {
        String strA02 = A02(0, 64, 10);
        StringBuilder sb = new StringBuilder(str);
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        int length = sb.length() % 3;
        if (length > 0) {
            while (length < 3) {
                sb3.append(com.ironsource.G5.U);
                sb.append((char) 0);
                length++;
            }
        }
        for (int n3 = 0; n3 < sb.length(); n3 += 3) {
            int iCharAt = (sb.charAt(n3) << 16) + (sb.charAt(n3 + 1) << '\b') + sb.charAt(n3 + 2);
            int n4 = (iCharAt >> 12) & 63;
            StringBuilder sb4 = sb2.append(strA02.charAt((iCharAt >> 18) & 63));
            sb4.append(strA02.charAt(n4)).append(strA02.charAt((iCharAt >> 6) & 63)).append(strA02.charAt(iCharAt & 63));
        }
        StringBuilder r = new StringBuilder();
        String base64chars = sb2.substring(0, sb2.length() - sb3.length());
        return r.append(base64chars).append((Object) sb3).toString();
    }

    private final String A04(List<Long> list) {
        StringBuilder sb = new StringBuilder();
        Iterator<Long> it = list.iterator();
        while (it.hasNext()) {
            A08(sb, A00(it.next().longValue()));
        }
        String string = sb.toString();
        C1h.A08(string, A02(Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE, 13, 22));
        return A03(string);
    }

    private final String A05(List<YF> list, int i, int i2, boolean z) {
        if (list == null || list.isEmpty() || i < 0 || i >= list.size() || i2 <= 0 || i + i2 > list.size()) {
            return null;
        }
        Map frameDataMap = new HashMap();
        frameDataMap.put(A02(73, 2, 92), list.get(i).A05());
        frameDataMap.put(A02(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, 7, 10), 1);
        boolean z2 = false;
        boolean z3 = false;
        if (i2 > 1) {
            A09(list, i, i2);
            frameDataMap.put(A02(64, 9, 22), Long.valueOf(A01(list, i, i2)));
            ArrayList arrayList = new ArrayList();
            List framesTimestampList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i3 = i + i2;
            for (int i4 = i + 1; i4 < i3; i4++) {
                arrayList.add(Long.valueOf(list.get(i4).A03()));
                arrayList.add(Long.valueOf(list.get(i4).A01()));
                arrayList.add(Long.valueOf(list.get(i4).A02()));
                framesTimestampList.add(Long.valueOf(list.get(i4).A00()));
                if (list.get(i4).A00() != 0) {
                    z2 = true;
                }
                if (z) {
                    arrayList2.add(Long.valueOf(list.get(i4).A04()));
                    if (list.get(i4).A04() != 0) {
                        z3 = true;
                    }
                }
            }
            String[] strArr = A01;
            if (strArr[6].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            A01[7] = "7rsfaig8zHVSiLY1BNm";
            frameDataMap.put(A02(92, 2, 75), A04(arrayList));
            frameDataMap.put(A02(75, 6, 107), A04(framesTimestampList));
            frameDataMap.put(A02(94, 9, 10), Boolean.valueOf(z2));
            if (z) {
                frameDataMap.put(A02(81, 11, 93), A04(arrayList2));
                frameDataMap.put(A02(103, 12, 77), Boolean.valueOf(z3));
            }
        }
        String strA06 = A06(frameDataMap);
        if (strA06.length() > 900000) {
            return A02(Sdk.SDKError.Reason.INVALID_CONFIG_RESPONSE_VALUE, 29, 46);
        }
        return strA06;
    }

    private final String A06(Map<String, ? extends Object> map) {
        JSONObject json = new JSONObject(map);
        String string = json.toString();
        C1h.A08(string, A02(Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE, 13, 22));
        return string;
    }

    private final void A08(StringBuilder sb, long j) {
        while (j >= Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) {
            long j2 = ((long) (Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE - 1)) & j;
            long v = Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
            j >>= 7;
            sb.append((char) (AnonymousClass23.A00((short) (j2 | v)) & 65535));
        }
        sb.append((char) (AnonymousClass23.A00((short) j) & 65535));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x002a, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void A09(java.util.List<com.facebook.ads.redexgen.X.YF> r13, int r14, int r15) {
        /*
            Method dump skipped, instruction units count: 293
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.YH.A09(java.util.List, int, int):void");
    }

    @JvmStatic
    public final String A0A(List<YF> list) {
        if (list == null) {
            return null;
        }
        return A05(list, 0, list.size(), false);
    }
}
