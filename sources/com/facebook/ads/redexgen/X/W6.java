package com.facebook.ads.redexgen.X;

import com.google.common.collect.ParametricNullness;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class W6<E> extends AbstractCollection<E> {
    public final InterfaceC2019Wt<? super E> A00;
    public final Collection<E> A01;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.W6 != com.google.common.collect.Collections2$FilteredCollection<E> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Wt != com.google.common.base.Predicate<? super E> */
    public W6(Collection<E> unfiltered, InterfaceC2019Wt<? super E> predicate) {
        this.A01 = unfiltered;
        this.A00 = predicate;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.W6 != com.google.common.collect.Collections2$FilteredCollection<E> */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(@ParametricNullness E element) {
        AbstractC2020Wu.A0C(this.A00.A4d(element));
        return this.A01.add(element);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.W6 != com.google.common.collect.Collections2$FilteredCollection<E> */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection<? extends E> collection) {
        for (E element : collection) {
            AbstractC2020Wu.A0C(this.A00.A4d(element));
        }
        return this.A01.addAll(collection);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.W6 != com.google.common.collect.Collections2$FilteredCollection<E> */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        AbstractC1991Vp.A03(this.A01, this.A00);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.W6 != com.google.common.collect.Collections2$FilteredCollection<E> */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object element) {
        if (W5.A03(this.A01, element)) {
            return this.A00.A4d(element);
        }
        return false;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.W6 != com.google.common.collect.Collections2$FilteredCollection<E> */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        return W5.A04(this, collection);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.W6 != com.google.common.collect.Collections2$FilteredCollection<E> */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return !AbstractC1991Vp.A02(this.A01, this.A00);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.W6 != com.google.common.collect.Collections2$FilteredCollection<E> */
    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        return AbstractC1989Vn.A01(this.A01.iterator(), this.A00);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.W6 != com.google.common.collect.Collections2$FilteredCollection<E> */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(@CheckForNull Object element) {
        return contains(element) && this.A01.remove(element);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.W6 != com.google.common.collect.Collections2$FilteredCollection<E> */
    /* JADX WARN: Incorrect condition in loop: B:4:0x000b */
    @Override // java.util.AbstractCollection, java.util.Collection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean removeAll(final java.util.Collection<?> r5) {
        /*
            r4 = this;
            r3 = 0
            java.util.Collection<E> r0 = r4.A01
            java.util.Iterator r2 = r0.iterator()
        L7:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L24
            java.lang.Object r1 = r2.next()
            com.facebook.ads.redexgen.X.Wt<? super E> r0 = r4.A00
            boolean r0 = r0.A4d(r1)
            if (r0 == 0) goto L7
            boolean r0 = r5.contains(r1)
            if (r0 == 0) goto L7
            r2.remove()
            r3 = 1
            goto L7
        L24:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.W6.removeAll(java.util.Collection):boolean");
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.W6 != com.google.common.collect.Collections2$FilteredCollection<E> */
    /* JADX WARN: Incorrect condition in loop: B:4:0x000b */
    @Override // java.util.AbstractCollection, java.util.Collection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean retainAll(final java.util.Collection<?> r5) {
        /*
            r4 = this;
            r3 = 0
            java.util.Collection<E> r0 = r4.A01
            java.util.Iterator r2 = r0.iterator()
        L7:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L24
            java.lang.Object r1 = r2.next()
            com.facebook.ads.redexgen.X.Wt<? super E> r0 = r4.A00
            boolean r0 = r0.A4d(r1)
            if (r0 == 0) goto L7
            boolean r0 = r5.contains(r1)
            if (r0 != 0) goto L7
            r2.remove()
            r3 = 1
            goto L7
        L24:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.W6.retainAll(java.util.Collection):boolean");
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.W6 != com.google.common.collect.Collections2$FilteredCollection<E> */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        int i = 0;
        Iterator<E> it = this.A01.iterator();
        while (it.hasNext()) {
            if (this.A00.A4d(it.next())) {
                i++;
            }
        }
        return i;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.W6 != com.google.common.collect.Collections2$FilteredCollection<E> */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return AbstractC1988Vm.A05(iterator()).toArray();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.W6 != com.google.common.collect.Collections2$FilteredCollection<E> */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        return (T[]) AbstractC1988Vm.A05(iterator()).toArray(tArr);
    }
}
