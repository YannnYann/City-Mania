package j$.time;

import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class OffsetDateTime implements j$.time.temporal.m, j$.time.temporal.o, Comparable<OffsetDateTime>, Serializable {
    private static final long serialVersionUID = 2287754244819255394L;
    private final LocalDateTime a;
    private final ZoneOffset b;

    @Override // java.lang.Comparable
    public final int compareTo(OffsetDateTime offsetDateTime) {
        int iW;
        OffsetDateTime offsetDateTime2 = offsetDateTime;
        ZoneOffset zoneOffset = offsetDateTime2.b;
        ZoneOffset zoneOffset2 = this.b;
        if (zoneOffset2.equals(zoneOffset)) {
            iW = toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime());
        } else {
            LocalDateTime localDateTime = this.a;
            long jY = localDateTime.Y(zoneOffset2);
            ZoneOffset zoneOffset3 = offsetDateTime2.b;
            LocalDateTime localDateTime2 = offsetDateTime2.a;
            int iCompare = Long.compare(jY, localDateTime2.Y(zoneOffset3));
            iW = iCompare == 0 ? localDateTime.n().W() - localDateTime2.n().W() : iCompare;
        }
        return iW == 0 ? toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime()) : iW;
    }

    static {
        LocalDateTime localDateTime = LocalDateTime.c;
        ZoneOffset zoneOffset = ZoneOffset.g;
        localDateTime.getClass();
        r(localDateTime, zoneOffset);
        LocalDateTime localDateTime2 = LocalDateTime.d;
        ZoneOffset zoneOffset2 = ZoneOffset.f;
        localDateTime2.getClass();
        r(localDateTime2, zoneOffset2);
    }

    public static OffsetDateTime r(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return new OffsetDateTime(localDateTime, zoneOffset);
    }

    public static OffsetDateTime C(Instant instant, x xVar) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(xVar, "zone");
        ZoneOffset zoneOffsetD = xVar.C().d(instant);
        return new OffsetDateTime(LocalDateTime.d0(instant.C(), instant.J(), zoneOffsetD), zoneOffsetD);
    }

    private OffsetDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        Objects.requireNonNull(localDateTime, "dateTime");
        this.a = localDateTime;
        Objects.requireNonNull(zoneOffset, "offset");
        this.b = zoneOffset;
    }

    private OffsetDateTime T(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return (this.a == localDateTime && this.b.equals(zoneOffset)) ? this : new OffsetDateTime(localDateTime, zoneOffset);
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            return true;
        }
        return sVar != null && sVar.W(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.x l(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            if (sVar == j$.time.temporal.a.INSTANT_SECONDS || sVar == j$.time.temporal.a.OFFSET_SECONDS) {
                return ((j$.time.temporal.a) sVar).C();
            }
            return this.a.l(sVar);
        }
        return sVar.J(this);
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            int i = p.a[((j$.time.temporal.a) sVar).ordinal()];
            if (i == 1) {
                throw new j$.time.temporal.w("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
            }
            if (i == 2) {
                return this.b.b0();
            }
            return this.a.i(sVar);
        }
        return super.i(sVar);
    }

    @Override // j$.time.temporal.n
    public final long g(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            int i = p.a[((j$.time.temporal.a) sVar).ordinal()];
            ZoneOffset zoneOffset = this.b;
            LocalDateTime localDateTime = this.a;
            if (i == 1) {
                return localDateTime.Y(zoneOffset);
            }
            if (i == 2) {
                return zoneOffset.b0();
            }
            return localDateTime.g(sVar);
        }
        return sVar.r(this);
    }

    public LocalDateTime toLocalDateTime() {
        return this.a;
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: j */
    public final j$.time.temporal.m m(h hVar) {
        return T(this.a.k0(hVar), this.b);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m b(long j, j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) sVar;
            int i = p.a[aVar.ordinal()];
            ZoneOffset zoneOffset = this.b;
            LocalDateTime localDateTime = this.a;
            if (i == 1) {
                return C(Instant.W(j, localDateTime.J()), zoneOffset);
            }
            if (i == 2) {
                return T(localDateTime, ZoneOffset.e0(aVar.Z(j)));
            }
            return T(localDateTime.b(j, sVar), zoneOffset);
        }
        return (OffsetDateTime) sVar.p(this, j);
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public final OffsetDateTime d(long j, j$.time.temporal.v vVar) {
        if (vVar instanceof j$.time.temporal.b) {
            return T(this.a.d(j, vVar), this.b);
        }
        return (OffsetDateTime) vVar.p(this, j);
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
        if (uVar == j$.time.temporal.t.g()) {
            return null;
        }
        j$.time.temporal.u uVarB = j$.time.temporal.t.b();
        LocalDateTime localDateTime = this.a;
        if (uVar == uVarB) {
            return localDateTime.i0();
        }
        if (uVar == j$.time.temporal.t.c()) {
            return localDateTime.n();
        }
        if (uVar == j$.time.temporal.t.a()) {
            return j$.time.chrono.s.d;
        }
        if (uVar == j$.time.temporal.t.e()) {
            return j$.time.temporal.b.NANOS;
        }
        return uVar.j(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m c(j$.time.temporal.m mVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.EPOCH_DAY;
        LocalDateTime localDateTime = this.a;
        return mVar.b(localDateTime.i0().v(), aVar).b(localDateTime.n().k0(), j$.time.temporal.a.NANO_OF_DAY).b(this.b.b0(), j$.time.temporal.a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetDateTime) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
            if (this.a.equals(offsetDateTime.a) && this.b.equals(offsetDateTime.b)) {
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
        return new s((byte) 10, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void writeExternal(ObjectOutput objectOutput) {
        this.a.m0(objectOutput);
        this.b.h0(objectOutput);
    }

    static OffsetDateTime S(ObjectInput objectInput) {
        LocalDateTime localDateTime = LocalDateTime.c;
        h hVar = h.d;
        return new OffsetDateTime(LocalDateTime.c0(h.f0(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), k.j0(objectInput)), ZoneOffset.g0(objectInput));
    }
}
