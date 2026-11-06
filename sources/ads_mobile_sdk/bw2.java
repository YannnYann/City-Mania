package ads_mobile_sdk;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class bw2<E> extends i<E> implements RandomAccess, Serializable {
    private static final Object[] d;
    private static final bw2<Object> e;
    private E[] b;
    private int c;

    static {
        Object[] objArr = new Object[0];
        d = objArr;
        e = new bw2<>(objArr, 0, false);
    }

    private bw2(E[] eArr, int i, boolean z) {
        super(z);
        this.b = eArr;
        this.c = i;
    }

    @Override // ads_mobile_sdk.yh1.f, ads_mobile_sdk.yh1.e
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public bw2<E> a(int i) {
        if (i >= this.c) {
            return new bw2<>(i == 0 ? d : Arrays.copyOf(this.b, i), this.c, true);
        }
        throw new IllegalArgumentException();
    }

    private static int g(int i) {
        return ((i * 3) / 2) + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, E e2) {
        int i2;
        c();
        if (i >= 0 && i <= (i2 = this.c)) {
            E[] eArr = this.b;
            if (i2 < eArr.length) {
                System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
            } else {
                E[] eArr2 = (E[]) d(g(eArr.length));
                System.arraycopy(this.b, 0, eArr2, 0, i);
                System.arraycopy(this.b, i, eArr2, i + 1, this.c - i);
                this.b = eArr2;
            }
            this.b[i] = e2;
            this.c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(h(i));
    }

    @Override // ads_mobile_sdk.i, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        if (!(obj instanceof bw2)) {
            for (int i = 0; i < size; i++) {
                if (!this.b[i].equals(list.get(i))) {
                    return false;
                }
            }
            return true;
        }
        bw2 bw2Var = (bw2) obj;
        for (int i2 = 0; i2 < size; i2++) {
            if (!this.b[i2].equals(bw2Var.b[i2])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i = 0; i < size; i++) {
            iHashCode = (iHashCode * 31) + this.b[i].hashCode();
        }
        return iHashCode;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        f(i);
        return this.b[i];
    }

    @Override // ads_mobile_sdk.i, java.util.AbstractList, java.util.List
    public E remove(int i) {
        c();
        f(i);
        E[] eArr = this.b;
        E e2 = eArr[i];
        if (i < this.c - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (r2 - i) - 1);
        }
        this.c--;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e2) {
        c();
        int i = this.c;
        E[] eArr = this.b;
        if (i == eArr.length) {
            this.b = (E[]) Arrays.copyOf(this.b, g(eArr.length));
        }
        E[] eArr2 = this.b;
        int i2 = this.c;
        this.c = i2 + 1;
        eArr2[i2] = e2;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i, E e2) {
        c();
        f(i);
        E[] eArr = this.b;
        E e3 = eArr[i];
        eArr[i] = e2;
        ((AbstractList) this).modCount++;
        return e3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.c;
    }

    public void e(int i) {
        E[] eArr = this.b;
        if (i <= eArr.length) {
            return;
        }
        if (eArr.length == 0) {
            this.b = (E[]) new Object[Math.max(i, 10)];
            return;
        }
        int length = eArr.length;
        while (length < i) {
            length = g(length);
        }
        this.b = (E[]) Arrays.copyOf(this.b, length);
    }

    public static <E> bw2<E> e() {
        return (bw2<E>) e;
    }

    private static <E> E[] d(int i) {
        return (E[]) new Object[i];
    }

    private void f(int i) {
        if (i < 0 || i >= this.c) {
            throw new IndexOutOfBoundsException(h(i));
        }
    }

    private String h(int i) {
        return "Index:" + i + ", Size:" + this.c;
    }
}
