package j$.time;

import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class q implements j$.time.temporal.m, j$.time.temporal.o, Comparable, Serializable {
    private static final long serialVersionUID = 7264499704384272492L;
    private final k a;
    private final ZoneOffset b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        q qVar = (q) obj;
        ZoneOffset zoneOffset = qVar.b;
        ZoneOffset zoneOffset2 = this.b;
        boolean zEquals = zoneOffset2.equals(zoneOffset);
        k kVar = qVar.a;
        k kVar2 = this.a;
        if (zEquals) {
            return kVar2.compareTo(kVar);
        }
        int iCompare = Long.compare(kVar2.k0() - (((long) zoneOffset2.b0()) * 1000000000), kVar.k0() - (((long) qVar.b.b0()) * 1000000000));
        return iCompare == 0 ? kVar2.compareTo(kVar) : iCompare;
    }

    static {
        k kVar = k.e;
        ZoneOffset zoneOffset = ZoneOffset.g;
        kVar.getClass();
        r(kVar, zoneOffset);
        k kVar2 = k.f;
        ZoneOffset zoneOffset2 = ZoneOffset.f;
        kVar2.getClass();
        r(kVar2, zoneOffset2);
    }

    public static q r(k kVar, ZoneOffset zoneOffset) {
        return new q(kVar, zoneOffset);
    }

    private q(k kVar, ZoneOffset zoneOffset) {
        Objects.requireNonNull(kVar, "time");
        this.a = kVar;
        Objects.requireNonNull(zoneOffset, "offset");
        this.b = zoneOffset;
    }

    private q S(k kVar, ZoneOffset zoneOffset) {
        return (this.a == kVar && this.b.equals(zoneOffset)) ? this : new q(kVar, zoneOffset);
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.s sVar) {
        return sVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) sVar).b0() || sVar == j$.time.temporal.a.OFFSET_SECONDS : sVar != null && sVar.W(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.x l(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            if (sVar == j$.time.temporal.a.OFFSET_SECONDS) {
                return ((j$.time.temporal.a) sVar).C();
            }
            return this.a.l(sVar);
        }
        return sVar.J(this);
    }

    @Override // j$.time.temporal.n
    public final long g(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            if (sVar == j$.time.temporal.a.OFFSET_SECONDS) {
                return this.b.b0();
            }
            return this.a.g(sVar);
        }
        return sVar.r(this);
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: j */
    public final j$.time.temporal.m m(h hVar) {
        return (q) hVar.c(this);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m b(long j, j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = j$.time.temporal.a.OFFSET_SECONDS;
            k kVar = this.a;
            if (sVar == aVar) {
                return S(kVar, ZoneOffset.e0(((j$.time.temporal.a) sVar).Z(j)));
            }
            return S(kVar.b(j, sVar), this.b);
        }
        return (q) sVar.p(this, j);
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public final q d(long j, j$.time.temporal.v vVar) {
        if (vVar instanceof j$.time.temporal.b) {
            return S(this.a.d(j, vVar), this.b);
        }
        return (q) vVar.p(this, j);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m e(long j, j$.time.temporal.v vVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, vVar).d(1L, vVar) : d(-j, vVar);
    }

    @Override // j$.time.temporal.n
    public final Object a(j$.time.temporal.u uVar) {
        if (uVar == j$.time.temporal.t.d() || uVar == j$.time.temporal.t.f()) {
            return this.b;
        }
        if (((uVar == j$.time.temporal.t.g()) || (uVar == j$.time.temporal.t.a())) || uVar == j$.time.temporal.t.b()) {
            return null;
        }
        if (uVar == j$.time.temporal.t.c()) {
            return this.a;
        }
        if (uVar == j$.time.temporal.t.e()) {
            return j$.time.temporal.b.NANOS;
        }
        return uVar.j(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m c(j$.time.temporal.m mVar) {
        return mVar.b(this.a.k0(), j$.time.temporal.a.NANO_OF_DAY).b(this.b.b0(), j$.time.temporal.a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof q) {
            q qVar = (q) obj;
            if (this.a.equals(qVar.a) && this.b.equals(qVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    public final String toString() {
        return this.a.toString() + this.b.toString();
    }

    private Object writeReplace() {
        return new s((byte) 9, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void writeExternal(ObjectOutput objectOutput) {
        this.a.o0(objectOutput);
        this.b.h0(objectOutput);
    }

    static q J(ObjectInput objectInput) {
        return new q(k.j0(objectInput), ZoneOffset.g0(objectInput));
    }
}
