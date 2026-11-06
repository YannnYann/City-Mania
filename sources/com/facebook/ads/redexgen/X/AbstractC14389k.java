package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.vungle.ads.internal.protos.Sdk;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9k, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC14389k<E> extends AbstractC1995Vt<E> implements Set<E> {
    public static byte[] A01 = null;
    public static final long serialVersionUID = 912559;

    @CheckForNull
    @LazyInit
    public transient AbstractC14399l<E> A00;

    static {
        A0C();
    }

    public static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 97);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0C() {
        A01 = new byte[]{9, 47, 57, 124, 15, 57, 46, 53, 61, 48, 53, 38, 57, 56, 26, 51, 46, 49, 119, 123, 120, 120, 113, 119, 96, 125, 123, 122, 52, 96, 123, 123, 52, 120, 117, 102, 115, 113};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC1995Vt
    public AbstractC14399l<E> A0J() {
        AbstractC14399l<E> abstractC14399l = this.A00;
        if (abstractC14399l != null) {
            return abstractC14399l;
        }
        AbstractC14399l<E> abstractC14399lA0M = A0M();
        this.A00 = abstractC14399lA0M;
        return abstractC14399lA0M;
    }

    /* JADX INFO: renamed from: A0N */
    public abstract VV<E> iterator();

    public static int A03(int setSize) {
        int iMax = Math.max(setSize, 2);
        if (iMax < 751619276) {
            int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
            while (((double) iHighestOneBit) * 0.7d < iMax) {
                iHighestOneBit <<= 1;
            }
            return iHighestOneBit;
        }
        AbstractC2020Wu.A0E(iMax < 1073741824, A0B(18, 20, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE));
        return 1073741824;
    }

    public static <E> AbstractC14389k<E> A04(int n, Object... elements) {
        Object[] table = elements;
        switch (n) {
            case 0:
                return A09();
            case 1:
                return A0A(Objects.requireNonNull(table[0]));
            default:
                int iA03 = A03(n);
                Object[] objArr = new Object[iA03];
                int uniques = iA03 - 1;
                int mask = 0;
                int uniques2 = 0;
                for (int index = 0; index < n; index++) {
                    Object objA00 = AbstractC1980Vd.A00(table[index], index);
                    int uniques3 = objA00.hashCode();
                    int iA00 = AbstractC1997Vv.A00(uniques3);
                    while (true) {
                        int tableSize = iA00 & uniques;
                        Object obj = objArr[tableSize];
                        if (obj == null) {
                            table[uniques2] = objA00;
                            objArr[tableSize] = objA00;
                            mask += uniques3;
                            uniques2++;
                        } else {
                            if (obj.equals(objA00)) {
                            }
                            iA00++;
                        }
                        break;
                    }
                }
                Arrays.fill(table, uniques2, n, (Object) null);
                if (uniques2 == 1) {
                    return new C4P(Objects.requireNonNull(table[0]));
                }
                if (A03(uniques2) < iA03 / 2) {
                    return A04(uniques2, table);
                }
                if (A0D(uniques2, table.length)) {
                    table = Arrays.copyOf(table, uniques2);
                }
                return new C4T(table, mask, objArr, uniques, uniques2);
        }
    }

    public static <E> AbstractC14389k<E> A05(E e1, E e2) {
        return A04(2, e1, e2);
    }

    public static <E> AbstractC14389k<E> A06(E e1, E e2, E e3) {
        return A04(3, e1, e2, e3);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9k != com.google.common.collect.ImmutableSet<E> */
    public static <E> AbstractC14389k<E> A07(Collection<? extends E> elements) {
        if ((elements instanceof AbstractC14389k) && !(elements instanceof SortedSet)) {
            AbstractC14389k<E> abstractC14389k = (AbstractC14389k) elements;
            if (!abstractC14389k.A0K()) {
                return abstractC14389k;
            }
        }
        Object[] array = elements.toArray();
        return A04(array.length, array);
    }

    public static <E> AbstractC14389k<E> A08(E[] elements) {
        switch (elements.length) {
            case 0:
                return A09();
            case 1:
                return A0A(elements[0]);
            default:
                return A04(elements.length, (Object[]) elements.clone());
        }
    }

    public static <E> AbstractC14389k<E> A09() {
        return C4T.A05;
    }

    public static <E> AbstractC14389k<E> A0A(E e1) {
        return new C4P(e1);
    }

    public static boolean A0D(int actualUnique, int expectedUnique) {
        return actualUnique < (expectedUnique >> 1) + (expectedUnique >> 2);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9k != com.google.common.collect.ImmutableSet<E> */
    public AbstractC14399l<E> A0M() {
        return AbstractC14399l.A06(toArray());
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9k != com.google.common.collect.ImmutableSet<E> */
    public boolean A0O() {
        return false;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9k != com.google.common.collect.ImmutableSet<E> */
    @Override // java.util.Collection, java.util.Set
    public boolean equals(@CheckForNull Object object) {
        if (object == this) {
            return true;
        }
        if ((object instanceof AbstractC14389k) && A0O() && ((AbstractC14389k) object).A0O() && hashCode() != object.hashCode()) {
            return false;
        }
        return VX.A09(this, object);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9k != com.google.common.collect.ImmutableSet<E> */
    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return VX.A00(this);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.9k != com.google.common.collect.ImmutableSet<E> */
    private void readObject(ObjectInputStream stream) throws InvalidObjectException {
        throw new InvalidObjectException(A0B(0, 18, 61));
    }
}
