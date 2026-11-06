package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.APIFailedStatusCodeError;
import com.vungle.ads.NetworkUnreachable;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final class r0 implements com.vungle.ads.internal.network.a {
    public final /* synthetic */ Function1 a;
    public final /* synthetic */ Context b;

    public r0(Context context, o2 o2Var) {
        this.a = o2Var;
        this.b = context;
    }

    @Override // com.vungle.ads.internal.network.a
    public final void a(com.vungle.ads.internal.network.o oVar) {
        if (r1.a() == null) {
            this.a.invoke(Boolean.FALSE);
            return;
        }
        if (oVar != null && oVar.c() && oVar.a() != null) {
            ConfigManager.INSTANCE.a(this.b, (com.vungle.ads.internal.model.w2) oVar.a(), p0.INIT_FRESH, new j2(Sdk.SDKMetric.SDKMetricType.CONFIG_LOADED_FROM_INIT));
            this.a.invoke(Boolean.TRUE);
        } else {
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("config API: ");
            sbA.append(oVar != null ? Integer.valueOf(oVar.b()) : null);
            new APIFailedStatusCodeError(sbA.toString()).logErrorNoReturnValue$vungle_ads_release();
            this.a.invoke(Boolean.FALSE);
        }
    }

    @Override // com.vungle.ads.internal.network.a
    public final void a(Throwable th) {
        if (r1.a() == null) {
            this.a.invoke(Boolean.FALSE);
            return;
        }
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Error while fetching config: ");
        sbA.append(th != null ? th.getMessage() : null);
        new NetworkUnreachable(sbA.toString()).logErrorNoReturnValue$vungle_ads_release();
        this.a.invoke(Boolean.FALSE);
    }
}
