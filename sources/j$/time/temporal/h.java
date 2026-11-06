package j$.time.temporal;

import java.util.HashMap;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
abstract class h implements s {
    public static final h DAY_OF_QUARTER;
    public static final h QUARTER_OF_YEAR;
    public static final h WEEK_BASED_YEAR;
    public static final h WEEK_OF_WEEK_BASED_YEAR;
    private static final int[] a;
    private static final /* synthetic */ h[] b;

    @Override // j$.time.temporal.s
    public final boolean T() {
        return true;
    }

    public static h valueOf(String str) {
        return (h) Enum.valueOf(h.class, str);
    }

    public static h[] values() {
        return (h[]) b.clone();
    }

    static {
        h hVar = new h() { // from class: j$.time.temporal.d
            @Override // j$.time.temporal.s
            public final x C() {
                return x.k(90L, 92L);
            }

            @Override // j$.time.temporal.s
            public final boolean W(n nVar) {
                if (!nVar.f(a.DAY_OF_YEAR) || !nVar.f(a.MONTH_OF_YEAR) || !nVar.f(a.YEAR)) {
                    return false;
                }
                s sVar = j.a;
                return j$.time.chrono.l.F(nVar).equals(j$.time.chrono.s.d);
            }

            @Override // j$.time.temporal.s
            public final x J(n nVar) {
                if (!W(nVar)) {
                    throw new w("Unsupported field: DayOfQuarter");
                }
                long jG = nVar.g(h.QUARTER_OF_YEAR);
                if (jG == 1) {
                    long jG2 = nVar.g(a.YEAR);
                    j$.time.chrono.s.d.getClass();
                    return j$.time.chrono.s.Z(jG2) ? x.j(1L, 91L) : x.j(1L, 90L);
                }
                if (jG == 2) {
                    return x.j(1L, 91L);
                }
                if (jG == 3 || jG == 4) {
                    return x.j(1L, 92L);
                }
                return C();
            }

            @Override // j$.time.temporal.s
            public final long r(n nVar) {
                if (!W(nVar)) {
                    throw new w("Unsupported field: DayOfQuarter");
                }
                int i = nVar.i(a.DAY_OF_YEAR);
                int i2 = nVar.i(a.MONTH_OF_YEAR);
                long jG = nVar.g(a.YEAR);
                int[] iArr = h.a;
                int i3 = (i2 - 1) / 3;
                j$.time.chrono.s.d.getClass();
                return i - iArr[i3 + (j$.time.chrono.s.Z(jG) ? 4 : 0)];
            }

            @Override // j$.time.temporal.s
            public final m p(m mVar, long j) {
                long jR = r(mVar);
                C().b(j, this);
                a aVar = a.DAY_OF_YEAR;
                return mVar.b((j - jR) + mVar.g(aVar), aVar);
            }

            @Override // j$.time.temporal.s
            public final n S(HashMap map, n nVar, j$.time.format.x xVar) {
                long jSubtractExact;
                j$.time.h hVarL0;
                a aVar = a.YEAR;
                Long l = (Long) map.get(aVar);
                s sVar = h.QUARTER_OF_YEAR;
                Long l2 = (Long) map.get(sVar);
                if (l == null || l2 == null) {
                    return null;
                }
                int iZ = aVar.Z(l.longValue());
                long jLongValue = ((Long) map.get(h.DAY_OF_QUARTER)).longValue();
                s sVar2 = j.a;
                if (!j$.time.chrono.l.F(nVar).equals(j$.time.chrono.s.d)) {
                    throw new j$.time.c("Resolve requires IsoChronology");
                }
                if (xVar == j$.time.format.x.LENIENT) {
                    hVarL0 = j$.time.h.f0(iZ, 1, 1).l0(Math.multiplyExact(Math.subtractExact(l2.longValue(), 1L), 3));
                    jSubtractExact = Math.subtractExact(jLongValue, 1L);
                } else {
                    j$.time.h hVarF0 = j$.time.h.f0(iZ, ((sVar.C().a(l2.longValue(), sVar) - 1) * 3) + 1, 1);
                    if (jLongValue < 1 || jLongValue > 90) {
                        if (xVar == j$.time.format.x.STRICT) {
                            J(hVarF0).b(jLongValue, this);
                        } else {
                            C().b(jLongValue, this);
                        }
                    }
                    jSubtractExact = jLongValue - 1;
                    hVarL0 = hVarF0;
                }
                map.remove(this);
                map.remove(aVar);
                map.remove(sVar);
                return hVarL0.k0(jSubtractExact);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }
        };
        DAY_OF_QUARTER = hVar;
        h hVar2 = new h() { // from class: j$.time.temporal.e
            @Override // j$.time.temporal.s
            public final x C() {
                return x.j(1L, 4L);
            }

            @Override // j$.time.temporal.s
            public final boolean W(n nVar) {
                if (!nVar.f(a.MONTH_OF_YEAR)) {
                    return false;
                }
                s sVar = j.a;
                return j$.time.chrono.l.F(nVar).equals(j$.time.chrono.s.d);
            }

            @Override // j$.time.temporal.s
            public final long r(n nVar) {
                if (!W(nVar)) {
                    throw new w("Unsupported field: QuarterOfYear");
                }
                return (nVar.g(a.MONTH_OF_YEAR) + 2) / 3;
            }

            @Override // j$.time.temporal.s
            public final x J(n nVar) {
                if (!W(nVar)) {
                    throw new w("Unsupported field: QuarterOfYear");
                }
                return C();
            }

            @Override // j$.time.temporal.s
            public final m p(m mVar, long j) {
                long jR = r(mVar);
                C().b(j, this);
                a aVar = a.MONTH_OF_YEAR;
                return mVar.b(((j - jR) * 3) + mVar.g(aVar), aVar);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "QuarterOfYear";
            }
        };
        QUARTER_OF_YEAR = hVar2;
        h hVar3 = new h() { // from class: j$.time.temporal.f
            @Override // j$.time.temporal.s
            public final x C() {
                return x.k(52L, 53L);
            }

            @Override // j$.time.temporal.s
            public final boolean W(n nVar) {
                if (!nVar.f(a.EPOCH_DAY)) {
                    return false;
                }
                s sVar = j.a;
                return j$.time.chrono.l.F(nVar).equals(j$.time.chrono.s.d);
            }

            @Override // j$.time.temporal.s
            public final x J(n nVar) {
                if (!W(nVar)) {
                    throw new w("Unsupported field: WeekOfWeekBasedYear");
                }
                return h.d0(j$.time.h.J(nVar));
            }

            @Override // j$.time.temporal.s
            public final long r(n nVar) {
                if (!W(nVar)) {
                    throw new w("Unsupported field: WeekOfWeekBasedYear");
                }
                return h.a0(j$.time.h.J(nVar));
            }

            @Override // j$.time.temporal.s
            public final m p(m mVar, long j) {
                C().b(j, this);
                return mVar.d(Math.subtractExact(j, r(mVar)), b.WEEKS);
            }

            @Override // j$.time.temporal.s
            public final n S(HashMap map, n nVar, j$.time.format.x xVar) {
                j$.time.h hVarB;
                long j;
                long j2;
                s sVar = h.WEEK_BASED_YEAR;
                Long l = (Long) map.get(sVar);
                a aVar = a.DAY_OF_WEEK;
                Long l2 = (Long) map.get(aVar);
                if (l == null || l2 == null) {
                    return null;
                }
                int iA = sVar.C().a(l.longValue(), sVar);
                long jLongValue = ((Long) map.get(h.WEEK_OF_WEEK_BASED_YEAR)).longValue();
                s sVar2 = j.a;
                if (j$.time.chrono.l.F(nVar).equals(j$.time.chrono.s.d)) {
                    j$.time.h hVarF0 = j$.time.h.f0(iA, 1, 4);
                    if (xVar == j$.time.format.x.LENIENT) {
                        long jLongValue2 = l2.longValue();
                        if (jLongValue2 > 7) {
                            long j3 = jLongValue2 - 1;
                            j = 1;
                            hVarF0 = hVarF0.m0(j3 / 7);
                            j2 = j3 % 7;
                        } else {
                            j = 1;
                            if (jLongValue2 < 1) {
                                hVarF0 = hVarF0.m0(Math.subtractExact(jLongValue2, 7L) / 7);
                                j2 = (jLongValue2 + 6) % 7;
                            }
                            hVarB = hVarF0.m0(Math.subtractExact(jLongValue, j)).b(jLongValue2, aVar);
                        }
                        jLongValue2 = j2 + j;
                        hVarB = hVarF0.m0(Math.subtractExact(jLongValue, j)).b(jLongValue2, aVar);
                    } else {
                        int iZ = aVar.Z(l2.longValue());
                        if (jLongValue < 1 || jLongValue > 52) {
                            if (xVar == j$.time.format.x.STRICT) {
                                h.d0(hVarF0).b(jLongValue, this);
                            } else {
                                C().b(jLongValue, this);
                            }
                        }
                        hVarB = hVarF0.m0(jLongValue - 1).b(iZ, aVar);
                    }
                    map.remove(this);
                    map.remove(sVar);
                    map.remove(aVar);
                    return hVarB;
                }
                throw new j$.time.c("Resolve requires IsoChronology");
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekOfWeekBasedYear";
            }
        };
        WEEK_OF_WEEK_BASED_YEAR = hVar3;
        h hVar4 = new h() { // from class: j$.time.temporal.g
            @Override // j$.time.temporal.s
            public final x C() {
                return a.YEAR.C();
            }

            @Override // j$.time.temporal.s
            public final boolean W(n nVar) {
                if (!nVar.f(a.EPOCH_DAY)) {
                    return false;
                }
                s sVar = j.a;
                return j$.time.chrono.l.F(nVar).equals(j$.time.chrono.s.d);
            }

            @Override // j$.time.temporal.s
            public final long r(n nVar) {
                if (!W(nVar)) {
                    throw new w("Unsupported field: WeekBasedYear");
                }
                return h.e0(j$.time.h.J(nVar));
            }

            @Override // j$.time.temporal.s
            public final x J(n nVar) {
                if (!W(nVar)) {
                    throw new w("Unsupported field: WeekBasedYear");
                }
                return C();
            }

            @Override // j$.time.temporal.s
            public final m p(m mVar, long j) {
                if (!W(mVar)) {
                    throw new w("Unsupported field: WeekBasedYear");
                }
                int iA = a.YEAR.C().a(j, h.WEEK_BASED_YEAR);
                j$.time.h hVarJ = j$.time.h.J(mVar);
                int i = hVarJ.i(a.DAY_OF_WEEK);
                int iA0 = h.a0(hVarJ);
                if (iA0 == 53 && h.f0(iA) == 52) {
                    iA0 = 52;
                }
                return mVar.m(j$.time.h.f0(iA, 1, 4).k0(((iA0 - 1) * 7) + (i - r6.i(r0))));
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekBasedYear";
            }
        };
        WEEK_BASED_YEAR = hVar4;
        b = new h[]{hVar, hVar2, hVar3, hVar4};
        a = new int[]{0, 90, 181, 273, 0, 91, 182, 274};
    }

    static x d0(j$.time.h hVar) {
        return x.j(1L, f0(e0(hVar)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int f0(int i) {
        j$.time.h hVarF0 = j$.time.h.f0(i, 1, 1);
        if (hVarF0.T() != j$.time.e.THURSDAY) {
            return (hVarF0.T() == j$.time.e.WEDNESDAY && hVarF0.c0()) ? 53 : 52;
        }
        return 53;
    }

    static int a0(j$.time.h hVar) {
        int iOrdinal = hVar.T().ordinal();
        int iW = hVar.W() - 1;
        int i = (3 - iOrdinal) + iW;
        int i2 = i - ((i / 7) * 7);
        int i3 = i2 - 3;
        if (i3 < -3) {
            i3 = i2 + 4;
        }
        if (iW < i3) {
            return (int) x.j(1L, f0(e0(hVar.r0(180).n0(-1L)))).d();
        }
        int i4 = ((iW - i3) / 7) + 1;
        if (i4 != 53 || i3 == -3 || (i3 == -2 && hVar.c0())) {
            return i4;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int e0(j$.time.h hVar) {
        int iA0 = hVar.a0();
        int iW = hVar.W();
        if (iW <= 3) {
            return iW - hVar.T().ordinal() < -2 ? iA0 - 1 : iA0;
        }
        if (iW >= 363) {
            return ((iW - 363) - (hVar.c0() ? 1 : 0)) - hVar.T().ordinal() >= 0 ? iA0 + 1 : iA0;
        }
        return iA0;
    }
}
