package com.vungle.ads.internal.presenter;

import android.content.Context;
import android.os.Handler;
import android.view.MotionEvent;
import com.iab.omid.library.vungle.adsession.AdSession;
import com.vungle.ads.NetworkUnreachable;
import com.vungle.ads.VungleError;
import com.vungle.ads.WebViewError;
import com.vungle.ads.WebViewRenderProcessUnresponsive;
import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.j2;
import com.vungle.ads.internal.model.d1;
import com.vungle.ads.internal.model.i0;
import com.vungle.ads.internal.model.j3;
import com.vungle.ads.internal.model.q1;
import com.vungle.ads.internal.model.w2;
import com.vungle.ads.internal.model.y1;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.o0;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class r implements com.vungle.ads.internal.ui.view.n, com.vungle.ads.internal.ui.view.o {
    public final com.vungle.ads.internal.ui.view.j a;
    public final i0 b;
    public final j3 c;
    public final com.vungle.ads.internal.ui.x d;
    public Executor e;
    public final com.vungle.ads.internal.omsdk.e f;
    public final com.vungle.ads.internal.platform.f g;
    public long h;
    public a i;
    public boolean j;
    public final AtomicBoolean k;
    public final AtomicBoolean l;
    public Long m;
    public String n;
    public final Lazy o;
    public final Lazy p;
    public final Lazy q;
    public final Lazy r;
    public z s;
    public y t;
    public final Lazy u;
    public final Lazy v;
    public boolean w;
    public final Lazy x;
    public long y;
    public static final Set z = SetsKt__SetsKt.setOf((Object[]) new String[]{"open", "openNonMraid", "openAppStore", "openPrivacy"});
    public static final Map A = MapsKt__MapsKt.mapOf(TuplesKt.to("checkpoint.0", Sdk.SDKMetric.SDKMetricType.AD_START_EVENT), TuplesKt.to("clickUrl", Sdk.SDKMetric.SDKMetricType.AD_CLICK_EVENT));

    public r(com.vungle.ads.internal.ui.view.j adWidget, i0 advertisement, j3 placement, com.vungle.ads.internal.ui.x vungleWebClient, com.vungle.ads.internal.executor.j executor, com.vungle.ads.internal.omsdk.e omTracker, com.vungle.ads.internal.platform.f platform) {
        Intrinsics.checkNotNullParameter(adWidget, "adWidget");
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(vungleWebClient, "vungleWebClient");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(omTracker, "omTracker");
        Intrinsics.checkNotNullParameter(platform, "platform");
        this.a = adWidget;
        this.b = advertisement;
        this.c = placement;
        this.d = vungleWebClient;
        this.e = executor;
        this.f = omTracker;
        this.g = platform;
        this.k = new AtomicBoolean(false);
        this.l = new AtomicBoolean(false);
        Context context = adWidget.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "adWidget.context");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.o = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new n(context));
        Context context2 = adWidget.getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "adWidget.context");
        this.p = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new o(context2));
        Context context3 = adWidget.getContext();
        Intrinsics.checkNotNullExpressionValue(context3, "adWidget.context");
        this.q = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new p(context3));
        Context context4 = adWidget.getContext();
        Intrinsics.checkNotNullExpressionValue(context4, "adWidget.context");
        this.r = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new q(context4));
        this.u = LazyKt__LazyJVMKt.lazy(m.a);
        this.v = LazyKt__LazyJVMKt.lazy(new j(this));
        this.x = LazyKt__LazyJVMKt.lazy(new d(this));
    }

    public final com.vungle.ads.internal.network.r c() {
        return (com.vungle.ads.internal.network.r) this.r.getValue();
    }

    public final void d() {
        if (this.w) {
            this.a.a("javascript:window.vungle.mraidBridgeExt.requestMRAIDClose()");
        }
    }

    public final void e() {
        Boolean bool;
        a aVar = this.i;
        if (aVar != null) {
            aVar.a("successfulView", null, this.c.a);
        }
        if (this.c.j()) {
            ConfigManager.INSTANCE.getClass();
            w2 w2Var = ConfigManager.a;
            if (!((w2Var == null || (bool = w2Var.i) == null) ? false : bool.booleanValue()) || this.l.getAndSet(true)) {
                return;
            }
            this.e.execute(new Runnable() { // from class: com.vungle.ads.internal.presenter.r$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    r.d(this.f$0);
                }
            });
        }
    }

    public final void f() {
        a((VungleError) new WebViewRenderProcessUnresponsive("fatal=true"), true, (String) null);
    }

    public final void g() {
        this.d.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x014d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void h() {
        /*
            Method dump skipped, instruction units count: 423
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.presenter.r.h():void");
    }

    public final void i() {
        Long l = this.m;
        if (l != null) {
            List listB = this.b.b("ad.close", String.valueOf(System.currentTimeMillis() - l.longValue()), String.valueOf(((com.vungle.ads.internal.platform.c) this.g).k()));
            if (listB != null) {
                Iterator it = listB.iterator();
                while (it.hasNext()) {
                    com.vungle.ads.internal.network.p pVar = new com.vungle.ads.internal.network.p((String) it.next());
                    pVar.i = "ad.close";
                    pVar.j = b();
                    c().a(pVar.a(), false);
                }
            }
        }
    }

    public final boolean j() {
        y1 y1Var;
        Long l;
        y1 y1Var2;
        Boolean bool;
        ConfigManager.INSTANCE.getClass();
        w2 w2Var = ConfigManager.a;
        if ((w2Var == null || (y1Var2 = w2Var.q) == null || (bool = y1Var2.a) == null) ? false : bool.booleanValue()) {
            return false;
        }
        if (this.h == 0) {
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.h;
        w2 w2Var2 = ConfigManager.a;
        return jCurrentTimeMillis > ((w2Var2 == null || (y1Var = w2Var2.q) == null || (l = y1Var.b) == null) ? Long.MAX_VALUE : l.longValue());
    }

    public static final void c(r this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.i();
    }

    public final void a(a aVar) {
        this.i = aVar;
    }

    public final com.vungle.ads.internal.util.t b() {
        return (com.vungle.ads.internal.util.t) this.v.getValue();
    }

    public final void a(z zVar) {
        this.s = zVar;
    }

    public static final void d(r this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String strB = this$0.c.b();
        com.vungle.ads.internal.network.m mVarA = ((VungleApiClient) this$0.o.getValue()).a(new q1((List) null, (String) null, this$0.m, this$0.b.e(), strB, this$0.n, (d1) null, Sdk.SDKError.Reason.INVALID_CONFIG_RESPONSE_VALUE));
        if (mVarA == null) {
            boolean z2 = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.b("MRAIDPresenter", "Invalid ri call.");
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Error RI API for placement: ");
            sbA.append(this$0.c.b());
            new NetworkUnreachable(sbA.toString()).setLogEntry$vungle_ads_release(this$0.b()).logErrorNoReturnValue$vungle_ads_release();
            return;
        }
        mVarA.a(new h(this$0));
    }

    public final void a(com.vungle.ads.internal.ui.k kVar) {
        this.t = kVar;
    }

    public final void a(int i) {
        long j;
        AdSession adSession;
        a aVar;
        boolean z2 = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.a("MRAIDPresenter", "detach()");
        boolean z3 = (i & 1) != 0;
        boolean z4 = (i & 2) != 0;
        com.vungle.ads.internal.ui.x xVar = this.d;
        xVar.q = null;
        xVar.o = null;
        if (!z3 && z4 && !this.k.getAndSet(true) && (aVar = this.i) != null) {
            aVar.a("end", null, this.c.a);
        }
        com.vungle.ads.internal.omsdk.e eVar = this.f;
        if (!eVar.b || (adSession = eVar.c) == null) {
            j = 0;
        } else {
            adSession.finish();
            j = com.vungle.ads.internal.omsdk.e.d;
        }
        eVar.b = false;
        eVar.c = null;
        this.a.a(j);
    }

    public static final void e(r this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.w = true;
    }

    public final void a(MotionEvent motionEvent) {
        if (motionEvent != null) {
            boolean z2 = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.a("MRAIDPresenter", "user interaction");
            this.h = System.currentTimeMillis();
            ((o0) this.x.getValue()).a(motionEvent);
        }
    }

    public final void a() {
        if (com.vungle.ads.internal.util.z.a()) {
            this.e.execute(new Runnable() { // from class: com.vungle.ads.internal.presenter.r$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    r.c(this.f$0);
                }
            });
        } else {
            i();
        }
        com.vungle.ads.internal.util.z.a(new e(this));
    }

    public final void a(String str) throws Throwable {
        Handler handler = com.vungle.ads.internal.util.z.a;
        com.vungle.ads.internal.util.z.a(new k(this));
        j2 j2Var = new j2(Sdk.SDKMetric.SDKMetricType.INLINE_INSTALL_STATUS);
        j2Var.c = 2L;
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        analyticsClient.a(j2Var, b(), str);
        analyticsClient.c(Sdk.SDKError.Reason.INLINE_INSTALL_ERROR, String.valueOf(str), b());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x024f, code lost:
    
        r14 = r0.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0253, code lost:
    
        r0 = com.vungle.ads.internal.util.s.a("url", r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x025d, code lost:
    
        if (com.vungle.ads.internal.util.o.a(r0) != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x025f, code lost:
    
        new com.vungle.ads.InvalidCTAUrl("Invalid CTA Url (" + r0 + ')').setLogEntry$vungle_ads_release(b()).logErrorNoReturnValue$vungle_ads_release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0287, code lost:
    
        if (j() == false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0289, code lost:
    
        r18.h = 0;
        a("open", r0, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0291, code lost:
    
        r18.h = 0;
        r2 = r18.a.getContext();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, "adWidget.context");
        r0 = com.vungle.ads.internal.util.m.a(r14, r0, r2, b(), new com.vungle.ads.internal.presenter.f(r14, r18));
        r2 = r18.i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02ad, code lost:
    
        if (r2 == null) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02af, code lost:
    
        r2.a("open", "adClick", r18.c.b());
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02b8, code lost:
    
        if (r0 == false) goto L290;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02ba, code lost:
    
        r0 = r18.i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x02bc, code lost:
    
        if (r0 == null) goto L291;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02be, code lost:
    
        r0.a("open", "adLeftApplication", r18.c.b());
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x022f, code lost:
    
        if (r19.equals("open") == false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0243, code lost:
    
        if (r19.equals("openNonMraid") == false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0247, code lost:
    
        r0 = r18.b.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x024d, code lost:
    
        if (r0 == null) goto L101;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:271:0x06c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(java.lang.String r19, kotlinx.serialization.json.JsonObject r20) {
        /*
            Method dump skipped, instruction units count: 1812
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.presenter.r.a(java.lang.String, kotlinx.serialization.json.JsonObject):void");
    }

    public final void a(String command, String url) throws Throwable {
        Intrinsics.checkNotNullParameter(command, "command");
        Intrinsics.checkNotNullParameter(url, "url");
        boolean z2 = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.a("MRAIDPresenter", new l(command, url));
        if (z.contains(command)) {
            a(command, url, false);
        }
    }

    public final void a(String str, String str2, boolean z2) throws Throwable {
        j2 j2Var = new j2(Sdk.SDKMetric.SDKMetricType.BANNER_AUTO_REDIRECT);
        StringBuilder sb = new StringBuilder();
        sb.append("command: ");
        sb.append(str);
        sb.append(", mainFrame: ");
        sb.append(z2);
        if (str2 != null) {
            sb.append(", url: ");
            sb.append(str2);
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
        j2Var.a(string);
        AnalyticsClient.a(AnalyticsClient.INSTANCE, j2Var, b(), 4);
    }

    public final void a(boolean z2, String errorDesc) {
        Intrinsics.checkNotNullParameter(errorDesc, "errorDesc");
        if (z2) {
            WebViewError webViewError = new WebViewError(errorDesc);
            webViewError.setLogEntry$vungle_ads_release(b()).logErrorNoReturnValue$vungle_ads_release();
            a aVar = this.i;
            if (aVar != null) {
                aVar.a(webViewError, this.c.a);
            }
            a();
        }
    }

    public final void a(VungleError vungleError, boolean z2, String str) {
        boolean z3 = com.vungle.ads.internal.util.v.a;
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("handleWebViewException: ");
        sbA.append(vungleError.getLocalizedMessage());
        sbA.append(", fatal: ");
        sbA.append(z2);
        sbA.append(", errorMsg: ");
        sbA.append(str);
        com.vungle.ads.internal.util.u.b("MRAIDPresenter", sbA.toString());
        vungleError.setLogEntry$vungle_ads_release(b()).logErrorNoReturnValue$vungle_ads_release();
        if (z2) {
            a aVar = this.i;
            if (aVar != null) {
                aVar.a(vungleError, this.c.a);
            }
            a();
        }
    }
}
