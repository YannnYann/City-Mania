package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.facebook.ads.androidx.media3.common.Timeline;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8m, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C8m extends Timeline {
    public static byte[] A0D;
    public static final C1958Ug A0E;
    public static final Object A0F;
    public final long A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final long A06;
    public final C1962Uk A07;
    public final C1958Ug A08;
    public final Object A09;
    public final boolean A0A;
    public final boolean A0B;
    public final boolean A0C;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 48);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A0D = new byte[]{-93, -71, -66, -73, -68, -75, -96, -75, -62, -71, -65, -76, -92, -71, -67, -75, -68, -71, -66, -75};
    }

    static {
        A01();
        A0F = new Object();
        A0E = new C1719Kj().A03(A00(0, 20, 32)).A00(Uri.EMPTY).A05();
    }

    public C8m(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, boolean z3, Object obj, C1958Ug c1958Ug, C1962Uk c1962Uk) {
        this.A02 = j;
        this.A06 = j2;
        this.A00 = j3;
        this.A01 = j4;
        this.A04 = j5;
        this.A05 = j6;
        this.A03 = j7;
        this.A0B = z;
        this.A0A = z2;
        this.A0C = z3;
        this.A09 = obj;
        this.A08 = (C1958Ug) AbstractC1747Ln.A01(c1958Ug);
        this.A07 = c1962Uk;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public C8m(long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, Object obj, C1958Ug c1958Ug) {
        C1962Uk c1962Uk;
        if (z3) {
            c1962Uk = c1958Ug.A02;
        } else {
            c1962Uk = null;
        }
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j, j2, j3, j4, z, z2, false, obj, c1958Ug, c1962Uk);
    }

    public C8m(long j, boolean z, boolean z2, boolean z3, Object obj, C1958Ug c1958Ug) {
        this(j, j, 0L, 0L, z, z2, z3, obj, c1958Ug);
    }

    @Override // com.facebook.ads.androidx.media3.common.Timeline
    public final int A06() {
        return 1;
    }

    @Override // com.facebook.ads.androidx.media3.common.Timeline
    public final int A07() {
        return 1;
    }

    @Override // com.facebook.ads.androidx.media3.common.Timeline
    public final int A0A(Object obj) {
        return A0F.equals(obj) ? 0 : -1;
    }

    @Override // com.facebook.ads.androidx.media3.common.Timeline
    public final UM A0I(int i, UM um, boolean z) {
        AbstractC1747Ln.A00(i, 0, 1);
        return um.A0F(null, z ? A0F : null, 0, this.A01, -this.A05);
    }

    @Override // com.facebook.ads.androidx.media3.common.Timeline
    public final UK A0L(int i, UK uk, long j) {
        AbstractC1747Ln.A00(i, 0, 1);
        long j2 = this.A03;
        if (this.A0A && !this.A0C && j != 0) {
            if (this.A04 == -9223372036854775807L) {
                j2 = -9223372036854775807L;
            } else {
                j2 += j;
                if (j2 > this.A04) {
                    j2 = -9223372036854775807L;
                }
            }
        }
        return uk.A07(UK.A0K, this.A08, this.A09, this.A02, this.A06, -9223372036854775807L, this.A0B, this.A0A, null, j2, this.A04, 0, 0, this.A05);
    }

    @Override // com.facebook.ads.androidx.media3.common.Timeline
    public final Object A0M(int i) {
        AbstractC1747Ln.A00(i, 0, 1);
        return A0F;
    }
}
