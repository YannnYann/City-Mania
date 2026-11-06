package ads_mobile_sdk;

import ads_mobile_sdk.yh1;
import com.google.android.gms.common.api.Api;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class xh1 extends i<Integer> implements yh1.c, RandomAccess, mu2 {
    private static final int[] d;
    private static final xh1 e;
    private int[] b;
    private int c;

    static {
        int[] iArr = new int[0];
        d = iArr;
        e = new xh1(iArr, 0, false);
    }

    private xh1(int[] iArr, int i, boolean z) {
        super(z);
        this.b = iArr;
        this.c = i;
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        c();
        if (i2 >= i) {
            int[] iArr = this.b;
            System.arraycopy(iArr, i2, iArr, i, this.c - i2);
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
        if (!(obj instanceof xh1)) {
            return super.equals(obj);
        }
        xh1 xh1Var = (xh1) obj;
        if (this.c != xh1Var.c) {
            return false;
        }
        int[] iArr = xh1Var.b;
        for (int i = 0; i < this.c; i++) {
            if (this.b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.c; i2++) {
            i = (i * 31) + this.b[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public Integer get(int i) {
        return Integer.valueOf(c(i));
    }

    @Override // ads_mobile_sdk.yh1.c
    public int c(int i) {
        e(i);
        return this.b[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.b[i] == iIntValue) {
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
    public Integer set(int i, Integer num) {
        return Integer.valueOf(b(i, num.intValue()));
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Integer num) {
        a(i, num.intValue());
    }

    @Override // ads_mobile_sdk.yh1.c
    public void b(int i) {
        c();
        int i2 = this.c;
        int[] iArr = this.b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[f(iArr.length)];
            System.arraycopy(this.b, 0, iArr2, 0, this.c);
            this.b = iArr2;
        }
        int[] iArr3 = this.b;
        int i3 = this.c;
        this.c = i3 + 1;
        iArr3[i3] = i;
    }

    private void a(int i, int i2) {
        int i3;
        c();
        if (i >= 0 && i <= (i3 = this.c)) {
            int[] iArr = this.b;
            if (i3 < iArr.length) {
                System.arraycopy(iArr, i, iArr, i + 1, i3 - i);
            } else {
                int[] iArr2 = new int[f(iArr.length)];
                System.arraycopy(this.b, 0, iArr2, 0, i);
                System.arraycopy(this.b, i, iArr2, i + 1, this.c - i);
                this.b = iArr2;
            }
            this.b[i] = i2;
            this.c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(g(i));
    }

    @Override // ads_mobile_sdk.i, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Integer> collection) {
        c();
        yh1.a(collection);
        if (!(collection instanceof xh1)) {
            return super.addAll(collection);
        }
        xh1 xh1Var = (xh1) collection;
        int i = xh1Var.c;
        if (i == 0) {
            return false;
        }
        int i2 = this.c;
        if (Api.BaseClientBuilder.API_PRIORITY_OTHER - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.b;
            if (i3 > iArr.length) {
                this.b = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(xh1Var.b, 0, this.b, this.c, xh1Var.c);
            this.c = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // ads_mobile_sdk.i, java.util.AbstractList, java.util.List
    public Integer remove(int i) {
        c();
        e(i);
        int[] iArr = this.b;
        int i2 = iArr[i];
        if (i < this.c - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (r2 - i) - 1);
        }
        this.c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    public void d(int i) {
        int[] iArr = this.b;
        if (i <= iArr.length) {
            return;
        }
        if (iArr.length == 0) {
            this.b = new int[Math.max(i, 10)];
            return;
        }
        int length = iArr.length;
        while (length < i) {
            length = f(length);
        }
        this.b = Arrays.copyOf(this.b, length);
    }

    private static int f(int i) {
        return Math.max(((i * 3) / 2) + 1, 10);
    }

    private void e(int i) {
        if (i < 0 || i >= this.c) {
            throw new IndexOutOfBoundsException(g(i));
        }
    }

    public static xh1 e() {
        return e;
    }

    private String g(int i) {
        return "Index:" + i + ", Size:" + this.c;
    }

    @Override // ads_mobile_sdk.yh1.f, ads_mobile_sdk.yh1.e
    /* JADX INFO: renamed from: a */
    public yh1.f<Integer> a2(int i) {
        if (i >= this.c) {
            return new xh1(i == 0 ? d : Arrays.copyOf(this.b, i), this.c, true);
        }
        throw new IllegalArgumentException();
    }

    public int b(int i, int i2) {
        c();
        e(i);
        int[] iArr = this.b;
        int i3 = iArr[i];
        iArr[i] = i2;
        return i3;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Integer num) {
        b(num.intValue());
        return true;
    }
}
