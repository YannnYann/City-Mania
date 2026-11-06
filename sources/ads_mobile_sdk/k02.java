package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class k02 implements k8 {
    public final aq a;
    public final u82 b;
    public final cw2 c;
    public final ks3 d;
    public final BaseRequest e;
    public final NativeRequest f;
    public final long g;
    public final int h;
    public final String i;
    public final j53 j;
    public final int k;
    public final boolean l;
    public final md1 m;
    public final boolean n;
    public final gj1 o;
    public final i82 p;
    public final pb q;

    public k02(aq bannerRendererProvider, u82 nativeRendererProvider, dw2 multiFormatAdRenderComponentProvider, ks3 traceMetaSet, BaseRequest baseRequest, NativeRequest nativeRequest, long j, int i, String requestId, j53 requestType, int i2, boolean z, md1 inspectorAdLifecycleMonitor, boolean z2, gj1 refreshUpdateListener, i82 recursiveAdLoader, pb adSourceResponseInfoCollector) {
        Intrinsics.checkNotNullParameter(bannerRendererProvider, "bannerRendererProvider");
        Intrinsics.checkNotNullParameter(nativeRendererProvider, "nativeRendererProvider");
        Intrinsics.checkNotNullParameter(multiFormatAdRenderComponentProvider, "multiFormatAdRenderComponentProvider");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(refreshUpdateListener, "refreshUpdateListener");
        Intrinsics.checkNotNullParameter(recursiveAdLoader, "recursiveAdLoader");
        Intrinsics.checkNotNullParameter(adSourceResponseInfoCollector, "adSourceResponseInfoCollector");
        this.a = bannerRendererProvider;
        this.b = nativeRendererProvider;
        this.c = multiFormatAdRenderComponentProvider;
        this.d = traceMetaSet;
        this.e = baseRequest;
        this.f = nativeRequest;
        this.g = j;
        this.h = i;
        this.i = requestId;
        this.j = requestType;
        this.k = i2;
        this.l = z;
        this.m = inspectorAdLifecycleMonitor;
        this.n = z2;
        this.o = refreshUpdateListener;
        this.p = recursiveAdLoader;
        this.q = adSourceResponseInfoCollector;
    }

    @Override // ads_mobile_sdk.k8
    public final h8 a(ec3 serverTransaction, i2 adConfiguration) {
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        yz1 yz1Var = (yz1) this.c.get();
        BaseRequest baseRequest = this.e;
        ih0 ih0Var = (ih0) yz1Var;
        ih0Var.getClass();
        baseRequest.getClass();
        ih0Var.g = baseRequest;
        NativeRequest nativeRequest = this.f;
        nativeRequest.getClass();
        ih0Var.p = nativeRequest;
        adConfiguration.getClass();
        ih0Var.c = adConfiguration;
        zy zyVar = serverTransaction.b.b;
        zyVar.getClass();
        ih0Var.b = zyVar;
        ih0Var.d = serverTransaction;
        j53 j53Var = this.j;
        j53Var.getClass();
        ih0Var.h = j53Var;
        n03 n03Var = this.d.a;
        n03Var.getClass();
        ih0Var.j = n03Var;
        tn1 tn1Var = this.d.b;
        tn1Var.getClass();
        ih0Var.k = tn1Var;
        String str = this.i;
        str.getClass();
        ih0Var.i = str;
        ih0Var.e = Long.valueOf(this.g);
        ih0Var.f = Integer.valueOf(this.h);
        ih0Var.o = Integer.valueOf(this.k);
        ih0Var.l = Boolean.valueOf(this.l);
        md1 md1Var = this.m;
        md1Var.getClass();
        ih0Var.m = md1Var;
        ih0Var.q = Boolean.valueOf(this.n);
        gj1 gj1Var = this.o;
        gj1Var.getClass();
        ih0Var.r = gj1Var;
        i82 i82Var = this.p;
        i82Var.getClass();
        ih0Var.s = i82Var;
        pb pbVar = this.q;
        pbVar.getClass();
        ih0Var.n = pbVar;
        kq2.a(ih0Var.b, zy.class);
        kq2.a(ih0Var.c, i2.class);
        kq2.a(ih0Var.d, ec3.class);
        kq2.a(ih0Var.e, Long.class);
        kq2.a(ih0Var.f, Integer.class);
        kq2.a(ih0Var.g, BaseRequest.class);
        kq2.a(ih0Var.h, j53.class);
        kq2.a(ih0Var.i, String.class);
        kq2.a(ih0Var.j, n03.class);
        kq2.a(ih0Var.k, tn1.class);
        kq2.a(ih0Var.l, Boolean.class);
        kq2.a(ih0Var.m, md1.class);
        kq2.a(ih0Var.n, pb.class);
        kq2.a(ih0Var.o, Integer.class);
        kq2.a(ih0Var.p, NativeRequest.class);
        kq2.a(ih0Var.q, Boolean.class);
        kq2.a(ih0Var.r, gj1.class);
        kq2.a(ih0Var.s, i82.class);
        h8 h8Var = (h8) new jh0(ih0Var.a, ih0Var.b, ih0Var.c, ih0Var.d, ih0Var.e, ih0Var.f, ih0Var.g, ih0Var.h, ih0Var.j, ih0Var.k, ih0Var.l, ih0Var.m, ih0Var.n, ih0Var.o, ih0Var.p, ih0Var.q, ih0Var.r, ih0Var.s).u.get();
        int iOrdinal = adConfiguration.l.ordinal();
        return iOrdinal != 1 ? iOrdinal != 3 ? new j02() : new h02(h8Var, this.b.a(serverTransaction, adConfiguration), i02.a) : new f02(h8Var, this.a.a(serverTransaction, adConfiguration), g02.a);
    }
}
