package j$.time.format;

import j$.time.ZoneOffset;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements j$.time.temporal.u {
    @Override // j$.time.temporal.u
    public final Object j(j$.time.temporal.n nVar) {
        j$.time.x xVar = (j$.time.x) nVar.a(j$.time.temporal.t.g());
        if (xVar == null || (xVar instanceof ZoneOffset)) {
            return null;
        }
        return xVar;
    }
}
