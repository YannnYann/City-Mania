package j$.time.chrono;

import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.chrono.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractC4275d implements InterfaceC4273b, j$.time.temporal.m, j$.time.temporal.o, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    abstract InterfaceC4273b C(long j);

    abstract InterfaceC4273b J(long j);

    abstract InterfaceC4273b S(long j);

    @Override // j$.time.chrono.InterfaceC4273b, j$.time.temporal.m
    public /* bridge */ /* synthetic */ j$.time.temporal.m e(long j, j$.time.temporal.v vVar) {
        return e(j, vVar);
    }

    static InterfaceC4273b r(l lVar, j$.time.temporal.m mVar) {
        InterfaceC4273b interfaceC4273b = (InterfaceC4273b) mVar;
        if (lVar.equals(interfaceC4273b.h())) {
            return interfaceC4273b;
        }
        throw new ClassCastException("Chronology mismatch, expected: " + lVar.s() + ", actual: " + interfaceC4273b.h().s());
    }

    AbstractC4275d() {
    }

    @Override // j$.time.temporal.m
    public InterfaceC4273b d(long j, j$.time.temporal.v vVar) {
        boolean z = vVar instanceof j$.time.temporal.b;
        if (!z) {
            if (!z) {
                return r(h(), vVar.p(this, j));
            }
            throw new j$.time.temporal.w("Unsupported unit: " + vVar);
        }
        switch (AbstractC4274c.a[((j$.time.temporal.b) vVar).ordinal()]) {
            case 1:
                return C(j);
            case 2:
                return C(Math.multiplyExact(j, 7));
            case 3:
                return J(j);
            case 4:
                return S(j);
            case 5:
                return S(Math.multiplyExact(j, 10));
            case 6:
                return S(Math.multiplyExact(j, 100));
            case 7:
                return S(Math.multiplyExact(j, 1000));
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return b(Math.addExact(g(aVar), j), (j$.time.temporal.s) aVar);
            default:
                throw new j$.time.temporal.w("Unsupported unit: " + vVar);
        }
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC4273b) && compareTo((InterfaceC4273b) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public int hashCode() {
        long jV = v();
        return ((int) (jV ^ (jV >>> 32))) ^ h().hashCode();
    }

    @Override // j$.time.temporal.m
    public InterfaceC4273b m(j$.time.temporal.o oVar) {
        return r(h(), oVar.c(this));
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public String toString() {
        long jG = g(j$.time.temporal.a.YEAR_OF_ERA);
        long jG2 = g(j$.time.temporal.a.MONTH_OF_YEAR);
        long jG3 = g(j$.time.temporal.a.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(h().toString());
        sb.append(" ");
        sb.append(u());
        sb.append(" ");
        sb.append(jG);
        sb.append(jG2 < 10 ? "-0" : "-");
        sb.append(jG2);
        sb.append(jG3 < 10 ? "-0" : "-");
        sb.append(jG3);
        return sb.toString();
    }

    @Override // j$.time.temporal.m
    public InterfaceC4273b b(long j, j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.w(j$.time.d.a("Unsupported field: ", sVar));
        }
        return r(h(), sVar.p(this, j));
    }

    @Override // j$.time.chrono.InterfaceC4273b
    public InterfaceC4273b M(j$.time.temporal.r rVar) {
        return r(h(), rVar.p(this));
    }
}
