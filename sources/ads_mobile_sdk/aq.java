package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class aq implements k8 {
    public final cw2 a;
    public final ks3 b;
    public final BaseRequest c;
    public final BannerRequest d;
    public final g33 e;
    public final boolean f;
    public final long g;
    public final int h;
    public final String i;
    public final boolean j;
    public final gj1 k;
    public final lp l;
    public final md1 m;
    public final pb n;

    public aq(dw2 bannerRenderComponentProvider, ks3 traceMetaSet, BaseRequest baseRequest, BannerRequest bannerRequest, g33 refreshListener, boolean z, long j, int i, String requestId, boolean z2, gj1 refreshUpdateListener, lp recursiveAdLoader, md1 inspectorAdLifecycleMonitor, pb adSourceResponseInfoCollector) {
        Intrinsics.checkNotNullParameter(bannerRenderComponentProvider, "bannerRenderComponentProvider");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(bannerRequest, "bannerRequest");
        Intrinsics.checkNotNullParameter(refreshListener, "refreshListener");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(refreshUpdateListener, "refreshUpdateListener");
        Intrinsics.checkNotNullParameter(recursiveAdLoader, "recursiveAdLoader");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(adSourceResponseInfoCollector, "adSourceResponseInfoCollector");
        this.a = bannerRenderComponentProvider;
        this.b = traceMetaSet;
        this.c = baseRequest;
        this.d = bannerRequest;
        this.e = refreshListener;
        this.f = z;
        this.g = j;
        this.h = i;
        this.i = requestId;
        this.j = z2;
        this.k = refreshUpdateListener;
        this.l = recursiveAdLoader;
        this.m = inspectorAdLifecycleMonitor;
        this.n = adSourceResponseInfoCollector;
    }

    @Override // ads_mobile_sdk.k8
    public final h8 a(ec3 serverTransaction, i2 adConfiguration) {
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        rp rpVar = (rp) this.a.get();
        BaseRequest baseRequest = this.c;
        ce0 ce0Var = (ce0) rpVar;
        ce0Var.getClass();
        baseRequest.getClass();
        ce0Var.g = baseRequest;
        BannerRequest bannerRequest = this.d;
        bannerRequest.getClass();
        ce0Var.p = bannerRequest;
        adConfiguration.getClass();
        ce0Var.c = adConfiguration;
        ce0Var.h = j53.f;
        zy zyVar = serverTransaction.b.b;
        zyVar.getClass();
        ce0Var.b = zyVar;
        ce0Var.d = serverTransaction;
        g33 g33Var = this.e;
        g33Var.getClass();
        ce0Var.o = g33Var;
        n03 n03Var = this.b.a;
        n03Var.getClass();
        ce0Var.j = n03Var;
        tn1 tn1Var = this.b.b;
        tn1Var.getClass();
        ce0Var.k = tn1Var;
        String str = this.i;
        str.getClass();
        ce0Var.i = str;
        ce0Var.e = Long.valueOf(this.g);
        ce0Var.f = Integer.valueOf(this.h);
        ce0Var.l = Boolean.valueOf(this.f);
        ce0Var.q = Boolean.valueOf(this.j);
        lp lpVar = this.l;
        lpVar.getClass();
        ce0Var.r = lpVar;
        gj1 gj1Var = this.k;
        gj1Var.getClass();
        ce0Var.s = gj1Var;
        md1 md1Var = this.m;
        md1Var.getClass();
        ce0Var.m = md1Var;
        pb pbVar = this.n;
        pbVar.getClass();
        ce0Var.n = pbVar;
        kq2.a(ce0Var.b, zy.class);
        kq2.a(ce0Var.c, i2.class);
        kq2.a(ce0Var.d, ec3.class);
        kq2.a(ce0Var.e, Long.class);
        kq2.a(ce0Var.f, Integer.class);
        kq2.a(ce0Var.g, BaseRequest.class);
        kq2.a(ce0Var.h, j53.class);
        kq2.a(ce0Var.i, String.class);
        kq2.a(ce0Var.j, n03.class);
        kq2.a(ce0Var.k, tn1.class);
        kq2.a(ce0Var.l, Boolean.class);
        kq2.a(ce0Var.m, md1.class);
        kq2.a(ce0Var.n, pb.class);
        kq2.a(ce0Var.o, g33.class);
        kq2.a(ce0Var.p, BannerRequest.class);
        kq2.a(ce0Var.q, Boolean.class);
        kq2.a(ce0Var.r, lp.class);
        kq2.a(ce0Var.s, gj1.class);
        return (h8) new de0(ce0Var.a, ce0Var.b, ce0Var.c, ce0Var.d, ce0Var.e, ce0Var.f, ce0Var.g, ce0Var.h, ce0Var.j, ce0Var.k, ce0Var.l, ce0Var.m, ce0Var.n, ce0Var.o, ce0Var.p, ce0Var.q, ce0Var.r, ce0Var.s).C.get();
    }
}
