package j$.time.chrono;

import com.ironsource.C3670j8;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j$.time.chrono.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC4272a implements l {
    private static final ConcurrentHashMap a = new ConcurrentHashMap();
    private static final ConcurrentHashMap b = new ConcurrentHashMap();
    public static final /* synthetic */ int c = 0;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return s().compareTo(((l) obj).s());
    }

    static {
        new Locale("ja", "JP", "JP");
    }

    static l C(AbstractC4272a abstractC4272a, String str) {
        String strR;
        l lVar = (l) a.putIfAbsent(str, abstractC4272a);
        if (lVar == null && (strR = abstractC4272a.R()) != null) {
            b.putIfAbsent(strR, abstractC4272a);
        }
        return lVar;
    }

    static l r(String str) {
        Objects.requireNonNull(str, C3670j8.x);
        while (true) {
            ConcurrentHashMap concurrentHashMap = a;
            l lVar = (l) concurrentHashMap.get(str);
            if (lVar == null) {
                lVar = (l) b.get(str);
            }
            if (lVar != null) {
                return lVar;
            }
            if (concurrentHashMap.get("ISO") != null) {
                for (l lVar2 : ServiceLoader.load(l.class)) {
                    if (str.equals(lVar2.s()) || str.equals(lVar2.R())) {
                        return lVar2;
                    }
                }
                throw new j$.time.c("Unknown chronology: ".concat(str));
            }
            o oVar = o.m;
            C(oVar, oVar.s());
            v vVar = v.d;
            C(vVar, vVar.s());
            A a2 = A.d;
            C(a2, a2.s());
            G g = G.d;
            C(g, g.s());
            try {
                for (AbstractC4272a abstractC4272a : Arrays.asList(new AbstractC4272a[0])) {
                    if (!abstractC4272a.s().equals("ISO")) {
                        C(abstractC4272a, abstractC4272a.s());
                    }
                }
                s sVar = s.d;
                C(sVar, sVar.s());
            } catch (Throwable th) {
                throw new ServiceConfigurationError(th.getMessage(), th);
            }
        }
    }

    protected AbstractC4272a() {
    }

    @Override // j$.time.chrono.l
    public InterfaceC4273b P(Map map, j$.time.format.x xVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.EPOCH_DAY;
        if (map.containsKey(aVar)) {
            return q(((Long) map.remove(aVar)).longValue());
        }
        S(map, xVar);
        InterfaceC4273b interfaceC4273bW = W(map, xVar);
        if (interfaceC4273bW != null) {
            return interfaceC4273bW;
        }
        j$.time.temporal.a aVar2 = j$.time.temporal.a.YEAR;
        if (!map.containsKey(aVar2)) {
            return null;
        }
        j$.time.temporal.a aVar3 = j$.time.temporal.a.MONTH_OF_YEAR;
        if (map.containsKey(aVar3)) {
            if (map.containsKey(j$.time.temporal.a.DAY_OF_MONTH)) {
                return T(map, xVar);
            }
            j$.time.temporal.a aVar4 = j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH;
            if (map.containsKey(aVar4)) {
                j$.time.temporal.a aVar5 = j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                if (map.containsKey(aVar5)) {
                    int iA = U(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
                    if (xVar == j$.time.format.x.LENIENT) {
                        long jSubtractExact = Math.subtractExact(((Long) map.remove(aVar3)).longValue(), 1L);
                        return G(iA, 1, 1).d(jSubtractExact, (j$.time.temporal.v) j$.time.temporal.b.MONTHS).d(Math.subtractExact(((Long) map.remove(aVar4)).longValue(), 1L), (j$.time.temporal.v) j$.time.temporal.b.WEEKS).d(Math.subtractExact(((Long) map.remove(aVar5)).longValue(), 1L), (j$.time.temporal.v) j$.time.temporal.b.DAYS);
                    }
                    int iA2 = U(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
                    int iA3 = U(aVar4).a(((Long) map.remove(aVar4)).longValue(), aVar4);
                    InterfaceC4273b interfaceC4273bD = G(iA, iA2, 1).d((U(aVar5).a(((Long) map.remove(aVar5)).longValue(), aVar5) - 1) + ((iA3 - 1) * 7), (j$.time.temporal.v) j$.time.temporal.b.DAYS);
                    if (xVar != j$.time.format.x.STRICT || interfaceC4273bD.i(aVar3) == iA2) {
                        return interfaceC4273bD;
                    }
                    throw new j$.time.c("Strict mode rejected resolved date as it is in a different month");
                }
                j$.time.temporal.a aVar6 = j$.time.temporal.a.DAY_OF_WEEK;
                if (map.containsKey(aVar6)) {
                    int iA4 = U(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
                    if (xVar == j$.time.format.x.LENIENT) {
                        return J(G(iA4, 1, 1), Math.subtractExact(((Long) map.remove(aVar3)).longValue(), 1L), Math.subtractExact(((Long) map.remove(aVar4)).longValue(), 1L), Math.subtractExact(((Long) map.remove(aVar6)).longValue(), 1L));
                    }
                    int iA5 = U(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
                    InterfaceC4273b interfaceC4273bM = G(iA4, iA5, 1).d((U(aVar4).a(((Long) map.remove(aVar4)).longValue(), aVar4) - 1) * 7, (j$.time.temporal.v) j$.time.temporal.b.DAYS).m(new j$.time.temporal.p(j$.time.e.r(U(aVar6).a(((Long) map.remove(aVar6)).longValue(), aVar6)).p(), 0));
                    if (xVar != j$.time.format.x.STRICT || interfaceC4273bM.i(aVar3) == iA5) {
                        return interfaceC4273bM;
                    }
                    throw new j$.time.c("Strict mode rejected resolved date as it is in a different month");
                }
            }
        }
        j$.time.temporal.a aVar7 = j$.time.temporal.a.DAY_OF_YEAR;
        if (map.containsKey(aVar7)) {
            int iA6 = U(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
            if (xVar != j$.time.format.x.LENIENT) {
                return A(iA6, U(aVar7).a(((Long) map.remove(aVar7)).longValue(), aVar7));
            }
            return A(iA6, 1).d(Math.subtractExact(((Long) map.remove(aVar7)).longValue(), 1L), (j$.time.temporal.v) j$.time.temporal.b.DAYS);
        }
        j$.time.temporal.a aVar8 = j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR;
        if (!map.containsKey(aVar8)) {
            return null;
        }
        j$.time.temporal.a aVar9 = j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR;
        if (map.containsKey(aVar9)) {
            int iA7 = U(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
            if (xVar == j$.time.format.x.LENIENT) {
                return A(iA7, 1).d(Math.subtractExact(((Long) map.remove(aVar8)).longValue(), 1L), (j$.time.temporal.v) j$.time.temporal.b.WEEKS).d(Math.subtractExact(((Long) map.remove(aVar9)).longValue(), 1L), (j$.time.temporal.v) j$.time.temporal.b.DAYS);
            }
            int iA8 = U(aVar8).a(((Long) map.remove(aVar8)).longValue(), aVar8);
            InterfaceC4273b interfaceC4273bD2 = A(iA7, 1).d((U(aVar9).a(((Long) map.remove(aVar9)).longValue(), aVar9) - 1) + ((iA8 - 1) * 7), (j$.time.temporal.v) j$.time.temporal.b.DAYS);
            if (xVar != j$.time.format.x.STRICT || interfaceC4273bD2.i(aVar2) == iA7) {
                return interfaceC4273bD2;
            }
            throw new j$.time.c("Strict mode rejected resolved date as it is in a different year");
        }
        j$.time.temporal.a aVar10 = j$.time.temporal.a.DAY_OF_WEEK;
        if (!map.containsKey(aVar10)) {
            return null;
        }
        int iA9 = U(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
        if (xVar == j$.time.format.x.LENIENT) {
            return J(A(iA9, 1), 0L, Math.subtractExact(((Long) map.remove(aVar8)).longValue(), 1L), Math.subtractExact(((Long) map.remove(aVar10)).longValue(), 1L));
        }
        InterfaceC4273b interfaceC4273bM2 = A(iA9, 1).d((U(aVar8).a(((Long) map.remove(aVar8)).longValue(), aVar8) - 1) * 7, (j$.time.temporal.v) j$.time.temporal.b.DAYS).m(new j$.time.temporal.p(j$.time.e.r(U(aVar10).a(((Long) map.remove(aVar10)).longValue(), aVar10)).p(), 0));
        if (xVar != j$.time.format.x.STRICT || interfaceC4273bM2.i(aVar2) == iA9) {
            return interfaceC4273bM2;
        }
        throw new j$.time.c("Strict mode rejected resolved date as it is in a different year");
    }

    void S(Map map, j$.time.format.x xVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(aVar);
        if (l != null) {
            if (xVar != j$.time.format.x.LENIENT) {
                aVar.a0(l.longValue());
            }
            InterfaceC4273b interfaceC4273bB = L().b(1L, (j$.time.temporal.s) j$.time.temporal.a.DAY_OF_MONTH).b(l.longValue(), (j$.time.temporal.s) aVar);
            p(map, j$.time.temporal.a.MONTH_OF_YEAR, interfaceC4273bB.i(r0));
            p(map, j$.time.temporal.a.YEAR, interfaceC4273bB.i(r0));
        }
    }

    InterfaceC4273b W(Map map, j$.time.format.x xVar) {
        int intExact;
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR_OF_ERA;
        Long l = (Long) map.remove(aVar);
        if (l != null) {
            Long l2 = (Long) map.remove(j$.time.temporal.a.ERA);
            if (xVar != j$.time.format.x.LENIENT) {
                intExact = U(aVar).a(l.longValue(), aVar);
            } else {
                intExact = Math.toIntExact(l.longValue());
            }
            if (l2 != null) {
                p(map, j$.time.temporal.a.YEAR, w(N(U(r2).a(l2.longValue(), r2)), intExact));
                return null;
            }
            j$.time.temporal.a aVar2 = j$.time.temporal.a.YEAR;
            if (map.containsKey(aVar2)) {
                p(map, aVar2, w(A(U(aVar2).a(((Long) map.get(aVar2)).longValue(), aVar2), 1).u(), intExact));
                return null;
            }
            if (xVar == j$.time.format.x.STRICT) {
                map.put(aVar, l);
                return null;
            }
            if (D().isEmpty()) {
                p(map, aVar2, intExact);
                return null;
            }
            p(map, aVar2, w((m) r9.get(r9.size() - 1), intExact));
            return null;
        }
        j$.time.temporal.a aVar3 = j$.time.temporal.a.ERA;
        if (!map.containsKey(aVar3)) {
            return null;
        }
        U(aVar3).b(((Long) map.get(aVar3)).longValue(), aVar3);
        return null;
    }

    InterfaceC4273b T(Map map, j$.time.format.x xVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        int iA = U(aVar).a(((Long) map.remove(aVar)).longValue(), aVar);
        if (xVar == j$.time.format.x.LENIENT) {
            long jSubtractExact = Math.subtractExact(((Long) map.remove(j$.time.temporal.a.MONTH_OF_YEAR)).longValue(), 1L);
            return G(iA, 1, 1).d(jSubtractExact, (j$.time.temporal.v) j$.time.temporal.b.MONTHS).d(Math.subtractExact(((Long) map.remove(j$.time.temporal.a.DAY_OF_MONTH)).longValue(), 1L), (j$.time.temporal.v) j$.time.temporal.b.DAYS);
        }
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MONTH_OF_YEAR;
        int iA2 = U(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
        j$.time.temporal.a aVar3 = j$.time.temporal.a.DAY_OF_MONTH;
        int iA3 = U(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
        if (xVar != j$.time.format.x.SMART) {
            return G(iA, iA2, iA3);
        }
        try {
            return G(iA, iA2, iA3);
        } catch (j$.time.c unused) {
            return G(iA, iA2, 1).m(new j$.time.temporal.q(0));
        }
    }

    static InterfaceC4273b J(InterfaceC4273b interfaceC4273b, long j, long j2, long j3) {
        long j4;
        InterfaceC4273b interfaceC4273bD = interfaceC4273b.d(j, (j$.time.temporal.v) j$.time.temporal.b.MONTHS);
        j$.time.temporal.b bVar = j$.time.temporal.b.WEEKS;
        InterfaceC4273b interfaceC4273bD2 = interfaceC4273bD.d(j2, (j$.time.temporal.v) bVar);
        if (j3 > 7) {
            long j5 = j3 - 1;
            interfaceC4273bD2 = interfaceC4273bD2.d(j5 / 7, (j$.time.temporal.v) bVar);
            j4 = j5 % 7;
        } else {
            if (j3 < 1) {
                interfaceC4273bD2 = interfaceC4273bD2.d(Math.subtractExact(j3, 7L) / 7, (j$.time.temporal.v) bVar);
                j4 = (j3 + 6) % 7;
            }
            return interfaceC4273bD2.m(new j$.time.temporal.p(j$.time.e.r((int) j3).p(), 0));
        }
        j3 = j4 + 1;
        return interfaceC4273bD2.m(new j$.time.temporal.p(j$.time.e.r((int) j3).p(), 0));
    }

    static void p(Map map, j$.time.temporal.a aVar, long j) {
        Long l = (Long) map.get(aVar);
        if (l != null && l.longValue() != j) {
            throw new j$.time.c("Conflict found: " + aVar + " " + l + " differs from " + aVar + " " + j);
        }
        map.put(aVar, Long.valueOf(j));
    }

    @Override // j$.time.chrono.l
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AbstractC4272a) && s().compareTo(((AbstractC4272a) obj).s()) == 0;
    }

    @Override // j$.time.chrono.l
    public final int hashCode() {
        return getClass().hashCode() ^ s().hashCode();
    }

    @Override // j$.time.chrono.l
    public final String toString() {
        return s();
    }
}
