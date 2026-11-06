package j$.time.format;

import j$.time.chrono.InterfaceC4273b;

/* JADX INFO: loaded from: classes2.dex */
final class r implements j$.time.temporal.n {
    final /* synthetic */ InterfaceC4273b a;
    final /* synthetic */ Object b;
    final /* synthetic */ j$.time.chrono.l c;
    final /* synthetic */ j$.time.x d;

    r(InterfaceC4273b interfaceC4273b, j$.time.temporal.n nVar, j$.time.chrono.l lVar, j$.time.x xVar) {
        this.a = interfaceC4273b;
        this.b = nVar;
        this.c = lVar;
        this.d = xVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [j$.time.temporal.n, java.lang.Object] */
    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.s sVar) {
        InterfaceC4273b interfaceC4273b = this.a;
        if (interfaceC4273b != null && sVar.T()) {
            return interfaceC4273b.f(sVar);
        }
        return this.b.f(sVar);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [j$.time.temporal.n, java.lang.Object] */
    @Override // j$.time.temporal.n
    public final j$.time.temporal.x l(j$.time.temporal.s sVar) {
        InterfaceC4273b interfaceC4273b = this.a;
        if (interfaceC4273b != null && sVar.T()) {
            return interfaceC4273b.l(sVar);
        }
        return this.b.l(sVar);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [j$.time.temporal.n, java.lang.Object] */
    @Override // j$.time.temporal.n
    public final long g(j$.time.temporal.s sVar) {
        InterfaceC4273b interfaceC4273b = this.a;
        if (interfaceC4273b != null && sVar.T()) {
            return interfaceC4273b.g(sVar);
        }
        return this.b.g(sVar);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [j$.time.temporal.n, java.lang.Object] */
    @Override // j$.time.temporal.n
    public final Object a(j$.time.temporal.u uVar) {
        if (uVar == j$.time.temporal.t.a()) {
            return this.c;
        }
        if (uVar == j$.time.temporal.t.g()) {
            return this.d;
        }
        if (uVar == j$.time.temporal.t.e()) {
            return this.b.a(uVar);
        }
        return uVar.j(this);
    }

    public final String toString() {
        String str;
        String str2 = "";
        j$.time.chrono.l lVar = this.c;
        if (lVar != null) {
            str = " with chronology " + lVar;
        } else {
            str = "";
        }
        j$.time.x xVar = this.d;
        if (xVar != null) {
            str2 = " with zone " + xVar;
        }
        return this.b + str + str2;
    }
}
