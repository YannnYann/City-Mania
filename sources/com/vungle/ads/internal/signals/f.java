package com.vungle.ads.internal.signals;

import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.w2;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;

/* JADX INFO: loaded from: classes4.dex */
public final class f extends com.vungle.ads.internal.util.b {
    public final /* synthetic */ j a;

    public f(j jVar) {
        this.a = jVar;
    }

    @Override // com.vungle.ads.internal.util.b
    public final void a() {
        boolean z = v.a;
        u.a("SignalManager", "SignalManager#onBackground()");
        this.a.c = System.currentTimeMillis();
        j jVar = this.a;
        jVar.e = (jVar.c - jVar.d) + jVar.e;
    }

    @Override // com.vungle.ads.internal.util.b
    public final void b() {
        Integer num;
        boolean z = v.a;
        u.a("SignalManager", "SignalManager#onForeground()");
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.a.c;
        ConfigManager.INSTANCE.getClass();
        w2 w2Var = ConfigManager.a;
        if (j > ((long) ((w2Var == null || (num = w2Var.l) == null) ? 1800 : num.intValue())) * 1000) {
            j jVar = this.a;
            jVar.f();
            jVar.h = new c(jVar.f);
        }
        j jVar2 = this.a;
        jVar2.d = jCurrentTimeMillis;
        jVar2.c = 0L;
    }
}
