package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Timeline;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Pv {
    public static String[] A0A = {"fk5sAqMkv8U5R8L5LDoZR43jgBapJMxV", "mPOqtBPsVpcOdFXnNCNU24BrvvmZel", "1BVyZBXOFTjLroM2yy", "Wc28UK0c", "FbkdZrb5P0U8wmE7Hh6e1jSfOM4AAO", "3B6Yd03oP2Jrn", "f7MAD2rdfW5RjfvKNTBCIKoG6PNUu4m4", "rmJTYerwSmR65FNy2H3UrIos1JDvprzt"};
    public final int A00;
    public final int A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final Timeline A06;
    public final Timeline A07;
    public final C1887Rk A08;
    public final C1887Rk A09;

    public Pv(long j, Timeline timeline, int i, C1887Rk c1887Rk, long j2, Timeline timeline2, int i2, C1887Rk c1887Rk2, long j3, long j4) {
        this.A04 = j;
        this.A07 = timeline;
        this.A01 = i;
        this.A09 = c1887Rk;
        this.A03 = j2;
        this.A06 = timeline2;
        this.A00 = i2;
        this.A08 = c1887Rk2;
        this.A02 = j3;
        this.A05 = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            Class<?> cls = getClass();
            if (A0A[2].length() == 21) {
                throw new RuntimeException();
            }
            A0A[3] = "oz45MnEq";
            if (cls == obj.getClass()) {
                Pv pv = (Pv) obj;
                if (this.A04 == pv.A04 && this.A01 == pv.A01 && this.A03 == pv.A03 && this.A00 == pv.A00 && this.A02 == pv.A02 && this.A05 == pv.A05 && A6.A01(this.A07, pv.A07) && A6.A01(this.A09, pv.A09) && A6.A01(this.A06, pv.A06) && A6.A01(this.A08, pv.A08)) {
                    return true;
                }
                return false;
            }
        }
        return false;
    }

    public final int hashCode() {
        return A6.A00(Long.valueOf(this.A04), this.A07, Integer.valueOf(this.A01), this.A09, Long.valueOf(this.A03), this.A06, Integer.valueOf(this.A00), this.A08, Long.valueOf(this.A02), Long.valueOf(this.A05));
    }
}
