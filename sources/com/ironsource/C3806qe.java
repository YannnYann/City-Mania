package com.ironsource;

import com.ironsource.Ue;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.qe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3806qe {
    private final Ae a;

    public C3806qe(Ae sdkInitResponse) {
        Intrinsics.checkNotNullParameter(sdkInitResponse, "sdkInitResponse");
        this.a = sdkInitResponse;
    }

    public final U1 a() {
        return this.a.a().b().d();
    }

    public final N1 b() {
        return this.a.a().b().b();
    }

    public final R5 c() {
        return this.a.b();
    }

    public final Ue d() {
        return this.a.c();
    }

    public final Lb e() {
        return this.a.a().b().f();
    }

    public final Ue.a f() {
        Ue.a aVarI = this.a.c().i();
        Intrinsics.checkNotNullExpressionValue(aVarI, "getOrigin(...)");
        return aVarI;
    }

    public final Ae g() {
        return this.a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3806qe(C3806qe sdkConfig) {
        this(sdkConfig.a);
        Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
    }
}
