package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class QI implements ZK {
    public static String[] A07 = {"GjHk8AWD2TVOOT2jzpbBbJCRhJebhizv", "xag7ZNs6pnTFqwsqqCU4vJccMl7uKzc9", "jHCbHsWHYM", "W1Yr7F6G3yN", "LQhjbBK4i1zal798rqHgfqclDGuP4QwW", "cCY1vXvWaCqTjOJCeB85QatA3tFfX9", "36a7g9cT3N2JrCp5DqWCsPonKG1SnRAU", "zEdflmCq3MxboQA8nKGj5PFSmrtJUo"};
    public final int A00;
    public final int A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final boolean A06;

    public QI(long j, long j2, int i, int i2, boolean z) {
        this.A05 = j;
        this.A04 = j2;
        this.A01 = i2 == -1 ? 1 : i2;
        this.A00 = i;
        this.A06 = z;
        if (j == -1) {
            this.A02 = -1L;
            this.A03 = -9223372036854775807L;
        } else {
            this.A02 = j - j2;
            this.A03 = A01(j, j2, i);
        }
    }

    private long A00(long j) {
        long j2 = (((long) this.A00) * j) / 8000000;
        long positionOffset = this.A01;
        long j3 = j2 / positionOffset;
        long positionOffset2 = this.A01;
        long positionOffset3 = j3 * positionOffset2;
        if (this.A02 != -1) {
            positionOffset3 = Math.min(positionOffset3, this.A02 - ((long) this.A01));
        }
        long positionOffset4 = Math.max(positionOffset3, 0L);
        long positionOffset5 = this.A04;
        return positionOffset5 + positionOffset4;
    }

    public static long A01(long j, long j2, int i) {
        return ((Math.max(0L, j - j2) * 8) * 1000000) / ((long) i);
    }

    public final long A02(long j) {
        return A01(j, this.A04, this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final long A8U() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final ZJ A9e(long j) {
        if (this.A02 == -1 && !this.A06) {
            return new ZJ(new ZL(0L, this.A04));
        }
        long jA00 = A00(j);
        long seekFramePosition = A02(jA00);
        ZL seekPoint = new ZL(seekFramePosition, jA00);
        long seekTimeUs = this.A02;
        if (seekTimeUs != -1) {
            if (A07[2].length() != 10) {
                throw new RuntimeException();
            }
            String[] strArr = A07;
            strArr[4] = "8VNUp8lITnRFwilcp6aSSMQppGyl7Yyy";
            strArr[6] = "PLanBe1dSws00f3URpCBY0aU2G5amB5J";
            if (seekFramePosition < j) {
                long j2 = ((long) this.A01) + jA00;
                long seekTimeUs2 = this.A05;
                if (j2 < seekTimeUs2) {
                    long seekTimeUs3 = this.A01;
                    long seekTimeUs4 = seekTimeUs3 + jA00;
                    long secondSeekPosition = A02(seekTimeUs4);
                    return new ZJ(seekPoint, new ZL(secondSeekPosition, seekTimeUs4));
                }
            }
        }
        return new ZJ(seekPoint);
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final boolean ABR() {
        if (this.A02 == -1) {
            boolean z = this.A06;
            String[] strArr = A07;
            if (strArr[1].charAt(21) != strArr[0].charAt(21)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[5] = "iEAUFAvoGZhInLjeBAgFCvvoNjOp2T";
            strArr2[7] = "A5KK25RiIaIibNsKr12s0KQxIB2DJA";
            if (!z) {
                return false;
            }
        }
        return true;
    }
}
