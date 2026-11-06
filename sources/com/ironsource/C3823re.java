package com.ironsource;

import com.ironsource.M8;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.re, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3823re implements M8, M8.a {
    private C3806qe a;
    private boolean b;

    @Override // com.ironsource.M8
    public C3468ab a() {
        C3806qe c3806qe = this.a;
        if (c3806qe != null) {
            return new C3468ab(c3806qe);
        }
        return null;
    }

    @Override // com.ironsource.M8
    public T9 b() {
        C3806qe c3806qe = this.a;
        if (c3806qe != null) {
            return new T9(c3806qe);
        }
        return null;
    }

    @Override // com.ironsource.M8
    public boolean c() {
        return this.b;
    }

    @Override // com.ironsource.M8.a
    public void d() {
        this.b = true;
    }

    @Override // com.ironsource.M8.a
    public void a(C3806qe sdkConfig) {
        Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
        this.a = sdkConfig;
    }
}
