package com.vungle.ads.internal.ui;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class q extends Lambda implements Function2 {
    public final /* synthetic */ x a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(x xVar) {
        super(2);
        this.a = xVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int iIntValue = ((Number) obj).intValue();
        String errorMessage = (String) obj2;
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        this.a.a(errorMessage, iIntValue);
        return Unit.INSTANCE;
    }
}
