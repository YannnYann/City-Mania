package j$.time.format;

import j$.time.chrono.InterfaceC4273b;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class s {
    private j$.time.temporal.n a;
    private DateTimeFormatter b;
    private int c;

    s(j$.time.temporal.n nVar, DateTimeFormatter dateTimeFormatter) {
        j$.time.chrono.l lVarB = dateTimeFormatter.b();
        if (lVarB != null) {
            j$.time.chrono.l lVar = (j$.time.chrono.l) nVar.a(j$.time.temporal.t.a());
            j$.time.x xVar = (j$.time.x) nVar.a(j$.time.temporal.t.g());
            InterfaceC4273b interfaceC4273bT = null;
            lVarB = Objects.equals(lVarB, lVar) ? null : lVarB;
            if (lVarB != null) {
                j$.time.chrono.l lVar2 = lVarB != null ? lVarB : lVar;
                if (lVarB != null) {
                    if (nVar.f(j$.time.temporal.a.EPOCH_DAY)) {
                        interfaceC4273bT = lVar2.t(nVar);
                    } else if (lVarB != j$.time.chrono.s.d || lVar != null) {
                        for (j$.time.temporal.a aVar : j$.time.temporal.a.values()) {
                            if (aVar.T() && nVar.f(aVar)) {
                                throw new j$.time.c("Unable to apply override chronology '" + lVarB + "' because the temporal object being formatted contains date fields but does not represent a whole date: " + nVar);
                            }
                        }
                    }
                }
                nVar = new r(interfaceC4273bT, nVar, lVar2, xVar);
            }
        }
        this.a = nVar;
        this.b = dateTimeFormatter;
    }

    final j$.time.temporal.n d() {
        return this.a;
    }

    final Locale c() {
        return this.b.d();
    }

    final v b() {
        return this.b.c();
    }

    final void g() {
        this.c++;
    }

    final void a() {
        this.c--;
    }

    final Object f(a aVar) {
        j$.time.temporal.n nVar = this.a;
        Object objA = nVar.a(aVar);
        if (objA != null || this.c != 0) {
            return objA;
        }
        throw new j$.time.c("Unable to extract " + aVar + " from temporal " + nVar);
    }

    final Long e(j$.time.temporal.s sVar) {
        int i = this.c;
        j$.time.temporal.n nVar = this.a;
        if (i <= 0 || nVar.f(sVar)) {
            return Long.valueOf(nVar.g(sVar));
        }
        return null;
    }

    public final String toString() {
        return this.a.toString();
    }
}
