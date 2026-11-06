package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.h0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2529h0<E> implements Cloneable {
    public static byte[] A04;
    public static final Object A05;
    public int A00;
    public boolean A01;
    public long[] A02;
    public Object[] A03;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 54);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A04 = new byte[]{19, 79, 83, 82, 72, 27, 118, 90, 75, 18, 91, 87, 51, 53};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A0B(long j, E e) {
        int iA03 = AbstractC2528gz.A03(this.A02, this.A00, j);
        if (iA03 >= 0) {
            this.A03[iA03] = e;
            return;
        }
        int i = ~iA03;
        if (i < this.A00 && this.A03[i] == A05) {
            this.A02[i] = j;
            this.A03[i] = e;
            return;
        }
        if (this.A01 && this.A00 >= this.A02.length) {
            A04();
            i = ~AbstractC2528gz.A03(this.A02, this.A00, j);
        }
        if (this.A00 >= this.A02.length) {
            int iA00 = AbstractC2528gz.A00(this.A00 + 1);
            long[] jArr = new long[iA00];
            Object[] objArr = new Object[iA00];
            System.arraycopy(this.A02, 0, jArr, 0, this.A02.length);
            System.arraycopy(this.A03, 0, objArr, 0, this.A03.length);
            this.A02 = jArr;
            this.A03 = objArr;
        }
        if (this.A00 - i != 0) {
            System.arraycopy(this.A02, i, this.A02, i + 1, this.A00 - i);
            System.arraycopy(this.A03, i, this.A03, i + 1, this.A00 - i);
        }
        this.A02[i] = j;
        this.A03[i] = e;
        this.A00++;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final String toString() {
        if (A06() <= 0) {
            return A03(12, 2, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE);
        }
        StringBuilder sb = new StringBuilder(this.A00 * 28);
        sb.append('{');
        for (int i = 0; i < this.A00; i++) {
            if (i > 0) {
                sb.append(A03(10, 2, 65));
            }
            sb.append(A00(i));
            sb.append(com.ironsource.G5.U);
            E eA07 = A07(i);
            if (eA07 != this) {
                sb.append(eA07);
            } else {
                sb.append(A03(0, 10, 13));
            }
        }
        sb.append('}');
        return sb.toString();
    }

    static {
        A05();
        A05 = new Object();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.h0 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    public C2529h0() {
        this(10);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.h0 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    public C2529h0(int i) {
        this.A01 = false;
        if (i == 0) {
            this.A02 = AbstractC2528gz.A01;
            this.A03 = AbstractC2528gz.A02;
        } else {
            int iA00 = AbstractC2528gz.A00(i);
            this.A02 = new long[iA00];
            this.A03 = new Object[iA00];
        }
        this.A00 = 0;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.h0 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    private final long A00(int i) {
        if (this.A01) {
            A04();
        }
        return this.A02[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.h0 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final C2529h0<E> clone() {
        C2529h0<E> c2529h0 = null;
        try {
            c2529h0 = (C2529h0) super.clone();
            c2529h0.A02 = (long[]) this.A02.clone();
            c2529h0.A03 = (Object[]) this.A03.clone();
            return c2529h0;
        } catch (CloneNotSupportedException unused) {
            return c2529h0;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.h0 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    private final E A02(long j, E e) {
        int iA03 = AbstractC2528gz.A03(this.A02, this.A00, j);
        if (iA03 < 0 || this.A03[iA03] == A05) {
            return e;
        }
        return (E) this.A03[iA03];
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.h0 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    private void A04() {
        int i = this.A00;
        int i2 = 0;
        long[] jArr = this.A02;
        Object[] objArr = this.A03;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != A05) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.A01 = false;
        this.A00 = i2;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.h0 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    public final int A06() {
        if (this.A01) {
            A04();
        }
        return this.A00;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.h0 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    public final E A07(int i) {
        if (this.A01) {
            A04();
        }
        return (E) this.A03[i];
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.h0 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    public final E A08(long j) {
        return A02(j, null);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.h0 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    public final void A09() {
        int i = this.A00;
        Object[] objArr = this.A03;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.A00 = 0;
        this.A01 = false;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.h0 != com.facebook.ads.internal.androidx.support.v4.util.LongSparseArray<E> */
    public final void A0A(int i) {
        if (this.A03[i] != A05) {
            this.A03[i] = A05;
            this.A01 = true;
        }
    }
}
