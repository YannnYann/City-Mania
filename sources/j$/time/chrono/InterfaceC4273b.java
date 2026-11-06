package j$.time.chrono;

/* JADX INFO: renamed from: j$.time.chrono.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC4273b extends j$.time.temporal.m, j$.time.temporal.o, Comparable {
    InterfaceC4273b M(j$.time.temporal.r rVar);

    @Override // j$.time.temporal.m
    InterfaceC4273b b(long j, j$.time.temporal.s sVar);

    @Override // j$.time.temporal.m
    InterfaceC4273b d(long j, j$.time.temporal.v vVar);

    boolean equals(Object obj);

    l h();

    int hashCode();

    InterfaceC4273b m(j$.time.temporal.o oVar);

    String toString();

    default m u() {
        return h().N(i(j$.time.temporal.a.ERA));
    }

    @Override // j$.time.temporal.n
    default boolean f(j$.time.temporal.s sVar) {
        if (sVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) sVar).T();
        }
        return sVar != null && sVar.W(this);
    }

    @Override // j$.time.temporal.m
    default InterfaceC4273b e(long j, j$.time.temporal.v vVar) {
        return AbstractC4275d.r(h(), super.e(j, vVar));
    }

    @Override // j$.time.temporal.n
    default Object a(j$.time.temporal.u uVar) {
        if (uVar == j$.time.temporal.t.g() || uVar == j$.time.temporal.t.f() || uVar == j$.time.temporal.t.d() || uVar == j$.time.temporal.t.c()) {
            return null;
        }
        if (uVar == j$.time.temporal.t.a()) {
            return h();
        }
        if (uVar == j$.time.temporal.t.e()) {
            return j$.time.temporal.b.DAYS;
        }
        return uVar.j(this);
    }

    @Override // j$.time.temporal.o
    default j$.time.temporal.m c(j$.time.temporal.m mVar) {
        return mVar.b(v(), j$.time.temporal.a.EPOCH_DAY);
    }

    default InterfaceC4276e K(j$.time.k kVar) {
        return C4278g.C(this, kVar);
    }

    default long v() {
        return g(j$.time.temporal.a.EPOCH_DAY);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: V */
    default int compareTo(InterfaceC4273b interfaceC4273b) {
        int iCompare = Long.compare(v(), interfaceC4273b.v());
        if (iCompare != 0) {
            return iCompare;
        }
        return ((AbstractC4272a) h()).s().compareTo(interfaceC4273b.h().s());
    }
}
