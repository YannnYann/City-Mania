package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class nl implements k8 {
    public final cw2 a;
    public final ks3 b;
    public final BaseRequest c;
    public final long d;
    public final int e;
    public final String f;
    public final j53 g;
    public final boolean h;
    public final md1 i;
    public final bl j;
    public final pb k;

    public nl(dw2 renderComponentProvider, ks3 traceMetaSet, BaseRequest baseRequest, long j, int i, String requestId, j53 requestType, boolean z, md1 inspectorAdLifecycleMonitor, bl recursiveAdLoader, pb adSourceResponseInfoCollector) {
        Intrinsics.checkNotNullParameter(renderComponentProvider, "renderComponentProvider");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(recursiveAdLoader, "recursiveAdLoader");
        Intrinsics.checkNotNullParameter(adSourceResponseInfoCollector, "adSourceResponseInfoCollector");
        this.a = renderComponentProvider;
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
        fl flVar = (fl) this.a.get();
        BaseRequest baseRequest = this.c;
        yd0 yd0Var = (yd0) flVar;
        yd0Var.getClass();
        baseRequest.getClass();
        yd0Var.g = baseRequest;
        adConfiguration.getClass();
        yd0Var.c = adConfiguration;
        zy zyVar = serverTransaction.b.b;
        zyVar.getClass();
        yd0Var.b = zyVar;
        yd0Var.d = serverTransaction;
        j53 j53Var = this.g;
        j53Var.getClass();
        yd0Var.h = j53Var;
        n03 n03Var = this.b.a;
        n03Var.getClass();
        yd0Var.j = n03Var;
        tn1 tn1Var = this.b.b;
        tn1Var.getClass();
        yd0Var.k = tn1Var;
        String str = this.f;
        str.getClass();
        yd0Var.i = str;
        yd0Var.e = Long.valueOf(this.d);
        yd0Var.f = Integer.valueOf(this.e);
        yd0Var.l = Boolean.valueOf(this.h);
        md1 md1Var = this.i;
        md1Var.getClass();
        yd0Var.m = md1Var;
        bl blVar = this.j;
        blVar.getClass();
        yd0Var.o = blVar;
        pb pbVar = this.k;
        pbVar.getClass();
        yd0Var.n = pbVar;
        kq2.a(yd0Var.b, zy.class);
        kq2.a(yd0Var.c, i2.class);
        kq2.a(yd0Var.d, ec3.class);
        kq2.a(yd0Var.e, Long.class);
        kq2.a(yd0Var.f, Integer.class);
        kq2.a(yd0Var.g, BaseRequest.class);
        kq2.a(yd0Var.h, j53.class);
        kq2.a(yd0Var.i, String.class);
        kq2.a(yd0Var.j, n03.class);
        kq2.a(yd0Var.k, tn1.class);
        kq2.a(yd0Var.l, Boolean.class);
        kq2.a(yd0Var.m, md1.class);
        kq2.a(yd0Var.n, pb.class);
        kq2.a(yd0Var.o, bl.class);
        return (h8) new zd0(yd0Var.a, yd0Var.b, yd0Var.c, yd0Var.d, yd0Var.e, yd0Var.f, yd0Var.g, yd0Var.h, yd0Var.j, yd0Var.k, yd0Var.l, yd0Var.m, yd0Var.n, yd0Var.o).y.get();
    }
}
