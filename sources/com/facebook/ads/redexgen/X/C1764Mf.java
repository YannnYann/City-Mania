package com.facebook.ads.redexgen.X;

import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1764Mf implements InterfaceC2377eW {
    public static String[] A02 = {"tHIxLrLE", "IxFhKPvaoxD0VQesnJF3iXAhHFCBXd3U", "Mt7WkNRkSixWeZ", "3NLK6E697RszsRzeaJINeoLCJHfPDhsT", "JeqM7ySnSEcfJ46rEA5WOjR5cPawbBex", "7hWC3g29mNlfw9Sa6a96dfCrmBFd", "u4ezoTfN06taZhCQIP75LuZm3JbllhhD", "boKPMSmNS7UHIj0vys9qYc8OI4xdhwBV"};
    public static final C1764Mf A03 = new C1764Mf(Collections.emptyMap());
    public int A00;
    public final Map<String, byte[]> A01;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A02(HashMap<String, byte[]> map, Map<String, Object> map2) {
        for (Map.Entry<String, Object> entry : map2.entrySet()) {
            map.put(entry.getKey(), A04(entry.getValue()));
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static boolean A03(Map<String, byte[]> map, Map<String, byte[]> map2) {
        if (map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            if (!Arrays.equals(entry.getValue(), map2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    public C1764Mf() {
        this(Collections.emptyMap());
    }

    public C1764Mf(Map<String, byte[]> metadata) {
        this.A01 = Collections.unmodifiableMap(metadata);
    }

    public static Map<String, byte[]> A00(Map<String, byte[]> otherMetadata, C2378eX c2378eX) {
        HashMap map = new HashMap(otherMetadata);
        A01(map, c2378eX.A08());
        A02(map, c2378eX.A09());
        return map;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0005 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A01(java.util.HashMap<java.lang.String, byte[]> r2, java.util.List<java.lang.String> r3) {
        /*
            r1 = 0
        L1:
            int r0 = r3.size()
            if (r1 >= r0) goto L11
            java.lang.Object r0 = r3.get(r1)
            r2.remove(r0)
            int r1 = r1 + 1
            goto L1
        L11:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1764Mf.A01(java.util.HashMap, java.util.List):void");
    }

    public static byte[] A04(Object obj) {
        if (obj instanceof Long) {
            return ByteBuffer.allocate(8).putLong(((Long) obj).longValue()).array();
        }
        if (obj instanceof String) {
            return ((String) obj).getBytes(XA.A05);
        }
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        throw new IllegalArgumentException();
    }

    public final C1764Mf A05(C2378eX c2378eX) {
        Map<String, byte[]> mapA00 = A00(this.A01, c2378eX);
        Map<String, byte[]> mutatedMetadata = this.A01;
        if (A03(mutatedMetadata, mapA00)) {
            return this;
        }
        return new C1764Mf(mapA00);
    }

    public final Set<Map.Entry<String, byte[]>> A06() {
        return this.A01.entrySet();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2377eW
    public final long A7H(String str, long j) {
        byte[] bytes = this.A01.get(str);
        if (bytes != null) {
            return ByteBuffer.wrap(bytes).getLong();
        }
        return j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2377eW
    public final String A7J(String str, String str2) {
        byte[] bArr = this.A01.get(str);
        if (bArr != null) {
            return new String(bArr, XA.A05);
        }
        return str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        Class<?> cls = getClass();
        if (A02[1].charAt(18) == 'T') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[7] = "6r2AG8KzSIJYPm0ymJrbXII3fUPa22Nm";
        strArr[4] = "C0ekPVmQSraQipc5Ub5LGRKtpypKPfgh";
        if (cls != obj.getClass()) {
            return false;
        }
        return A03(this.A01, ((C1764Mf) obj).A01);
    }

    public final int hashCode() {
        if (this.A00 == 0) {
            int i = 0;
            for (Map.Entry<String, byte[]> entry : this.A01.entrySet()) {
                int iHashCode = entry.getKey().hashCode();
                int result = Arrays.hashCode(entry.getValue());
                i += iHashCode ^ result;
            }
            this.A00 = i;
        }
        int i2 = this.A00;
        if (A02[1].charAt(18) == 'T') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[0] = "KdxSxAZt";
        strArr[2] = "LTz56xi50lNSvM";
        return i2;
    }
}
