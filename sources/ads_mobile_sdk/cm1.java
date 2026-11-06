package ads_mobile_sdk;

import android.content.Context;
import com.google.common.base.Splitter;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class cm1 {
    public final CompletableJob A;
    public final AtomicBoolean B;
    public long C;
    public final Context a;
    public final CoroutineScope b;
    public final CoroutineContext c;
    public final Set d;
    public final ks1 e;
    public final Set f;
    public final g83 g;
    public final sz h;
    public final hf i;
    public final ur3 j;
    public final e01 k;
    public final ex0 l;
    public final tx m;
    public final ks1 n;
    public final f0 o;
    public final l43 p;
    public final ks1 q;
    public final cb3 r;
    public final ja1 s;
    public final ks1 t;
    public final pn u;
    public final cw2 v;
    public final ks1 w;
    public final Mutex x;
    public kl1 y;
    public final CompletableJob z;

    public cm1(Context context, CoroutineScope backgroundScope, CoroutineContext backgroundContext, Set initializationTasks, ks1 dependencyInjectors, Set postInitializationTasks, g83 rootTraceCreator, sz concurrencyObjects, hf adapterInitializer, ur3 traceLogger, e01 httpClient, ex0 flags, tx clock, ks1 debugDialogManager, f0 activityTracker, l43 requestConfigurationWrapper, ks1 inspectorManager, cb3 sdkCoreDataStore, ja1 initializationConfigWrapper, ks1 sdkCoreEngine, pn appState, dw2 singletonEngineProvider, ks1 anrWatchdog) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(initializationTasks, "initializationTasks");
        Intrinsics.checkNotNullParameter(dependencyInjectors, "dependencyInjectors");
        Intrinsics.checkNotNullParameter(postInitializationTasks, "postInitializationTasks");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        Intrinsics.checkNotNullParameter(adapterInitializer, "adapterInitializer");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(debugDialogManager, "debugDialogManager");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(requestConfigurationWrapper, "requestConfigurationWrapper");
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        Intrinsics.checkNotNullParameter(sdkCoreDataStore, "sdkCoreDataStore");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(sdkCoreEngine, "sdkCoreEngine");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(singletonEngineProvider, "singletonEngineProvider");
        Intrinsics.checkNotNullParameter(anrWatchdog, "anrWatchdog");
        this.a = context;
        this.b = backgroundScope;
        this.c = backgroundContext;
        this.d = initializationTasks;
        this.e = dependencyInjectors;
        this.f = postInitializationTasks;
        this.g = rootTraceCreator;
        this.h = concurrencyObjects;
        this.i = adapterInitializer;
        this.j = traceLogger;
        this.k = httpClient;
        this.l = flags;
        this.m = clock;
        this.n = debugDialogManager;
        this.o = activityTracker;
        this.p = requestConfigurationWrapper;
        this.q = inspectorManager;
        this.r = sdkCoreDataStore;
        this.s = initializationConfigWrapper;
        this.t = sdkCoreEngine;
        this.u = appState;
        this.v = singletonEngineProvider;
        this.w = anrWatchdog;
        this.x = MutexKt.Mutex$default(false, 1, null);
        this.y = kl1.a;
        this.z = JobKt__JobKt.Job$default(null, 1, null);
        this.A = JobKt__JobKt.Job$default(null, 1, null);
        this.B = new AtomicBoolean(false);
        this.C = Duration.Companion.m2911getZEROUwyO8pc();
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00df, code lost:
    
        if (ads_mobile_sdk.pn.a(r0, false, (kotlin.coroutines.Continuation) r2) == r3) goto L65;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ce A[Catch: all -> 0x0079, TRY_LEAVE, TryCatch #7 {all -> 0x0079, blocks: (B:33:0x0075, B:52:0x00c6, B:54:0x00ce), top: B:121:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0154 A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #1 {all -> 0x0042, blocks: (B:16:0x003d, B:67:0x014e, B:69:0x0154), top: B:110:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x016e A[Catch: all -> 0x017a, TryCatch #9 {all -> 0x017a, blocks: (B:75:0x0167, B:77:0x016e, B:79:0x0172, B:81:0x0176, B:84:0x017d, B:86:0x0181, B:88:0x0185, B:90:0x0189, B:91:0x018a, B:92:0x018f, B:93:0x0190, B:94:0x0197, B:95:0x0198, B:96:0x019f, B:97:0x01a0), top: B:125:0x0167, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01a0 A[Catch: all -> 0x017a, TRY_LEAVE, TryCatch #9 {all -> 0x017a, blocks: (B:75:0x0167, B:77:0x016e, B:79:0x0172, B:81:0x0176, B:84:0x017d, B:86:0x0181, B:88:0x0185, B:90:0x0189, B:91:0x018a, B:92:0x018f, B:93:0x0190, B:94:0x0197, B:95:0x0198, B:96:0x019f, B:97:0x01a0), top: B:125:0x0167, outer: #4 }] */
    /* JADX WARN: Type inference failed for: r0v19, types: [ads_mobile_sdk.e01] */
    /* JADX WARN: Type inference failed for: r0v26, types: [ads_mobile_sdk.nc1, ads_mobile_sdk.sj] */
    /* JADX WARN: Type inference failed for: r10v12, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r12v5, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r2v17, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r2v2, types: [ads_mobile_sdk.sl1, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r8v8, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference failed for: r9v9, types: [ads_mobile_sdk.cm1] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 433
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.cm1.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0083, code lost:
    
        if (ads_mobile_sdk.pn.a(r6, false, (kotlin.coroutines.Continuation) r0) == r1) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.zl1
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.zl1 r0 = (ads_mobile_sdk.zl1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.zl1 r0 = new ads_mobile_sdk.zl1
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
            goto L86
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            ads_mobile_sdk.cm1 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4e
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.pn r6 = r5.u
            r0.a = r5
            r0.d = r4
            r6.getClass()
            java.lang.Object r6 = ads_mobile_sdk.pn.c(r6, r0)
            if (r6 != r1) goto L4d
            goto L85
        L4d:
            r2 = r5
        L4e:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            r4 = 0
            if (r6 == 0) goto L6d
            ads_mobile_sdk.cw2 r6 = r2.v
            java.lang.Object r6 = r6.get()
            ads_mobile_sdk.mk3 r6 = (ads_mobile_sdk.mk3) r6
            r6.b = r4
            ads_mobile_sdk.ks1 r6 = r2.t
            java.lang.Object r6 = r6.get()
            ads_mobile_sdk.jb3 r6 = (ads_mobile_sdk.jb3) r6
            ads_mobile_sdk.rp0 r6 = (ads_mobile_sdk.rp0) r6
            r6.b = r4
        L6d:
            ads_mobile_sdk.ex0 r6 = r2.l
            boolean r6 = r6.O()
            if (r6 == 0) goto L89
            ads_mobile_sdk.pn r6 = r2.u
            r2 = 0
            r0.a = r2
            r0.d = r3
            r6.getClass()
            java.lang.Object r6 = ads_mobile_sdk.pn.a(r6, r4, r0)
            if (r6 != r1) goto L86
        L85:
            return r1
        L86:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L89:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.cm1.c(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x0233, code lost:
    
        if (r0.join(r2) == r3) goto L132;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01ea A[Catch: all -> 0x01f6, TryCatch #4 {all -> 0x01f6, blocks: (B:103:0x01e3, B:105:0x01ea, B:107:0x01ee, B:109:0x01f2, B:112:0x01f9, B:114:0x01fd, B:116:0x0201, B:118:0x0205, B:119:0x0206, B:120:0x020b, B:121:0x020c, B:122:0x0213, B:123:0x0214, B:124:0x021b, B:125:0x021c), top: B:145:0x01e3 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x021c A[Catch: all -> 0x01f6, TRY_LEAVE, TryCatch #4 {all -> 0x01f6, blocks: (B:103:0x01e3, B:105:0x01ea, B:107:0x01ee, B:109:0x01f2, B:112:0x01f9, B:114:0x01fd, B:116:0x0201, B:118:0x0205, B:119:0x0206, B:120:0x020b, B:121:0x020c, B:122:0x0213, B:123:0x0214, B:124:0x021b, B:125:0x021c), top: B:145:0x01e3 }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0183 A[Catch: all -> 0x018f, TryCatch #8 {all -> 0x018f, blocks: (B:64:0x017c, B:66:0x0183, B:68:0x0187, B:70:0x018b, B:73:0x0192, B:75:0x0196, B:77:0x019a, B:79:0x019e, B:80:0x019f, B:81:0x01a4, B:82:0x01a5, B:83:0x01ac, B:84:0x01ad, B:85:0x01b4, B:86:0x01b5), top: B:152:0x017c }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01b5 A[Catch: all -> 0x018f, TRY_LEAVE, TryCatch #8 {all -> 0x018f, blocks: (B:64:0x017c, B:66:0x0183, B:68:0x0187, B:70:0x018b, B:73:0x0192, B:75:0x0196, B:77:0x019a, B:79:0x019e, B:80:0x019f, B:81:0x01a4, B:82:0x01a5, B:83:0x01ac, B:84:0x01ad, B:85:0x01b4, B:86:0x01b5), top: B:152:0x017c }] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v4, types: [kotlinx.coroutines.sync.Mutex] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener r20, kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instruction units count: 573
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.cm1.a(com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:124:0x032c, code lost:
    
        if (r4.a(r6, r2) != r3) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009e, code lost:
    
        if (r1.join(r2) == r3) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ad, code lost:
    
        if (r10.b(r2) == r3) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b1, code lost:
    
        r4 = r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02f4 A[LOOP:0: B:120:0x02ee->B:122:0x02f4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x008a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 836
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.cm1.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void a() {
        if (this.p.a().isTestDevice(this.a)) {
            f01.a("This RequestConfiguration is configured as a test device.", null, null, 6);
            return;
        }
        Splitter splitter = f01.a;
        m21 m21Var = o21.f;
        f01.a("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"" + m21.a(this.a) + "\")) to get test ads on this device.", null, null, 6);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(boolean r14, kotlin.coroutines.Continuation r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 236
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.cm1.a(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void a(Function1 block) {
        Intrinsics.checkNotNullParameter(block, "block");
        CoroutineScope coroutineScope = this.b;
        am1 block2 = new am1(this, block, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block2, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block2, null), 2, null);
    }
}
