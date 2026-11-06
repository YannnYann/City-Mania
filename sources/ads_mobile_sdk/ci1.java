package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.gson.JsonObject;
import java.util.Map;
import java.util.Optional;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public abstract class ci1 implements zh1 {
    private final String a;
    private final i2 b;
    private final zy c;
    private final ks3 d;
    private final Optional e;
    private final v3 f;
    private final fm0 g;
    private final bn2 h;
    private final s93 i;
    private final eo2 j;
    public ResponseInfo k;
    private final String l;
    private volatile Job m;

    public ci1(String adId, i2 adConfiguration, zy commonConfiguration, ks3 traceMetaSet, Optional gmaWebView, v3 adEventEmitter, fm0 delegatingAdEventListener, bn2 phantomReferences, s93 safeBrowsingManager, eo2 placementIdWrapper, BaseRequest baseRequest) {
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(gmaWebView, "gmaWebView");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(delegatingAdEventListener, "delegatingAdEventListener");
        Intrinsics.checkNotNullParameter(phantomReferences, "phantomReferences");
        Intrinsics.checkNotNullParameter(safeBrowsingManager, "safeBrowsingManager");
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        this.a = adId;
        this.b = adConfiguration;
        this.c = commonConfiguration;
        this.d = traceMetaSet;
        this.e = gmaWebView;
        this.f = adEventEmitter;
        this.g = delegatingAdEventListener;
        this.h = phantomReferences;
        this.i = safeBrowsingManager;
        this.j = placementIdWrapper;
        String adUnitId = baseRequest.getAdUnitId();
        this.l = adUnitId == null ? "" : adUnitId;
        a().d.b = f();
        a().d.c = b().f0;
    }

    @Override // ads_mobile_sdk.zh1
    public JsonObject g() {
        return null;
    }

    @Override // ads_mobile_sdk.zh1
    public void destroy() {
        Job job = this.m;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        this.m = null;
        v3 v3Var = this.f;
        if (v3Var.g.getAndSet(true)) {
            return;
        }
        Pair pair = new Pair(MapsKt__MapsKt.emptyMap(), v3Var.b);
        Map map = (Map) pair.component1();
        Map map2 = (Map) pair.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = v3Var.c;
                v2 task = new v2("onAdDestroyed", str, mq0Var, null);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo2951trySendJP2dKIU(task);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            String str2 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = v3Var.a;
            w2 block = new w2("onAdDestroyed", str2, mq0Var2, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }

    public final String f() {
        return this.a;
    }

    @Override // ads_mobile_sdk.zh1
    public final i2 b() {
        return this.b;
    }

    public final zy i() {
        return this.c;
    }

    @Override // ads_mobile_sdk.zh1
    public final ks3 a() {
        return this.d;
    }

    @Override // ads_mobile_sdk.zh1
    public final Unit a(ContinuationImpl continuationImpl) {
        Unit unitE = this.f.e();
        return unitE == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? unitE : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.zh1
    public Object a(Continuation continuation) {
        return a(this, continuation);
    }

    public final fm0 j() {
        return this.g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005a, code lost:
    
        if (ads_mobile_sdk.bn2.a(r6, r5, r2, r0) == r1) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.ci1 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.bi1
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.bi1 r0 = (ads_mobile_sdk.bi1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.bi1 r0 = new ads_mobile_sdk.bi1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r6)
            goto L5d
        L2c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L34:
            ads_mobile_sdk.ci1 r5 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.v3 r6 = r5.f
            r0.a = r5
            r0.d = r4
            java.lang.Object r6 = r6.j(r0)
            if (r6 != r1) goto L4a
            goto L5c
        L4a:
            ads_mobile_sdk.bn2 r6 = r5.h
            ads_mobile_sdk.s93 r2 = r5.i
            r4 = 0
            r0.a = r4
            r0.d = r3
            r6.getClass()
            java.lang.Object r5 = ads_mobile_sdk.bn2.a(r6, r5, r2, r0)
            if (r5 != r1) goto L5d
        L5c:
            return r1
        L5d:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ci1.a(ads_mobile_sdk.ci1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final eo2 c() {
        return this.j;
    }

    @Override // ads_mobile_sdk.zh1
    public final ResponseInfo getResponseInfo() {
        ResponseInfo responseInfo = this.k;
        if (responseInfo != null) {
            return responseInfo;
        }
        Intrinsics.throwUninitializedPropertyAccessException("responseInfo");
        return null;
    }

    public final Job l() {
        return this.m;
    }

    public final void a(Job job) {
        this.m = job;
    }

    @Override // ads_mobile_sdk.zh1
    public final void a(ResponseInfo responseInfo) {
        Intrinsics.checkNotNullParameter(responseInfo, "<set-?>");
        this.k = responseInfo;
    }
}
