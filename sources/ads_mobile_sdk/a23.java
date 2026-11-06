package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a23 extends l13 {
    public final i82 n;
    public final boolean o;
    public final md1 p;
    public final NativeRequest q;
    public final int r;
    public final boolean s;
    public final gj1 t;
    public final pb u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a23(i82 recursiveAdLoader, ks3 traceMetaSet, BaseRequest baseRequest, j53 requestType, long j, int i, i2 adConfiguration, zy commonConfiguration, ec3 serverTransaction, String renderId, boolean z, md1 inspectorAdLifecycleMonitor, NativeRequest nativeRequest, int i2, boolean z2, gj1 refreshUpdateListener, pb adSourceResponseInfoCollector, eo2 placementIdWrapper) {
        super(traceMetaSet, baseRequest, requestType, j, i, adConfiguration, commonConfiguration, serverTransaction, renderId, placementIdWrapper);
        Intrinsics.checkNotNullParameter(recursiveAdLoader, "recursiveAdLoader");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(renderId, "renderId");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        Intrinsics.checkNotNullParameter(refreshUpdateListener, "refreshUpdateListener");
        Intrinsics.checkNotNullParameter(adSourceResponseInfoCollector, "adSourceResponseInfoCollector");
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        this.n = recursiveAdLoader;
        this.o = z;
        this.p = inspectorAdLifecycleMonitor;
        this.q = nativeRequest;
        this.r = i2;
        this.s = z2;
        this.t = refreshUpdateListener;
        this.u = adSourceResponseInfoCollector;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x01de, code lost:
    
        if (r1 == r3) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    @Override // ads_mobile_sdk.n2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(boolean r40, kotlin.coroutines.Continuation r41) {
        /*
            Method dump skipped, instruction units count: 523
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.a23.a(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
