package j$.time.chrono;

import j$.time.Instant;
import j$.time.ZoneOffset;
import j$.time.chrono.InterfaceC4273b;

/* JADX INFO: loaded from: classes2.dex */
public interface ChronoZonedDateTime<D extends InterfaceC4273b> extends j$.time.temporal.m, Comparable<ChronoZonedDateTime<?>> {
    InterfaceC4276e B();

    ZoneOffset E();

    ChronoZonedDateTime I(j$.time.x xVar);

    j$.time.x Q();

    @Override // j$.time.temporal.m
    ChronoZonedDateTime b(long j, j$.time.temporal.s sVar);

    @Override // j$.time.temporal.m
    ChronoZonedDateTime d(long j, j$.time.temporal.v vVar);

    @Override // j$.time.temporal.n
    default j$.time.temporal.x l(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            if (sVar == j$.time.temporal.a.INSTANT_SECONDS || sVar == j$.time.temporal.a.OFFSET_SECONDS) {
                return ((j$.time.temporal.a) sVar).C();
            }
            return B().l(sVar);
        }
        return sVar.J(this);
    }

    @Override // j$.time.temporal.n
    default int i(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            int i = AbstractC4280i.a[((j$.time.temporal.a) sVar).ordinal()];
            if (i == 1) {
                throw new j$.time.temporal.w("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
            }
            if (i == 2) {
                return E().b0();
            }
            return B().i(sVar);
        }
        return super.i(sVar);
    }

    @Override // j$.time.temporal.n
    default long g(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            int i = AbstractC4280i.a[((j$.time.temporal.a) sVar).ordinal()];
            if (i == 1) {
                return O();
            }
            if (i == 2) {
                return E().b0();
            }
            return B().g(sVar);
        }
        return sVar.r(this);
    }

    default InterfaceC4273b o() {
        return B().o();
    }

    default j$.time.k n() {
        return B().n();
    }

    default l h() {
        return o().h();
    }

    @Override // j$.time.temporal.m
    default ChronoZonedDateTime m(j$.time.temporal.o oVar) {
        return k.r(h(), oVar.c(this));
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    default ChronoZonedDateTime e(long j, j$.time.temporal.b bVar) {
        return k.r(h(), super.e(j, bVar));
    }

    @Override // j$.time.temporal.n
    default Object a(j$.time.temporal.u uVar) {
        if (uVar == j$.time.temporal.t.f() || uVar == j$.time.temporal.t.g()) {
            return Q();
        }
        if (uVar == j$.time.temporal.t.d()) {
            return E();
        }
        if (uVar == j$.time.temporal.t.c()) {
            return n();
        }
        if (uVar == j$.time.temporal.t.a()) {
            return h();
        }
        if (uVar == j$.time.temporal.t.e()) {
            return j$.time.temporal.b.NANOS;
        }
        return uVar.j(this);
    }

    default Instant toInstant() {
        return Instant.W(O(), n().W());
    }

    default long O() {
        return ((o().v() * 86400) + ((long) n().l0())) - ((long) E().b0());
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    default int compareTo(ChronoZonedDateTime chronoZonedDateTime) {
        int iCompare = Long.compare(O(), chronoZonedDateTime.O());
        return (iCompare == 0 && (iCompare = n().W() - chronoZonedDateTime.n().W()) == 0 && (iCompare = B().compareTo(chronoZonedDateTime.B())) == 0 && (iCompare = Q().s().compareTo(chronoZonedDateTime.Q().s())) == 0) ? ((AbstractC4272a) h()).s().compareTo(chronoZonedDateTime.h().s()) : iCompare;
    }
}
