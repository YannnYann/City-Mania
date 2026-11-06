package com.facebook.ads.redexgen.X;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.Spliterators;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.39, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class AnonymousClass39 extends AbstractList<Integer> implements RandomAccess, Serializable {
    public static byte[] A03;
    public static final long serialVersionUID = 0;
    public final int A00;
    public final int A01;
    public final int[] A02;

    static {
        A04();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 89);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A03 = new byte[]{22, 26};
    }

    public AnonymousClass39(int[] array) {
        this(array, 0, array.length);
    }

    public AnonymousClass39(int[] array, int start, int end) {
        this.A02 = array;
        this.A01 = start;
        this.A00 = end;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Integer get(int index) {
        AbstractC2020Wu.A00(index, size());
        return Integer.valueOf(this.A02[this.A01 + index]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final Integer set(int index, Integer element) {
        AbstractC2020Wu.A00(index, size());
        int i = this.A02[this.A01 + index];
        int[] iArr = this.A02;
        int i2 = this.A01 + index;
        int oldValue = ((Integer) AbstractC2020Wu.A04(element)).intValue();
        iArr[i2] = oldValue;
        return Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: A03, reason: merged with bridge method [inline-methods] */
    public final Spliterator.OfInt spliterator() {
        return Spliterators.spliterator(this.A02, this.A01, this.A00, 0);
    }

    public final int[] A05() {
        return Arrays.copyOfRange(this.A02, this.A01, this.A00);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(@CheckForNull Object target) {
        return (target instanceof Integer) && AnonymousClass19.A04(this.A02, ((Integer) target).intValue(), this.A01, this.A00) != -1;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(@CheckForNull Object object) {
        if (object == this) {
            return true;
        }
        if (object instanceof AnonymousClass39) {
            AnonymousClass39 anonymousClass39 = (AnonymousClass39) object;
            int size = size();
            if (anonymousClass39.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                int size2 = this.A02[this.A01 + i];
                if (size2 != anonymousClass39.A02[anonymousClass39.A01 + i]) {
                    return false;
                }
            }
            return true;
        }
        return super.equals(object);
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0005 */
    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int hashCode() {
        /*
            r3 = this;
            r1 = 1
            int r2 = r3.A01
        L3:
            int r0 = r3.A00
            if (r2 >= r0) goto L15
            int r1 = r1 * 31
            int[] r0 = r3.A02
            r0 = r0[r2]
            int r0 = com.facebook.ads.redexgen.X.AnonymousClass19.A00(r0)
            int r1 = r1 + r0
            int r2 = r2 + 1
            goto L3
        L15:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass39.hashCode():int");
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(@CheckForNull Object target) {
        int iA04;
        if ((target instanceof Integer) && (iA04 = AnonymousClass19.A04(this.A02, ((Integer) target).intValue(), this.A01, this.A00)) >= 0) {
            int i = this.A01;
            return iA04 - i;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(@CheckForNull Object target) {
        int iA05;
        if ((target instanceof Integer) && (iA05 = AnonymousClass19.A05(this.A02, ((Integer) target).intValue(), this.A01, this.A00)) >= 0) {
            int i = this.A01;
            return iA05 - i;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.A00 - this.A01;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List<Integer> subList(int fromIndex, int toIndex) {
        int size = size();
        AbstractC2020Wu.A0B(fromIndex, toIndex, size);
        if (fromIndex == toIndex) {
            return Collections.emptyList();
        }
        return new AnonymousClass39(this.A02, this.A01 + fromIndex, this.A01 + toIndex);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        StringBuilder sb = new StringBuilder(size() * 5);
        sb.append('[').append(this.A02[this.A01]);
        for (int i = this.A01 + 1; i < this.A00; i++) {
            sb.append(A02(0, 2, 99)).append(this.A02[i]);
        }
        StringBuilder builder = sb.append(']');
        return builder.toString();
    }
}
