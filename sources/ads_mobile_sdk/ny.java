package ads_mobile_sdk;

import ads_mobile_sdk.u24;
import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class ny {
    private final my a;
    private int b;
    private int c;
    private int d = 0;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[u24.a.values().length];
            a = iArr;
            try {
                iArr[u24.a.j.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[u24.a.n.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[u24.a.c.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[u24.a.p.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[u24.a.i.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[u24.a.h.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[u24.a.d.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[u24.a.g.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[u24.a.e.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[u24.a.m.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[u24.a.q.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[u24.a.r.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[u24.a.s.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[u24.a.t.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[u24.a.k.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[u24.a.o.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                a[u24.a.f.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public static ny a(my myVar) {
        Object obj = myVar.e;
        if (obj != null) {
            return (ny) obj;
        }
        return new ny(myVar);
    }

    private ny(my myVar) {
        my myVar2 = (my) yh1.a(myVar, "input");
        this.a = myVar2;
        myVar2.e = this;
    }

    public int b() {
        return this.a.d();
    }

    public int c() {
        return this.b;
    }

    public boolean u() throws IOException {
        int i;
        if (this.a.f() || (i = this.b) == this.c) {
            return false;
        }
        return this.a.g(i);
    }

    public double f() throws IOException {
        b(1);
        return this.a.j();
    }

    public float j() throws IOException {
        b(5);
        return this.a.n();
    }

    public long t() throws IOException {
        b(0);
        return this.a.z();
    }

    public int a() throws IOException {
        int i = this.d;
        if (i != 0) {
            this.b = i;
            this.d = 0;
        } else {
            this.b = this.a.x();
        }
        int i2 = this.b;
        return (i2 == 0 || i2 == this.c) ? Api.BaseClientBuilder.API_PRIORITY_OTHER : u24.a(i2);
    }

    public long l() throws IOException {
        b(0);
        return this.a.p();
    }

    public int k() throws IOException {
        b(0);
        return this.a.o();
    }

    public long i() throws IOException {
        b(1);
        return this.a.m();
    }

    public int h() throws IOException {
        b(5);
        return this.a.l();
    }

    public String q() throws IOException {
        b(2);
        return this.a.v();
    }

    public String r() throws IOException {
        b(2);
        return this.a.w();
    }

    private <T> void d(T t, la3<T> la3Var, er0 er0Var) throws IOException {
        int iG = this.a.g();
        la3Var.a(t, this, er0Var);
        this.a.d(iG);
    }

    public du e() throws IOException {
        b(2);
        return this.a.i();
    }

    public int s() throws IOException {
        b(0);
        return this.a.y();
    }

    public int g() throws IOException {
        b(0);
        return this.a.k();
    }

    public int m() throws IOException {
        b(5);
        return this.a.r();
    }

    public <T> void c(T t, la3<T> la3Var, er0 er0Var) throws IOException {
        b(2);
        d(t, la3Var, er0Var);
    }

    public long n() throws IOException {
        b(1);
        return this.a.s();
    }

    public int o() throws IOException {
        b(0);
        return this.a.t();
    }

    private <T> void b(T t, la3<T> la3Var, er0 er0Var) throws IOException {
        this.a.a();
        int i = this.c;
        this.c = u24.a(u24.a(this.b), 4);
        this.a.b++;
        try {
            la3Var.a(t, this, er0Var);
            if (this.b == this.c) {
            } else {
                throw np1.h();
            }
        } finally {
            my myVar = this.a;
            myVar.b--;
            this.c = i;
        }
    }

    public long p() throws IOException {
        b(0);
        return this.a.u();
    }

    public <T> void a(T t, la3<T> la3Var, er0 er0Var) throws IOException {
        b(3);
        b(t, la3Var, er0Var);
    }

    public boolean d() throws IOException {
        b(0);
        return this.a.h();
    }

    public void c(List<Double> list) throws IOException {
        int iX;
        int iX2;
        if (list instanceof co0) {
            co0 co0Var = (co0) list;
            int iB = u24.b(this.b);
            if (iB == 1) {
                do {
                    co0Var.a(this.a.j());
                    if (this.a.f()) {
                        return;
                    } else {
                        iX2 = this.a.x();
                    }
                } while (iX2 == this.b);
                this.d = iX2;
                return;
            }
            if (iB == 2) {
                int iY = this.a.y();
                d(iY);
                int iE = this.a.e() + iY;
                while (this.a.e() < iE) {
                    co0Var.a(this.a.j());
                }
                a(iE);
                return;
            }
            throw np1.e();
        }
        int iB2 = u24.b(this.b);
        if (iB2 == 1) {
            do {
                list.add(Double.valueOf(this.a.j()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        if (iB2 == 2) {
            int iY2 = this.a.y();
            d(iY2);
            int iE2 = this.a.e() + iY2;
            while (this.a.e() < iE2) {
                list.add(Double.valueOf(this.a.j()));
            }
            a(iE2);
            return;
        }
        throw np1.e();
    }

    public void q(List<Long> list) throws IOException {
        int iX;
        int iX2;
        if (list instanceof au1) {
            au1 au1Var = (au1) list;
            int iB = u24.b(this.b);
            if (iB == 0) {
                do {
                    au1Var.a(this.a.z());
                    if (this.a.f()) {
                        return;
                    } else {
                        iX2 = this.a.x();
                    }
                } while (iX2 == this.b);
                this.d = iX2;
                return;
            }
            if (iB == 2) {
                int iE = this.a.e() + this.a.y();
                while (this.a.e() < iE) {
                    au1Var.a(this.a.z());
                }
                a(iE);
                return;
            }
            throw np1.e();
        }
        int iB2 = u24.b(this.b);
        if (iB2 == 0) {
            do {
                list.add(Long.valueOf(this.a.z()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        if (iB2 == 2) {
            int iE2 = this.a.e() + this.a.y();
            while (this.a.e() < iE2) {
                list.add(Long.valueOf(this.a.z()));
            }
            a(iE2);
            return;
        }
        throw np1.e();
    }

    public void i(List<Long> list) throws IOException {
        int iX;
        int iX2;
        if (list instanceof au1) {
            au1 au1Var = (au1) list;
            int iB = u24.b(this.b);
            if (iB == 0) {
                do {
                    au1Var.a(this.a.p());
                    if (this.a.f()) {
                        return;
                    } else {
                        iX2 = this.a.x();
                    }
                } while (iX2 == this.b);
                this.d = iX2;
                return;
            }
            if (iB == 2) {
                int iE = this.a.e() + this.a.y();
                while (this.a.e() < iE) {
                    au1Var.a(this.a.p());
                }
                a(iE);
                return;
            }
            throw np1.e();
        }
        int iB2 = u24.b(this.b);
        if (iB2 == 0) {
            do {
                list.add(Long.valueOf(this.a.p()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        if (iB2 == 2) {
            int iE2 = this.a.e() + this.a.y();
            while (this.a.e() < iE2) {
                list.add(Long.valueOf(this.a.p()));
            }
            a(iE2);
            return;
        }
        throw np1.e();
    }

    public void g(List<Float> list) throws IOException {
        int iX;
        int iX2;
        if (list instanceof kx0) {
            kx0 kx0Var = (kx0) list;
            int iB = u24.b(this.b);
            if (iB == 2) {
                int iY = this.a.y();
                c(iY);
                int iE = this.a.e() + iY;
                while (this.a.e() < iE) {
                    kx0Var.a(this.a.n());
                }
                a(iE);
                return;
            }
            if (iB == 5) {
                do {
                    kx0Var.a(this.a.n());
                    if (this.a.f()) {
                        return;
                    } else {
                        iX2 = this.a.x();
                    }
                } while (iX2 == this.b);
                this.d = iX2;
                return;
            }
            throw np1.e();
        }
        int iB2 = u24.b(this.b);
        if (iB2 == 2) {
            int iY2 = this.a.y();
            c(iY2);
            int iE2 = this.a.e() + iY2;
            while (this.a.e() < iE2) {
                list.add(Float.valueOf(this.a.n()));
            }
            a(iE2);
            return;
        }
        if (iB2 == 5) {
            do {
                list.add(Float.valueOf(this.a.n()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        throw np1.e();
    }

    public void h(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (list instanceof xh1) {
            xh1 xh1Var = (xh1) list;
            int iB = u24.b(this.b);
            if (iB == 0) {
                do {
                    xh1Var.b(this.a.o());
                    if (this.a.f()) {
                        return;
                    } else {
                        iX2 = this.a.x();
                    }
                } while (iX2 == this.b);
                this.d = iX2;
                return;
            }
            if (iB == 2) {
                int iE = this.a.e() + this.a.y();
                while (this.a.e() < iE) {
                    xh1Var.b(this.a.o());
                }
                a(iE);
                return;
            }
            throw np1.e();
        }
        int iB2 = u24.b(this.b);
        if (iB2 == 0) {
            do {
                list.add(Integer.valueOf(this.a.o()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        if (iB2 == 2) {
            int iE2 = this.a.e() + this.a.y();
            while (this.a.e() < iE2) {
                list.add(Integer.valueOf(this.a.o()));
            }
            a(iE2);
            return;
        }
        throw np1.e();
    }

    public void f(List<Long> list) throws IOException {
        int iX;
        int iX2;
        if (list instanceof au1) {
            au1 au1Var = (au1) list;
            int iB = u24.b(this.b);
            if (iB == 1) {
                do {
                    au1Var.a(this.a.m());
                    if (this.a.f()) {
                        return;
                    } else {
                        iX2 = this.a.x();
                    }
                } while (iX2 == this.b);
                this.d = iX2;
                return;
            }
            if (iB == 2) {
                int iY = this.a.y();
                d(iY);
                int iE = this.a.e() + iY;
                while (this.a.e() < iE) {
                    au1Var.a(this.a.m());
                }
                a(iE);
                return;
            }
            throw np1.e();
        }
        int iB2 = u24.b(this.b);
        if (iB2 == 1) {
            do {
                list.add(Long.valueOf(this.a.m()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        if (iB2 == 2) {
            int iY2 = this.a.y();
            d(iY2);
            int iE2 = this.a.e() + iY2;
            while (this.a.e() < iE2) {
                list.add(Long.valueOf(this.a.m()));
            }
            a(iE2);
            return;
        }
        throw np1.e();
    }

    public void e(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (list instanceof xh1) {
            xh1 xh1Var = (xh1) list;
            int iB = u24.b(this.b);
            if (iB == 2) {
                int iY = this.a.y();
                c(iY);
                int iE = this.a.e() + iY;
                while (this.a.e() < iE) {
                    xh1Var.b(this.a.l());
                }
                a(iE);
                return;
            }
            if (iB == 5) {
                do {
                    xh1Var.b(this.a.l());
                    if (this.a.f()) {
                        return;
                    } else {
                        iX2 = this.a.x();
                    }
                } while (iX2 == this.b);
                this.d = iX2;
                return;
            }
            throw np1.e();
        }
        int iB2 = u24.b(this.b);
        if (iB2 == 2) {
            int iY2 = this.a.y();
            c(iY2);
            int iE2 = this.a.e() + iY2;
            while (this.a.e() < iE2) {
                list.add(Integer.valueOf(this.a.l()));
            }
            a(iE2);
            return;
        }
        if (iB2 == 5) {
            do {
                list.add(Integer.valueOf(this.a.l()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        throw np1.e();
    }

    public void n(List<String> list) throws IOException {
        a(list, false);
    }

    public void a(List<Boolean> list) throws IOException {
        int iX;
        int iX2;
        if (list instanceof ct) {
            ct ctVar = (ct) list;
            int iB = u24.b(this.b);
            if (iB == 0) {
                do {
                    ctVar.a(this.a.h());
                    if (this.a.f()) {
                        return;
                    } else {
                        iX2 = this.a.x();
                    }
                } while (iX2 == this.b);
                this.d = iX2;
                return;
            }
            if (iB == 2) {
                int iE = this.a.e() + this.a.y();
                while (this.a.e() < iE) {
                    ctVar.a(this.a.h());
                }
                a(iE);
                return;
            }
            throw np1.e();
        }
        int iB2 = u24.b(this.b);
        if (iB2 == 0) {
            do {
                list.add(Boolean.valueOf(this.a.h()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        if (iB2 == 2) {
            int iE2 = this.a.e() + this.a.y();
            while (this.a.e() < iE2) {
                list.add(Boolean.valueOf(this.a.h()));
            }
            a(iE2);
            return;
        }
        throw np1.e();
    }

    public void o(List<String> list) throws IOException {
        a(list, true);
    }

    public void j(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (list instanceof xh1) {
            xh1 xh1Var = (xh1) list;
            int iB = u24.b(this.b);
            if (iB == 2) {
                int iY = this.a.y();
                c(iY);
                int iE = this.a.e() + iY;
                while (this.a.e() < iE) {
                    xh1Var.b(this.a.r());
                }
                a(iE);
                return;
            }
            if (iB == 5) {
                do {
                    xh1Var.b(this.a.r());
                    if (this.a.f()) {
                        return;
                    } else {
                        iX2 = this.a.x();
                    }
                } while (iX2 == this.b);
                this.d = iX2;
                return;
            }
            throw np1.e();
        }
        int iB2 = u24.b(this.b);
        if (iB2 == 2) {
            int iY2 = this.a.y();
            c(iY2);
            int iE2 = this.a.e() + iY2;
            while (this.a.e() < iE2) {
                list.add(Integer.valueOf(this.a.r()));
            }
            a(iE2);
            return;
        }
        if (iB2 == 5) {
            do {
                list.add(Integer.valueOf(this.a.r()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        throw np1.e();
    }

    public void b(List<du> list) throws IOException {
        int iX;
        if (u24.b(this.b) == 2) {
            do {
                list.add(e());
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        throw np1.e();
    }

    public void p(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (list instanceof xh1) {
            xh1 xh1Var = (xh1) list;
            int iB = u24.b(this.b);
            if (iB == 0) {
                do {
                    xh1Var.b(this.a.y());
                    if (this.a.f()) {
                        return;
                    } else {
                        iX2 = this.a.x();
                    }
                } while (iX2 == this.b);
                this.d = iX2;
                return;
            }
            if (iB == 2) {
                int iE = this.a.e() + this.a.y();
                while (this.a.e() < iE) {
                    xh1Var.b(this.a.y());
                }
                a(iE);
                return;
            }
            throw np1.e();
        }
        int iB2 = u24.b(this.b);
        if (iB2 == 0) {
            do {
                list.add(Integer.valueOf(this.a.y()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        if (iB2 == 2) {
            int iE2 = this.a.e() + this.a.y();
            while (this.a.e() < iE2) {
                list.add(Integer.valueOf(this.a.y()));
            }
            a(iE2);
            return;
        }
        throw np1.e();
    }

    public void k(List<Long> list) throws IOException {
        int iX;
        int iX2;
        if (list instanceof au1) {
            au1 au1Var = (au1) list;
            int iB = u24.b(this.b);
            if (iB == 1) {
                do {
                    au1Var.a(this.a.s());
                    if (this.a.f()) {
                        return;
                    } else {
                        iX2 = this.a.x();
                    }
                } while (iX2 == this.b);
                this.d = iX2;
                return;
            }
            if (iB == 2) {
                int iY = this.a.y();
                d(iY);
                int iE = this.a.e() + iY;
                while (this.a.e() < iE) {
                    au1Var.a(this.a.s());
                }
                a(iE);
                return;
            }
            throw np1.e();
        }
        int iB2 = u24.b(this.b);
        if (iB2 == 1) {
            do {
                list.add(Long.valueOf(this.a.s()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        if (iB2 == 2) {
            int iY2 = this.a.y();
            d(iY2);
            int iE2 = this.a.e() + iY2;
            while (this.a.e() < iE2) {
                list.add(Long.valueOf(this.a.s()));
            }
            a(iE2);
            return;
        }
        throw np1.e();
    }

    public void l(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (list instanceof xh1) {
            xh1 xh1Var = (xh1) list;
            int iB = u24.b(this.b);
            if (iB == 0) {
                do {
                    xh1Var.b(this.a.t());
                    if (this.a.f()) {
                        return;
                    } else {
                        iX2 = this.a.x();
                    }
                } while (iX2 == this.b);
                this.d = iX2;
                return;
            }
            if (iB == 2) {
                int iE = this.a.e() + this.a.y();
                while (this.a.e() < iE) {
                    xh1Var.b(this.a.t());
                }
                a(iE);
                return;
            }
            throw np1.e();
        }
        int iB2 = u24.b(this.b);
        if (iB2 == 0) {
            do {
                list.add(Integer.valueOf(this.a.t()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        if (iB2 == 2) {
            int iE2 = this.a.e() + this.a.y();
            while (this.a.e() < iE2) {
                list.add(Integer.valueOf(this.a.t()));
            }
            a(iE2);
            return;
        }
        throw np1.e();
    }

    public void d(List<Integer> list) throws IOException {
        int iX;
        int iX2;
        if (list instanceof xh1) {
            xh1 xh1Var = (xh1) list;
            int iB = u24.b(this.b);
            if (iB == 0) {
                do {
                    xh1Var.b(this.a.k());
                    if (this.a.f()) {
                        return;
                    } else {
                        iX2 = this.a.x();
                    }
                } while (iX2 == this.b);
                this.d = iX2;
                return;
            }
            if (iB == 2) {
                int iE = this.a.e() + this.a.y();
                while (this.a.e() < iE) {
                    xh1Var.b(this.a.k());
                }
                a(iE);
                return;
            }
            throw np1.e();
        }
        int iB2 = u24.b(this.b);
        if (iB2 == 0) {
            do {
                list.add(Integer.valueOf(this.a.k()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        if (iB2 == 2) {
            int iE2 = this.a.e() + this.a.y();
            while (this.a.e() < iE2) {
                list.add(Integer.valueOf(this.a.k()));
            }
            a(iE2);
            return;
        }
        throw np1.e();
    }

    private <T> T a(la3<T> la3Var, er0 er0Var) throws IOException {
        T tA = la3Var.a();
        b(tA, la3Var, er0Var);
        la3Var.c(tA);
        return tA;
    }

    private <T> T b(la3<T> la3Var, er0 er0Var) throws IOException {
        T tA = la3Var.a();
        d(tA, la3Var, er0Var);
        la3Var.c(tA);
        return tA;
    }

    public void m(List<Long> list) throws IOException {
        int iX;
        int iX2;
        if (list instanceof au1) {
            au1 au1Var = (au1) list;
            int iB = u24.b(this.b);
            if (iB == 0) {
                do {
                    au1Var.a(this.a.u());
                    if (this.a.f()) {
                        return;
                    } else {
                        iX2 = this.a.x();
                    }
                } while (iX2 == this.b);
                this.d = iX2;
                return;
            }
            if (iB == 2) {
                int iE = this.a.e() + this.a.y();
                while (this.a.e() < iE) {
                    au1Var.a(this.a.u());
                }
                a(iE);
                return;
            }
            throw np1.e();
        }
        int iB2 = u24.b(this.b);
        if (iB2 == 0) {
            do {
                list.add(Long.valueOf(this.a.u()));
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        if (iB2 == 2) {
            int iE2 = this.a.e() + this.a.y();
            while (this.a.e() < iE2) {
                list.add(Long.valueOf(this.a.u()));
            }
            a(iE2);
            return;
        }
        throw np1.e();
    }

    private void c(int i) throws IOException {
        if ((i & 3) != 0) {
            throw np1.h();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public <T> void a(List<T> list, la3<T> la3Var, er0 er0Var) throws IOException {
        int iX;
        if (u24.b(this.b) == 3) {
            int i = this.b;
            do {
                list.add(a(la3Var, er0Var));
                if (this.a.f() || this.d != 0) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == i);
            this.d = iX;
            return;
        }
        throw np1.e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void b(List<T> list, la3<T> la3Var, er0 er0Var) throws IOException {
        int iX;
        if (u24.b(this.b) == 2) {
            int i = this.b;
            do {
                list.add(b(la3Var, er0Var));
                if (this.a.f() || this.d != 0) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == i);
            this.d = iX;
            return;
        }
        throw np1.e();
    }

    private void b(int i) throws IOException {
        if (u24.b(this.b) != i) {
            throw np1.e();
        }
    }

    private void d(int i) throws IOException {
        if ((i & 7) != 0) {
            throw np1.h();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0060, code lost:
    
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0069, code lost:
    
        if (r7.a.c() != 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006b, code lost:
    
        r7.a.c(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0070, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0075, code lost:
    
        throw ads_mobile_sdk.np1.l();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public <K, V> void a(java.util.Map<K, V> r8, ads_mobile_sdk.gu1.a<K, V> r9, ads_mobile_sdk.er0 r10) throws java.io.IOException {
        /*
            r7 = this;
            r0 = 2
            r7.b(r0)
            ads_mobile_sdk.my r1 = r7.a
            int r1 = r1.y()
            ads_mobile_sdk.my r2 = r7.a
            int r1 = r2.e(r1)
            K r2 = r9.b
            V r3 = r9.d
        L14:
            int r4 = r7.a()     // Catch: java.lang.Throwable -> L3a
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L60
            ads_mobile_sdk.my r5 = r7.a     // Catch: java.lang.Throwable -> L3a
            boolean r5 = r5.f()     // Catch: java.lang.Throwable -> L3a
            if (r5 == 0) goto L26
            goto L60
        L26:
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L4b
            if (r4 == r0) goto L3e
            boolean r4 = r7.u()     // Catch: java.lang.Throwable -> L3a ads_mobile_sdk.np1.a -> L3c
            if (r4 == 0) goto L34
            goto L14
        L34:
            ads_mobile_sdk.np1 r4 = new ads_mobile_sdk.np1     // Catch: java.lang.Throwable -> L3a ads_mobile_sdk.np1.a -> L3c
            r4.<init>(r6)     // Catch: java.lang.Throwable -> L3a ads_mobile_sdk.np1.a -> L3c
            throw r4     // Catch: java.lang.Throwable -> L3a ads_mobile_sdk.np1.a -> L3c
        L3a:
            r8 = move-exception
            goto L76
        L3c:
            r4 = move-exception
            goto L53
        L3e:
            ads_mobile_sdk.u24$a r4 = r9.c     // Catch: java.lang.Throwable -> L3a ads_mobile_sdk.np1.a -> L3c
            V r5 = r9.d     // Catch: java.lang.Throwable -> L3a ads_mobile_sdk.np1.a -> L3c
            java.lang.Class r5 = r5.getClass()     // Catch: java.lang.Throwable -> L3a ads_mobile_sdk.np1.a -> L3c
            java.lang.Object r3 = r7.a(r4, r5, r10)     // Catch: java.lang.Throwable -> L3a ads_mobile_sdk.np1.a -> L3c
            goto L14
        L4b:
            ads_mobile_sdk.u24$a r4 = r9.a     // Catch: java.lang.Throwable -> L3a ads_mobile_sdk.np1.a -> L3c
            r5 = 0
            java.lang.Object r2 = r7.a(r4, r5, r5)     // Catch: java.lang.Throwable -> L3a ads_mobile_sdk.np1.a -> L3c
            goto L14
        L53:
            boolean r5 = r7.u()     // Catch: java.lang.Throwable -> L3a
            if (r5 == 0) goto L5a
            goto L14
        L5a:
            ads_mobile_sdk.np1 r8 = new ads_mobile_sdk.np1     // Catch: java.lang.Throwable -> L3a
            r8.<init>(r6, r4)     // Catch: java.lang.Throwable -> L3a
            throw r8     // Catch: java.lang.Throwable -> L3a
        L60:
            r8.put(r2, r3)     // Catch: java.lang.Throwable -> L3a
            ads_mobile_sdk.my r8 = r7.a     // Catch: java.lang.Throwable -> L3a
            int r8 = r8.c()     // Catch: java.lang.Throwable -> L3a
            if (r8 != 0) goto L71
            ads_mobile_sdk.my r8 = r7.a
            r8.c(r1)
            return
        L71:
            ads_mobile_sdk.np1 r8 = ads_mobile_sdk.np1.l()     // Catch: java.lang.Throwable -> L3a
            throw r8     // Catch: java.lang.Throwable -> L3a
        L76:
            ads_mobile_sdk.my r9 = r7.a
            r9.c(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ny.a(java.util.Map, ads_mobile_sdk.gu1$a, ads_mobile_sdk.er0):void");
    }

    public <T> T a(Class<T> cls, er0 er0Var) throws IOException {
        b(2);
        return (T) b(aw2.a().b(cls), er0Var);
    }

    public void a(List<String> list, boolean z) throws IOException {
        int iX;
        if (u24.b(this.b) == 2) {
            do {
                list.add(z ? r() : q());
                if (this.a.f()) {
                    return;
                } else {
                    iX = this.a.x();
                }
            } while (iX == this.b);
            this.d = iX;
            return;
        }
        throw np1.e();
    }

    private void a(int i) throws IOException {
        if (this.a.e() != i) {
            throw np1.l();
        }
    }

    private Object a(u24.a aVar, Class<?> cls, er0 er0Var) throws IOException {
        switch (a.a[aVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(d());
            case 2:
                return e();
            case 3:
                return Double.valueOf(f());
            case 4:
                return Integer.valueOf(g());
            case 5:
                return Integer.valueOf(h());
            case 6:
                return Long.valueOf(i());
            case 7:
                return Float.valueOf(j());
            case 8:
                return Integer.valueOf(k());
            case 9:
                return Long.valueOf(l());
            case 10:
                return a(cls, er0Var);
            case 11:
                return Integer.valueOf(m());
            case 12:
                return Long.valueOf(n());
            case 13:
                return Integer.valueOf(o());
            case 14:
                return Long.valueOf(p());
            case 15:
                return r();
            case 16:
                return Integer.valueOf(s());
            case 17:
                return Long.valueOf(t());
            default:
                throw new IllegalArgumentException("unsupported field type.");
        }
    }
}
