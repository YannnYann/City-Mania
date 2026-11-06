package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Zd implements InterfaceC3892v9 {
    private final C3537c1 a;
    private final C3659ie b;

    public Zd(C3537c1 adapterConfig, C3659ie adFormatConfigurations) {
        Intrinsics.checkNotNullParameter(adapterConfig, "adapterConfig");
        Intrinsics.checkNotNullParameter(adFormatConfigurations, "adFormatConfigurations");
        this.a = adapterConfig;
        this.b = adFormatConfigurations;
    }

    @Override // com.ironsource.InterfaceC3555d1
    public boolean a() {
        return true;
    }

    @Override // com.ironsource.InterfaceC3864u
    public long b() {
        return this.b.i();
    }

    @Override // com.ironsource.InterfaceC3555d1
    public String c() {
        String strF = this.a.f();
        Intrinsics.checkNotNullExpressionValue(strF, "getProviderName(...)");
        return strF;
    }

    @Override // com.ironsource.InterfaceC3555d1
    public boolean d() {
        return !this.a.j();
    }

    @Override // com.ironsource.InterfaceC3555d1
    public String e() {
        String strA = this.a.a();
        Intrinsics.checkNotNullExpressionValue(strA, "getAdSourceNameForEvents(...)");
        return strA;
    }

    @Override // com.ironsource.InterfaceC3555d1
    public EnumC3928x9 f() {
        return EnumC3928x9.b.a(this.a.d());
    }
}
