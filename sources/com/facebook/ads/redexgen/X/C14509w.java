package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.io.Serializable;
import java.util.Arrays;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9w, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public final class C14509w<F, T> extends AbstractC1979Vc<F> implements Serializable {
    public static byte[] A02;
    public static final long serialVersionUID = 0;
    public final InterfaceC2023Wy<F, ? extends T> A00;
    public final AbstractC1979Vc<T> A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 13);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{109, 21, 84, 85, 105, 94, 72, 78, 87, 79, 116, 93, 19};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // java.util.Comparator
    public final boolean equals(@CheckForNull Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof C14509w)) {
            return false;
        }
        C14509w c14509w = (C14509w) object;
        return this.A00.equals(c14509w.A00) && this.A01.equals(c14509w.A01);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9w != com.google.common.collect.ByFunctionOrdering<F, T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vc != com.google.common.collect.Ordering<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Wy != com.google.common.base.Function<F, ? extends T> */
    public C14509w(InterfaceC2023Wy<F, ? extends T> function, AbstractC1979Vc<T> ordering) {
        this.A00 = (InterfaceC2023Wy) AbstractC2020Wu.A04(function);
        this.A01 = (AbstractC1979Vc) AbstractC2020Wu.A04(ordering);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9w != com.google.common.collect.ByFunctionOrdering<F, T> */
    @Override // com.facebook.ads.redexgen.X.AbstractC1979Vc, java.util.Comparator
    public final int compare(@ParametricNullness F f, @ParametricNullness F f2) {
        return this.A01.compare(this.A00.A4c(f), this.A00.A4c(f2));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9w != com.google.common.collect.ByFunctionOrdering<F, T> */
    public final int hashCode() {
        return A6.A00(this.A00, this.A01);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9w != com.google.common.collect.ByFunctionOrdering<F, T> */
    public final String toString() {
        return this.A01 + A00(1, 12, 54) + this.A00 + A00(0, 1, 73);
    }
}
