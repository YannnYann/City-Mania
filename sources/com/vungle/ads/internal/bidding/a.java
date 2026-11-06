package com.vungle.ads.internal.bidding;

import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.w2;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends com.vungle.ads.internal.util.b {
    public final /* synthetic */ e a;

    public a(e eVar) {
        this.a = eVar;
    }

    @Override // com.vungle.ads.internal.util.b
    public final void a() {
        e eVar = this.a;
        eVar.getClass();
        boolean z = v.a;
        u.a("BidTokenEncoder", "BidTokenEncoder#onBackground()");
        eVar.e = System.currentTimeMillis();
    }

    @Override // com.vungle.ads.internal.util.b
    public final void b() {
        Integer num;
        e eVar = this.a;
        eVar.getClass();
        boolean z = v.a;
        u.a("BidTokenEncoder", "BidTokenEncoder#onForeground()");
        long jCurrentTimeMillis = System.currentTimeMillis();
        ConfigManager.INSTANCE.getClass();
        w2 w2Var = ConfigManager.a;
        if (jCurrentTimeMillis > eVar.e + (((long) ((w2Var == null || (num = w2Var.j) == null) ? 900 : num.intValue())) * 1000)) {
            eVar.c = 0;
            eVar.e = 0L;
        }
    }
}
