package ads_mobile_sdk;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
abstract class yv3<T, B> {
    private static volatile int a = 100;

    public abstract B a();

    public abstract B a(Object obj);

    public abstract T a(T t, T t2);

    public abstract void a(B b, int i, int i2);

    public abstract void a(B b, int i, long j);

    public abstract void a(B b, int i, du duVar);

    public abstract void a(B b, int i, T t);

    public abstract void a(T t, py pyVar) throws IOException;

    public abstract boolean a(ny nyVar);

    public abstract T b(Object obj);

    public abstract void b(B b, int i, long j);

    public abstract void b(T t, py pyVar) throws IOException;

    public abstract void b(Object obj, B b);

    public abstract int c(T t);

    public abstract void c(Object obj, T t);

    public abstract int d(T t);

    public abstract void e(Object obj);

    public abstract T f(B b);

    public final boolean b(B b, ny nyVar, int i) throws IOException {
        int iC = nyVar.c();
        int iA = u24.a(iC);
        int iB = u24.b(iC);
        if (iB == 0) {
            b(b, iA, nyVar.l());
            return true;
        }
        if (iB == 1) {
            a(b, iA, nyVar.i());
            return true;
        }
        if (iB == 2) {
            a((Object) b, iA, nyVar.e());
            return true;
        }
        if (iB != 3) {
            if (iB == 4) {
                if (i != 0) {
                    return false;
                }
                throw np1.b();
            }
            if (iB != 5) {
                throw np1.e();
            }
            a((Object) b, iA, nyVar.h());
            return true;
        }
        B bA = a();
        int iA2 = u24.a(iA, 4);
        int i2 = i + 1;
        if (i2 < a) {
            a(bA, nyVar, i2);
            if (iA2 == nyVar.c()) {
                a(b, iA, f(bA));
                return true;
            }
            throw np1.b();
        }
        throw np1.i();
    }

    private final void a(B b, ny nyVar, int i) throws IOException {
        while (nyVar.a() != Integer.MAX_VALUE && b(b, nyVar, i)) {
        }
    }
}
