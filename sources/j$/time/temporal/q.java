package j$.time.temporal;

import j$.time.ZoneOffset;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class q implements u, o {
    public final /* synthetic */ int a;

    public /* synthetic */ q(int i) {
        this.a = i;
    }

    @Override // j$.time.temporal.o
    public m c(m mVar) {
        a aVar = a.DAY_OF_MONTH;
        return mVar.b(mVar.l(aVar).d(), aVar);
    }

    @Override // j$.time.temporal.u
    public Object j(n nVar) {
        switch (this.a) {
            case 1:
                return (j$.time.x) nVar.a(t.a);
            case 2:
                return (j$.time.chrono.l) nVar.a(t.b);
            case 3:
                return (v) nVar.a(t.c);
            case 4:
                a aVar = a.OFFSET_SECONDS;
                if (nVar.f(aVar)) {
                    return ZoneOffset.e0(nVar.i(aVar));
                }
                return null;
            case 5:
                j$.time.x xVar = (j$.time.x) nVar.a(t.a);
                return xVar != null ? xVar : (j$.time.x) nVar.a(t.d);
            case 6:
                a aVar2 = a.EPOCH_DAY;
                if (nVar.f(aVar2)) {
                    return j$.time.h.h0(nVar.g(aVar2));
                }
                return null;
            default:
                a aVar3 = a.NANO_OF_DAY;
                if (nVar.f(aVar3)) {
                    return j$.time.k.c0(nVar.g(aVar3));
                }
                return null;
        }
    }

    public String toString() {
        switch (this.a) {
            case 1:
                return "ZoneId";
            case 2:
                return "Chronology";
            case 3:
                return "Precision";
            case 4:
                return "ZoneOffset";
            case 5:
                return "Zone";
            case 6:
                return "LocalDate";
            case 7:
                return "LocalTime";
            default:
                return super.toString();
        }
    }
}
