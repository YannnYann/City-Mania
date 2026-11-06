package com.vungle.ads.internal;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class h1 extends Lambda implements Function0 {
    public final /* synthetic */ o1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h1(o1 o1Var) {
        super(0);
        this.a = o1Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        com.vungle.ads.internal.util.q qVar = com.vungle.ads.internal.util.q.b;
        qVar.a(((com.vungle.ads.internal.executor.d) o1.a(this.a)).a);
        return qVar;
    }
}
