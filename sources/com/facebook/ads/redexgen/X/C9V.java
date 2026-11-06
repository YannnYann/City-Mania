package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.io.Serializable;
import java.util.Arrays;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9V, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public final class C9V<T> extends AbstractC1979Vc<T> implements Serializable {
    public static byte[] A01;
    public static final long serialVersionUID = 0;
    public final AbstractC1979Vc<? super T> A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 49);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{33, 125, 106, 121, 106, 125, 124, 106, 39, 38};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9V != com.google.common.collect.ReverseOrdering<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vc != com.google.common.collect.Ordering<? super T> */
    public C9V(AbstractC1979Vc<? super T> forwardOrder) {
        this.A00 = (AbstractC1979Vc) AbstractC2020Wu.A04(forwardOrder);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9V != com.google.common.collect.ReverseOrdering<T> */
    @Override // com.facebook.ads.redexgen.X.AbstractC1979Vc
    public final <S extends T> AbstractC1979Vc<S> A06() {
        return this.A00;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9V != com.google.common.collect.ReverseOrdering<T> */
    @Override // com.facebook.ads.redexgen.X.AbstractC1979Vc, java.util.Comparator
    public final int compare(@ParametricNullness T a, @ParametricNullness T b) {
        return this.A00.compare(b, a);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9V != com.google.common.collect.ReverseOrdering<?> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9V != com.google.common.collect.ReverseOrdering<T> */
    @Override // java.util.Comparator
    public final boolean equals(@CheckForNull Object object) {
        if (object == this) {
            return true;
        }
        if (object instanceof C9V) {
            return this.A00.equals(((C9V) object).A00);
        }
        return false;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9V != com.google.common.collect.ReverseOrdering<T> */
    public final int hashCode() {
        return -this.A00.hashCode();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9V != com.google.common.collect.ReverseOrdering<T> */
    public final String toString() {
        return this.A00 + A00(0, 10, 62);
    }
}
