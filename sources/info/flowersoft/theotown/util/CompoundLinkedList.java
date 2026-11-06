package info.flowersoft.theotown.util;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class CompoundLinkedList<T> extends AbstractList<T> {
    public LinkedList<T>[] lists;

    public CompoundLinkedList(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Number of parts must be > 0");
        }
        this.lists = new LinkedList[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.lists[i2] = new LinkedList<>();
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(T t) {
        LinkedList<T> linkedList = this.lists[0];
        int i = 1;
        while (true) {
            LinkedList<T>[] linkedListArr = this.lists;
            if (i < linkedListArr.length) {
                if (linkedListArr[i].size() < linkedList.size()) {
                    linkedList = this.lists[i];
                }
                i++;
            } else {
                return linkedList.add(t);
            }
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i) {
        int i2 = 0;
        while (true) {
            LinkedList<T>[] linkedListArr = this.lists;
            if (i2 >= linkedListArr.length) {
                return null;
            }
            if (linkedListArr[i2].size() >= i) {
                i -= this.lists[i2].size();
                i2++;
            } else {
                return this.lists[i2].get(i);
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        int i = 0;
        int length = 0;
        while (true) {
            LinkedList<T>[] linkedListArr = this.lists;
            if (i >= linkedListArr.length) {
                return length;
            }
            length += linkedListArr.length;
            i++;
        }
    }

    public int parts() {
        return this.lists.length;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<T> iterator() {
        return new Iterator<T>() { // from class: info.flowersoft.theotown.util.CompoundLinkedList.1
            public Iterator<T> it;
            public List<Iterator<T>> its = new ArrayList();

            {
                this.it = CompoundLinkedList.this.lists[0].iterator();
                for (int i = 1; i < CompoundLinkedList.this.lists.length; i++) {
                    this.its.add(CompoundLinkedList.this.lists[i].iterator());
                }
                this.its.add(null);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                Iterator<T> it = this.it;
                if (it != null && it.hasNext()) {
                    return true;
                }
                while (true) {
                    Iterator<T> it2 = this.it;
                    if (it2 == null || it2.hasNext()) {
                        break;
                    }
                    this.it = this.its.remove(0);
                }
                return this.it != null;
            }

            @Override // java.util.Iterator
            public T next() {
                return this.it.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.it.remove();
            }
        };
    }

    public Iterator<T> iterator(int i) {
        return this.lists[i].iterator();
    }
}
