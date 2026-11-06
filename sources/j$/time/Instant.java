package j$.time;

import j$.time.format.DateTimeFormatter;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public final class Instant implements j$.time.temporal.m, j$.time.temporal.o, Comparable<Instant>, Serializable {
    public static final Instant c = new Instant(0, 0);
    private static final long serialVersionUID = -665713676816604388L;
    private final long a;
    private final int b;

    @Override // java.lang.Comparable
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        int iCompare = Long.compare(this.a, instant2.a);
        return iCompare != 0 ? iCompare : this.b - instant2.b;
    }

    static {
        W(-31557014167219200L, 0L);
        W(31556889864403199L, 999999999L);
    }

    public static Instant T(long j) {
        return r(j, 0);
    }

    public static Instant W(long j, long j2) {
        return r(Math.addExact(j, Math.floorDiv(j2, 1000000000L)), (int) Math.floorMod(j2, 1000000000L));
    }

    public static Instant S(long j) {
        long j2 = 1000;
        return r(Math.floorDiv(j, j2), ((int) Math.floorMod(j, j2)) * 1000000);
    }

    private static Instant r(long j, int i) {
        if ((((long) i) | j) == 0) {
            return c;
        }
        if (j < -31557014167219200L || j > 31556889864403199L) {
            throw new c("Instant exceeds minimum or maximum instant");
        }
        return new Instant(j, i);
    }

    private Instant(long j, int i) {
        this.a = j;
        this.b = i;
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.s sVar) {
        return sVar instanceof j$.time.temporal.a ? sVar == j$.time.temporal.a.INSTANT_SECONDS || sVar == j$.time.temporal.a.NANO_OF_SECOND || sVar == j$.time.temporal.a.MICRO_OF_SECOND || sVar == j$.time.temporal.a.MILLI_OF_SECOND : sVar != null && sVar.W(this);
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.a)) {
            return super.l(sVar).a(sVar.r(this), sVar);
        }
        int i = f.a[((j$.time.temporal.a) sVar).ordinal()];
        int i2 = this.b;
        if (i == 1) {
            return i2;
        }
        if (i == 2) {
            return i2 / 1000;
        }
        if (i == 3) {
            return i2 / 1000000;
        }
        if (i == 4) {
            j$.time.temporal.a.INSTANT_SECONDS.Z(this.a);
        }
        throw new j$.time.temporal.w(d.a("Unsupported field: ", sVar));
    }

    @Override // j$.time.temporal.n
    public final long g(j$.time.temporal.s sVar) {
        int i;
        if (!(sVar instanceof j$.time.temporal.a)) {
            return sVar.r(this);
        }
        int i2 = f.a[((j$.time.temporal.a) sVar).ordinal()];
        int i3 = this.b;
        if (i2 == 1) {
            return i3;
        }
        if (i2 == 2) {
            i = i3 / 1000;
        } else {
            if (i2 != 3) {
                if (i2 == 4) {
                    return this.a;
                }
                throw new j$.time.temporal.w(d.a("Unsupported field: ", sVar));
            }
            i = i3 / 1000000;
        }
        return i;
    }

    public final long C() {
        return this.a;
    }

    public final int J() {
        return this.b;
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: j */
    public final j$.time.temporal.m m(h hVar) {
        return (Instant) hVar.c(this);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m b(long j, j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.a)) {
            return (Instant) sVar.p(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) sVar;
        aVar.a0(j);
        int i = f.a[aVar.ordinal()];
        int i2 = this.b;
        long j2 = this.a;
        if (i != 1) {
            if (i == 2) {
                int i3 = ((int) j) * 1000;
                if (i3 != i2) {
                    return r(j2, i3);
                }
            } else if (i == 3) {
                int i4 = ((int) j) * 1000000;
                if (i4 != i2) {
                    return r(j2, i4);
                }
            } else {
                if (i != 4) {
                    throw new j$.time.temporal.w(d.a("Unsupported field: ", sVar));
                }
                if (j != j2) {
                    return r(j, i2);
                }
            }
        } else if (j != i2) {
            return r(j2, (int) j);
        }
        return this;
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] */
    public final Instant d(long j, j$.time.temporal.v vVar) {
        if (!(vVar instanceof j$.time.temporal.b)) {
            return (Instant) vVar.p(this, j);
        }
        switch (f.b[((j$.time.temporal.b) vVar).ordinal()]) {
            case 1:
                return Z(0L, j);
            case 2:
                return Z(j / 1000000, (j % 1000000) * 1000);
            case 3:
                return Z(j / 1000, (j % 1000) * 1000000);
            case 4:
                return Z(j, 0L);
            case 5:
                return Z(Math.multiplyExact(j, 60), 0L);
            case 6:
                return Z(Math.multiplyExact(j, 3600), 0L);
            case 7:
                return Z(Math.multiplyExact(j, 43200), 0L);
            case 8:
                return Z(Math.multiplyExact(j, 86400), 0L);
            default:
                throw new j$.time.temporal.w("Unsupported unit: " + vVar);
        }
    }

    private Instant Z(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return W(Math.addExact(Math.addExact(this.a, j), j2 / 1000000000), ((long) this.b) + (j2 % 1000000000));
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m e(long j, j$.time.temporal.v vVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, vVar).d(1L, vVar) : d(-j, vVar);
    }

    @Override // j$.time.temporal.n
    public final Object a(j$.time.temporal.u uVar) {
        if (uVar == j$.time.temporal.t.e()) {
            return j$.time.temporal.b.NANOS;
        }
        if (uVar == j$.time.temporal.t.a() || uVar == j$.time.temporal.t.g() || uVar == j$.time.temporal.t.f() || uVar == j$.time.temporal.t.d() || uVar == j$.time.temporal.t.b() || uVar == j$.time.temporal.t.c()) {
            return null;
        }
        return uVar.j(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m c(j$.time.temporal.m mVar) {
        return mVar.b(this.a, j$.time.temporal.a.INSTANT_SECONDS).b(this.b, j$.time.temporal.a.NANO_OF_SECOND);
    }

    public OffsetDateTime atOffset(ZoneOffset zoneOffset) {
        return OffsetDateTime.C(this, zoneOffset);
    }

    public long toEpochMilli() {
        long j = this.a;
        return (j >= 0 || this.b <= 0) ? Math.addExact(Math.multiplyExact(j, 1000), r5 / 1000000) : Math.addExact(Math.multiplyExact(j + 1, 1000), (r5 / 1000000) - 1000);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Instant) {
            Instant instant = (Instant) obj;
            if (this.a == instant.a && this.b == instant.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.a;
        return (this.b * 51) + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return DateTimeFormatter.f.a(this);
    }

    private Object writeReplace() {
        return new s((byte) 2, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void b0(DataOutput dataOutput) {
        dataOutput.writeLong(this.a);
        dataOutput.writeInt(this.b);
    }
}
