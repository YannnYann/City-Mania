package j$.time.temporal;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
enum k implements s {
    JULIAN_DAY("JulianDay", 2440588),
    MODIFIED_JULIAN_DAY("ModifiedJulianDay", 40587),
    RATA_DIE("RataDie", 719163);

    private static final long serialVersionUID = -7501623920830201812L;
    private final transient String a;
    private final transient x b;
    private final transient long c;

    @Override // j$.time.temporal.s
    public final boolean T() {
        return true;
    }

    static {
        b bVar = b.NANOS;
    }

    k(String str, long j) {
        this.a = str;
        this.b = x.j((-365243219162L) + j, 365241780471L + j);
        this.c = j;
    }

    @Override // j$.time.temporal.s
    public final x C() {
        return this.b;
    }

    @Override // j$.time.temporal.s
    public final x J(n nVar) {
        if (nVar.f(a.EPOCH_DAY)) {
            return this.b;
        }
        throw new j$.time.c("Unsupported field: " + this);
    }

    @Override // j$.time.temporal.s
    public final boolean W(n nVar) {
        return nVar.f(a.EPOCH_DAY);
    }

    @Override // j$.time.temporal.s
    public final long r(n nVar) {
        return nVar.g(a.EPOCH_DAY) + this.c;
    }

    @Override // j$.time.temporal.s
    public final m p(m mVar, long j) {
        if (!this.b.i(j)) {
            throw new j$.time.c("Invalid value: " + this.a + " " + j);
        }
        return mVar.b(Math.subtractExact(j, this.c), a.EPOCH_DAY);
    }

    @Override // j$.time.temporal.s
    public final n S(HashMap map, n nVar, j$.time.format.x xVar) {
        long jLongValue = ((Long) map.remove(this)).longValue();
        j$.time.chrono.l lVarF = j$.time.chrono.l.F(nVar);
        j$.time.format.x xVar2 = j$.time.format.x.LENIENT;
        long j = this.c;
        if (xVar == xVar2) {
            return lVarF.q(Math.subtractExact(jLongValue, j));
        }
        this.b.b(jLongValue, this);
        return lVarF.q(jLongValue - j);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
