package ads_mobile_sdk;

import java.util.ListIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
public final class dw3<E> implements ListIterator<E>, KMappedMarker {
    private final /* synthetic */ ListIterator<E> a;

    /* JADX WARN: Multi-variable type inference failed */
    public dw3(ListIterator<? extends E> delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.a = delegate;
    }

    @Override // java.util.ListIterator
    public void add(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return this.a.hasNext();
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return this.a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public E next() {
        return this.a.next();
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.a.nextIndex();
    }

    @Override // java.util.ListIterator
    public E previous() {
        return this.a.previous();
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public void set(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
