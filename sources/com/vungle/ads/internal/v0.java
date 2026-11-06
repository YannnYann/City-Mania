package com.vungle.ads.internal;

import com.vungle.ads.internal.model.j3;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class v0 extends Lambda implements Function0 {
    public final /* synthetic */ x0 a;
    public final /* synthetic */ w0 b;
    public final /* synthetic */ com.vungle.ads.internal.model.i0 c;
    public final /* synthetic */ j3 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v0(x0 x0Var, w0 w0Var, com.vungle.ads.internal.model.i0 i0Var, j3 j3Var) {
        super(0);
        this.a = x0Var;
        this.b = w0Var;
        this.c = i0Var;
        this.d = j3Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        x0.a(this.a, this.b, this.c, this.d);
        return Unit.INSTANCE;
    }
}
