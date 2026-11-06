package info.flowersoft.theotown.util;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SafeListAccessor<T> implements Iterable<T>, Iterator<T> {
    public int i;
    public List<T> list;
    public T next;

    public SafeListAccessor(List<T> list) {
        this.list = list;
    }

    public T get(int i) {
        try {
            return this.list.get(i);
        } catch (ArrayIndexOutOfBoundsException unused) {
            return null;
        }
    }

    public int getSize() {
        return this.list.size();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.next == null) {
            List<T> list = this.list;
            if (list == null) {
                return false;
            }
            if (this.i < list.size()) {
                try {
                    this.next = this.list.get(this.i);
                    this.i++;
                } catch (ArrayIndexOutOfBoundsException unused) {
                    this.next = null;
                }
            }
        }
        return this.next != null;
    }

    @Override // java.util.Iterator
    public T next() {
        T t = this.next;
        if (t == null) {
            throw new IllegalStateException("hasNext() has to be called first!");
        }
        this.next = null;
        return t;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        reset();
        return this;
    }

    public void reset() {
        this.i = 0;
        this.next = null;
    }
}
