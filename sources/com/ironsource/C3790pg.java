package com.ironsource;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.impression.LevelPlayImpressionData;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: renamed from: com.ironsource.pg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3790pg {
    private final E0 a;

    public C3790pg(E0 e0) {
        this.a = e0;
    }

    public void a(int i, String str, String str2) {
        HashMap map = new HashMap();
        map.put("errorCode", Integer.valueOf(i));
        map.put("reason", str);
        map.put(IronSourceConstants.EVENTS_EXT1, str2);
        this.a.a(B0.TROUBLESHOOT_NOTIFICATION_ERROR, map);
    }

    public void b(int i, String str) {
        HashMap map = new HashMap();
        map.put("errorCode", Integer.valueOf(i));
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_LOAD_FAILED, map);
    }

    public void c() {
        this.a.a(B0.TROUBLESHOOT_SHOW_SUCCESS, null);
    }

    public void d(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_BANNER_REFRESH_TRIGGER_PAUSE, map);
    }

    public void e(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_BANNER_REFRESH_TRIGGER_RESUME, map);
    }

    public void f(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_ILLEGAL_STATE, map);
    }

    public void g(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_INTERNAL_ERROR, map);
    }

    public void h(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_LOAD_SKIPPED, map);
    }

    public void i(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_PROVIDER_SETTINGS_MISSING, map);
    }

    public void j(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_UNEXPECTED_AUCTION_FAILED, map);
    }

    public void k(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_UNEXPECTED_AUCTION_SUCCESS, map);
    }

    public void l(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_UNEXPECTED_CLOSED, map);
    }

    public void m(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_UNEXPECTED_INIT_FAILED, map);
    }

    public void n(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_UNEXPECTED_INIT_SUCCESS, map);
    }

    public void o(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_UNEXPECTED_LOAD_FAILED, map);
    }

    public void p(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_UNEXPECTED_LOAD_SUCCESS, map);
    }

    public void q(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_UNEXPECTED_OPENED, map);
    }

    public void r(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_UNEXPECTED_RELOAD_FAILED, map);
    }

    public void s(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_UNEXPECTED_RELOAD_SUCCESS, map);
    }

    public void t(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_UNEXPECTED_SHOW_FAILED, map);
    }

    public void u(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_UNEXPECTED_TIMEOUT, map);
    }

    public void v(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_WATERFALL_OVERHEAD, map);
    }

    public void c(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_BN_RELOAD_EXCEPTION, map);
    }

    public void b() {
        this.a.a(B0.TROUBLESHOOT_SHOW, null);
    }

    public void a() {
        this.a.a(B0.TROUBLESHOOT_LOAD, null);
    }

    public void b(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_IMPRESSION_TIMEOUT, map);
    }

    public void a(Fb fb) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_EXT1, fb.i());
        this.a.a(B0.TROUBLESHOOT_LOAD_SUCCESS, map);
    }

    public void a(Long l) {
        HashMap map = new HashMap();
        map.put("duration", l);
        this.a.a(B0.TROUBLESHOOT_LOAD_WHILE_LOADED, map);
    }

    public void a(LevelPlayAdError levelPlayAdError) {
        HashMap map = new HashMap();
        map.put("errorCode", Integer.valueOf(levelPlayAdError.getErrorCode()));
        map.put("reason", levelPlayAdError.getErrorMessage());
        this.a.a(B0.TROUBLESHOOT_SHOW_FAILED, map);
    }

    public void a(int i, String str) {
        HashMap map = new HashMap();
        map.put("errorCode", Integer.valueOf(i));
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_AUCTION_SUCCESSFUL_RECOVERY_ERROR, map);
    }

    public void a(String str) {
        HashMap map = new HashMap();
        map.put("reason", str);
        this.a.a(B0.TROUBLESHOOT_AD_EXPIRED, map);
    }

    public void a(String str, long j) {
        String str2;
        HashMap map = new HashMap();
        StringBuilder sb = new StringBuilder();
        if (str.isEmpty()) {
            str2 = "";
        } else {
            str2 = "provider=" + str + ";";
        }
        sb.append(str2);
        sb.append("expirationDuration=");
        sb.append(j);
        map.put(IronSourceConstants.EVENTS_EXT1, sb.toString());
        this.a.a(B0.TROUBLESHOOT_AD_EXPIRED, map);
    }

    public void a(boolean z, long j) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_EXT1, "isAnimated:" + (z ? 1 : 0));
        map.put("duration", Long.valueOf(j));
        this.a.a(B0.TROUBLESHOOT_BANNER_REFRESH_TRANSITION, map);
    }

    public void a(long j) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        this.a.a(B0.TROUBLESHOOT_BANNER_REFRESH_ANIMATED, map);
    }

    public void a(LevelPlayAdInfo levelPlayAdInfo, LevelPlayAdInfo levelPlayAdInfo2) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_EXT1, String.format(Locale.ENGLISH, "oldAdNetwork=%s;oldInstanceId=%s;oldRevenue=%.3f;oldPrecision=%s;newAdNetwork=%s;newInstanceId=%s;newRevenue=%.3f;newPrecision=%s;delta=%.3f", levelPlayAdInfo.getAdNetwork(), levelPlayAdInfo.getInstanceId(), Double.valueOf(levelPlayAdInfo.getRevenue()), levelPlayAdInfo.getPrecision(), levelPlayAdInfo2.getAdNetwork(), levelPlayAdInfo2.getInstanceId(), Double.valueOf(levelPlayAdInfo2.getRevenue()), levelPlayAdInfo2.getPrecision(), Double.valueOf(levelPlayAdInfo2.getRevenue() - levelPlayAdInfo.getRevenue())));
        this.a.a(B0.TROUBLESHOOT_AD_INFO_CHANGED, map);
    }

    public void a(String str, Long l) {
        HashMap map = new HashMap();
        map.put("reason", str);
        if (l != null) {
            map.put(IronSourceConstants.EVENTS_EXT1, "expirationDurationMs=" + l);
        }
        this.a.a(B0.TROUBLESHOOT_DESTROY_INSTANCES_READY_TO_SHOW, map);
    }

    public void a(boolean z) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_EXT1, "prev=" + z);
        this.a.a(B0.TROUBLESHOOT_ILR_SUBSCRIBE, map);
    }

    public void a(String str, boolean z) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_EXT1, "src=" + str + ",prev=" + z);
        this.a.a(B0.TROUBLESHOOT_ILR_UNSUBSCRIBE, map);
    }

    public void a(LevelPlayImpressionData levelPlayImpressionData) {
        HashMap map = new HashMap();
        Double revenue = levelPlayImpressionData.getRevenue();
        map.put(IronSourceConstants.EVENTS_EXT1, String.format(Locale.ENGLISH, "revenue=%.3f,auctionId=%s", Double.valueOf(revenue == null ? -1.0d : revenue.doubleValue()), levelPlayImpressionData.getAuctionId()));
        this.a.a(B0.TROUBLESHOOT_ILR_REVENUE_INSTANCE, map);
    }

    public void a(C3545c9 c3545c9) {
        HashMap map = new HashMap();
        double dO = c3545c9.o();
        map.put(IronSourceConstants.EVENTS_EXT1, String.format(Locale.ENGLISH, "revenue=%.3f,auctionId=%s", Double.valueOf(dO), c3545c9.e()));
        this.a.a(B0.TROUBLESHOOT_ILR_REVENUE, map);
    }

    public void a(Pd pd) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_EXT1, pd.c());
        this.a.a(B0.TROUBLESHOOT_SHOW_RECOVERY_INITIATED, map);
    }

    public void a(long j, long j2, String str) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_EXT1, String.format(Locale.ENGLISH, "refreshDuration=%d;notVisibleDuration=%d;reason=%s", Long.valueOf(j), Long.valueOf(j2), str));
        this.a.a(B0.TROUBLESHOOT_RELOAD, map);
    }
}
