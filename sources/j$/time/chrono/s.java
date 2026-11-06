package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZonedDateTime;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class s extends AbstractC4272a implements Serializable {
    public static final s d = new s();
    private static final long serialVersionUID = -1440403870442975015L;

    @Override // j$.time.chrono.l
    public final m N(int i) {
        if (i == 0) {
            return t.BCE;
        }
        if (i == 1) {
            return t.CE;
        }
        throw new j$.time.c("Invalid era: " + i);
    }

    @Override // j$.time.chrono.l
    public final String s() {
        return "ISO";
    }

    @Override // j$.time.chrono.l
    public final String R() {
        return "iso8601";
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b G(int i, int i2, int i3) {
        return j$.time.h.f0(i, i2, i3);
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b A(int i, int i2) {
        return j$.time.h.i0(i, i2);
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b q(long j) {
        return j$.time.h.h0(j);
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b t(j$.time.temporal.n nVar) {
        return j$.time.h.J(nVar);
    }

    private s() {
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4276e x(LocalDateTime localDateTime) {
        return LocalDateTime.C(localDateTime);
    }

    @Override // j$.time.chrono.l
    public final ChronoZonedDateTime y(Instant instant, j$.time.x xVar) {
        return ZonedDateTime.J(instant, xVar);
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b L() {
        return j$.time.h.J(j$.time.h.e0(j$.time.b.c()));
    }

    public static boolean Z(long j) {
        if ((3 & j) == 0) {
            return j % 100 != 0 || j % 400 == 0;
        }
        return false;
    }

    @Override // j$.time.chrono.l
    public final int w(m mVar, int i) {
        if (mVar instanceof t) {
            return mVar == t.CE ? i : 1 - i;
        }
        throw new ClassCastException("Era must be IsoEra");
    }

    @Override // j$.time.chrono.l
    public final List D() {
        return j$.time.b.b(t.values());
    }

    @Override // j$.time.chrono.AbstractC4272a, j$.time.chrono.l
    public final InterfaceC4273b P(Map map, j$.time.format.x xVar) {
        return (j$.time.h) super.P(map, xVar);
    }

    @Override // j$.time.chrono.AbstractC4272a
    final void S(Map map, j$.time.format.x xVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(aVar);
        if (l != null) {
            if (xVar != j$.time.format.x.LENIENT) {
                aVar.a0(l.longValue());
            }
            AbstractC4272a.p(map, j$.time.temporal.a.MONTH_OF_YEAR, ((int) Math.floorMod(l.longValue(), r4)) + 1);
            AbstractC4272a.p(map, j$.time.temporal.a.YEAR, Math.floorDiv(l.longValue(), 12));
        }
    }

    @Override // j$.time.chrono.AbstractC4272a
    final InterfaceC4273b W(Map map, j$.time.format.x xVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR_OF_ERA;
        Long l = (Long) map.remove(aVar);
        if (l != null) {
            if (xVar != j$.time.format.x.LENIENT) {
                aVar.a0(l.longValue());
            }
            Long l2 = (Long) map.remove(j$.time.temporal.a.ERA);
            if (l2 != null) {
                if (l2.longValue() == 1) {
                    AbstractC4272a.p(map, j$.time.temporal.a.YEAR, l.longValue());
                    return null;
                }
                if (l2.longValue() == 0) {
                    AbstractC4272a.p(map, j$.time.temporal.a.YEAR, Math.subtractExact(1L, l.longValue()));
                    return null;
                }
                throw new j$.time.c("Invalid value for era: " + l2);
            }
            j$.time.temporal.a aVar2 = j$.time.temporal.a.YEAR;
            Long l3 = (Long) map.get(aVar2);
            if (xVar != j$.time.format.x.STRICT) {
                AbstractC4272a.p(map, aVar2, (l3 == null || l3.longValue() > 0) ? l.longValue() : Math.subtractExact(1L, l.longValue()));
                return null;
            }
            if (l3 != null) {
                long jLongValue = l3.longValue();
                long jLongValue2 = l.longValue();
                if (jLongValue <= 0) {
                    jLongValue2 = Math.subtractExact(1L, jLongValue2);
                }
                AbstractC4272a.p(map, aVar2, jLongValue2);
                return null;
            }
            map.put(aVar, l);
            return null;
        }
        j$.time.temporal.a aVar3 = j$.time.temporal.a.ERA;
        if (!map.containsKey(aVar3)) {
            return null;
        }
        aVar3.a0(((Long) map.get(aVar3)).longValue());
        return null;
    }

    @Override // j$.time.chrono.AbstractC4272a
    final InterfaceC4273b T(Map map, j$.time.format.x xVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        int iZ = aVar.Z(((Long) map.remove(aVar)).longValue());
        boolean z = true;
        if (xVar == j$.time.format.x.LENIENT) {
            return j$.time.h.f0(iZ, 1, 1).l0(Math.subtractExact(((Long) map.remove(j$.time.temporal.a.MONTH_OF_YEAR)).longValue(), 1L)).k0(Math.subtractExact(((Long) map.remove(j$.time.temporal.a.DAY_OF_MONTH)).longValue(), 1L));
        }
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MONTH_OF_YEAR;
        int iZ2 = aVar2.Z(((Long) map.remove(aVar2)).longValue());
        j$.time.temporal.a aVar3 = j$.time.temporal.a.DAY_OF_MONTH;
        int iZ3 = aVar3.Z(((Long) map.remove(aVar3)).longValue());
        if (xVar == j$.time.format.x.SMART) {
            if (iZ2 == 4 || iZ2 == 6 || iZ2 == 9 || iZ2 == 11) {
                iZ3 = Math.min(iZ3, 30);
            } else if (iZ2 == 2) {
                j$.time.m mVar = j$.time.m.FEBRUARY;
                long j = iZ;
                int i = j$.time.u.b;
                if ((3 & j) != 0 || (j % 100 == 0 && j % 400 != 0)) {
                    z = false;
                }
                iZ3 = Math.min(iZ3, mVar.C(z));
            }
        }
        return j$.time.h.f0(iZ, iZ2, iZ3);
    }

    @Override // j$.time.chrono.l
    public final j$.time.temporal.x U(j$.time.temporal.a aVar) {
        return aVar.C();
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    Object writeReplace() {
        return new E((byte) 1, this);
    }
}
