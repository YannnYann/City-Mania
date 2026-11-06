package com.vungle.ads.internal;

import android.content.Context;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class o2 extends Lambda implements Function1 {
    public final /* synthetic */ u2 a;
    public final /* synthetic */ Context b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o2(u2 u2Var, Context context) {
        super(1);
        this.a = u2Var;
        this.b = context;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        if (zBooleanValue) {
            ConfigManager.INSTANCE.getClass();
            ConfigManager.c();
        }
        boolean z = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.a("VungleInitializer", "Config fetch result: " + zBooleanValue);
        if (zBooleanValue && this.a.a.get()) {
            u2 u2Var = this.a;
            Context context = this.b;
            u2Var.getClass();
            u2.a(context);
        }
        return Unit.INSTANCE;
    }
}
