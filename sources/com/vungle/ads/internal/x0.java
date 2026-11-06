package com.vungle.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.vungle.ads.AdNotLoadedCantPlay;
import com.vungle.ads.BaseFullscreenAd;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.model.j3;
import com.vungle.ads.internal.protos.Sdk;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class x0 extends r {
    public WeakReference q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x0(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void a(Context context, BaseFullscreenAd.AnonymousClass2 adPlayCallback) {
        Intrinsics.checkNotNullParameter(adPlayCallback, "adPlayCallback");
        g().e();
        this.q = context != null ? new WeakReference(context) : null;
        VungleError vungleErrorA = a(true);
        if (vungleErrorA != null) {
            adPlayCallback.onFailure(vungleErrorA);
            if (a(vungleErrorA.getCode())) {
                a(h.g);
                return;
            }
            return;
        }
        com.vungle.ads.internal.model.i0 i0VarC = c();
        j3 j3VarF = f();
        if (i0VarC != null && j3VarF != null) {
            w0 w0Var = new w0(adPlayCallback, this);
            a();
            Handler handler = com.vungle.ads.internal.util.z.a;
            com.vungle.ads.internal.util.z.a(new v0(this, w0Var, i0VarC, j3VarF));
            return;
        }
        adPlayCallback.onFailure(new AdNotLoadedCantPlay("Ad or Placement is null: pl=" + j3VarF + " adv=" + i0VarC).setLogEntry$vungle_ads_release(e()).logError$vungle_ads_release());
    }

    @Override // com.vungle.ads.internal.r
    public final boolean a(VungleAdSize vungleAdSize) {
        return true;
    }

    @Override // com.vungle.ads.internal.r
    public final VungleAdSize b() {
        return null;
    }

    public com.vungle.ads.internal.presenter.z k() {
        return null;
    }

    public static final void a(x0 x0Var, w0 w0Var, com.vungle.ads.internal.model.i0 i0Var, j3 j3Var) {
        Context contextD;
        WeakReference weakReference = x0Var.q;
        if (weakReference == null || (contextD = (Context) weakReference.get()) == null) {
            contextD = x0Var.d();
        }
        Intrinsics.checkNotNullExpressionValue(contextD, "playContext?.get() ?: context");
        com.vungle.ads.internal.presenter.a aVar = new com.vungle.ads.internal.presenter.a(w0Var, j3Var);
        u0 u0Var = new u0(i0Var, j3Var, x0Var.k());
        u0 u0Var2 = com.vungle.ads.internal.ui.l.i;
        com.vungle.ads.internal.ui.a.a(u0Var);
        com.vungle.ads.internal.ui.a.a(aVar);
        Intent intentA = com.vungle.ads.internal.ui.a.a(contextD, j3Var.b(), i0Var.h());
        com.vungle.ads.internal.util.d dVar = com.vungle.ads.internal.util.d.f;
        if (!com.vungle.ads.internal.util.a.a()) {
            boolean z = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.a("FullscreenAdInternal", "The ad activity is in background on play, log AD_VISIBILITY_INVISIBLE.");
            intentA.putExtra("ad_invisible_logged", true);
            AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
            j2 j2Var = new j2(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY);
            j2Var.a((Long) 1L);
            AnalyticsClient.a(analyticsClient, j2Var, x0Var.e(), 4);
        }
        x0Var.g().d();
        AnalyticsClient.a(AnalyticsClient.INSTANCE, x0Var.g(), x0Var.e());
        x0Var.h().e();
        com.vungle.ads.internal.util.a.a(contextD, null, intentA, null);
    }
}
