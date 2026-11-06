package info.flowersoft.theotown.util;

import info.flowersoft.theotown.util.SortedList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class MultiList<E> {
    public ArrayList<E> list = new ArrayList<>();
    public List<MultiList<E>.SingleList> activeLists = new SortedList(new SortedList.Interpreter<MultiList<E>.SingleList>() { // from class: info.flowersoft.theotown.util.MultiList.1
        @Override // info.flowersoft.theotown.util.SortedList.Interpreter
        public int interprete(MultiList<E>.SingleList singleList) {
            return singleList.start;
        }
    });
    public List<MultiList<E>.SingleList> inactiveLists = new ArrayList();

    public MultiList<E>.SingleList newList() {
        MultiList<E>.SingleList singleListRemove;
        if (this.inactiveLists.isEmpty()) {
            singleListRemove = new SingleList();
        } else {
            singleListRemove = this.inactiveLists.remove(r0.size() - 1);
        }
        singleListRemove.start = alloc(8);
        singleListRemove.end = singleListRemove.start + 8;
        singleListRemove.size = 0;
        this.activeLists.add(singleListRemove);
        return singleListRemove;
    }

    public final int alloc(int i) {
        int i2 = 0;
        if (!this.activeLists.isEmpty()) {
            int i3 = 0;
            while (i2 < this.activeLists.size()) {
                MultiList<E>.SingleList singleList = this.activeLists.get(i2);
                if (i3 + i > singleList.start) {
                    i3 = singleList.end;
                }
                i2++;
            }
            i2 = i3;
        }
        while (this.list.size() < i2 + i) {
            this.list.add(null);
        }
        return i2;
    }

    public MultiList<E>.SingleList mix(MultiList<E>.SingleList singleList, MultiList<E>.SingleList singleList2) {
        if (singleList2.size() > singleList.size()) {
            singleList2 = singleList;
            singleList = singleList2;
        }
        int size = singleList.size();
        int size2 = singleList2.size();
        for (int i = 0; i < singleList2.size(); i++) {
            singleList.add(singleList2.get(i));
        }
        int size3 = singleList.size();
        if (size2 > 1) {
            for (int i2 = size; i2 < size3; i2++) {
                singleList.swap(i2, (int) ((((long) (i2 - size)) * ((long) (size3 - 1))) / ((long) (size2 - 1))));
            }
        }
        singleList2.free();
        return singleList;
    }

    public void clear() {
        this.list.clear();
        for (int i = 0; i < this.activeLists.size(); i++) {
            this.inactiveLists.add(this.activeLists.get(i));
        }
        this.activeLists.clear();
    }

    public class SingleList {
        public int end;
        public int size;
        public int start;

        public SingleList() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void add(E e) {
            int i;
            if (this.start + this.size >= this.end) {
                MultiList.this.activeLists.remove(this);
                int i2 = this.start;
                this.start = MultiList.this.alloc(this.size * 2);
                int i3 = 0;
                while (true) {
                    i = this.size;
                    if (i3 >= i) {
                        break;
                    }
                    MultiList.this.list.set(this.start + i3, MultiList.this.list.set(i2 + i3, null));
                    i3++;
                }
                this.end = this.start + (i * 2);
                MultiList.this.activeLists.add(this);
            }
            MultiList.this.list.set(this.start + this.size, e);
            this.size++;
        }

        public int size() {
            return this.size;
        }

        public boolean isEmpty() {
            return this.size == 0;
        }

        public E get(int i) {
            return (E) MultiList.this.list.get(this.start + i);
        }

        public void free() {
            MultiList.this.activeLists.remove(this);
            for (int i = 0; i < this.size; i++) {
                MultiList.this.list.set(this.start + i, null);
            }
            MultiList.this.inactiveLists.add(this);
        }

        public void swap(int i, int i2) {
            ArrayList arrayList = MultiList.this.list;
            int i3 = this.start;
            Collections.swap(arrayList, i + i3, i3 + i2);
        }

        public boolean contains(E e) {
            for (int i = 0; i < this.size; i++) {
                if (MultiList.this.list.get(this.start + i) == e) {
                    return true;
                }
            }
            return false;
        }
    }
}
