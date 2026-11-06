package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Ca {
    private final C3770p0 a;
    private String b;
    private boolean c;

    public Ca(C3770p0 adTools) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        this.a = adTools;
        this.b = "";
    }

    public final C3770p0 a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean c() {
        return this.c;
    }

    @InterfaceC3930xb
    public abstract boolean d();

    public final void a(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.b = str;
    }

    public final void b(Runnable callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.a.b(callback);
    }

    public final void a(boolean z) {
        this.c = z;
    }

    public final void a(@InterfaceC3930xb Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        this.a.a(runnable);
    }

    public final void a(C3609g0 adProperties) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        this.a.f().a(new C0(this.a, adProperties, null, 4, null));
    }
}
