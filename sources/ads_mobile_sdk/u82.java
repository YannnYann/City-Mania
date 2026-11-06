package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class u82 implements k8 {
    public final cw2 a;
    public final ks3 b;
    public final BaseRequest c;
    public final NativeRequest d;
    public final long e;
    public final int f;
    public final String g;
    public final j53 h;
    public final int i;
    public final boolean j;
    public final md1 k;
    public final boolean l;
    public final gj1 m;
    public final i82 n;
    public final pb o;

    public u82(dw2 nativeRenderComponentProvider, ks3 traceMetaSet, BaseRequest baseRequest, NativeRequest nativeRequest, long j, int i, String requestId, j53 requestType, int i2, boolean z, md1 inspectorAdLifecycleMonitor, boolean z2, gj1 refreshUpdateListener, i82 recursiveAdLoader, pb adSourceResponseInfoCollector) {
        Intrinsics.checkNotNullParameter(nativeRenderComponentProvider, "nativeRenderComponentProvider");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(refreshUpdateListener, "refreshUpdateListener");
        Intrinsics.checkNotNullParameter(recursiveAdLoader, "recursiveAdLoader");
        Intrinsics.checkNotNullParameter(adSourceResponseInfoCollector, "adSourceResponseInfoCollector");
        this.a = nativeRenderComponentProvider;
        this.b = traceMetaSet;
        this.c = baseRequest;
        this.d = nativeRequest;
        this.e = j;
        this.f = i;
        this.g = requestId;
        this.h = requestType;
        this.i = i2;
        this.j = z;
        this.k = inspectorAdLifecycleMonitor;
        this.l = z2;
        this.m = refreshUpdateListener;
        this.n = recursiveAdLoader;
        this.o = adSourceResponseInfoCollector;
    }

    @Override // ads_mobile_sdk.k8
    public final h8 a(ec3 serverTransaction, i2 adConfiguration) {
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        l82 l82Var = (l82) this.a.get();
        BaseRequest baseRequest = this.c;
        oh0 oh0Var = (oh0) l82Var;
        oh0Var.getClass();
        baseRequest.getClass();
        oh0Var.g = baseRequest;
        NativeRequest nativeRequest = this.d;
        nativeRequest.getClass();
        oh0Var.p = nativeRequest;
        adConfiguration.getClass();
        oh0Var.c = adConfiguration;
        zy zyVar = serverTransaction.b.b;
        zyVar.getClass();
        oh0Var.b = zyVar;
        oh0Var.d = serverTransaction;
        j53 j53Var = this.h;
        j53Var.getClass();
        oh0Var.h = j53Var;
        n03 n03Var = this.b.a;
        n03Var.getClass();
        oh0Var.j = n03Var;
        tn1 tn1Var = this.b.b;
        tn1Var.getClass();
        oh0Var.k = tn1Var;
        String str = this.g;
        str.getClass();
        oh0Var.i = str;
        oh0Var.e = Long.valueOf(this.e);
        oh0Var.f = Integer.valueOf(this.f);
        oh0Var.o = Integer.valueOf(this.i);
        oh0Var.l = Boolean.valueOf(this.j);
        md1 md1Var = this.k;
        md1Var.getClass();
        oh0Var.m = md1Var;
        oh0Var.q = Boolean.valueOf(this.l);
        gj1 gj1Var = this.m;
        gj1Var.getClass();
        oh0Var.r = gj1Var;
        i82 i82Var = this.n;
        i82Var.getClass();
        oh0Var.s = i82Var;
        pb pbVar = this.o;
        pbVar.getClass();
        oh0Var.n = pbVar;
        kq2.a(oh0Var.b, zy.class);
        kq2.a(oh0Var.c, i2.class);
        kq2.a(oh0Var.d, ec3.class);
        kq2.a(oh0Var.e, Long.class);
        kq2.a(oh0Var.f, Integer.class);
        kq2.a(oh0Var.g, BaseRequest.class);
        kq2.a(oh0Var.h, j53.class);
        kq2.a(oh0Var.i, String.class);
        kq2.a(oh0Var.j, n03.class);
        kq2.a(oh0Var.k, tn1.class);
        kq2.a(oh0Var.l, Boolean.class);
        kq2.a(oh0Var.m, md1.class);
        kq2.a(oh0Var.n, pb.class);
        kq2.a(oh0Var.o, Integer.class);
        kq2.a(oh0Var.p, NativeRequest.class);
        kq2.a(oh0Var.q, Boolean.class);
        kq2.a(oh0Var.r, gj1.class);
        kq2.a(oh0Var.s, i82.class);
        return (h8) new ph0(oh0Var.a, oh0Var.b, oh0Var.c, oh0Var.d, oh0Var.e, oh0Var.f, oh0Var.g, oh0Var.h, oh0Var.j, oh0Var.k, oh0Var.o, oh0Var.p).L.get();
    }
}
