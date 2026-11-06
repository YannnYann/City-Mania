package info.flowersoft.theotown.city;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractConnectionList<T> extends AbstractList<T> {
    public List<T> list = new ArrayList();
    public List<T> connectionList = new ArrayList();

    public abstract boolean hasConnection(T t);

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(T t) {
        if (hasConnection(t)) {
            this.connectionList.add(t);
        }
        return this.list.add(t);
    }

    @Override // java.util.AbstractList, java.util.List
    public T remove(int i) {
        T tRemove = this.list.remove(i);
        if (hasConnection(tRemove)) {
            this.connectionList.remove(tRemove);
        }
        return tRemove;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        boolean zRemove = this.list.remove(obj);
        if (hasConnection(obj)) {
            this.connectionList.remove(obj);
        }
        return zRemove;
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i) {
        return this.list.get(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.list.size();
    }

    public int getConnectionSize() {
        return this.connectionList.size();
    }

    public T getConnection(int i) {
        try {
            return this.connectionList.get(i);
        } catch (Exception unused) {
            return null;
        }
    }
}
