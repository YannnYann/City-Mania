package ads_mobile_sdk;

import ads_mobile_sdk.yh1;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
public final class lo0<E, P> implements List<E>, KMappedMarker {
    private final Function0<List<E>> a;
    private List<? extends E> b;

    /* JADX WARN: Illegal instructions before constructor call */
    public lo0(List<? extends E> delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Function0 function0 = mo0.a;
        Intrinsics.checkNotNull(function0, "null cannot be cast to non-null type kotlin.Function0<kotlin.collections.List<E of com.google.protobuf.kotlin.DslList>>");
        this((Function0) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function0, 0));
        this.b = delegate;
    }

    @Override // java.util.List
    public void add(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return c().containsAll(elements);
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new cw3(c().iterator());
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return new dw3(c().listIterator());
    }

    @Override // java.util.List
    public E remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void replaceAll(UnaryOperator<E> unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public E set(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void sort(Comparator<? super E> comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i) {
        return new dw3(c().listIterator(i));
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public lo0(Function0<? extends List<? extends E>> delegateSupplier) {
        Intrinsics.checkNotNullParameter(delegateSupplier, "delegateSupplier");
        this.a = delegateSupplier;
    }

    private final List<E> c() {
        List<? extends E> list = this.b;
        if (list != null) {
            return list;
        }
        yh1.e eVar = (List<? extends E>) this.a.invoke();
        this.b = eVar;
        return eVar;
    }

    public int d() {
        return c().size();
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return c().isEmpty();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return c().contains(obj);
    }

    @Override // java.util.List
    public E get(int i) {
        return c().get(i);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return c().indexOf(obj);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return c().lastIndexOf(obj);
    }

    @Override // java.util.List
    public List<E> subList(int i, int i2) {
        return c().subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        return Intrinsics.areEqual(c(), obj);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return c().hashCode();
    }

    public String toString() {
        return c().toString();
    }
}
