package j$.time;

import com.ironsource.C3522b4;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.chrono.InterfaceC4273b;
import j$.time.chrono.InterfaceC4276e;
import j$.time.format.DateTimeFormatter;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class ZonedDateTime implements j$.time.temporal.m, ChronoZonedDateTime<h>, Serializable {
    private static final long serialVersionUID = -6260982410461394882L;
    private final LocalDateTime a;
    private final ZoneOffset b;
    private final x c;

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m e(long j, j$.time.temporal.v vVar) {
        j$.time.temporal.b bVar = (j$.time.temporal.b) vVar;
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    public static ZonedDateTime S(LocalDateTime localDateTime, x xVar, ZoneOffset zoneOffset) {
        Objects.requireNonNull(localDateTime, "localDateTime");
        Objects.requireNonNull(xVar, "zone");
        if (xVar instanceof ZoneOffset) {
            return new ZonedDateTime(localDateTime, xVar, (ZoneOffset) xVar);
        }
        j$.time.zone.f fVarC = xVar.C();
        List listG = fVarC.g(localDateTime);
        if (listG.size() == 1) {
            zoneOffset = (ZoneOffset) listG.get(0);
        } else if (listG.size() == 0) {
            j$.time.zone.b bVarF = fVarC.f(localDateTime);
            localDateTime = localDateTime.g0(bVarF.C().J());
            zoneOffset = bVarF.J();
        } else if (zoneOffset == null || !listG.contains(zoneOffset)) {
            zoneOffset = (ZoneOffset) listG.get(0);
            Objects.requireNonNull(zoneOffset, "offset");
        }
        return new ZonedDateTime(localDateTime, xVar, zoneOffset);
    }

    public static ZonedDateTime J(Instant instant, x xVar) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(xVar, "zone");
        return r(instant.C(), instant.J(), xVar);
    }

    private static ZonedDateTime r(long j, int i, x xVar) {
        ZoneOffset zoneOffsetD = xVar.C().d(Instant.W(j, i));
        return new ZonedDateTime(LocalDateTime.d0(j, i, zoneOffsetD), xVar, zoneOffsetD);
    }

    public static ZonedDateTime C(j$.time.temporal.n nVar) {
        if (nVar instanceof ZonedDateTime) {
            return (ZonedDateTime) nVar;
        }
        try {
            x xVarR = x.r(nVar);
            j$.time.temporal.a aVar = j$.time.temporal.a.INSTANT_SECONDS;
            if (!nVar.f(aVar)) {
                return S(LocalDateTime.c0(h.J(nVar), k.J(nVar)), xVarR, null);
            }
            return r(nVar.g(aVar), nVar.i(j$.time.temporal.a.NANO_OF_SECOND), xVarR);
        } catch (c e) {
            throw new c("Unable to obtain ZonedDateTime from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName(), e);
        }
    }

    public static ZonedDateTime parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (ZonedDateTime) dateTimeFormatter.e(charSequence, new z());
    }

    private ZonedDateTime(LocalDateTime localDateTime, x xVar, ZoneOffset zoneOffset) {
        this.a = localDateTime;
        this.b = zoneOffset;
        this.c = xVar;
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
            int i = A.a[((j$.time.temporal.a) sVar).ordinal()];
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
            int i = A.a[((j$.time.temporal.a) sVar).ordinal()];
            if (i == 1) {
                return O();
            }
            if (i == 2) {
                return this.b.b0();
            }
            return this.a.g(sVar);
        }
        return sVar.r(this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneOffset E() {
        return this.b;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final x Q() {
        return this.c;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoZonedDateTime I(x xVar) {
        Objects.requireNonNull(xVar, "zone");
        return this.c.equals(xVar) ? this : S(this.a, xVar, this.b);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final InterfaceC4276e B() {
        return this.a;
    }

    public final LocalDateTime Z() {
        return this.a;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final InterfaceC4273b o() {
        return this.a.i0();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final k n() {
        return this.a.n();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public final ZonedDateTime m(h hVar) {
        return S(LocalDateTime.c0(hVar, this.a.n()), this.c, this.b);
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] */
    public final ZonedDateTime b(long j, j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) sVar;
            int i = A.a[aVar.ordinal()];
            LocalDateTime localDateTime = this.a;
            x xVar = this.c;
            if (i == 1) {
                return r(j, localDateTime.J(), xVar);
            }
            ZoneOffset zoneOffset = this.b;
            if (i != 2) {
                return S(localDateTime.b(j, sVar), xVar, zoneOffset);
            }
            ZoneOffset zoneOffsetE0 = ZoneOffset.e0(aVar.Z(j));
            return (zoneOffsetE0.equals(zoneOffset) || !xVar.C().g(localDateTime).contains(zoneOffsetE0)) ? this : new ZonedDateTime(localDateTime, xVar, zoneOffsetE0);
        }
        return (ZonedDateTime) sVar.p(this, j);
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public final ZonedDateTime d(long j, j$.time.temporal.v vVar) {
        if (vVar instanceof j$.time.temporal.b) {
            j$.time.temporal.b bVar = (j$.time.temporal.b) vVar;
            int iCompareTo = bVar.compareTo(j$.time.temporal.b.DAYS);
            ZoneOffset zoneOffset = this.b;
            x xVar = this.c;
            LocalDateTime localDateTime = this.a;
            if (iCompareTo >= 0 && bVar != j$.time.temporal.b.FOREVER) {
                return S(localDateTime.d(j, vVar), xVar, zoneOffset);
            }
            LocalDateTime localDateTimeD = localDateTime.d(j, vVar);
            Objects.requireNonNull(localDateTimeD, "localDateTime");
            Objects.requireNonNull(zoneOffset, "offset");
            Objects.requireNonNull(xVar, "zone");
            if (xVar.C().g(localDateTimeD).contains(zoneOffset)) {
                return new ZonedDateTime(localDateTimeD, xVar, zoneOffset);
            }
            return r(localDateTimeD.Y(zoneOffset), localDateTimeD.J(), xVar);
        }
        return (ZonedDateTime) vVar.p(this, j);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    /* JADX INFO: renamed from: k */
    public final ChronoZonedDateTime e(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    @Override // j$.time.temporal.n
    public final Object a(j$.time.temporal.u uVar) {
        if (uVar == j$.time.temporal.t.b()) {
            return this.a.i0();
        }
        return super.a(uVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZonedDateTime) {
            ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
            if (this.a.equals(zonedDateTime.a) && this.b.equals(zonedDateTime.b) && this.c.equals(zonedDateTime.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.a.hashCode() ^ this.b.hashCode()) ^ Integer.rotateLeft(this.c.hashCode(), 3);
    }

    public final String toString() {
        String string = this.a.toString();
        ZoneOffset zoneOffset = this.b;
        String str = string + zoneOffset.toString();
        x xVar = this.c;
        if (zoneOffset == xVar) {
            return str;
        }
        return str + C3522b4.j.d + xVar.toString() + C3522b4.j.e;
    }

    private Object writeReplace() {
        return new s((byte) 6, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void c0(DataOutput dataOutput) {
        this.a.m0(dataOutput);
        this.b.h0(dataOutput);
        this.c.Z((ObjectOutput) dataOutput);
    }

    static ZonedDateTime W(ObjectInput objectInput) throws IOException {
        LocalDateTime localDateTime = LocalDateTime.c;
        h hVar = h.d;
        LocalDateTime localDateTimeC0 = LocalDateTime.c0(h.f0(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), k.j0(objectInput));
        ZoneOffset zoneOffsetG0 = ZoneOffset.g0(objectInput);
        x xVar = (x) s.a(objectInput);
        Objects.requireNonNull(xVar, "zone");
        if ((xVar instanceof ZoneOffset) && !zoneOffsetG0.equals(xVar)) {
            throw new IllegalArgumentException("ZoneId must match ZoneOffset");
        }
        return new ZonedDateTime(localDateTimeC0, xVar, zoneOffsetG0);
    }
}
