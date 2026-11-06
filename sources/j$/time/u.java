package j$.time;

import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public final class u implements j$.time.temporal.m, j$.time.temporal.o, Comparable, Serializable {
    public static final /* synthetic */ int b = 0;
    private static final long serialVersionUID = -23038383694477807L;
    private final int a;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.a - ((u) obj).a;
    }

    static {
        j$.time.format.p pVar = new j$.time.format.p();
        pVar.l(j$.time.temporal.a.YEAR, 4, 10, j$.time.format.y.EXCEEDS_PAD);
        pVar.t();
    }

    public static u r(int i) {
        j$.time.temporal.a.YEAR.a0(i);
        return new u(i);
    }

    private u(int i) {
        this.a = i;
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.s sVar) {
        return sVar instanceof j$.time.temporal.a ? sVar == j$.time.temporal.a.YEAR || sVar == j$.time.temporal.a.YEAR_OF_ERA || sVar == j$.time.temporal.a.ERA : sVar != null && sVar.W(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.x l(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.a.YEAR_OF_ERA) {
            return j$.time.temporal.x.j(1L, this.a <= 0 ? 1000000000L : 999999999L);
        }
        return super.l(sVar);
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.s sVar) {
        return l(sVar).a(g(sVar), sVar);
    }

    @Override // j$.time.temporal.n
    public final long g(j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.a)) {
            return sVar.r(this);
        }
        int i = t.a[((j$.time.temporal.a) sVar).ordinal()];
        int i2 = this.a;
        if (i == 1) {
            if (i2 < 1) {
                i2 = 1 - i2;
            }
            return i2;
        }
        if (i == 2) {
            return i2;
        }
        if (i == 3) {
            return i2 < 1 ? 0 : 1;
        }
        throw new j$.time.temporal.w(d.a("Unsupported field: ", sVar));
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: j */
    public final j$.time.temporal.m m(h hVar) {
        return (u) hVar.c(this);
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public final u b(long j, j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.a)) {
            return (u) sVar.p(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) sVar;
        aVar.a0(j);
        int i = t.a[aVar.ordinal()];
        int i2 = this.a;
        if (i == 1) {
            if (i2 < 1) {
                j = 1 - j;
            }
            return r((int) j);
        }
        if (i == 2) {
            return r((int) j);
        }
        if (i == 3) {
            return g(j$.time.temporal.a.ERA) == j ? this : r(1 - i2);
        }
        throw new j$.time.temporal.w(d.a("Unsupported field: ", sVar));
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public final u d(long j, j$.time.temporal.v vVar) {
        if (!(vVar instanceof j$.time.temporal.b)) {
            return (u) vVar.p(this, j);
        }
        int i = t.b[((j$.time.temporal.b) vVar).ordinal()];
        if (i == 1) {
            return J(j);
        }
        if (i == 2) {
            return J(Math.multiplyExact(j, 10));
        }
        if (i == 3) {
            return J(Math.multiplyExact(j, 100));
        }
        if (i == 4) {
            return J(Math.multiplyExact(j, 1000));
        }
        if (i == 5) {
            j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
            return b(Math.addExact(g(aVar), j), aVar);
        }
        throw new j$.time.temporal.w("Unsupported unit: " + vVar);
    }

    public final u J(long j) {
        return j == 0 ? this : r(j$.time.temporal.a.YEAR.Z(((long) this.a) + j));
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m e(long j, j$.time.temporal.v vVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, vVar).d(1L, vVar) : d(-j, vVar);
    }

    @Override // j$.time.temporal.n
    public final Object a(j$.time.temporal.u uVar) {
        if (uVar == j$.time.temporal.t.a()) {
            return j$.time.chrono.s.d;
        }
        if (uVar == j$.time.temporal.t.e()) {
            return j$.time.temporal.b.YEARS;
        }
        return super.a(uVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m c(j$.time.temporal.m mVar) {
        if (!j$.time.chrono.l.F(mVar).equals(j$.time.chrono.s.d)) {
            throw new c("Adjustment only supported on ISO date-time");
        }
        return mVar.b(this.a, j$.time.temporal.a.YEAR);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof u) {
            if (this.a == ((u) obj).a) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a;
    }

    public final String toString() {
        return Integer.toString(this.a);
    }

    private Object writeReplace() {
        return new s((byte) 11, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void T(DataOutput dataOutput) {
        dataOutput.writeInt(this.a);
    }
}
