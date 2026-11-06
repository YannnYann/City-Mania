package com.vungle.ads.internal;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class k1 extends Lambda implements Function2 {
    public final /* synthetic */ o1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k1(o1 o1Var) {
        super(2);
        this.a = o1Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int iIntValue = ((Number) obj).intValue();
        int iIntValue2 = ((Number) obj2).intValue();
        if (iIntValue > 0 && iIntValue2 > 0) {
            this.a.z = iIntValue / iIntValue2;
        }
        return Unit.INSTANCE;
    }
}
