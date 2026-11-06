package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class q13 extends l13 {
    public final bl n;
    public final boolean o;
    public final md1 p;
    public final pb q;

    /* JADX WARN: Illegal instructions before constructor call */
    public q13(bl recursiveAdLoader, ks3 traceMetaSet, BaseRequest baseRequest, j53 requestType, long j, int i, i2 adConfiguration, zy commonConfiguration, ec3 serverTransaction, String renderId, boolean z, md1 inspectorAdLifecycleMonitor, pb adSourceResponseInfoCollector, dw2 placementIdWrapperProvider) {
        Intrinsics.checkNotNullParameter(recursiveAdLoader, "recursiveAdLoader");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(renderId, "renderId");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(adSourceResponseInfoCollector, "adSourceResponseInfoCollector");
        Intrinsics.checkNotNullParameter(placementIdWrapperProvider, "placementIdWrapperProvider");
        Object obj = placementIdWrapperProvider.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        super(traceMetaSet, baseRequest, requestType, j, i, adConfiguration, commonConfiguration, serverTransaction, renderId, (eo2) obj);
        this.n = recursiveAdLoader;
        this.o = z;
        this.p = inspectorAdLifecycleMonitor;
        this.q = adSourceResponseInfoCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    @Override // ads_mobile_sdk.n2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(boolean r10, kotlin.coroutines.Continuation r11) {
        /*
            r9 = this;
            boolean r10 = r11 instanceof ads_mobile_sdk.p13
            if (r10 == 0) goto L14
            r10 = r11
            ads_mobile_sdk.p13 r10 = (ads_mobile_sdk.p13) r10
            int r0 = r10.c
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L14
            int r0 = r0 - r1
            r10.c = r0
        L12:
            r8 = r10
            goto L1a
        L14:
            ads_mobile_sdk.p13 r10 = new ads_mobile_sdk.p13
            r10.<init>(r9, r11)
            goto L12
        L1a:
            java.lang.Object r10 = r8.a
            java.lang.Object r11 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r8.c
            r1 = 1
            if (r0 == 0) goto L33
            if (r0 != r1) goto L2b
            kotlin.ResultKt.throwOnFailure(r10)
            goto L83
        L2b:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L33:
            kotlin.ResultKt.throwOnFailure(r10)
            ads_mobile_sdk.ds1 r10 = ads_mobile_sdk.ds1.a
            ads_mobile_sdk.i2 r10 = r9.f
            com.google.gson.JsonObject r10 = r10.c
            java.lang.String r0 = "pubid"
            java.lang.String r10 = ads_mobile_sdk.ds1.a(r10, r0)
            java.lang.String r0 = "<set-?>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            r9.l = r10
            r9.h()
            android.os.Bundle r10 = r9.g()
            java.lang.String r0 = "googleExtrasBundle"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r0 = r9.b
            java.util.Map r0 = r0.getAdSourceExtrasBundles()
            java.util.Map r0 = kotlin.collections.MapsKt__MapsKt.toMutableMap(r0)
            java.lang.String r2 = "com.google.ads.mediation.admob.AdMobAdapter"
            r0.put(r2, r10)
            ads_mobile_sdk.bl r2 = r9.n
            com.google.android.libraries.ads.mobile.sdk.common.AdRequest r10 = r9.a(r10, r0)
            r0 = r2
            ads_mobile_sdk.j53 r2 = r9.c
            ads_mobile_sdk.ks3 r3 = r9.a
            boolean r4 = r9.o
            ads_mobile_sdk.m13 r5 = r9.m
            ads_mobile_sdk.md1 r6 = r9.p
            ads_mobile_sdk.pb r7 = r9.q
            r8.c = r1
            ads_mobile_sdk.dl r0 = (ads_mobile_sdk.dl) r0
            r1 = r10
            java.lang.Object r10 = r0.a(r1, r2, r3, r4, r5, r6, r7, r8)
            if (r10 != r11) goto L83
            return r11
        L83:
            kotlin.Pair r10 = (kotlin.Pair) r10
            java.lang.Object r10 = r10.component1()
            ads_mobile_sdk.v01 r10 = (ads_mobile_sdk.v01) r10
            boolean r11 = r10 instanceof ads_mobile_sdk.q01
            if (r11 == 0) goto L99
            ads_mobile_sdk.q01 r11 = new ads_mobile_sdk.q01
            kotlinx.coroutines.flow.Flow r10 = kotlinx.coroutines.flow.FlowKt.flowOf(r10)
            r11.<init>(r10)
            return r11
        L99:
            boolean r11 = r10 instanceof ads_mobile_sdk.i01
            if (r11 == 0) goto L9e
            return r10
        L9e:
            kotlin.NoWhenBranchMatchedException r10 = new kotlin.NoWhenBranchMatchedException
            r10.<init>()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.q13.a(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
