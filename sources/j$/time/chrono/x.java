package j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class x extends AbstractC4275d {
    static final j$.time.h d = j$.time.h.f0(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;
    private final transient j$.time.h a;
    private transient y b;
    private transient int c;

    x(j$.time.h hVar) {
        if (hVar.b0(d)) {
            throw new j$.time.c("JapaneseDate before Meiji 6 is not supported");
        }
        y yVarQ = y.q(hVar);
        this.b = yVarQ;
        this.c = (hVar.a0() - yVarQ.s().a0()) + 1;
        this.a = hVar;
    }

    x(y yVar, int i, j$.time.h hVar) {
        if (hVar.b0(d)) {
            throw new j$.time.c("JapaneseDate before Meiji 6 is not supported");
        }
        this.b = yVar;
        this.c = i;
        this.a = hVar;
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final l h() {
        return v.d;
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b
    public final int hashCode() {
        v.d.getClass();
        return this.a.hashCode() ^ (-688086063);
    }

    public final y T() {
        return this.b;
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final m u() {
        return this.b;
    }

    @Override // j$.time.chrono.InterfaceC4273b, j$.time.temporal.n
    public final boolean f(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH || sVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR || sVar == j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH || sVar == j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        if (sVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) sVar).T();
        }
        return sVar != null && sVar.W(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.x l(j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.a)) {
            return sVar.J(this);
        }
        if (!f(sVar)) {
            throw new j$.time.temporal.w(j$.time.d.a("Unsupported field: ", sVar));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) sVar;
        int i = w.a[aVar.ordinal()];
        j$.time.h hVar = this.a;
        if (i == 1) {
            return j$.time.temporal.x.j(1L, hVar.d0());
        }
        y yVar = this.b;
        if (i != 2) {
            if (i != 3) {
                return v.d.U(aVar);
            }
            int iA0 = yVar.s().a0();
            return yVar.t() != null ? j$.time.temporal.x.j(1L, (r0.s().a0() - iA0) + 1) : j$.time.temporal.x.j(1L, 999999999 - iA0);
        }
        y yVarT = yVar.t();
        int iW = (yVarT == null || yVarT.s().a0() != hVar.a0()) ? hVar.c0() ? 366 : 365 : yVarT.s().W() - 1;
        if (this.c == 1) {
            iW -= yVar.s().W() - 1;
        }
        return j$.time.temporal.x.j(1L, iW);
    }

    @Override // j$.time.temporal.n
    public final long g(j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.a)) {
            return sVar.r(this);
        }
        int i = w.a[((j$.time.temporal.a) sVar).ordinal()];
        int i2 = this.c;
        y yVar = this.b;
        j$.time.h hVar = this.a;
        switch (i) {
            case 2:
                return i2 == 1 ? (hVar.W() - yVar.s().W()) + 1 : hVar.W();
            case 3:
                return i2;
            case 4:
            case 5:
            case 6:
            case 7:
                throw new j$.time.temporal.w(j$.time.d.a("Unsupported field: ", sVar));
            case 8:
                return yVar.p();
            default:
                return hVar.g(sVar);
        }
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.temporal.m
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
    public final x b(long j, j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) sVar;
            if (g(aVar) == j) {
                return this;
            }
            int[] iArr = w.a;
            int i = iArr[aVar.ordinal()];
            j$.time.h hVar = this.a;
            if (i == 3 || i == 8 || i == 9) {
                v vVar = v.d;
                int iA = vVar.U(aVar).a(j, aVar);
                int i2 = iArr[aVar.ordinal()];
                if (i2 == 3) {
                    return a0(hVar.s0(vVar.w(this.b, iA)));
                }
                if (i2 == 8) {
                    return a0(hVar.s0(vVar.w(y.w(iA), this.c)));
                }
                if (i2 == 9) {
                    return a0(hVar.s0(iA));
                }
            }
            return a0(hVar.b(j, sVar));
        }
        return (x) super.b(j, sVar);
    }

    public final x b0(j$.time.temporal.q qVar) {
        return (x) super.m(qVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.temporal.m
    /* JADX INFO: renamed from: j */
    public final j$.time.temporal.m m(j$.time.h hVar) {
        return (x) super.m(hVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b
    public final InterfaceC4273b m(j$.time.temporal.o oVar) {
        return (x) super.m(oVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b
    public final InterfaceC4273b M(j$.time.temporal.r rVar) {
        return (x) super.M(rVar);
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final InterfaceC4276e K(j$.time.k kVar) {
        return C4278g.C(this, kVar);
    }

    @Override // j$.time.chrono.AbstractC4275d
    final InterfaceC4273b S(long j) {
        return a0(this.a.n0(j));
    }

    @Override // j$.time.chrono.AbstractC4275d
    final InterfaceC4273b J(long j) {
        return a0(this.a.l0(j));
    }

    @Override // j$.time.chrono.AbstractC4275d
    final InterfaceC4273b C(long j) {
        return a0(this.a.k0(j));
    }

    public final x W(long j, j$.time.temporal.b bVar) {
        return (x) super.d(j, (j$.time.temporal.v) bVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b, j$.time.temporal.m
    public final InterfaceC4273b d(long j, j$.time.temporal.v vVar) {
        return (x) super.d(j, vVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.temporal.m
    public final j$.time.temporal.m d(long j, j$.time.temporal.v vVar) {
        return (x) super.d(j, vVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b, j$.time.temporal.m
    public final InterfaceC4273b e(long j, j$.time.temporal.v vVar) {
        return (x) super.e(j, vVar);
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b, j$.time.temporal.m
    public final j$.time.temporal.m e(long j, j$.time.temporal.v vVar) {
        return (x) super.e(j, vVar);
    }

    private x a0(j$.time.h hVar) {
        return hVar.equals(this.a) ? this : new x(hVar);
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public final long v() {
        return this.a.v();
    }

    @Override // j$.time.chrono.AbstractC4275d, j$.time.chrono.InterfaceC4273b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof x) {
            return this.a.equals(((x) obj).a);
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new E((byte) 4, this);
    }
}
