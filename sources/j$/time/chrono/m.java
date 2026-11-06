package j$.time.chrono;

/* JADX INFO: loaded from: classes2.dex */
public interface m extends j$.time.temporal.n, j$.time.temporal.o {
    int p();

    @Override // j$.time.temporal.n
    default boolean f(j$.time.temporal.s sVar) {
        return sVar instanceof j$.time.temporal.a ? sVar == j$.time.temporal.a.ERA : sVar != null && sVar.W(this);
    }

    @Override // j$.time.temporal.n
    default int i(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.a.ERA) {
            return p();
        }
        return super.i(sVar);
    }

    @Override // j$.time.temporal.n
    default long g(j$.time.temporal.s sVar) {
        if (sVar == j$.time.temporal.a.ERA) {
            return p();
        }
        if (sVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.w(j$.time.d.a("Unsupported field: ", sVar));
        }
        return sVar.r(this);
    }

    @Override // j$.time.temporal.n
    default Object a(j$.time.temporal.u uVar) {
        if (uVar == j$.time.temporal.t.e()) {
            return j$.time.temporal.b.ERAS;
        }
        return super.a(uVar);
    }

    @Override // j$.time.temporal.o
    default j$.time.temporal.m c(j$.time.temporal.m mVar) {
        return mVar.b(p(), j$.time.temporal.a.ERA);
    }
}
