package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.MlltFrame;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8G, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C8G implements PG {
    public static String[] A03 = {"3R8Z89pOHpkKC4uBoFccHBzFCGUd", "W4iL9", "gMed8v3WklgjQD9Zxzws3gsG2D8FYxDO", "csW5cmIKdPi9B0IxUhS6fL2EnMlkm", "i5QZdv7fqP4abMje0lXiWhg2DUMK9Lw5", "VrwIDpXyT68ecuwtTRPGToazuEFe6", "Hb0A2x6b2mITaHHt11IFrq", "9SSa2"};
    public final long A00;
    public final long[] A01;
    public final long[] A02;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static Pair<Long, Long> A00(long j, long[] jArr, long[] jArr2) {
        double d;
        int iA0L = N1.A0L(jArr, j, true, true);
        long j2 = jArr[iA0L];
        long j3 = jArr2[iA0L];
        int i = iA0L + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        long j5 = jArr2[i];
        if (j4 == j2) {
            d = 0.0d;
        } else {
            double d2 = j - j2;
            long j6 = j4 - j2;
            if (A03[5].length() != 29) {
                throw new RuntimeException();
            }
            A03[7] = "Bw4Fm";
            d = d2 / j6;
        }
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((j5 - j3) * d)) + j3));
    }

    public C8G(long[] jArr, long[] jArr2, long j) {
        this.A01 = jArr;
        this.A02 = jArr2;
        this.A00 = j == -9223372036854775807L ? N1.A0O(jArr2[jArr2.length - 1]) : j;
    }

    public static C8G A01(long j, MlltFrame mlltFrame, long j2) {
        int length = mlltFrame.A03.length;
        int referenceCount = length + 1;
        long[] jArr = new long[referenceCount];
        int referenceCount2 = length + 1;
        long[] jArr2 = new long[referenceCount2];
        jArr[0] = j;
        jArr2[0] = 0;
        long j3 = 0;
        for (int i = 1; i <= length; i++) {
            int i2 = mlltFrame.A00;
            int referenceCount3 = i - 1;
            int i3 = i2 + mlltFrame.A03[referenceCount3];
            if (A03[7].length() != 5) {
                throw new RuntimeException();
            }
            A03[4] = "siqjnf6Q5qRVXEjHuFTxicOAkrZKrJhL";
            j += (long) i3;
            int referenceCount4 = i - 1;
            j3 += (long) (mlltFrame.A01 + mlltFrame.A04[referenceCount4]);
            jArr[i] = j;
            jArr2[i] = j3;
        }
        return new C8G(jArr, jArr2, j2);
    }

    @Override // com.facebook.ads.redexgen.X.PG
    public final long A8K() {
        return -1L;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final long A8U() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final ZJ A9e(long j) {
        Pair<Long, Long> pairA00 = A00(N1.A0P(N1.A0T(j, 0L, this.A00)), this.A02, this.A01);
        return new ZJ(new ZL(N1.A0O(((Long) pairA00.first).longValue()), ((Long) pairA00.second).longValue()));
    }

    @Override // com.facebook.ads.redexgen.X.PG
    public final long A9u(long j) {
        Pair<Long, Long> positionAndTimeMs = A00(j, this.A01, this.A02);
        return N1.A0O(((Long) positionAndTimeMs.second).longValue());
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final boolean ABR() {
        return true;
    }
}
