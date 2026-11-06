package ads_mobile_sdk;

import ads_mobile_sdk.qr0;
import ads_mobile_sdk.qr0.b;
import com.ironsource.C3522b4;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class bl3<K extends qr0.b<K>> extends AbstractMap<K, Object> {
    private volatile bl3<K>.c d;
    private boolean c = false;
    private Object[] a = null;
    private int b = 0;
    private volatile boolean e = true;

    public void c() {
        if (this.c) {
            return;
        }
        b();
        Object[] objArr = this.a;
        if (objArr != null && this.b > 0) {
            ((a) objArr[0]).d();
            throw null;
        }
        this.c = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        b();
        return this.b;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return this.b == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        dr0.a(obj);
        b();
        return a((qr0.b) null) >= 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        dr0.a(obj);
        b();
        int iA = a((qr0.b) null);
        if (iA >= 0) {
            return ((a) this.a[iA]).getValue();
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ?> map) {
        a();
        if (map instanceof bl3) {
            bl3 bl3Var = (bl3) map;
            a(this.b + bl3Var.b);
            int i = this.b;
            int i2 = bl3Var.b + i;
            for (int i3 = i; i3 < i2; i3++) {
                a aVar = (a) bl3Var.a[i3 - i];
                aVar.d();
                put((qr0.b) null, aVar.getValue());
            }
            return;
        }
        a(map.size() + this.b);
        for (Map.Entry<? extends K, ?> entry : map.entrySet()) {
            dr0.a(entry.getKey());
            put((qr0.b) null, entry.getValue());
        }
    }

    public Object put(K k, Object obj) {
        a();
        Objects.requireNonNull(k);
        boolean z = this.e;
        int i = this.b;
        if (i > 0) {
            ((a) this.a[i - 1]).d();
            int iCompareTo = k.compareTo(null);
            if (iCompareTo < 0) {
                z = false;
            } else if (iCompareTo == 0) {
                ((a) this.a[this.b - 1]).setValue(obj);
                return null;
            }
        }
        a(this.b + 1);
        Object[] objArr = this.a;
        int i2 = this.b;
        this.b = i2 + 1;
        objArr[i2] = new a(k, obj);
        this.e = z;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        a();
        if (this.b != 0) {
            this.a = null;
            this.b = 0;
            this.e = true;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        a();
        b();
        dr0.a(obj);
        int iA = a((qr0.b) null);
        if (iA < 0) {
            return null;
        }
        Object value = ((a) this.a[iA]).getValue();
        Object[] objArr = this.a;
        System.arraycopy(objArr, iA + 1, objArr, iA, (this.b - iA) - 1);
        Object[] objArr2 = this.a;
        int i = this.b - 1;
        this.b = i;
        objArr2[i] = null;
        return value;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        dr0.a(obj);
        return put((qr0.b) null, obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.c || this.e) {
            return;
        }
        synchronized (this) {
            try {
                if (this.e) {
                    return;
                }
                int i = this.b;
                if (i <= 1) {
                    return;
                }
                int i2 = 0;
                Arrays.sort(this.a, 0, i);
                int i3 = 0;
                while (true) {
                    int i4 = this.b;
                    if (i2 < i4) {
                        Object[] objArr = this.a;
                        a aVar = (a) objArr[i2];
                        if (i3 <= 0) {
                            objArr[i3] = aVar;
                            i3++;
                            i2++;
                        } else {
                            ((a) objArr[i3 - 1]).d();
                            aVar.d();
                            throw null;
                        }
                    } else {
                        if (i3 < i4) {
                            this.b = i3;
                            Object[] objArr2 = this.a;
                            Arrays.fill(objArr2, i3, objArr2.length, (Object) null);
                        }
                        this.e = true;
                        return;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private int a(K k) {
        int i = this.b - 1;
        if (i < 0) {
            return -1;
        }
        ((a) this.a[i >>> 1]).d();
        throw null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, Object>> entrySet() {
        b();
        if (this.d == null) {
            this.d = new c();
        }
        return this.d;
    }

    public class a implements Map.Entry<K, Object>, Comparable<bl3<K>.a> {
        private Object a;

        public K d() {
            return null;
        }

        @Override // java.util.Map.Entry
        public /* bridge */ /* synthetic */ Object getKey() {
            d();
            return null;
        }

        public a(K k, Object obj) {
            this.a = obj;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.a;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(bl3<K>.a aVar) {
            d();
            aVar.d();
            throw null;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            bl3.this.a();
            Object obj2 = this.a;
            this.a = obj;
            return obj2;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return a(null, entry.getKey()) && a(this.a, entry.getValue());
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            Object obj = this.a;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public String toString() {
            return "null" + C3522b4.j.b + String.valueOf(this.a);
        }

        private boolean a(Object obj, Object obj2) {
            if (obj == null) {
                return obj2 == null;
            }
            return obj.equals(obj2);
        }
    }

    public class c extends AbstractSet<Map.Entry<K, Object>> {
        private c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, Object>> iterator() {
            bl3.this.b();
            return new b();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return bl3.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = bl3.this.get(entry.getKey());
            Object value = entry.getValue();
            if (obj2 != value) {
                return obj2 != null && obj2.equals(value);
            }
            return true;
        }
    }

    public Map.Entry<K, Object> b(int i) {
        b();
        if (i < this.b) {
            return (a) this.a[i];
        }
        throw new ArrayIndexOutOfBoundsException(i);
    }

    public class b implements Iterator<Map.Entry<K, Object>> {
        private int a;

        private b() {
            this.a = -1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            bl3.this.b();
            return this.a + 1 < bl3.this.b;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, Object> next() {
            bl3.this.b();
            if (hasNext()) {
                Object[] objArr = bl3.this.a;
                int i = this.a + 1;
                this.a = i;
                return (a) objArr[i];
            }
            throw new NoSuchElementException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bl3)) {
            return super.equals(obj);
        }
        bl3 bl3Var = (bl3) obj;
        int size = size();
        if (size != bl3Var.size()) {
            return false;
        }
        Object[] objArr = this.a;
        Object[] objArr2 = bl3Var.a;
        for (int i = 0; i < size; i++) {
            if (!objArr[i].equals(objArr2[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int size = size();
        int iHashCode = 0;
        for (int i = 0; i < size; i++) {
            iHashCode += this.a[i].hashCode();
        }
        return iHashCode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.c) {
            throw new UnsupportedOperationException();
        }
    }

    private void a(int i) {
        Object[] objArr = this.a;
        if (objArr != null && objArr.length != 0) {
            if (i > objArr.length) {
                if (!this.e) {
                    b();
                    if (i <= this.a.length) {
                        return;
                    }
                }
                Object[] objArr2 = this.a;
                int length = objArr2.length;
                int i2 = length + (length >> 1);
                if (i2 - i >= 0) {
                    i = i2;
                }
                if (i - 2147483639 > 0) {
                    i = 2147483639;
                }
                this.a = Arrays.copyOf(objArr2, i);
                return;
            }
            return;
        }
        this.a = new Object[Math.max(16, i)];
    }
}
