package j$.time;

import com.google.android.gms.ads.RequestConfiguration;
import j$.time.chrono.ChronoZonedDateTime;
import j$.time.chrono.InterfaceC4273b;
import j$.time.chrono.InterfaceC4276e;
import j$.time.format.DateTimeFormatter;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class LocalDateTime implements j$.time.temporal.m, j$.time.temporal.o, InterfaceC4276e, Serializable {
    public static final LocalDateTime c = c0(h.d, k.e);
    public static final LocalDateTime d = c0(h.e, k.f);
    private static final long serialVersionUID = 6207766400415563566L;
    private final h a;
    private final k b;

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m e(long j, j$.time.temporal.v vVar) {
        j$.time.temporal.b bVar = (j$.time.temporal.b) vVar;
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    @Override // j$.time.chrono.InterfaceC4276e
    public final ChronoZonedDateTime H(x xVar) {
        return ZonedDateTime.S(this, xVar, null);
    }

    public static LocalDateTime a0(int i) {
        return new LocalDateTime(h.f0(i, 12, 31), k.a0(0));
    }

    public static LocalDateTime b0(int i, int i2, int i3, int i4, int i5, int i6) {
        return new LocalDateTime(h.f0(i, i2, i3), k.b0(i4, i5, i6, 0));
    }

    public static LocalDateTime c0(h hVar, k kVar) {
        Objects.requireNonNull(hVar, "date");
        Objects.requireNonNull(kVar, "time");
        return new LocalDateTime(hVar, kVar);
    }

    public static LocalDateTime d0(long j, int i, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        long j2 = i;
        j$.time.temporal.a.NANO_OF_SECOND.a0(j2);
        long jB0 = j + ((long) zoneOffset.b0());
        long j3 = 86400;
        return new LocalDateTime(h.h0(Math.floorDiv(jB0, j3)), k.c0((((long) ((int) Math.floorMod(jB0, j3))) * 1000000000) + j2));
    }

    public static LocalDateTime C(j$.time.temporal.n nVar) {
        if (nVar instanceof LocalDateTime) {
            return (LocalDateTime) nVar;
        }
        if (nVar instanceof ZonedDateTime) {
            return ((ZonedDateTime) nVar).Z();
        }
        if (nVar instanceof OffsetDateTime) {
            return ((OffsetDateTime) nVar).toLocalDateTime();
        }
        try {
            return new LocalDateTime(h.J(nVar), k.J(nVar));
        } catch (c e) {
            throw new c("Unable to obtain LocalDateTime from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName(), e);
        }
    }

    private LocalDateTime(h hVar, k kVar) {
        this.a = hVar;
        this.b = kVar;
    }

    private LocalDateTime l0(h hVar, k kVar) {
        return (this.a == hVar && this.b == kVar) ? this : new LocalDateTime(hVar, kVar);
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.a)) {
            return sVar != null && sVar.W(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) sVar;
        return aVar.T() || aVar.b0();
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.x l(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) sVar).b0() ? this.b.l(sVar) : this.a.l(sVar);
        }
        return sVar.J(this);
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) sVar).b0() ? this.b.i(sVar) : this.a.i(sVar);
        }
        return super.i(sVar);
    }

    @Override // j$.time.temporal.n
    public final long g(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) sVar).b0() ? this.b.g(sVar) : this.a.g(sVar);
        }
        return sVar.r(this);
    }

    private int r(LocalDateTime localDateTime) {
        int iR = this.a.r(localDateTime.a);
        return iR == 0 ? this.b.compareTo(localDateTime.b) : iR;
    }

    public final h i0() {
        return this.a;
    }

    @Override // j$.time.chrono.InterfaceC4276e
    public final InterfaceC4273b o() {
        return this.a;
    }

    public final int T() {
        return this.a.a0();
    }

    @Override // j$.time.chrono.InterfaceC4276e
    public final k n() {
        return this.b;
    }

    public final int S() {
        return this.b.Z();
    }

    public final int J() {
        return this.b.W();
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: j */
    public final j$.time.temporal.m m(h hVar) {
        return l0(hVar, this.b);
    }

    public final LocalDateTime k0(h hVar) {
        return l0(hVar, this.b);
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime b(long j, j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            boolean zB0 = ((j$.time.temporal.a) sVar).b0();
            k kVar = this.b;
            h hVar = this.a;
            if (zB0) {
                return l0(hVar, kVar.b(j, sVar));
            }
            return l0(hVar.b(j, sVar), kVar);
        }
        return (LocalDateTime) sVar.p(this, j);
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime d(long j, j$.time.temporal.v vVar) {
        if (!(vVar instanceof j$.time.temporal.b)) {
            return (LocalDateTime) vVar.p(this, j);
        }
        switch (i.a[((j$.time.temporal.b) vVar).ordinal()]) {
            case 1:
                return h0(this.a, 0L, 0L, 0L, j);
            case 2:
                LocalDateTime localDateTimeF0 = f0(j / 86400000000L);
                return localDateTimeF0.h0(localDateTimeF0.a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                LocalDateTime localDateTimeF02 = f0(j / 86400000);
                return localDateTimeF02.h0(localDateTimeF02.a, 0L, 0L, 0L, (j % 86400000) * 1000000);
            case 4:
                return g0(j);
            case 5:
                return h0(this.a, 0L, j, 0L, 0L);
            case 6:
                return h0(this.a, j, 0L, 0L, 0L);
            case 7:
                LocalDateTime localDateTimeF03 = f0(j / 256);
                return localDateTimeF03.h0(localDateTimeF03.a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return l0(this.a.d(j, vVar), this.b);
        }
    }

    public final LocalDateTime f0(long j) {
        return l0(this.a.k0(j), this.b);
    }

    public final LocalDateTime g0(long j) {
        return h0(this.a, 0L, 0L, j, 0L);
    }

    @Override // j$.time.chrono.InterfaceC4276e
    /* JADX INFO: renamed from: k */
    public final InterfaceC4276e e(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    private LocalDateTime h0(h hVar, long j, long j2, long j3, long j4) {
        long j5 = j | j2 | j3 | j4;
        k kVarC0 = this.b;
        if (j5 == 0) {
            return l0(hVar, kVarC0);
        }
        long j6 = j / 24;
        long j7 = j6 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long j8 = 1;
        long j9 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L);
        long jK0 = kVarC0.k0();
        long j10 = (j9 * j8) + jK0;
        long jFloorDiv = Math.floorDiv(j10, 86400000000000L) + (j7 * j8);
        long jFloorMod = Math.floorMod(j10, 86400000000000L);
        if (jFloorMod != jK0) {
            kVarC0 = k.c0(jFloorMod);
        }
        return l0(hVar.k0(jFloorDiv), kVarC0);
    }

    @Override // j$.time.temporal.n
    public final Object a(j$.time.temporal.u uVar) {
        if (uVar == j$.time.temporal.t.b()) {
            return this.a;
        }
        return super.a(uVar);
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.a(this);
    }

    @Override // j$.time.chrono.InterfaceC4276e, java.lang.Comparable
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public final int compareTo(InterfaceC4276e interfaceC4276e) {
        if (interfaceC4276e instanceof LocalDateTime) {
            return r((LocalDateTime) interfaceC4276e);
        }
        return super.compareTo(interfaceC4276e);
    }

    public final boolean W(LocalDateTime localDateTime) {
        if (localDateTime != null) {
            return r(localDateTime) > 0;
        }
        long jV = this.a.v();
        long jV2 = localDateTime.a.v();
        if (jV <= jV2) {
            return jV == jV2 && this.b.k0() > localDateTime.b.k0();
        }
        return true;
    }

    public final boolean Z(LocalDateTime localDateTime) {
        if (localDateTime != null) {
            return r(localDateTime) < 0;
        }
        long jV = this.a.v();
        long jV2 = localDateTime.a.v();
        if (jV >= jV2) {
            return jV == jV2 && this.b.k0() < localDateTime.b.k0();
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDateTime) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            if (this.a.equals(localDateTime.a) && this.b.equals(localDateTime.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    public final String toString() {
        return this.a.toString() + RequestConfiguration.MAX_AD_CONTENT_RATING_T + this.b.toString();
    }

    private Object writeReplace() {
        return new s((byte) 5, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void m0(DataOutput dataOutput) {
        this.a.t0(dataOutput);
        this.b.o0(dataOutput);
    }
}
