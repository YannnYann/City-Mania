package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class c83 implements k8 {
    public final cw2 a;
    public final ks3 b;
    public final BaseRequest c;
    public final long d;
    public final int e;
    public final String f;
    public final j53 g;
    public final boolean h;
    public final md1 i;
    public final q73 j;
    public final pb k;

    public c83(dw2 rewardedRenderComponentProvider, ks3 traceMetaSet, BaseRequest baseRequest, long j, int i, String requestId, j53 requestType, boolean z, md1 inspectorAdLifecycleMonitor, q73 recursiveAdLoader, pb adSourceResponseInfoCollector) {
        Intrinsics.checkNotNullParameter(rewardedRenderComponentProvider, "rewardedRenderComponentProvider");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(recursiveAdLoader, "recursiveAdLoader");
        Intrinsics.checkNotNullParameter(adSourceResponseInfoCollector, "adSourceResponseInfoCollector");
        this.a = rewardedRenderComponentProvider;
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
        u73 u73Var = (u73) this.a.get();
        BaseRequest baseRequest = this.c;
        si0 si0Var = (si0) u73Var;
        si0Var.getClass();
        baseRequest.getClass();
        si0Var.g = baseRequest;
        adConfiguration.getClass();
        si0Var.c = adConfiguration;
        zy zyVar = serverTransaction.b.b;
        zyVar.getClass();
        si0Var.b = zyVar;
        si0Var.d = serverTransaction;
        j53 j53Var = this.g;
        j53Var.getClass();
        si0Var.h = j53Var;
        n03 n03Var = this.b.a;
        n03Var.getClass();
        si0Var.j = n03Var;
        tn1 tn1Var = this.b.b;
        tn1Var.getClass();
        si0Var.k = tn1Var;
        String str = this.f;
        str.getClass();
        si0Var.i = str;
        si0Var.e = Long.valueOf(this.d);
        si0Var.f = Integer.valueOf(this.e);
        si0Var.l = Boolean.valueOf(this.h);
        md1 md1Var = this.i;
        md1Var.getClass();
        si0Var.m = md1Var;
        q73 q73Var = this.j;
        q73Var.getClass();
        si0Var.o = q73Var;
        pb pbVar = this.k;
        pbVar.getClass();
        si0Var.n = pbVar;
        kq2.a(si0Var.b, zy.class);
        kq2.a(si0Var.c, i2.class);
        kq2.a(si0Var.d, ec3.class);
        kq2.a(si0Var.e, Long.class);
        kq2.a(si0Var.f, Integer.class);
        kq2.a(si0Var.g, BaseRequest.class);
        kq2.a(si0Var.h, j53.class);
        kq2.a(si0Var.i, String.class);
        kq2.a(si0Var.j, n03.class);
        kq2.a(si0Var.k, tn1.class);
        kq2.a(si0Var.l, Boolean.class);
        kq2.a(si0Var.m, md1.class);
        kq2.a(si0Var.n, pb.class);
        kq2.a(si0Var.o, q73.class);
        return (h8) new ti0(si0Var.a, si0Var.b, si0Var.c, si0Var.d, si0Var.e, si0Var.f, si0Var.g, si0Var.h, si0Var.j, si0Var.k, si0Var.l, si0Var.m, si0Var.n, si0Var.o).y.get();
    }
}
