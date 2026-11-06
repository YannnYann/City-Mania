package j$.time.chrono;

import j$.time.Instant;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class A extends AbstractC4272a implements Serializable {
    public static final A d = new A();
    private static final long serialVersionUID = 1039765215346859963L;

    @Override // j$.time.chrono.l
    public final String s() {
        return "Minguo";
    }

    @Override // j$.time.chrono.l
    public final m N(int i) {
        if (i == 0) {
            return D.BEFORE_ROC;
        }
        if (i == 1) {
            return D.ROC;
        }
        throw new j$.time.c("Invalid era: " + i);
    }

    @Override // j$.time.chrono.l
    public final String R() {
        return "roc";
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b G(int i, int i2, int i3) {
        return new C(j$.time.h.f0(i + 1911, i2, i3));
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b A(int i, int i2) {
        return new C(j$.time.h.i0(i + 1911, i2));
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b q(long j) {
        return new C(j$.time.h.h0(j));
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b L() {
        return new C(j$.time.h.J(j$.time.h.e0(j$.time.b.c())));
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b t(j$.time.temporal.n nVar) {
        if (nVar instanceof C) {
            return (C) nVar;
        }
        return new C(j$.time.h.J(nVar));
    }

    @Override // j$.time.chrono.l
    public final int w(m mVar, int i) {
        if (mVar instanceof D) {
            return mVar == D.ROC ? i : 1 - i;
        }
        throw new ClassCastException("Era must be MinguoEra");
    }

    @Override // j$.time.chrono.l
    public final List D() {
        return j$.time.b.b(D.values());
    }

    @Override // j$.time.chrono.l
    public final j$.time.temporal.x U(j$.time.temporal.a aVar) {
        int i = z.a[aVar.ordinal()];
        if (i == 1) {
            j$.time.temporal.x xVarC = j$.time.temporal.a.PROLEPTIC_MONTH.C();
            return j$.time.temporal.x.j(xVarC.e() - 22932, xVarC.d() - 22932);
        }
        if (i == 2) {
            j$.time.temporal.x xVarC2 = j$.time.temporal.a.YEAR.C();
            return j$.time.temporal.x.k(xVarC2.d() - 1911, (-xVarC2.e()) + 1912);
        }
        if (i == 3) {
            j$.time.temporal.x xVarC3 = j$.time.temporal.a.YEAR.C();
            return j$.time.temporal.x.j(xVarC3.e() - 1911, xVarC3.d() - 1911);
        }
        return aVar.C();
    }

    @Override // j$.time.chrono.AbstractC4272a, j$.time.chrono.l
    public final InterfaceC4273b P(Map map, j$.time.format.x xVar) {
        return (C) super.P(map, xVar);
    }

    private A() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.l
    public final ChronoZonedDateTime y(Instant instant, j$.time.x xVar) {
        return k.J(this, instant, xVar);
    }

    Object writeReplace() {
        return new E((byte) 1, this);
    }
}
