package j$.time.chrono;

import j$.time.ZoneOffset;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.chrono.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC4276e extends j$.time.temporal.m, j$.time.temporal.o, Comparable {
    ChronoZonedDateTime H(j$.time.x xVar);

    j$.time.k n();

    InterfaceC4273b o();

    default l h() {
        return o().h();
    }

    @Override // j$.time.temporal.m
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    default InterfaceC4276e e(long j, j$.time.temporal.b bVar) {
        return C4278g.r(h(), super.e(j, bVar));
    }

    @Override // j$.time.temporal.n
    default Object a(j$.time.temporal.u uVar) {
        if (uVar == j$.time.temporal.t.g() || uVar == j$.time.temporal.t.f() || uVar == j$.time.temporal.t.d()) {
            return null;
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

    @Override // j$.time.temporal.o
    default j$.time.temporal.m c(j$.time.temporal.m mVar) {
        return mVar.b(o().v(), j$.time.temporal.a.EPOCH_DAY).b(n().k0(), j$.time.temporal.a.NANO_OF_DAY);
    }

    default long Y(ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        return ((o().v() * 86400) + ((long) n().l0())) - ((long) zoneOffset.b0());
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: X */
    default int compareTo(InterfaceC4276e interfaceC4276e) {
        int iCompareTo = o().compareTo(interfaceC4276e.o());
        return (iCompareTo == 0 && (iCompareTo = n().compareTo(interfaceC4276e.n())) == 0) ? ((AbstractC4272a) h()).s().compareTo(interfaceC4276e.h().s()) : iCompareTo;
    }
}
