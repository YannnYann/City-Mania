package ads_mobile_sdk;

import ads_mobile_sdk.ao;
import ads_mobile_sdk.qr0;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class xw1<T> implements la3<T> {
    private final tw1 a;
    private final yv3<?, ?> b;
    private final boolean c;
    private final fr0<?> d;

    private xw1(yv3<?, ?> yv3Var, fr0<?> fr0Var, tw1 tw1Var) {
        this.b = yv3Var;
        this.c = fr0Var.a(tw1Var);
        this.d = fr0Var;
        this.a = tw1Var;
    }

    @Override // ads_mobile_sdk.la3
    public boolean b(T t, T t2) {
        if (!this.b.b(t).equals(this.b.b(t2))) {
            return false;
        }
        if (this.c) {
            return this.d.a(t).equals(this.d.a(t2));
        }
        return true;
    }

    @Override // ads_mobile_sdk.la3
    public int d(T t) {
        int iHashCode = this.b.b(t).hashCode();
        return this.c ? (iHashCode * 53) + this.d.a(t).hashCode() : iHashCode;
    }

    @Override // ads_mobile_sdk.la3
    public void c(T t) {
        this.b.e(t);
        this.d.c(t);
    }

    private <UT, UB> int a(yv3<UT, UB> yv3Var, T t) {
        return yv3Var.d(yv3Var.b(t));
    }

    @Override // ads_mobile_sdk.la3
    public int b(T t) {
        int iA = a(this.b, (Object) t);
        return this.c ? iA + this.d.a(t).a() : iA;
    }

    @Override // ads_mobile_sdk.la3
    public final boolean a(T t) {
        return this.d.a(t).d();
    }

    @Override // ads_mobile_sdk.la3
    public void a(T t, ny nyVar, er0 er0Var) throws Throwable {
        a(this.b, this.d, t, nyVar, er0Var);
    }

    @Override // ads_mobile_sdk.la3
    public void a(T t, T t2) {
        ma3.a(this.b, t, t2);
        if (this.c) {
            ma3.a(this.d, t, t2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ads_mobile_sdk.la3
    public void a(T t, byte[] bArr, int i, int i2, ao.a aVar) throws IOException {
        vz0 vz0Var = (vz0) t;
        if (vz0Var.b == zv3.b()) {
            vz0Var.b = zv3.f();
        }
        dr0.a(t);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <UT, UB, ET extends qr0.b<ET>> void a(yv3<UT, UB> yv3Var, fr0<ET> fr0Var, T t, ny nyVar, er0 er0Var) throws Throwable {
        yv3<UT, UB> yv3Var2;
        UB ubA = yv3Var.a(t);
        Object objB = fr0Var.b(t);
        while (nyVar.a() != Integer.MAX_VALUE) {
            try {
                yv3Var2 = yv3Var;
                fr0<ET> fr0Var2 = fr0Var;
                ny nyVar2 = nyVar;
                er0 er0Var2 = er0Var;
                try {
                    if (!a(nyVar2, er0Var2, fr0Var2, objB, yv3Var2, ubA)) {
                        yv3Var2.b(t, ubA);
                        return;
                    }
                    nyVar = nyVar2;
                    er0Var = er0Var2;
                    fr0Var = fr0Var2;
                    yv3Var = yv3Var2;
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    yv3Var2.b(t, ubA);
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
                yv3Var2 = yv3Var;
            }
        }
        yv3Var.b(t, ubA);
    }

    @Override // ads_mobile_sdk.la3
    public T a() {
        tw1 tw1Var = this.a;
        if (tw1Var instanceof vz0) {
            return (T) ((vz0) tw1Var).t();
        }
        return (T) tw1Var.newBuilderForType().a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <UT, UB, ET extends qr0.b<ET>> boolean a(ny nyVar, er0 er0Var, fr0<ET> fr0Var, qr0<ET> qr0Var, yv3<UT, UB> yv3Var, UB ub) throws IOException {
        int iC = nyVar.c();
        int iS = 0;
        if (iC != u24.a) {
            if (u24.b(iC) == 2) {
                Object objA = fr0Var.a(er0Var, this.a, u24.a(iC));
                if (objA != null) {
                    fr0Var.a(nyVar, objA, er0Var, qr0Var);
                    return true;
                }
                return yv3Var.b(ub, nyVar, 0);
            }
            return nyVar.u();
        }
        Object objA2 = null;
        du duVarE = null;
        while (nyVar.a() != Integer.MAX_VALUE) {
            int iC2 = nyVar.c();
            if (iC2 == u24.c) {
                iS = nyVar.s();
                objA2 = fr0Var.a(er0Var, this.a, iS);
            } else if (iC2 != u24.d) {
                if (iC2 == u24.b || !nyVar.u()) {
                    break;
                }
            } else if (objA2 != null) {
                fr0Var.a(nyVar, objA2, er0Var, qr0Var);
            } else {
                duVarE = nyVar.e();
            }
        }
        if (nyVar.c() != u24.b) {
            throw np1.b();
        }
        if (duVarE != null) {
            if (objA2 != null) {
                int iB = nyVar.b() - 1;
                if (iB >= 0) {
                    my myVarG = duVarE.g();
                    myVarG.f(iB);
                    fr0Var.a(myVarG, objA2, er0Var, qr0Var);
                } else {
                    throw np1.i();
                }
            } else {
                yv3Var.a(ub, iS, duVarE);
            }
        }
        return true;
    }

    @Override // ads_mobile_sdk.la3
    public void a(T t, py pyVar) throws IOException {
        Iterator itE = this.d.a(t).e();
        if (!itE.hasNext()) {
            a(this.b, t, pyVar);
        } else {
            dr0.a(((Map.Entry) itE.next()).getKey());
            throw null;
        }
    }

    private <UT, UB> void a(yv3<UT, UB> yv3Var, T t, py pyVar) throws IOException {
        yv3Var.a(yv3Var.b(t), pyVar);
    }

    public static <T> xw1<T> a(yv3<?, ?> yv3Var, fr0<?> fr0Var, tw1 tw1Var) {
        return new xw1<>(yv3Var, fr0Var, tw1Var);
    }
}
