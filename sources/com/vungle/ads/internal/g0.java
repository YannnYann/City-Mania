package com.vungle.ads.internal;

import android.os.Handler;
import com.vungle.ads.VungleError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class g0 implements com.vungle.ads.internal.presenter.b {
    public final /* synthetic */ h0 a;

    public g0(h0 h0Var) {
        this.a = h0Var;
    }

    @Override // com.vungle.ads.internal.presenter.b
    public final void onAdClick(String str) throws Throwable {
        Handler handler = com.vungle.ads.internal.util.z.a;
        com.vungle.ads.internal.util.z.a(new a0(this.a));
        this.a.getDisplayToClickMetric$vungle_ads_release().d();
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        p1 displayToClickMetric$vungle_ads_release = this.a.getDisplayToClickMetric$vungle_ads_release();
        analyticsClient.a(displayToClickMetric$vungle_ads_release, this.a.getLogEntry$vungle_ads_release(), displayToClickMetric$vungle_ads_release.b);
    }

    @Override // com.vungle.ads.internal.presenter.b
    public final void onAdEnd(String str) throws Throwable {
        Handler handler = com.vungle.ads.internal.util.z.a;
        com.vungle.ads.internal.util.z.a(new b0(this.a));
        this.a.getShowToCloseMetric$vungle_ads_release().d();
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        p1 showToCloseMetric$vungle_ads_release = this.a.getShowToCloseMetric$vungle_ads_release();
        analyticsClient.a(showToCloseMetric$vungle_ads_release, this.a.getLogEntry$vungle_ads_release(), showToCloseMetric$vungle_ads_release.b);
    }

    @Override // com.vungle.ads.internal.presenter.b
    public final void onAdImpression(String str) throws Throwable {
        Handler handler = com.vungle.ads.internal.util.z.a;
        com.vungle.ads.internal.util.z.a(new c0(this.a));
        this.a.getPresentToDisplayMetric$vungle_ads_release().d();
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        p1 presentToDisplayMetric$vungle_ads_release = this.a.getPresentToDisplayMetric$vungle_ads_release();
        analyticsClient.a(presentToDisplayMetric$vungle_ads_release, this.a.getLogEntry$vungle_ads_release(), presentToDisplayMetric$vungle_ads_release.b);
        this.a.getDisplayToClickMetric$vungle_ads_release().e();
    }

    @Override // com.vungle.ads.internal.presenter.b
    public final void onAdLeftApplication(String str) throws Throwable {
        Handler handler = com.vungle.ads.internal.util.z.a;
        com.vungle.ads.internal.util.z.a(new d0(this.a));
        AnalyticsClient.a(AnalyticsClient.INSTANCE, this.a.getLeaveApplicationMetric$vungle_ads_release(), this.a.getLogEntry$vungle_ads_release(), 4);
    }

    @Override // com.vungle.ads.internal.presenter.b
    public final void onAdRewarded(String str) {
    }

    @Override // com.vungle.ads.internal.presenter.b
    public final void onAdStart(String str) throws Throwable {
        com.vungle.ads.internal.signals.j signalManager$vungle_ads_release = this.a.getSignalManager$vungle_ads_release();
        synchronized (signalManager$vungle_ads_release) {
            signalManager$vungle_ads_release.h.f++;
        }
        this.a.getAdInternal$vungle_ads_release().l.d();
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        p1 p1Var = this.a.getAdInternal$vungle_ads_release().l;
        analyticsClient.a(p1Var, this.a.getLogEntry$vungle_ads_release(), p1Var.b);
        this.a.getPresentToDisplayMetric$vungle_ads_release().e();
        Handler handler = com.vungle.ads.internal.util.z.a;
        com.vungle.ads.internal.util.z.a(new e0(this.a));
    }

    @Override // com.vungle.ads.internal.presenter.b
    public final void onFailure(VungleError error) throws Throwable {
        Intrinsics.checkNotNullParameter(error, "error");
        Handler handler = com.vungle.ads.internal.util.z.a;
        com.vungle.ads.internal.util.z.a(new f0(this.a, error));
        this.a.getShowToFailMetric$vungle_ads_release().d();
        AnalyticsClient.INSTANCE.a(this.a.getShowToFailMetric$vungle_ads_release(), this.a.getLogEntry$vungle_ads_release(), error.getCode() + '-' + error.getErrorMessage());
    }
}
