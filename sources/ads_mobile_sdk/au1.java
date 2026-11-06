package ads_mobile_sdk;

import ads_mobile_sdk.yh1;
import com.google.android.gms.common.api.Api;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class au1 extends i<Long> implements yh1.e, RandomAccess, mu2 {
    private static final long[] d;
    private static final au1 e;
    private long[] b;
    private int c;

    static {
        long[] jArr = new long[0];
        d = jArr;
        e = new au1(jArr, 0, false);
    }

    private au1(long[] jArr, int i, boolean z) {
        super(z);
        this.b = jArr;
        this.c = i;
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        c();
        if (i2 >= i) {
            long[] jArr = this.b;
            System.arraycopy(jArr, i2, jArr, i, this.c - i2);
            this.c -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // ads_mobile_sdk.i, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof au1)) {
            return super.equals(obj);
        }
        au1 au1Var = (au1) obj;
        if (this.c != au1Var.c) {
            return false;
        }
        long[] jArr = au1Var.b;
        for (int i = 0; i < this.c; i++) {
            if (this.b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iA = 1;
        for (int i = 0; i < this.c; i++) {
            iA = (iA * 31) + yh1.a(this.b[i]);
        }
        return iA;
    }

    @Override // java.util.AbstractList, java.util.List
    public Long get(int i) {
        return Long.valueOf(f(i));
    }

    public long f(int i) {
        e(i);
        return this.b[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.b[i] == jLongValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.c;
    }

    @Override // java.util.AbstractList, java.util.List
    public Long set(int i, Long l) {
        return Long.valueOf(b(i, l.longValue()));
    }

    public long b(int i, long j) {
        c();
        e(i);
        long[] jArr = this.b;
        long j2 = jArr[i];
        jArr[i] = j;
        return j2;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Long l) {
        a(i, l.longValue());
    }

    private void a(int i, long j) {
        int i2;
        c();
        if (i >= 0 && i <= (i2 = this.c)) {
            long[] jArr = this.b;
            if (i2 < jArr.length) {
                System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
            } else {
                long[] jArr2 = new long[g(jArr.length)];
                System.arraycopy(this.b, 0, jArr2, 0, i);
                System.arraycopy(this.b, i, jArr2, i + 1, this.c - i);
                this.b = jArr2;
            }
            this.b[i] = j;
            this.c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(h(i));
    }

    @Override // ads_mobile_sdk.i, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Long> collection) {
        c();
        yh1.a(collection);
        if (!(collection instanceof au1)) {
            return super.addAll(collection);
        }
        au1 au1Var = (au1) collection;
        int i = au1Var.c;
        if (i == 0) {
            return false;
        }
        int i2 = this.c;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.b;
            if (i3 > jArr.length) {
                this.b = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(au1Var.b, 0, this.b, this.c, au1Var.c);
            this.c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // ads_mobile_sdk.i, java.util.AbstractList, java.util.List
    public Long remove(int i) {
        c();
        e(i);
        long[] jArr = this.b;
        long j = jArr[i];
        if (i < this.c - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (r3 - i) - 1);
        }
        this.c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    public void d(int i) {
        long[] jArr = this.b;
        if (i <= jArr.length) {
            return;
        }
        if (jArr.length == 0) {
            this.b = new long[Math.max(i, 10)];
            return;
        }
        int length = jArr.length;
        while (length < i) {
            length = g(length);
        }
        this.b = Arrays.copyOf(this.b, length);
    }

    private static int g(int i) {
        return Math.max(((i * 3) / 2) + 1, 10);
    }

    private void e(int i) {
        if (i < 0 || i >= this.c) {
            throw new IndexOutOfBoundsException(h(i));
        }
    }

    public static au1 e() {
        return e;
    }

    private String h(int i) {
        return "Index:" + i + ", Size:" + this.c;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Long l) {
        a(l.longValue());
        return true;
    }

    @Override // ads_mobile_sdk.yh1.e
    public void a(long j) {
        c();
        int i = this.c;
        long[] jArr = this.b;
        if (i == jArr.length) {
            long[] jArr2 = new long[g(jArr.length)];
            System.arraycopy(this.b, 0, jArr2, 0, this.c);
            this.b = jArr2;
        }
        long[] jArr3 = this.b;
        int i2 = this.c;
        this.c = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // ads_mobile_sdk.yh1.f, ads_mobile_sdk.yh1.e
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public yh1.f<Long> a2(int i) {
        if (i >= this.c) {
            return new au1(i == 0 ? d : Arrays.copyOf(this.b, i), this.c, true);
        }
        throw new IllegalArgumentException();
    }
}
