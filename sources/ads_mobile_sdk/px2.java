package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes.dex */
public abstract class px2 {
    public final CoroutineScope a;
    public final CoroutineScope b;
    public final ks3 c;
    public final ex0 d;
    public final g83 e;
    public final String f;
    public final j53 g;
    public final BaseRequest h;
    public final boolean i;
    public final ja1 j;
    public final md1 k;
    public final SharedFlow l;
    public final qn m;

    public px2(CoroutineScope loadScope, CoroutineScope backgroundScope, ks3 traceMetaSet, ex0 flags, g83 rootTraceCreator, String requestId, j53 requestType, BaseRequest baseRequest, boolean z, ja1 initializationConfigWrapper, md1 inspectorAdLifecycleMonitor, SharedFlow cancellationChannel, qn appState) {
        Intrinsics.checkNotNullParameter(loadScope, "loadScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(inspectorAdLifecycleMonitor, "inspectorAdLifecycleMonitor");
        Intrinsics.checkNotNullParameter(cancellationChannel, "cancellationChannel");
        Intrinsics.checkNotNullParameter(appState, "appState");
        this.a = loadScope;
        this.b = backgroundScope;
        this.c = traceMetaSet;
        this.d = flags;
        this.e = rootTraceCreator;
        this.f = requestId;
        this.g = requestType;
        this.h = baseRequest;
        this.i = z;
        this.j = initializationConfigWrapper;
        this.k = inspectorAdLifecycleMonitor;
        this.l = cancellationChannel;
        this.m = appState;
    }

    public abstract Object b(Continuation continuation);

    public Object c(Continuation continuation) {
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ab, code lost:
    
        if (r9.collect(r2, r0) == r1) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.px2 r7, ads_mobile_sdk.ei1 r8, kotlin.coroutines.Continuation r9) {
        /*
            r7.getClass()
            boolean r0 = r9 instanceof ads_mobile_sdk.dx2
            if (r0 == 0) goto L16
            r0 = r9
            ads_mobile_sdk.dx2 r0 = (ads_mobile_sdk.dx2) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.f = r1
            goto L1b
        L16:
            ads_mobile_sdk.dx2 r0 = new ads_mobile_sdk.dx2
            r0.<init>(r7, r9)
        L1b:
            java.lang.Object r9 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L43
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            kotlin.ResultKt.throwOnFailure(r9)
            goto Lae
        L31:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L39:
            kotlin.coroutines.CoroutineContext r7 = r0.c
            ads_mobile_sdk.ei1 r8 = r0.b
            ads_mobile_sdk.px2 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L86
        L43:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.CoroutineScope r9 = r7.b
            kotlin.coroutines.CoroutineContext r9 = r9.getCoroutineContext()
            kotlin.coroutines.ContinuationInterceptor$Key r2 = kotlin.coroutines.ContinuationInterceptor.Key
            kotlin.coroutines.CoroutineContext$Element r9 = r9.get(r2)
            boolean r2 = r9 instanceof kotlinx.coroutines.CoroutineDispatcher
            if (r2 == 0) goto L59
            kotlinx.coroutines.CoroutineDispatcher r9 = (kotlinx.coroutines.CoroutineDispatcher) r9
            goto L5a
        L59:
            r9 = r5
        L5a:
            if (r9 == 0) goto L63
            java.lang.String r2 = "Publisher Callback"
            kotlinx.coroutines.CoroutineDispatcher r9 = r9.limitedParallelism(r4, r2)
            goto L64
        L63:
            r9 = r5
        L64:
            if (r9 == 0) goto L67
            goto L6d
        L67:
            kotlinx.coroutines.CoroutineScope r9 = r7.b
            kotlin.coroutines.CoroutineContext r9 = r9.getCoroutineContext()
        L6d:
            kotlinx.coroutines.NonCancellable r2 = kotlinx.coroutines.NonCancellable.INSTANCE
            kotlin.coroutines.CoroutineContext r9 = r9.plus(r2)
            r0.a = r7
            r0.b = r8
            r0.c = r9
            r0.f = r4
            java.lang.Object r2 = r7.a(r0)
            if (r2 != r1) goto L82
            goto Lad
        L82:
            r6 = r2
            r2 = r7
            r7 = r9
            r9 = r6
        L86:
            kotlinx.coroutines.flow.Flow r9 = (kotlinx.coroutines.flow.Flow) r9
            ads_mobile_sdk.gx2 r4 = new ads_mobile_sdk.gx2
            r4.<init>(r7, r8, r5)
            kotlinx.coroutines.flow.Flow r9 = kotlinx.coroutines.flow.FlowKt.onCompletion(r9, r4)
            ads_mobile_sdk.jx2 r4 = new ads_mobile_sdk.jx2
            r4.<init>(r2, r7, r8, r5)
            kotlinx.coroutines.flow.Flow r9 = kotlinx.coroutines.flow.FlowKt.m2969catch(r9, r4)
            ads_mobile_sdk.ox2 r2 = new ads_mobile_sdk.ox2
            r2.<init>(r7, r8)
            r0.a = r5
            r0.b = r5
            r0.c = r5
            r0.f = r3
            java.lang.Object r7 = r9.collect(r2, r0)
            if (r7 != r1) goto Lae
        Lad:
            return r1
        Lae:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.px2.a(ads_mobile_sdk.px2, ads_mobile_sdk.ei1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final mj1 a(mj1 componentBuilder, SignalRequest baseRequest, String adResponseBlob, tf3 signalGenerationData) {
        Intrinsics.checkNotNullParameter(componentBuilder, "componentBuilder");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(adResponseBlob, "adResponseBlob");
        Intrinsics.checkNotNullParameter(signalGenerationData, "signalGenerationData");
        return (mj1) ((mj1) ((mj1) ((mj1) ((mj1) ((mj1) ((mj1) ((mj1) componentBuilder.a(adResponseBlob)).a(signalGenerationData)).a(this.c.a)).a(this.c.b)).a(this.g)).a(baseRequest)).a(this.i)).a(this.k);
    }

    public final bn1 a(bn1 componentBuilder, BaseRequest baseRequest) {
        Intrinsics.checkNotNullParameter(componentBuilder, "componentBuilder");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        return (bn1) ((bn1) ((bn1) ((bn1) ((bn1) ((bn1) ((bn1) ((bn1) ((bn1) ((bn1) componentBuilder.a(this.c.a)).a(this.c.b)).a(this.g)).a(baseRequest)).a(this.i)).a(this.k)).a(new m13())).b(false)).c(false)).a(new pb(this.d));
    }

    public static LoadAdError a(i01 error, ResponseInfo responseInfo) {
        Intrinsics.checkNotNullParameter(error, "error");
        return new LoadAdError(error.a().d(), h01.a(error), responseInfo);
    }

    public final ks3 a() {
        return this.c;
    }

    public final Object a(oh2 oh2Var) {
        return a(this, oh2Var);
    }

    public final void a(ei1 internalAdLoadCallback) {
        Intrinsics.checkNotNullParameter(internalAdLoadCallback, "internalAdLoadCallback");
        CoroutineScope coroutineScope = this.a;
        ww2 block = new ww2(this, internalAdLoadCallback, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        CoroutineScope coroutineScope2 = this.b;
        vw2 block2 = new vw2(this, jobLaunch$default, null);
        Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block2, "block");
        jobLaunch$default.invokeOnCompletion(new sw2(BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context, null, new ws3(block2, null), 2, null)));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.px2 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.tw2
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.tw2 r0 = (ads_mobile_sdk.tw2) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.tw2 r0 = new ads_mobile_sdk.tw2
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r6)
            return r6
        L2c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L34:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L50
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.c = r4
            kotlinx.coroutines.CoroutineScope r6 = r5.a
            kotlin.coroutines.CoroutineContext r6 = r6.getCoroutineContext()
            ads_mobile_sdk.xw2 r2 = new ads_mobile_sdk.xw2
            r4 = 0
            r2.<init>(r5, r4)
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r6, r2, r0)
            if (r6 != r1) goto L50
            goto L5a
        L50:
            kotlinx.coroutines.flow.Flow r6 = (kotlinx.coroutines.flow.Flow) r6
            r0.c = r3
            java.lang.Object r5 = kotlinx.coroutines.flow.FlowKt.first(r6, r0)
            if (r5 != r1) goto L5b
        L5a:
            return r1
        L5b:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.px2.a(ads_mobile_sdk.px2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0140, code lost:
    
        if (r2.c(r0) == r1) goto L56;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 402
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.px2.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public Object a(zh1 zh1Var, yw2 yw2Var) {
        return Unit.INSTANCE;
    }
}
