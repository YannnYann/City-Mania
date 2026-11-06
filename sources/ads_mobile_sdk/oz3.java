package ads_mobile_sdk;

import android.content.Context;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class oz3 {
    public final Context a;
    public final CoroutineScope b;
    public final CoroutineScope c;
    public final CoroutineContext d;
    public final g83 e;
    public final rb f;
    public final ur3 g;
    public final o21 h;
    public final zw3 i;
    public final w61 j;
    public final vk1 k;
    public final ex0 l;
    public final dz3 m;
    public final e01 n;
    public final yz3 o;
    public final qn p;
    public final bn2 q;
    public vk0 r;

    public oz3(Context context, CoroutineContext backgroundContext, CoroutineScope backgroundScope, CoroutineScope uiScope, CoroutineContext uiContext, g83 rootTraceCreator, rb adSpamClient, ur3 traceLogger, o21 gmaUtil, zw3 userAgentProvider, w61 htmlUtil, vk1 bridgeFactory, ex0 flags, dz3 webViewCompatWrapper, e01 httpClient, yz3 webViewInitializationTask, qn appState, bn2 phantomReferences) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(htmlUtil, "htmlUtil");
        Intrinsics.checkNotNullParameter(bridgeFactory, "bridgeFactory");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(webViewCompatWrapper, "webViewCompatWrapper");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(webViewInitializationTask, "webViewInitializationTask");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(phantomReferences, "phantomReferences");
        this.a = context;
        this.b = backgroundScope;
        this.c = uiScope;
        this.d = uiContext;
        this.e = rootTraceCreator;
        this.f = adSpamClient;
        this.g = traceLogger;
        this.h = gmaUtil;
        this.i = userAgentProvider;
        this.j = htmlUtil;
        this.k = bridgeFactory;
        this.l = flags;
        this.m = webViewCompatWrapper;
        this.n = httpClient;
        this.o = webViewInitializationTask;
        this.p = appState;
        this.q = phantomReferences;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0115 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.v14 r29, ads_mobile_sdk.ks3 r30, ads_mobile_sdk.mb0 r31, ads_mobile_sdk.nr1 r32, boolean r33, ads_mobile_sdk.eo2 r34, ads_mobile_sdk.t91 r35, boolean r36, kotlin.coroutines.Continuation r37) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.oz3.a(ads_mobile_sdk.v14, ads_mobile_sdk.ks3, ads_mobile_sdk.mb0, ads_mobile_sdk.nr1, boolean, ads_mobile_sdk.eo2, ads_mobile_sdk.t91, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object a(v14 v14Var, yr1 yr1Var, boolean z, eo2 eo2Var, t91 t91Var, boolean z2, Continuation continuation) {
        return a(v14Var, new ks3(new n03(), new tn1(), new m33(), new zb()), null, yr1Var, z, eo2Var, t91Var, z2, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.v14 r13, ads_mobile_sdk.ks3 r14, ads_mobile_sdk.mb0 r15, ads_mobile_sdk.eo2 r16, ads_mobile_sdk.t91 r17, kotlin.coroutines.Continuation r18) {
        /*
            r12 = this;
            r1 = r18
            boolean r2 = r1 instanceof ads_mobile_sdk.mz3
            if (r2 == 0) goto L16
            r2 = r1
            ads_mobile_sdk.mz3 r2 = (ads_mobile_sdk.mz3) r2
            int r3 = r2.d
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L16
            int r3 = r3 - r4
            r2.d = r3
        L14:
            r9 = r2
            goto L1c
        L16:
            ads_mobile_sdk.mz3 r2 = new ads_mobile_sdk.mz3
            r2.<init>(r12, r1)
            goto L14
        L1c:
            java.lang.Object r1 = r9.b
            java.lang.Object r10 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r9.d
            r11 = 2
            r3 = 1
            if (r2 == 0) goto L3f
            if (r2 == r3) goto L38
            if (r2 != r11) goto L30
            kotlin.ResultKt.throwOnFailure(r1)
            return r1
        L30:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L38:
            ads_mobile_sdk.oz3 r2 = r9.a
            kotlin.ResultKt.throwOnFailure(r1)
            r0 = r2
            goto L59
        L3f:
            kotlin.ResultKt.throwOnFailure(r1)
            r9.a = r12
            r9.d = r3
            r5 = 0
            r8 = 0
            r4 = 0
            r0 = r12
            r1 = r13
            r2 = r14
            r3 = r15
            r6 = r16
            r7 = r17
            java.lang.Object r1 = r0.a(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            if (r1 != r10) goto L58
            goto L7c
        L58:
            r0 = r12
        L59:
            ads_mobile_sdk.v01 r1 = (ads_mobile_sdk.v01) r1
            boolean r2 = r1 instanceof ads_mobile_sdk.i01
            if (r2 == 0) goto L60
            return r1
        L60:
            boolean r2 = r1 instanceof ads_mobile_sdk.q01
            if (r2 == 0) goto L7e
            ads_mobile_sdk.q01 r1 = (ads_mobile_sdk.q01) r1
            java.lang.Object r1 = r1.b
            ads_mobile_sdk.r31 r1 = (ads_mobile_sdk.r31) r1
            kotlin.coroutines.CoroutineContext r0 = r0.d
            ads_mobile_sdk.nz3 r2 = new ads_mobile_sdk.nz3
            r3 = 0
            r2.<init>(r1, r3)
            r9.a = r3
            r9.d = r11
            java.lang.Object r0 = kotlinx.coroutines.BuildersKt.withContext(r0, r2, r9)
            if (r0 != r10) goto L7d
        L7c:
            return r10
        L7d:
            return r0
        L7e:
            kotlin.NoWhenBranchMatchedException r0 = new kotlin.NoWhenBranchMatchedException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.oz3.a(ads_mobile_sdk.v14, ads_mobile_sdk.ks3, ads_mobile_sdk.mb0, ads_mobile_sdk.eo2, ads_mobile_sdk.t91, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
