package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hp1 implements k8 {
    public final cw2 a;
    public final ks3 b;
    public final BaseRequest c;
    public final long d;
    public final int e;
    public final String f;
    public final j53 g;
    public final boolean h;
    public final md1 i;
    public final vo1 j;
    public final pb k;

    public hp1(dw2 interstitialRenderComponentProvider, ks3 traceMetaSet, BaseRequest baseRequest, long j, int i, String requestId, j53 requestType, boolean z, md1 inspectorAdLifecycleMonitor, vo1 recursiveAdLoader, pb adSourceResponseInfoCollector) {
        Intrinsics.checkNotNullParameter(interstitialRenderComponentProvider, "interstitialRenderComponentProvider");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(recursiveAdLoader, "recursiveAdLoader");
        Intrinsics.checkNotNullParameter(adSourceResponseInfoCollector, "adSourceResponseInfoCollector");
        this.a = interstitialRenderComponentProvider;
        this.b = traceMetaSet;
        this.c = baseRequest;
        this.d = j;
        this.e = i;
        this.f = requestId;
        this.g = requestType;
        this.h = z;
        this.i = inspectorAdLifecycleMonitor;
        this.j = recursiveAdLoader;
        this.k = adSourceResponseInfoCollector;
    }

    @Override // ads_mobile_sdk.k8
    public final h8 a(ec3 serverTransaction, i2 adConfiguration) {
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        yo1 yo1Var = (yo1) this.a.get();
        BaseRequest baseRequest = this.c;
        gh0 gh0Var = (gh0) yo1Var;
        gh0Var.getClass();
        baseRequest.getClass();
        gh0Var.g = baseRequest;
        adConfiguration.getClass();
        gh0Var.c = adConfiguration;
        zy zyVar = serverTransaction.b.b;
        zyVar.getClass();
        gh0Var.b = zyVar;
        gh0Var.d = serverTransaction;
        j53 j53Var = this.g;
        j53Var.getClass();
        gh0Var.h = j53Var;
        n03 n03Var = this.b.a;
        n03Var.getClass();
        gh0Var.j = n03Var;
        tn1 tn1Var = this.b.b;
        tn1Var.getClass();
        gh0Var.k = tn1Var;
        String str = this.f;
        str.getClass();
        gh0Var.i = str;
        gh0Var.e = Long.valueOf(this.d);
        gh0Var.f = Integer.valueOf(this.e);
        gh0Var.l = Boolean.valueOf(this.h);
        md1 md1Var = this.i;
        md1Var.getClass();
        gh0Var.m = md1Var;
        vo1 vo1Var = this.j;
        vo1Var.getClass();
        gh0Var.o = vo1Var;
        pb pbVar = this.k;
        pbVar.getClass();
        gh0Var.n = pbVar;
        kq2.a(gh0Var.b, zy.class);
        kq2.a(gh0Var.c, i2.class);
        kq2.a(gh0Var.d, ec3.class);
        kq2.a(gh0Var.e, Long.class);
        kq2.a(gh0Var.f, Integer.class);
        kq2.a(gh0Var.g, BaseRequest.class);
        kq2.a(gh0Var.h, j53.class);
        kq2.a(gh0Var.i, String.class);
        kq2.a(gh0Var.j, n03.class);
        kq2.a(gh0Var.k, tn1.class);
        kq2.a(gh0Var.l, Boolean.class);
        kq2.a(gh0Var.m, md1.class);
        kq2.a(gh0Var.n, pb.class);
        kq2.a(gh0Var.o, vo1.class);
        return (h8) new hh0(gh0Var.a, gh0Var.b, gh0Var.c, gh0Var.d, gh0Var.e, gh0Var.f, gh0Var.g, gh0Var.h, gh0Var.j, gh0Var.k, gh0Var.l, gh0Var.m, gh0Var.n, gh0Var.o).z.get();
    }
}
