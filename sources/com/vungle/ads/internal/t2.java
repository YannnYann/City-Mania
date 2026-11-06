package com.vungle.ads.internal;

import com.vungle.ads.InitializationListener;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class t2 extends Lambda implements Function0 {
    public final /* synthetic */ u2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t2(u2 u2Var) {
        super(0);
        this.a = u2Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Iterator it = this.a.c.iterator();
        while (it.hasNext()) {
            ((InitializationListener) it.next()).onSuccess();
        }
        this.a.c.clear();
        return Unit.INSTANCE;
    }
}
