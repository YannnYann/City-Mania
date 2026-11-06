package j$.time.chrono;

import j$.time.Instant;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class v extends AbstractC4272a implements Serializable {
    public static final v d = new v();
    private static final long serialVersionUID = 459996390165777884L;

    @Override // j$.time.chrono.l
    public final String s() {
        return "Japanese";
    }

    @Override // j$.time.chrono.l
    public final String R() {
        return "japanese";
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b G(int i, int i2, int i3) {
        return new x(j$.time.h.f0(i, i2, i3));
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b A(int i, int i2) {
        return new x(j$.time.h.i0(i, i2));
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b q(long j) {
        return new x(j$.time.h.h0(j));
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b L() {
        return new x(j$.time.h.J(j$.time.h.e0(j$.time.b.c())));
    }

    @Override // j$.time.chrono.l
    public final InterfaceC4273b t(j$.time.temporal.n nVar) {
        if (nVar instanceof x) {
            return (x) nVar;
        }
        return new x(j$.time.h.J(nVar));
    }

    private v() {
    }

    @Override // j$.time.chrono.l
    public final int w(m mVar, int i) {
        if (!(mVar instanceof y)) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        y yVar = (y) mVar;
        int iA0 = (yVar.s().a0() + i) - 1;
        if (i != 1 && (iA0 < -999999999 || iA0 > 999999999 || iA0 < yVar.s().a0() || mVar != y.q(j$.time.h.f0(iA0, 1, 1)))) {
            throw new j$.time.c("Invalid yearOfEra value");
        }
        return iA0;
    }

    @Override // j$.time.chrono.l
    public final m N(int i) {
        return y.w(i);
    }

    @Override // j$.time.chrono.l
    public final List D() {
        return j$.time.b.b(y.A());
    }

    @Override // j$.time.chrono.l
    public final j$.time.temporal.x U(j$.time.temporal.a aVar) {
        switch (u.a[aVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                throw new j$.time.temporal.w("Unsupported field: " + aVar);
            case 5:
                return j$.time.temporal.x.k(y.y(), 999999999 - y.r().s().a0());
            case 6:
                return j$.time.temporal.x.k(y.x(), j$.time.temporal.a.DAY_OF_YEAR.C().d());
            case 7:
                return j$.time.temporal.x.j(x.d.a0(), 999999999L);
            case 8:
                return j$.time.temporal.x.j(y.d.p(), y.r().p());
            default:
                return aVar.C();
        }
    }

    @Override // j$.time.chrono.AbstractC4272a, j$.time.chrono.l
    public final InterfaceC4273b P(Map map, j$.time.format.x xVar) {
        return (x) super.P(map, xVar);
    }

    @Override // j$.time.chrono.AbstractC4272a
    final InterfaceC4273b W(Map map, j$.time.format.x xVar) {
        x xVarB0;
        j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
        Long l = (Long) map.get(aVar);
        y yVarW = l != null ? y.w(U(aVar).a(l.longValue(), aVar)) : null;
        j$.time.temporal.a aVar2 = j$.time.temporal.a.YEAR_OF_ERA;
        Long l2 = (Long) map.get(aVar2);
        int iA = l2 != null ? U(aVar2).a(l2.longValue(), aVar2) : 0;
        if (yVarW == null && l2 != null && !map.containsKey(j$.time.temporal.a.YEAR) && xVar != j$.time.format.x.STRICT) {
            yVarW = y.A()[y.A().length - 1];
        }
        if (l2 != null && yVarW != null) {
            j$.time.temporal.a aVar3 = j$.time.temporal.a.MONTH_OF_YEAR;
            if (map.containsKey(aVar3)) {
                j$.time.temporal.a aVar4 = j$.time.temporal.a.DAY_OF_MONTH;
                if (map.containsKey(aVar4)) {
                    map.remove(aVar);
                    map.remove(aVar2);
                    if (xVar == j$.time.format.x.LENIENT) {
                        return new x(j$.time.h.f0((yVarW.s().a0() + iA) - 1, 1, 1)).W(Math.subtractExact(((Long) map.remove(aVar3)).longValue(), 1L), j$.time.temporal.b.MONTHS).W(Math.subtractExact(((Long) map.remove(aVar4)).longValue(), 1L), j$.time.temporal.b.DAYS);
                    }
                    int iA2 = U(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
                    int iA3 = U(aVar4).a(((Long) map.remove(aVar4)).longValue(), aVar4);
                    if (xVar != j$.time.format.x.SMART) {
                        j$.time.h hVar = x.d;
                        j$.time.h hVarF0 = j$.time.h.f0((yVarW.s().a0() + iA) - 1, iA2, iA3);
                        if (hVarF0.b0(yVarW.s()) || yVarW != y.q(hVarF0)) {
                            throw new j$.time.c("year, month, and day not valid for Era");
                        }
                        return new x(yVarW, iA, hVarF0);
                    }
                    if (iA < 1) {
                        throw new j$.time.c("Invalid YearOfEra: " + iA);
                    }
                    int iA0 = (yVarW.s().a0() + iA) - 1;
                    try {
                        xVarB0 = new x(j$.time.h.f0(iA0, iA2, iA3));
                    } catch (j$.time.c unused) {
                        xVarB0 = new x(j$.time.h.f0(iA0, iA2, 1)).b0(new j$.time.temporal.q(0));
                    }
                    if (xVarB0.T() == yVarW || xVarB0.i(j$.time.temporal.a.YEAR_OF_ERA) <= 1 || iA <= 1) {
                        return xVarB0;
                    }
                    throw new j$.time.c("Invalid YearOfEra for Era: " + yVarW + " " + iA);
                }
            }
            j$.time.temporal.a aVar5 = j$.time.temporal.a.DAY_OF_YEAR;
            if (map.containsKey(aVar5)) {
                map.remove(aVar);
                map.remove(aVar2);
                if (xVar == j$.time.format.x.LENIENT) {
                    return new x(j$.time.h.i0((yVarW.s().a0() + iA) - 1, 1)).W(Math.subtractExact(((Long) map.remove(aVar5)).longValue(), 1L), j$.time.temporal.b.DAYS);
                }
                int iA4 = U(aVar5).a(((Long) map.remove(aVar5)).longValue(), aVar5);
                j$.time.h hVar2 = x.d;
                j$.time.h hVarI0 = iA == 1 ? j$.time.h.i0(yVarW.s().a0(), (yVarW.s().W() + iA4) - 1) : j$.time.h.i0((yVarW.s().a0() + iA) - 1, iA4);
                if (hVarI0.b0(yVarW.s()) || yVarW != y.q(hVarI0)) {
                    throw new j$.time.c("Invalid parameters");
                }
                return new x(yVarW, iA, hVarI0);
            }
        }
        return null;
    }

    @Override // j$.time.chrono.l
    public final ChronoZonedDateTime y(Instant instant, j$.time.x xVar) {
        return k.J(this, instant, xVar);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    Object writeReplace() {
        return new E((byte) 1, this);
    }
}
