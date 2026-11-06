package com.badlogic.gdx.utils;

import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public class Array<T> implements Iterable<T> {
    public T[] items;
    public transient ArrayIterable<T> iterable;
    public boolean ordered;
    public int size;

    public Array() {
        this(true, 16);
    }

    public Array(int i) {
        this(true, i);
    }

    public Array(boolean z, int i) {
        this(z, i, ArraySupplier.object());
    }

    public Array(boolean z, int i, ArraySupplier<T[]> arraySupplier) {
        this.ordered = z;
        this.items = arraySupplier.get(i);
    }

    public Array(ArraySupplier<T[]> arraySupplier) {
        this(true, 16, arraySupplier);
    }

    public void add(T t) {
        T[] tArrResize = this.items;
        int i = this.size;
        if (i == tArrResize.length) {
            tArrResize = resize(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.size;
        this.size = i2 + 1;
        tArrResize[i2] = t;
    }

    public void addAll(Array<? extends T> array) {
        addAll(array.items, 0, array.size);
    }

    public void addAll(T... tArr) {
        addAll(tArr, 0, tArr.length);
    }

    public void addAll(T[] tArr, int i, int i2) {
        T[] tArrResize = this.items;
        int i3 = this.size + i2;
        if (i3 > tArrResize.length) {
            tArrResize = resize(Math.max(Math.max(8, i3), (int) (this.size * 1.75f)));
        }
        System.arraycopy(tArr, i, tArrResize, this.size, i2);
        this.size = i3;
    }

    public T get(int i) {
        if (i >= this.size) {
            throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
        }
        return this.items[i];
    }

    public boolean contains(T t, boolean z) {
        T[] tArr = this.items;
        int i = this.size - 1;
        if (z || t == null) {
            while (i >= 0) {
                int i2 = i - 1;
                if (tArr[i] == t) {
                    return true;
                }
                i = i2;
            }
            return false;
        }
        while (i >= 0) {
            int i3 = i - 1;
            if (t.equals(tArr[i])) {
                return true;
            }
            i = i3;
        }
        return false;
    }

    public boolean removeValue(T t, boolean z) {
        T[] tArr = this.items;
        if (z || t == null) {
            int i = this.size;
            for (int i2 = 0; i2 < i; i2++) {
                if (tArr[i2] == t) {
                    removeIndex(i2);
                    return true;
                }
            }
        } else {
            int i3 = this.size;
            for (int i4 = 0; i4 < i3; i4++) {
                if (t.equals(tArr[i4])) {
                    removeIndex(i4);
                    return true;
                }
            }
        }
        return false;
    }

    public T removeIndex(int i) {
        int i2 = this.size;
        if (i >= i2) {
            throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
        }
        T[] tArr = this.items;
        T t = tArr[i];
        int i3 = i2 - 1;
        this.size = i3;
        if (this.ordered) {
            System.arraycopy(tArr, i + 1, tArr, i, i3 - i);
        } else {
            tArr[i] = tArr[i3];
        }
        tArr[this.size] = null;
        return t;
    }

    public T pop() {
        int i = this.size;
        if (i == 0) {
            throw new IllegalStateException("Array is empty.");
        }
        int i2 = i - 1;
        this.size = i2;
        T[] tArr = this.items;
        T t = tArr[i2];
        tArr[i2] = null;
        return t;
    }

    public void clear() {
        Arrays.fill(this.items, 0, this.size, (Object) null);
        this.size = 0;
    }

    public T[] resize(int i) {
        T[] tArr = (T[]) Arrays.copyOf(this.items, i);
        this.items = tArr;
        return tArr;
    }

    @Override // java.lang.Iterable
    public ArrayIterator<T> iterator() {
        if (Collections.allocateIterators) {
            return new ArrayIterator<>(this, true);
        }
        if (this.iterable == null) {
            this.iterable = new ArrayIterable<>(this);
        }
        return this.iterable.iterator();
    }

    public int hashCode() {
        if (!this.ordered) {
            return super.hashCode();
        }
        T[] tArr = this.items;
        int i = this.size;
        int iHashCode = 1;
        for (int i2 = 0; i2 < i; i2++) {
            iHashCode *= 31;
            T t = tArr[i2];
            if (t != null) {
                iHashCode += t.hashCode();
            }
        }
        return iHashCode;
    }

    public boolean equals(Object obj) {
        int i;
        if (obj == this) {
            return true;
        }
        if (!this.ordered || !(obj instanceof Array)) {
            return false;
        }
        Array array = (Array) obj;
        if (!array.ordered || (i = this.size) != array.size) {
            return false;
        }
        T[] tArr = this.items;
        T[] tArr2 = array.items;
        for (int i2 = 0; i2 < i; i2++) {
            T t = tArr[i2];
            T t2 = tArr2[i2];
            if (t == null) {
                if (t2 != null) {
                    return false;
                }
            } else {
                if (!t.equals(t2)) {
                    return false;
                }
            }
        }
        return true;
    }

    public String toString() {
        if (this.size == 0) {
            return "[]";
        }
        T[] tArr = this.items;
        StringBuilder sb = new StringBuilder(32);
        sb.append('[');
        sb.append(tArr[0]);
        for (int i = 1; i < this.size; i++) {
            sb.append(", ");
            sb.append(tArr[i]);
        }
        sb.append(']');
        return sb.toString();
    }

    public static class ArrayIterator<T> implements Iterator<T>, Iterable<T> {
        public final boolean allowRemove;
        public final Array<T> array;
        public int index;
        public boolean valid = true;

        @Override // java.lang.Iterable
        public ArrayIterator<T> iterator() {
            return this;
        }

        public ArrayIterator(Array<T> array, boolean z) {
            this.array = array;
            this.allowRemove = z;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.valid) {
                return this.index < this.array.size;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public T next() {
            int i = this.index;
            Array<T> array = this.array;
            if (i >= array.size) {
                throw new NoSuchElementException(String.valueOf(this.index));
            }
            if (!this.valid) {
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            T[] tArr = array.items;
            this.index = i + 1;
            return tArr[i];
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.allowRemove) {
                throw new GdxRuntimeException("Remove not allowed.");
            }
            int i = this.index - 1;
            this.index = i;
            this.array.removeIndex(i);
        }
    }

    public static class ArrayIterable<T> implements Iterable<T> {
        public final boolean allowRemove;
        public final Array<T> array;
        public transient ArrayIterator<T> iterator1;
        public transient ArrayIterator<T> iterator2;

        public ArrayIterable(Array<T> array) {
            this(array, true);
        }

        public ArrayIterable(Array<T> array, boolean z) {
            this.array = array;
            this.allowRemove = z;
        }

        @Override // java.lang.Iterable
        public ArrayIterator<T> iterator() {
            if (Collections.allocateIterators) {
                return new ArrayIterator<>(this.array, this.allowRemove);
            }
            if (this.iterator1 == null) {
                this.iterator1 = new ArrayIterator<>(this.array, this.allowRemove);
                this.iterator2 = new ArrayIterator<>(this.array, this.allowRemove);
            }
            ArrayIterator<T> arrayIterator = this.iterator1;
            if (!arrayIterator.valid) {
                arrayIterator.index = 0;
                arrayIterator.valid = true;
                this.iterator2.valid = false;
                return arrayIterator;
            }
            ArrayIterator<T> arrayIterator2 = this.iterator2;
            arrayIterator2.index = 0;
            arrayIterator2.valid = true;
            arrayIterator.valid = false;
            return arrayIterator2;
        }
    }
}
