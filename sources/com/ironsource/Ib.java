package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Ib implements W5<Hb> {
    private final String a;
    private final Jd b;
    private final InterfaceC3574e1 c;
    private final boolean d;

    public Ib(String adm, Jd providerName, InterfaceC3574e1 adapterConfigs, boolean z) {
        Intrinsics.checkNotNullParameter(adm, "adm");
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        Intrinsics.checkNotNullParameter(adapterConfigs, "adapterConfigs");
        this.a = adm;
        this.b = providerName;
        this.c = adapterConfigs;
        this.d = z;
    }

    @Override // com.ironsource.W5
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Hb a() throws Exception {
        InterfaceC3892v9 interfaceC3892v9A = this.c.a(this.b);
        new T(this.a, interfaceC3892v9A, this.d).a();
        if (interfaceC3892v9A != null) {
            return new Hb(interfaceC3892v9A.f(), interfaceC3892v9A.e(), interfaceC3892v9A.b(), interfaceC3892v9A.d(), false, 16, null);
        }
        return null;
    }
}
