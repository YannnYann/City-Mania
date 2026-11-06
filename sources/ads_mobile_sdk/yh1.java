package ads_mobile_sdk;

import java.nio.ByteBuffer;
import java.util.AbstractList;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public abstract class yh1 {
    public static final byte[] a;
    public static final ByteBuffer b;
    public static final my c;

    public interface a {
        int getNumber();
    }

    public interface b {
        boolean a(int i);
    }

    public interface c extends f<Integer> {
        @Override // ads_mobile_sdk.yh1.f, ads_mobile_sdk.yh1.e
        f<Integer> a(int i);

        void b(int i);

        int c(int i);
    }

    public interface e extends f<Long> {
        @Override // 
        f<Long> a(int i);

        void a(long j);
    }

    public interface f<E> extends List<E>, RandomAccess {
        f<E> a(int i);

        void a();

        boolean b();
    }

    public static int a(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static int a(boolean z) {
        return z ? 1231 : 1237;
    }

    public static <T> T a(T t) {
        t.getClass();
        return t;
    }

    public static <T> T a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    static {
        byte[] bArr = new byte[0];
        a = bArr;
        b = ByteBuffer.wrap(bArr);
        c = my.a(bArr);
    }

    public static int a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static class d<T> extends AbstractList<T> {
        private final c a;
        private final a<T> b;

        public interface a<T> {
            T a(int i);
        }

        public d(c cVar, a<T> aVar) {
            this.a = cVar;
            this.b = aVar;
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i) {
            return this.b.a(this.a.c(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.a.size();
        }
    }

    public static int a(byte[] bArr, int i, int i2) {
        int iA = a(i2, bArr, i, i2);
        if (iA == 0) {
            return 1;
        }
        return iA;
    }

    public static int a(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    public static int a() {
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
