package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.c8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2230c8 {
    public static byte[] A0D;
    public static String[] A0E = {"KSt7NOfMbdIyAUysXnIXXFlyTN1YPvlO", "JMwE5qL", "27JttR1a422Nako8YGMY5Ahc", "AlDOUBu3jeBnT50Pq4keLXgXJoF39fy6", "TjvrkKyuYEJ7Y3OZAZEHWsPhg82qs4NN", "wARTkO3aZV9vURkyYIzsPp86MDPaDDjR", "y3qNnTbXyBY4yqPfqr1AOySQgGqBWdXR", "fm1NDxkWExV"};
    public List<C2230c8> A00;
    public final long A01;
    public final long A02;
    public final C2230c8 A03;
    public final C2237cF A04;
    public final String A05;
    public final String A06;
    public final String A07;
    public final String A08;
    public final boolean A09;
    public final HashMap<String, Integer> A0A;
    public final HashMap<String, Integer> A0B;
    public final String[] A0C;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0E;
            if (strArr[0].charAt(12) == strArr[3].charAt(12)) {
                throw new RuntimeException();
            }
            A0E[1] = "UOyBgZY";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 63);
            i4++;
        }
    }

    public static void A04() {
        A0D = new byte[]{2, 18, 1, 12, 19, 71, 79, 94, 75, 78, 75, 94, 75, 81};
    }

    static {
        A04();
    }

    public C2230c8(String str, String str2, long j, long j2, C2237cF c2237cF, String[] strArr, String str3, String str4, C2230c8 c2230c8) {
        this.A07 = str;
        this.A08 = str2;
        this.A05 = str4;
        this.A04 = c2237cF;
        this.A0C = strArr;
        this.A09 = str2 != null;
        this.A02 = j;
        this.A01 = j2;
        this.A06 = (String) AbstractC1747Ln.A01(str3);
        this.A03 = c2230c8;
        this.A0B = new HashMap<>();
        this.A0A = new HashMap<>();
    }

    public static SpannableStringBuilder A00(String str, Map<String, C1737Ld> map) {
        if (!map.containsKey(str)) {
            C1737Ld c1737Ld = new C1737Ld();
            c1737Ld.A0G(new SpannableStringBuilder());
            map.put(str, c1737Ld);
        }
        C1737Ld regionOutput = map.get(str);
        return (SpannableStringBuilder) AbstractC1747Ln.A01(regionOutput.A0I());
    }

    public static C2230c8 A01(String str) {
        return new C2230c8(null, AbstractC2232cA.A04(str), -9223372036854775807L, -9223372036854775807L, null, null, A03(0, 0, 63), null, null);
    }

    public static C2230c8 A02(String str, long j, long j2, C2237cF c2237cF, String[] strArr, String str2, String str3, C2230c8 c2230c8) {
        return new C2230c8(str, null, j, j2, c2237cF, strArr, str2, str3, c2230c8);
    }

    private void A05(long j, String str, List<Pair<String, String>> regionImageList) {
        if (!A03(0, 0, 63).equals(this.A06)) {
            str = this.A06;
        }
        if (A0B(j)) {
            String strA03 = A03(2, 3, 90);
            String resolvedRegionId = this.A07;
            if (strA03.equals(resolvedRegionId)) {
                String resolvedRegionId2 = this.A05;
                if (resolvedRegionId2 != null) {
                    regionImageList.add(new Pair<>(str, this.A05));
                    return;
                }
            }
        }
        for (int i = 0; i < A0C(); i++) {
            A0D(i).A05(j, str, regionImageList);
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:20:0x0089 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A06(long r21, java.util.Map<java.lang.String, com.facebook.ads.redexgen.X.C2237cF> r23, java.util.Map<java.lang.String, com.facebook.ads.redexgen.X.C2231c9> r24, java.lang.String r25, java.util.Map<java.lang.String, com.facebook.ads.redexgen.X.C1737Ld> r26) {
        /*
            r20 = this;
            r2 = r20
            r3 = r25
            r2 = r2
            r14 = r21
            boolean r0 = r2.A0B(r14)
            if (r0 != 0) goto Le
            return
        Le:
            r4 = 0
            r1 = 0
            r0 = 63
            java.lang.String r1 = A03(r4, r1, r0)
            java.lang.String r0 = r2.A06
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L81
        L1e:
            java.util.HashMap<java.lang.String, java.lang.Integer> r0 = r2.A0A
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r7 = r0.iterator()
        L28:
            boolean r0 = r7.hasNext()
            r9 = r23
            r4 = r24
            r5 = r26
            if (r0 == 0) goto L84
            java.lang.Object r6 = r7.next()
            java.util.Map$Entry r6 = (java.util.Map.Entry) r6
            java.lang.Object r1 = r6.getKey()
            java.lang.String r1 = (java.lang.String) r1
            java.util.HashMap<java.lang.String, java.lang.Integer> r0 = r2.A0B
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L7f
            java.util.HashMap<java.lang.String, java.lang.Integer> r0 = r2.A0B
            java.lang.Object r0 = r0.get(r1)
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r11 = r0.intValue()
        L54:
            java.lang.Object r0 = r6.getValue()
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r12 = r0.intValue()
            if (r11 == r12) goto L28
            java.lang.Object r0 = r5.get(r1)
            com.facebook.ads.redexgen.X.Ld r0 = (com.facebook.ads.redexgen.X.C1737Ld) r0
            java.lang.Object r10 = com.facebook.ads.redexgen.X.AbstractC1747Ln.A01(r0)
            com.facebook.ads.redexgen.X.Ld r10 = (com.facebook.ads.redexgen.X.C1737Ld) r10
            java.lang.Object r0 = r4.get(r3)
            com.facebook.ads.redexgen.X.c9 r0 = (com.facebook.ads.redexgen.X.C2231c9) r0
            java.lang.Object r0 = com.facebook.ads.redexgen.X.AbstractC1747Ln.A01(r0)
            com.facebook.ads.redexgen.X.c9 r0 = (com.facebook.ads.redexgen.X.C2231c9) r0
            int r13 = r0.A08
            r8 = r2
            r8.A09(r9, r10, r11, r12, r13)
            goto L28
        L7f:
            r11 = 0
            goto L54
        L81:
            java.lang.String r3 = r2.A06
            goto L1e
        L84:
            r1 = 0
        L85:
            int r0 = r2.A0C()
            if (r1 >= r0) goto L9d
            com.facebook.ads.redexgen.X.c8 r13 = r2.A0D(r1)
            r16 = r9
            r19 = r5
            r18 = r3
            r17 = r4
            r13.A06(r14, r16, r17, r18, r19)
            int r1 = r1 + 1
            goto L85
        L9d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2230c8.A06(long, java.util.Map, java.util.Map, java.lang.String, java.util.Map):void");
    }

    private void A07(long j, boolean z, String str, Map<String, C1737Ld> map) {
        String str2 = str;
        this.A0B.clear();
        this.A0A.clear();
        if (A03(5, 8, 21).equals(this.A07)) {
            return;
        }
        if (!A03(0, 0, 63).equals(this.A06)) {
            str2 = this.A06;
        }
        if (this.A09 && z) {
            SpannableStringBuilder spannableStringBuilderA00 = A00(str2, map);
            String resolvedRegionId = this.A08;
            spannableStringBuilderA00.append((CharSequence) AbstractC1747Ln.A01(resolvedRegionId));
            return;
        }
        String strA03 = A03(0, 2, 95);
        String resolvedRegionId2 = this.A07;
        if (strA03.equals(resolvedRegionId2) && z) {
            A00(str2, map).append('\n');
            return;
        }
        if (!A0B(j)) {
            return;
        }
        for (Map.Entry<String, C1737Ld> entry : map.entrySet()) {
            this.A0B.put(entry.getKey(), Integer.valueOf(((CharSequence) AbstractC1747Ln.A01(entry.getValue().A0I())).length()));
        }
        if (A0E[4].charAt(4) == '1') {
            throw new RuntimeException();
        }
        A0E[5] = "qSC9DshU3TyXUmFm7kodYAtB4RREv35I";
        String strA032 = A03(13, 1, 30);
        String resolvedRegionId3 = this.A07;
        boolean zEquals = strA032.equals(resolvedRegionId3);
        for (int i = 0; i < A0C(); i++) {
            A0D(i).A07(j, z || zEquals, str2, map);
        }
        if (zEquals) {
            AbstractC2232cA.A07(A00(str2, map));
        }
        for (Map.Entry<String, C1737Ld> entry2 : map.entrySet()) {
            this.A0A.put(entry2.getKey(), Integer.valueOf(((CharSequence) AbstractC1747Ln.A01(entry2.getValue().A0I())).length()));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x010e, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A08(android.text.SpannableStringBuilder r9) {
        /*
            Method dump skipped, instruction units count: 304
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2230c8.A08(android.text.SpannableStringBuilder):void");
    }

    private void A09(Map<String, C2237cF> map, C1737Ld c1737Ld, int i, int i2, int i3) {
        C2237cF c2237cFA02 = AbstractC2232cA.A02(this.A04, this.A0C, map);
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) c1737Ld.A0I();
        if (spannableStringBuilder == null) {
            spannableStringBuilder = new SpannableStringBuilder();
            c1737Ld.A0G(spannableStringBuilder);
        }
        if (c2237cFA02 != null) {
            AbstractC2232cA.A06(spannableStringBuilder, i, i2, c2237cFA02, this.A03, map, i3);
            if (A03(13, 1, 30).equals(this.A07)) {
                if (c2237cFA02.A04() != Float.MAX_VALUE) {
                    c1737Ld.A05((c2237cFA02.A04() * (-90.0f)) / 100.0f);
                }
                if (c2237cFA02.A0C() != null) {
                    c1737Ld.A0F(c2237cFA02.A0C());
                }
                if (c2237cFA02.A0B() != null) {
                    c1737Ld.A0E(c2237cFA02.A0B());
                }
            }
        }
    }

    private void A0A(TreeSet<Long> treeSet, boolean z) {
        boolean zEquals = A03(13, 1, 30).equals(this.A07);
        boolean isPNode = A03(2, 3, 90).equals(this.A07);
        if (z || zEquals || (isPNode && this.A05 != null)) {
            if (this.A02 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(this.A02));
            }
            if (this.A01 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(this.A01));
            }
        }
        if (this.A00 == null) {
            return;
        }
        for (int i = 0; i < this.A00.size(); i++) {
            C2230c8 c2230c8 = this.A00.get(i);
            boolean isPNode2 = z || zEquals;
            c2230c8.A0A(treeSet, isPNode2);
        }
    }

    private final boolean A0B(long j) {
        return (this.A02 == -9223372036854775807L && this.A01 == -9223372036854775807L) || (this.A02 <= j && this.A01 == -9223372036854775807L) || ((this.A02 == -9223372036854775807L && j < this.A01) || (this.A02 <= j && j < this.A01));
    }

    public final int A0C() {
        if (this.A00 == null) {
            return 0;
        }
        return this.A00.size();
    }

    public final C2230c8 A0D(int i) {
        if (this.A00 != null) {
            return this.A00.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public final List<C1936Th> A0E(long j, Map<String, C2237cF> map, Map<String, C2231c9> map2, Map<String, String> imageMap) {
        List<Pair<String, String>> arrayList = new ArrayList<>();
        A05(j, this.A06, arrayList);
        TreeMap treeMap = new TreeMap();
        A07(j, false, this.A06, treeMap);
        A06(j, map, map2, this.A06, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair<String, String> pair : arrayList) {
            String str = imageMap.get(pair.second);
            if (str != null) {
                byte[] bArrDecode = Base64.decode(str, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                C2231c9 c2231c9 = (C2231c9) AbstractC1747Ln.A01(map2.get(pair.first));
                arrayList2.add(new C1737Ld().A0D(bitmapDecodeByteArray).A04(c2231c9.A02).A0A(0).A07(c2231c9.A01, 0).A09(c2231c9.A05).A06(c2231c9.A04).A03(c2231c9.A00).A0B(c2231c9.A08).A0H());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            C2231c9 c2231c92 = (C2231c9) AbstractC1747Ln.A01(map2.get(entry.getKey()));
            C1737Ld c1737Ld = (C1737Ld) entry.getValue();
            A08((SpannableStringBuilder) AbstractC1747Ln.A01(c1737Ld.A0I()));
            c1737Ld.A07(c2231c92.A01, c2231c92.A06);
            c1737Ld.A09(c2231c92.A05);
            c1737Ld.A04(c2231c92.A02);
            c1737Ld.A06(c2231c92.A04);
            c1737Ld.A08(c2231c92.A03, c2231c92.A07);
            c1737Ld.A0B(c2231c92.A08);
            arrayList2.add(c1737Ld.A0H());
        }
        return arrayList2;
    }

    public final void A0F(C2230c8 c2230c8) {
        if (this.A00 == null) {
            this.A00 = new ArrayList();
        }
        this.A00.add(c2230c8);
    }

    public final long[] A0G() {
        TreeSet<Long> treeSet = new TreeSet<>();
        A0A(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        int i = 0;
        Iterator<Long> it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i] = it.next().longValue();
            i++;
        }
        return jArr;
    }

    public final String[] A0H() {
        return this.A0C;
    }
}
