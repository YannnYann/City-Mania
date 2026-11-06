package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.TreeSet;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.eS, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2373eS {
    public static byte[] A05;
    public static String[] A06 = {"XJsIaGexGfIuS7KEZ9CJlXNx8P4Ex0vt", "60KxRcdLBeG78T2FpJswCsfbof8MgXhk", "CEtqY3eDykzysQrnjk67hSoI7J0lE8tM", "C8j3Xa", "2DALgc8JJTxTXlKdrEx8TMLlTIu8rM", "aUzT0izMM3P341UuinRxCvRfM25HKV7D", "eFiEiYnQcJqWOrmAtm9B3LsRvACfo7Re", "sVCHW3txnWQofnJyftwy8WfNGa"};
    public C1764Mf A00;
    public final int A01;
    public final String A02;
    public final ArrayList<C2372eR> A03;
    public final TreeSet<MK> A04;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A06[1].charAt(20) == 'A') {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[0] = "oikn1IeDaTldZ49JGX0shdTwRfWMg6J3";
            strArr[2] = "IDANH1eKx0Aj5KUbxLU1e6GAxb5fBg1H";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 11);
            i4++;
        }
    }

    public static void A01() {
        A05 = new byte[]{88, 12, 23, 88, 108, 78, 76, 71, 74, 75, 108, 64, 65, 91, 74, 65, 91, 109, 74, 66, 71, 78, 79, 11, 95, 68, 11, 89, 78, 69, 74, 70, 78, 11};
    }

    static {
        A01();
    }

    public C2373eS(int i, String str) {
        this(i, str, C1764Mf.A03);
    }

    public C2373eS(int i, String str, C1764Mf c1764Mf) {
        this.A01 = i;
        this.A02 = str;
        this.A00 = c1764Mf;
        this.A04 = new TreeSet<>();
        this.A03 = new ArrayList<>();
    }

    public final long A02(long j, long currentEndPosition) {
        boolean z = true;
        AbstractC1747Ln.A07(j >= 0);
        String[] strArr = A06;
        if (strArr[5].charAt(20) == strArr[6].charAt(20)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A06;
        strArr2[7] = "bN9UoPq5LBr1HLD2ZNhWaqR2kN";
        strArr2[3] = "XDzBoQ";
        if (currentEndPosition < 0) {
            z = false;
        }
        AbstractC1747Ln.A07(z);
        MK mkA04 = A04(j, currentEndPosition);
        if (mkA04.A0B()) {
            return -Math.min(mkA04.A0C() ? Long.MAX_VALUE : mkA04.A01, currentEndPosition);
        }
        long j2 = j + currentEndPosition;
        if (j2 < 0) {
            j2 = Long.MAX_VALUE;
        }
        long queryEndPosition = mkA04.A02 + mkA04.A01;
        if (queryEndPosition < j2) {
            for (MK mk : this.A04.tailSet(mkA04, false)) {
                if (mk.A02 > queryEndPosition) {
                    break;
                }
                queryEndPosition = Math.max(queryEndPosition, mk.A02 + mk.A01);
                if (queryEndPosition >= j2) {
                    break;
                }
            }
        }
        return Math.min(queryEndPosition - j, currentEndPosition);
    }

    public final C1764Mf A03() {
        return this.A00;
    }

    public final MK A04(long j, long j2) {
        MK mkA02 = MK.A02(this.A02, j);
        MK mkFloor = this.A04.floor(mkA02);
        if (mkFloor != null && mkFloor.A02 + mkFloor.A01 > j) {
            return mkFloor;
        }
        MK lookupSpan = this.A04.ceiling(mkA02);
        if (lookupSpan != null) {
            long jMin = lookupSpan.A02 - j;
            String[] strArr = A06;
            if (strArr[0].charAt(6) != strArr[2].charAt(6)) {
                throw new RuntimeException();
            }
            A06[4] = "aVJfmdWTliU3V44lGj4S5k38mM8Ueq";
            if (j2 != -1) {
                jMin = Math.min(jMin, j2);
            }
            j2 = jMin;
        }
        return MK.A03(this.A02, j, j2);
    }

    public final MK A05(MK mk, long j, boolean z) {
        AbstractC1747Ln.A08(this.A04.remove(mk));
        File file = (File) AbstractC1747Ln.A01(mk.A03);
        if (z) {
            File file2 = file.getParentFile();
            File fileA04 = MK.A04((File) AbstractC1747Ln.A01(file2), this.A01, mk.A02, j);
            if (file.renameTo(fileA04)) {
                file = fileA04;
            } else {
                MV.A07(A00(4, 13, 36), A00(17, 17, 32) + file + A00(0, 4, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE) + fileA04);
            }
        }
        MK newCacheSpan = mk.A0D(file, j);
        this.A04.add(newCacheSpan);
        return newCacheSpan;
    }

    public final TreeSet<MK> A06() {
        return this.A04;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A07(long r5) {
        /*
            r4 = this;
            r3 = 0
        L1:
            java.util.ArrayList<com.facebook.ads.redexgen.X.eR> r0 = r4.A03
            int r0 = r0.size()
            if (r3 >= r0) goto L20
            java.util.ArrayList<com.facebook.ads.redexgen.X.eR> r0 = r4.A03
            java.lang.Object r0 = r0.get(r3)
            com.facebook.ads.redexgen.X.eR r0 = (com.facebook.ads.redexgen.X.C2372eR) r0
            long r1 = r0.A01
            int r0 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r0 != 0) goto L1d
            java.util.ArrayList<com.facebook.ads.redexgen.X.eR> r0 = r4.A03
            r0.remove(r3)
            return
        L1d:
            int r3 = r3 + 1
            goto L1
        L20:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2373eS.A07(long):void");
    }

    public final void A08(MK mk) {
        this.A04.add(mk);
    }

    public final boolean A09() {
        return this.A04.isEmpty();
    }

    public final boolean A0A() {
        return this.A03.isEmpty();
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A0B(long r5, long r7) {
        /*
            r4 = this;
            r1 = 0
        L1:
            java.util.ArrayList<com.facebook.ads.redexgen.X.eR> r0 = r4.A03
            int r0 = r0.size()
            if (r1 >= r0) goto L3b
            java.util.ArrayList<com.facebook.ads.redexgen.X.eR> r0 = r4.A03
            java.lang.Object r0 = r0.get(r1)
            com.facebook.ads.redexgen.X.eR r0 = (com.facebook.ads.redexgen.X.C2372eR) r0
            boolean r0 = r0.A00(r5, r7)
            if (r0 == 0) goto L32
            r3 = 1
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2373eS.A06
            r0 = 7
            r1 = r2[r0]
            r0 = 3
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L35
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2373eS.A06
            java.lang.String r1 = "XKzBDetdOJOyRaULlXIUbxE0BHClvu"
            r0 = 4
            r2[r0] = r1
            return r3
        L32:
            int r1 = r1 + 1
            goto L1
        L35:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L3b:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2373eS.A0B(long, long):boolean");
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A0C(long r3, long r5) {
        /*
            r2 = this;
            r1 = 0
        L1:
            java.util.ArrayList<com.facebook.ads.redexgen.X.eR> r0 = r2.A03
            int r0 = r0.size()
            if (r1 >= r0) goto L1c
            java.util.ArrayList<com.facebook.ads.redexgen.X.eR> r0 = r2.A03
            java.lang.Object r0 = r0.get(r1)
            com.facebook.ads.redexgen.X.eR r0 = (com.facebook.ads.redexgen.X.C2372eR) r0
            boolean r0 = r0.A01(r3, r5)
            if (r0 == 0) goto L19
            r0 = 0
            return r0
        L19:
            int r1 = r1 + 1
            goto L1
        L1c:
            java.util.ArrayList<com.facebook.ads.redexgen.X.eR> r1 = r2.A03
            com.facebook.ads.redexgen.X.eR r0 = new com.facebook.ads.redexgen.X.eR
            r0.<init>(r3, r5)
            r1.add(r0)
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2373eS.A0C(long, long):boolean");
    }

    public final boolean A0D(C2366eL c2366eL) {
        if (this.A04.remove(c2366eL)) {
            if (c2366eL.A03 != null) {
                c2366eL.A03.delete();
            }
            if (A06[4].length() != 30) {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[5] = "WdNjvezHgXv69NEjpHb7AJfIHKMKcEq5";
            strArr[6] = "JZNXCd3YgV4FAej3gizlH3Yt3sinraVp";
            return true;
        }
        return false;
    }

    public final boolean A0E(C2378eX c2378eX) {
        C1764Mf c1764Mf = this.A00;
        C1764Mf oldMetadata = this.A00;
        this.A00 = oldMetadata.A05(c2378eX);
        C1764Mf oldMetadata2 = this.A00;
        return !oldMetadata2.equals(c1764Mf);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2373eS c2373eS = (C2373eS) obj;
        if (this.A01 == c2373eS.A01) {
            String str = this.A02;
            String str2 = c2373eS.A02;
            String[] strArr = A06;
            if (strArr[0].charAt(6) != strArr[2].charAt(6)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[7] = "JchhdTh7s6hipszCaexu8urUMx";
            strArr2[3] = "iBdtFW";
            if (str.equals(str2) && this.A04.equals(c2373eS.A04) && this.A00.equals(c2373eS.A00)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int result = this.A01;
        int i = result * 31;
        int result2 = this.A02.hashCode();
        return ((i + result2) * 31) + this.A00.hashCode();
    }
}
