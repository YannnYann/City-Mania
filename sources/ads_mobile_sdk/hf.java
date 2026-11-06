package ads_mobile_sdk;

import android.content.Context;
import android.os.SystemClock;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class hf {
    public static final List A = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"com.google.ads.mediation.admob.AdMobAdapter", "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"});
    public final CoroutineScope a;
    public final CoroutineContext b;
    public final Context c;
    public final rv1 d;
    public final kf e;
    public final f0 f;
    public final pn g;
    public final tx h;
    public final ex0 i;
    public final g83 j;
    public final ja1 k;
    public final Mutex l;
    public final LinkedHashMap m;
    public final LinkedHashMap n;
    public long o;
    public AdapterStatus p;
    public long q;
    public long r;
    public int s;
    public long t;
    public final Mutex u;
    public final LinkedHashSet v;
    public final LinkedHashSet w;
    public Set x;
    public final AtomicBoolean y;
    public final CompletableJob z;

    public hf(CoroutineScope backgroundScope, CoroutineContext uiContext, Context applicationContext, rv1 mediationAdapterProxyFactory, kf adapterStatusMapUpdater, f0 activityTracker, pn appState, tx clock, ex0 flags, g83 rootTraceCreator, ja1 initializationConfigWrapper) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(mediationAdapterProxyFactory, "mediationAdapterProxyFactory");
        Intrinsics.checkNotNullParameter(adapterStatusMapUpdater, "adapterStatusMapUpdater");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        this.a = backgroundScope;
        this.b = uiContext;
        this.c = applicationContext;
        this.d = mediationAdapterProxyFactory;
        this.e = adapterStatusMapUpdater;
        this.f = activityTracker;
        this.g = appState;
        this.h = clock;
        this.i = flags;
        this.j = rootTraceCreator;
        this.k = initializationConfigWrapper;
        this.l = MutexKt.Mutex$default(false, 1, null);
        this.m = new LinkedHashMap();
        this.n = new LinkedHashMap();
        Duration.Companion companion = Duration.Companion;
        this.o = companion.m2911getZEROUwyO8pc();
        this.p = le.b(null, null, 7);
        this.q = companion.m2911getZEROUwyO8pc();
        this.r = companion.m2911getZEROUwyO8pc();
        this.t = companion.m2911getZEROUwyO8pc();
        this.u = MutexKt.Mutex$default(false, 1, null);
        this.v = new LinkedHashSet();
        this.w = new LinkedHashSet();
        this.y = new AtomicBoolean(false);
        this.z = JobKt__JobKt.Job$default(null, 1, null);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007b A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:25:0x0077, B:27:0x007b, B:30:0x0084), top: B:51:0x0077 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b9 A[Catch: all -> 0x00e3, LOOP:0: B:39:0x00b3->B:41:0x00b9, LOOP_END, TryCatch #1 {all -> 0x00e3, blocks: (B:38:0x00ad, B:39:0x00b3, B:41:0x00b9, B:44:0x00e6), top: B:53:0x00ad }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.hf r13, kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 244
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hf.b(ads_mobile_sdk.hf, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00d2, code lost:
    
        if (r5.b(r3) != r4) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.hf r18, java.lang.String r19, ads_mobile_sdk.be r20, kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instruction units count: 242
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hf.a(ads_mobile_sdk.hf, java.lang.String, ads_mobile_sdk.be, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0246 A[Catch: all -> 0x004f, TryCatch #9 {all -> 0x004f, blocks: (B:15:0x0049, B:116:0x02ab, B:119:0x02b4, B:121:0x02b8, B:117:0x02b0, B:118:0x02b3, B:22:0x0062, B:99:0x023f, B:101:0x0246, B:102:0x024d, B:104:0x0251, B:108:0x026e, B:110:0x0278, B:114:0x027f), top: B:168:0x0033, inners: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0251 A[Catch: all -> 0x004f, TRY_LEAVE, TryCatch #9 {all -> 0x004f, blocks: (B:15:0x0049, B:116:0x02ab, B:119:0x02b4, B:121:0x02b8, B:117:0x02b0, B:118:0x02b3, B:22:0x0062, B:99:0x023f, B:101:0x0246, B:102:0x024d, B:104:0x0251, B:108:0x026e, B:110:0x0278, B:114:0x027f), top: B:168:0x0033, inners: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0278 A[Catch: all -> 0x027b, TryCatch #7 {all -> 0x027b, blocks: (B:108:0x026e, B:110:0x0278, B:114:0x027f), top: B:166:0x026e, outer: #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02b8 A[Catch: all -> 0x004f, TRY_LEAVE, TryCatch #9 {all -> 0x004f, blocks: (B:15:0x0049, B:116:0x02ab, B:119:0x02b4, B:121:0x02b8, B:117:0x02b0, B:118:0x02b3, B:22:0x0062, B:99:0x023f, B:101:0x0246, B:102:0x024d, B:104:0x0251, B:108:0x026e, B:110:0x0278, B:114:0x027f), top: B:168:0x0033, inners: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02cf A[Catch: all -> 0x02db, TryCatch #6 {all -> 0x02db, blocks: (B:127:0x02c8, B:129:0x02cf, B:131:0x02d3, B:133:0x02d7, B:136:0x02de, B:138:0x02e2, B:140:0x02e6, B:142:0x02ea, B:143:0x02eb, B:144:0x02f0, B:145:0x02f1, B:146:0x02f8, B:147:0x02f9, B:148:0x0300, B:149:0x0301), top: B:165:0x02c8 }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0301 A[Catch: all -> 0x02db, TRY_LEAVE, TryCatch #6 {all -> 0x02db, blocks: (B:127:0x02c8, B:129:0x02cf, B:131:0x02d3, B:133:0x02d7, B:136:0x02de, B:138:0x02e2, B:140:0x02e6, B:142:0x02ea, B:143:0x02eb, B:144:0x02f0, B:145:0x02f1, B:146:0x02f8, B:147:0x02f9, B:148:0x0300, B:149:0x0301), top: B:165:0x02c8 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0122 A[Catch: all -> 0x007e, TryCatch #8 {all -> 0x007e, blocks: (B:25:0x0078, B:56:0x0188, B:59:0x0191, B:61:0x0195, B:57:0x018d, B:58:0x0190, B:30:0x0089, B:39:0x011b, B:41:0x0122, B:42:0x0129, B:44:0x012d, B:48:0x014b, B:50:0x0155, B:54:0x015c), top: B:168:0x0033, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x012d A[Catch: all -> 0x007e, TRY_LEAVE, TryCatch #8 {all -> 0x007e, blocks: (B:25:0x0078, B:56:0x0188, B:59:0x0191, B:61:0x0195, B:57:0x018d, B:58:0x0190, B:30:0x0089, B:39:0x011b, B:41:0x0122, B:42:0x0129, B:44:0x012d, B:48:0x014b, B:50:0x0155, B:54:0x015c), top: B:168:0x0033, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0155 A[Catch: all -> 0x0158, TryCatch #5 {all -> 0x0158, blocks: (B:48:0x014b, B:50:0x0155, B:54:0x015c), top: B:163:0x014b, outer: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0195 A[Catch: all -> 0x007e, TRY_LEAVE, TryCatch #8 {all -> 0x007e, blocks: (B:25:0x0078, B:56:0x0188, B:59:0x0191, B:61:0x0195, B:57:0x018d, B:58:0x0190, B:30:0x0089, B:39:0x011b, B:41:0x0122, B:42:0x0129, B:44:0x012d, B:48:0x014b, B:50:0x0155, B:54:0x015c), top: B:168:0x0033, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01ac A[Catch: all -> 0x01b8, TryCatch #4 {all -> 0x01b8, blocks: (B:67:0x01a5, B:69:0x01ac, B:71:0x01b0, B:73:0x01b4, B:76:0x01bb, B:78:0x01bf, B:80:0x01c3, B:82:0x01c7, B:83:0x01c8, B:84:0x01cd, B:85:0x01ce, B:86:0x01d5, B:87:0x01d6, B:88:0x01dd, B:89:0x01de), top: B:162:0x01a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01de A[Catch: all -> 0x01b8, TRY_LEAVE, TryCatch #4 {all -> 0x01b8, blocks: (B:67:0x01a5, B:69:0x01ac, B:71:0x01b0, B:73:0x01b4, B:76:0x01bb, B:78:0x01bf, B:80:0x01c3, B:82:0x01c7, B:83:0x01c8, B:84:0x01cd, B:85:0x01ce, B:86:0x01d5, B:87:0x01d6, B:88:0x01dd, B:89:0x01de), top: B:162:0x01a5 }] */
    /* JADX WARN: Type inference failed for: r2v0, types: [ads_mobile_sdk.be] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v18, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v21, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r3v0, types: [long] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v5, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v11, types: [ads_mobile_sdk.m21] */
    /* JADX WARN: Type inference failed for: r8v6, types: [ads_mobile_sdk.m21] */
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
    public static final java.lang.Object a(ads_mobile_sdk.hf r23, java.lang.String r24, ads_mobile_sdk.be r25, long r26, kotlin.coroutines.Continuation r28) {
        /*
            Method dump skipped, instruction units count: 776
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hf.a(ads_mobile_sdk.hf, java.lang.String, ads_mobile_sdk.be, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof ads_mobile_sdk.gf
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.gf r0 = (ads_mobile_sdk.gf) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.gf r0 = new ads_mobile_sdk.gf
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.hf r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L4a
        L2e:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L36:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.sync.Mutex r10 = r9.l
            r0.a = r9
            r0.b = r10
            r0.e = r3
            java.lang.Object r0 = r10.lock(r4, r0)
            if (r0 != r1) goto L48
            return r1
        L48:
            r0 = r9
            r1 = r10
        L4a:
            int r10 = r0.s     // Catch: java.lang.Throwable -> L6e
            if (r10 != r3) goto L70
            long r2 = r0.r     // Catch: java.lang.Throwable -> L6e
            kotlin.time.Duration$Companion r10 = kotlin.time.Duration.Companion     // Catch: java.lang.Throwable -> L6e
            ads_mobile_sdk.tx r10 = r0.h     // Catch: java.lang.Throwable -> L6e
            r10.getClass()     // Catch: java.lang.Throwable -> L6e
            long r5 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L6e
            kotlin.time.DurationUnit r10 = kotlin.time.DurationUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L6e
            long r5 = kotlin.time.DurationKt.toDuration(r5, r10)     // Catch: java.lang.Throwable -> L6e
            long r7 = r0.t     // Catch: java.lang.Throwable -> L6e
            long r5 = kotlin.time.Duration.m2896minusLRDsOJo(r5, r7)     // Catch: java.lang.Throwable -> L6e
            long r2 = kotlin.time.Duration.m2897plusLRDsOJo(r2, r5)     // Catch: java.lang.Throwable -> L6e
            r0.r = r2     // Catch: java.lang.Throwable -> L6e
            goto L70
        L6e:
            r10 = move-exception
            goto L7c
        L70:
            int r10 = r0.s     // Catch: java.lang.Throwable -> L6e
            int r10 = r10 + (-1)
            r0.s = r10     // Catch: java.lang.Throwable -> L6e
            r1.unlock(r4)
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        L7c:
            r1.unlock(r4)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hf.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x01da, code lost:
    
        if (kotlinx.coroutines.AwaitKt.joinAll((java.util.List) r0, r2) == r3) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x017f A[Catch: all -> 0x01b6, TRY_LEAVE, TryCatch #0 {all -> 0x01b6, blocks: (B:53:0x0171, B:55:0x017f), top: B:67:0x0171 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0170 -> B:67:0x0171). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.hf r19, com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig r20, java.util.Set r21, kotlin.coroutines.Continuation r22) {
        /*
            Method dump skipped, instruction units count: 480
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hf.a(ads_mobile_sdk.hf, com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig, java.util.Set, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.hf r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.ne
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.ne r0 = (ads_mobile_sdk.ne) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ne r0 = new ads_mobile_sdk.ne
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlinx.coroutines.sync.Mutex r5 = r0.b
            ads_mobile_sdk.hf r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            r6 = r5
            r5 = r0
            goto L4a
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.l
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            java.util.LinkedHashMap r5 = r5.m     // Catch: java.lang.Throwable -> L54
            java.util.Map r5 = kotlin.collections.MapsKt__MapsKt.toMap(r5)     // Catch: java.lang.Throwable -> L54
            r6.unlock(r4)
            return r5
        L54:
            r5 = move-exception
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hf.a(ads_mobile_sdk.hf, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final long a() {
        long jM2897plusLRDsOJo;
        if (this.s == 0) {
            jM2897plusLRDsOJo = this.r;
        } else {
            long j = this.r;
            Duration.Companion companion = Duration.Companion;
            this.h.getClass();
            jM2897plusLRDsOJo = Duration.m2897plusLRDsOJo(j, Duration.m2896minusLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), this.t));
        }
        return Duration.m2881getInWholeMillisecondsimpl(jM2897plusLRDsOJo);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.hf r9, java.util.Set r10, kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 321
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hf.a(ads_mobile_sdk.hf, java.util.Set, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0432  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0454 A[Catch: all -> 0x0199, TryCatch #24 {all -> 0x0199, blocks: (B:34:0x018b, B:164:0x05b1, B:166:0x05f3, B:39:0x01b4, B:140:0x051a, B:136:0x04e9, B:89:0x0362, B:91:0x0370, B:92:0x03b5, B:94:0x03bb, B:95:0x03cc, B:96:0x03cf, B:97:0x03d4, B:98:0x03d5, B:106:0x03ec, B:99:0x03d8, B:100:0x03db, B:101:0x03de, B:102:0x03e1, B:103:0x03e4, B:104:0x03e7, B:105:0x03ea, B:107:0x03f0, B:109:0x0436, B:111:0x0454, B:113:0x045c, B:116:0x046b, B:118:0x0472, B:120:0x047d, B:122:0x048f, B:124:0x0499, B:119:0x0477), top: B:377:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0472 A[Catch: all -> 0x0199, TryCatch #24 {all -> 0x0199, blocks: (B:34:0x018b, B:164:0x05b1, B:166:0x05f3, B:39:0x01b4, B:140:0x051a, B:136:0x04e9, B:89:0x0362, B:91:0x0370, B:92:0x03b5, B:94:0x03bb, B:95:0x03cc, B:96:0x03cf, B:97:0x03d4, B:98:0x03d5, B:106:0x03ec, B:99:0x03d8, B:100:0x03db, B:101:0x03de, B:102:0x03e1, B:103:0x03e4, B:104:0x03e7, B:105:0x03ea, B:107:0x03f0, B:109:0x0436, B:111:0x0454, B:113:0x045c, B:116:0x046b, B:118:0x0472, B:120:0x047d, B:122:0x048f, B:124:0x0499, B:119:0x0477), top: B:377:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0477 A[Catch: all -> 0x0199, TryCatch #24 {all -> 0x0199, blocks: (B:34:0x018b, B:164:0x05b1, B:166:0x05f3, B:39:0x01b4, B:140:0x051a, B:136:0x04e9, B:89:0x0362, B:91:0x0370, B:92:0x03b5, B:94:0x03bb, B:95:0x03cc, B:96:0x03cf, B:97:0x03d4, B:98:0x03d5, B:106:0x03ec, B:99:0x03d8, B:100:0x03db, B:101:0x03de, B:102:0x03e1, B:103:0x03e4, B:104:0x03e7, B:105:0x03ea, B:107:0x03f0, B:109:0x0436, B:111:0x0454, B:113:0x045c, B:116:0x046b, B:118:0x0472, B:120:0x047d, B:122:0x048f, B:124:0x0499, B:119:0x0477), top: B:377:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x048f A[Catch: all -> 0x0199, TryCatch #24 {all -> 0x0199, blocks: (B:34:0x018b, B:164:0x05b1, B:166:0x05f3, B:39:0x01b4, B:140:0x051a, B:136:0x04e9, B:89:0x0362, B:91:0x0370, B:92:0x03b5, B:94:0x03bb, B:95:0x03cc, B:96:0x03cf, B:97:0x03d4, B:98:0x03d5, B:106:0x03ec, B:99:0x03d8, B:100:0x03db, B:101:0x03de, B:102:0x03e1, B:103:0x03e4, B:104:0x03e7, B:105:0x03ea, B:107:0x03f0, B:109:0x0436, B:111:0x0454, B:113:0x045c, B:116:0x046b, B:118:0x0472, B:120:0x047d, B:122:0x048f, B:124:0x0499, B:119:0x0477), top: B:377:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0499 A[Catch: all -> 0x0199, TRY_LEAVE, TryCatch #24 {all -> 0x0199, blocks: (B:34:0x018b, B:164:0x05b1, B:166:0x05f3, B:39:0x01b4, B:140:0x051a, B:136:0x04e9, B:89:0x0362, B:91:0x0370, B:92:0x03b5, B:94:0x03bb, B:95:0x03cc, B:96:0x03cf, B:97:0x03d4, B:98:0x03d5, B:106:0x03ec, B:99:0x03d8, B:100:0x03db, B:101:0x03de, B:102:0x03e1, B:103:0x03e4, B:104:0x03e7, B:105:0x03ea, B:107:0x03f0, B:109:0x0436, B:111:0x0454, B:113:0x045c, B:116:0x046b, B:118:0x0472, B:120:0x047d, B:122:0x048f, B:124:0x0499, B:119:0x0477), top: B:377:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x04e9 A[Catch: all -> 0x0199, PHI: r0 r1 r2 r3 r7 r8 r9 r10 r13 r26 r27 r35 r38
      0x04e9: PHI (r0v37 ads_mobile_sdk.hf) = (r0v27 ads_mobile_sdk.hf), (r0v45 ads_mobile_sdk.hf) binds: [B:123:0x0497, B:129:0x04cb] A[DONT_GENERATE, DONT_INLINE]
      0x04e9: PHI (r1v45 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig) = 
      (r1v34 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
      (r1v50 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
     binds: [B:123:0x0497, B:129:0x04cb] A[DONT_GENERATE, DONT_INLINE]
      0x04e9: PHI (r2v19 ads_mobile_sdk.ie) = (r2v12 ads_mobile_sdk.ie), (r2v22 ads_mobile_sdk.ie) binds: [B:123:0x0497, B:129:0x04cb] A[DONT_GENERATE, DONT_INLINE]
      0x04e9: PHI (r3v22 java.lang.String) = (r3v13 java.lang.String), (r3v25 java.lang.String) binds: [B:123:0x0497, B:129:0x04cb] A[DONT_GENERATE, DONT_INLINE]
      0x04e9: PHI (r7v17 kotlin.jvm.internal.Ref$LongRef) = (r7v10 kotlin.jvm.internal.Ref$LongRef), (r7v19 kotlin.jvm.internal.Ref$LongRef) binds: [B:123:0x0497, B:129:0x04cb] A[DONT_GENERATE, DONT_INLINE]
      0x04e9: PHI (r8v29 java.io.Closeable) = (r8v21 java.io.Closeable), (r8v31 java.io.Closeable) binds: [B:123:0x0497, B:129:0x04cb] A[DONT_GENERATE, DONT_INLINE]
      0x04e9: PHI (r9v32 java.util.Set) = (r9v18 java.util.Set), (r9v34 java.util.Set) binds: [B:123:0x0497, B:129:0x04cb] A[DONT_GENERATE, DONT_INLINE]
      0x04e9: PHI (r10v17 ??) = (r10v13 ??), (r10v19 ??) binds: [B:123:0x0497, B:129:0x04cb] A[DONT_GENERATE, DONT_INLINE]
      0x04e9: PHI (r13v4 java.lang.Object) = (r13v3 java.lang.Object), (r13v5 java.lang.Object) binds: [B:123:0x0497, B:129:0x04cb] A[DONT_GENERATE, DONT_INLINE]
      0x04e9: PHI (r26v8 java.lang.String) = (r26v4 java.lang.String), (r26v9 java.lang.String) binds: [B:123:0x0497, B:129:0x04cb] A[DONT_GENERATE, DONT_INLINE]
      0x04e9: PHI (r27v8 java.lang.String) = (r27v4 java.lang.String), (r27v9 java.lang.String) binds: [B:123:0x0497, B:129:0x04cb] A[DONT_GENERATE, DONT_INLINE]
      0x04e9: PHI (r35v6 java.lang.Object) = (r35v3 java.lang.Object), (r35v7 java.lang.Object) binds: [B:123:0x0497, B:129:0x04cb] A[DONT_GENERATE, DONT_INLINE]
      0x04e9: PHI (r38v8 java.lang.String) = (r38v5 java.lang.String), (r38v9 java.lang.String) binds: [B:123:0x0497, B:129:0x04cb] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #24 {all -> 0x0199, blocks: (B:34:0x018b, B:164:0x05b1, B:166:0x05f3, B:39:0x01b4, B:140:0x051a, B:136:0x04e9, B:89:0x0362, B:91:0x0370, B:92:0x03b5, B:94:0x03bb, B:95:0x03cc, B:96:0x03cf, B:97:0x03d4, B:98:0x03d5, B:106:0x03ec, B:99:0x03d8, B:100:0x03db, B:101:0x03de, B:102:0x03e1, B:103:0x03e4, B:104:0x03e7, B:105:0x03ea, B:107:0x03f0, B:109:0x0436, B:111:0x0454, B:113:0x045c, B:116:0x046b, B:118:0x0472, B:120:0x047d, B:122:0x048f, B:124:0x0499, B:119:0x0477), top: B:377:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0515  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0538  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0543 A[Catch: all -> 0x059c, TryCatch #27 {all -> 0x059c, blocks: (B:144:0x0539, B:145:0x053d, B:147:0x0543, B:150:0x0554, B:152:0x056c), top: B:378:0x0539 }] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x05f3 A[Catch: all -> 0x0199, TRY_LEAVE, TryCatch #24 {all -> 0x0199, blocks: (B:34:0x018b, B:164:0x05b1, B:166:0x05f3, B:39:0x01b4, B:140:0x051a, B:136:0x04e9, B:89:0x0362, B:91:0x0370, B:92:0x03b5, B:94:0x03bb, B:95:0x03cc, B:96:0x03cf, B:97:0x03d4, B:98:0x03d5, B:106:0x03ec, B:99:0x03d8, B:100:0x03db, B:101:0x03de, B:102:0x03e1, B:103:0x03e4, B:104:0x03e7, B:105:0x03ea, B:107:0x03f0, B:109:0x0436, B:111:0x0454, B:113:0x045c, B:116:0x046b, B:118:0x0472, B:120:0x047d, B:122:0x048f, B:124:0x0499, B:119:0x0477), top: B:377:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x062c  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x064a A[Catch: all -> 0x0656, TryCatch #22 {all -> 0x0656, blocks: (B:181:0x0643, B:183:0x064a, B:185:0x064e, B:187:0x0652, B:190:0x0659, B:192:0x065d, B:194:0x0661, B:196:0x0665, B:197:0x0666, B:198:0x066b, B:199:0x066c, B:200:0x0673, B:201:0x0674, B:202:0x067b, B:203:0x067c), top: B:401:0x0643 }] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x067c A[Catch: all -> 0x0656, TRY_LEAVE, TryCatch #22 {all -> 0x0656, blocks: (B:181:0x0643, B:183:0x064a, B:185:0x064e, B:187:0x0652, B:190:0x0659, B:192:0x065d, B:194:0x0661, B:196:0x0665, B:197:0x0666, B:198:0x066b, B:199:0x066c, B:200:0x0673, B:201:0x0674, B:202:0x067b, B:203:0x067c), top: B:401:0x0643 }] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x06d8 A[Catch: all -> 0x06ed, TryCatch #2 {all -> 0x06ed, blocks: (B:213:0x06c6, B:215:0x06d8, B:218:0x06f1), top: B:375:0x06c6, outer: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x06fb A[Catch: all -> 0x073a, TryCatch #7 {all -> 0x073a, blocks: (B:235:0x0731, B:237:0x0736, B:243:0x0746, B:244:0x074a, B:220:0x06f4, B:222:0x06fb, B:224:0x0703, B:226:0x070a, B:228:0x070e, B:230:0x0714, B:339:0x0a33, B:340:0x0a36, B:213:0x06c6, B:215:0x06d8, B:218:0x06f1, B:234:0x072b), top: B:375:0x06c6, inners: #2, #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0736 A[Catch: all -> 0x073a, TryCatch #7 {all -> 0x073a, blocks: (B:235:0x0731, B:237:0x0736, B:243:0x0746, B:244:0x074a, B:220:0x06f4, B:222:0x06fb, B:224:0x0703, B:226:0x070a, B:228:0x070e, B:230:0x0714, B:339:0x0a33, B:340:0x0a36, B:213:0x06c6, B:215:0x06d8, B:218:0x06f1, B:234:0x072b), top: B:375:0x06c6, inners: #2, #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0742 A[PHI: r0 r1 r2 r3 r8 r9 r10 r12 r15 r22 r23 r24 r25 r27 r28 r38
      0x0742: PHI (r0v71 ads_mobile_sdk.hf) = (r0v107 ads_mobile_sdk.hf), (r0v108 ads_mobile_sdk.hf), (r0v109 ads_mobile_sdk.hf), (r0v77 ads_mobile_sdk.hf) binds: [B:221:0x06f9, B:223:0x0701, B:225:0x0708, B:240:0x073f] A[DONT_GENERATE, DONT_INLINE]
      0x0742: PHI (r1v79 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig) = 
      (r1v69 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
      (r1v69 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
      (r1v69 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
      (r1v82 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
     binds: [B:221:0x06f9, B:223:0x0701, B:225:0x0708, B:240:0x073f] A[DONT_GENERATE, DONT_INLINE]
      0x0742: PHI (r2v47 com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener) = 
      (r2v42 com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener)
      (r2v42 com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener)
      (r2v42 com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener)
      (r2v58 com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener)
     binds: [B:221:0x06f9, B:223:0x0701, B:225:0x0708, B:240:0x073f] A[DONT_GENERATE, DONT_INLINE]
      0x0742: PHI (r3v34 java.lang.String) = (r3v32 java.lang.String), (r3v32 java.lang.String), (r3v32 java.lang.String), (r3v44 java.lang.String) binds: [B:221:0x06f9, B:223:0x0701, B:225:0x0708, B:240:0x073f] A[DONT_GENERATE, DONT_INLINE]
      0x0742: PHI (r8v53 java.io.Closeable) = (r8v72 java.io.Closeable), (r8v73 java.io.Closeable), (r8v74 java.io.Closeable), (r8v75 java.io.Closeable) binds: [B:221:0x06f9, B:223:0x0701, B:225:0x0708, B:240:0x073f] A[DONT_GENERATE, DONT_INLINE]
      0x0742: PHI (r9v49 kotlin.jvm.internal.Ref$BooleanRef) = 
      (r9v46 kotlin.jvm.internal.Ref$BooleanRef)
      (r9v46 kotlin.jvm.internal.Ref$BooleanRef)
      (r9v46 kotlin.jvm.internal.Ref$BooleanRef)
      (r9v53 kotlin.jvm.internal.Ref$BooleanRef)
     binds: [B:221:0x06f9, B:223:0x0701, B:225:0x0708, B:240:0x073f] A[DONT_GENERATE, DONT_INLINE]
      0x0742: PHI (r10v31 ads_mobile_sdk.rr3) = (r10v70 ads_mobile_sdk.rr3), (r10v71 ads_mobile_sdk.rr3), (r10v72 ads_mobile_sdk.rr3), (r10v73 ads_mobile_sdk.rr3) binds: [B:221:0x06f9, B:223:0x0701, B:225:0x0708, B:240:0x073f] A[DONT_GENERATE, DONT_INLINE]
      0x0742: PHI (r12v30 java.lang.String) = (r12v27 java.lang.String), (r12v27 java.lang.String), (r12v27 java.lang.String), (r12v32 java.lang.String) binds: [B:221:0x06f9, B:223:0x0701, B:225:0x0708, B:240:0x073f] A[DONT_GENERATE, DONT_INLINE]
      0x0742: PHI (r15v28 java.lang.String) = (r15v26 java.lang.String), (r15v26 java.lang.String), (r15v26 java.lang.String), (r15v31 java.lang.String) binds: [B:221:0x06f9, B:223:0x0701, B:225:0x0708, B:240:0x073f] A[DONT_GENERATE, DONT_INLINE]
      0x0742: PHI (r22v16 java.lang.String) = (r22v14 java.lang.String), (r22v14 java.lang.String), (r22v14 java.lang.String), (r22v19 java.lang.String) binds: [B:221:0x06f9, B:223:0x0701, B:225:0x0708, B:240:0x073f] A[DONT_GENERATE, DONT_INLINE]
      0x0742: PHI (r23v10 java.lang.String) = (r23v8 java.lang.String), (r23v8 java.lang.String), (r23v8 java.lang.String), (r23v11 java.lang.String) binds: [B:221:0x06f9, B:223:0x0701, B:225:0x0708, B:240:0x073f] A[DONT_GENERATE, DONT_INLINE]
      0x0742: PHI (r24v9 java.lang.String) = (r24v7 java.lang.String), (r24v7 java.lang.String), (r24v7 java.lang.String), (r24v10 java.lang.String) binds: [B:221:0x06f9, B:223:0x0701, B:225:0x0708, B:240:0x073f] A[DONT_GENERATE, DONT_INLINE]
      0x0742: PHI (r25v9 java.lang.String) = (r25v7 java.lang.String), (r25v7 java.lang.String), (r25v7 java.lang.String), (r25v10 java.lang.String) binds: [B:221:0x06f9, B:223:0x0701, B:225:0x0708, B:240:0x073f] A[DONT_GENERATE, DONT_INLINE]
      0x0742: PHI (r27v17 java.lang.String) = (r27v16 java.lang.String), (r27v16 java.lang.String), (r27v16 java.lang.String), (r27v21 java.lang.String) binds: [B:221:0x06f9, B:223:0x0701, B:225:0x0708, B:240:0x073f] A[DONT_GENERATE, DONT_INLINE]
      0x0742: PHI (r28v6 java.lang.String) = (r28v5 java.lang.String), (r28v5 java.lang.String), (r28v5 java.lang.String), (r28v7 java.lang.String) binds: [B:221:0x06f9, B:223:0x0701, B:225:0x0708, B:240:0x073f] A[DONT_GENERATE, DONT_INLINE]
      0x0742: PHI (r38v21 java.lang.String) = (r38v19 java.lang.String), (r38v19 java.lang.String), (r38v19 java.lang.String), (r38v22 java.lang.String) binds: [B:221:0x06f9, B:223:0x0701, B:225:0x0708, B:240:0x073f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x075e A[Catch: all -> 0x07c3, TryCatch #12 {all -> 0x07c3, blocks: (B:247:0x0750, B:249:0x075e, B:250:0x07a3, B:252:0x07a9, B:253:0x07ba, B:254:0x07bd, B:255:0x07c2, B:258:0x07c6, B:266:0x07dd, B:259:0x07c9, B:260:0x07cc, B:261:0x07cf, B:262:0x07d2, B:263:0x07d5, B:264:0x07d8, B:265:0x07db, B:267:0x07e1, B:269:0x0827, B:271:0x0846, B:273:0x084e, B:276:0x085e, B:278:0x0865, B:281:0x0875, B:283:0x0887, B:285:0x0891, B:280:0x086e), top: B:389:0x0750 }] */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0823  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0846 A[Catch: all -> 0x07c3, TryCatch #12 {all -> 0x07c3, blocks: (B:247:0x0750, B:249:0x075e, B:250:0x07a3, B:252:0x07a9, B:253:0x07ba, B:254:0x07bd, B:255:0x07c2, B:258:0x07c6, B:266:0x07dd, B:259:0x07c9, B:260:0x07cc, B:261:0x07cf, B:262:0x07d2, B:263:0x07d5, B:264:0x07d8, B:265:0x07db, B:267:0x07e1, B:269:0x0827, B:271:0x0846, B:273:0x084e, B:276:0x085e, B:278:0x0865, B:281:0x0875, B:283:0x0887, B:285:0x0891, B:280:0x086e), top: B:389:0x0750 }] */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0865 A[Catch: all -> 0x07c3, TryCatch #12 {all -> 0x07c3, blocks: (B:247:0x0750, B:249:0x075e, B:250:0x07a3, B:252:0x07a9, B:253:0x07ba, B:254:0x07bd, B:255:0x07c2, B:258:0x07c6, B:266:0x07dd, B:259:0x07c9, B:260:0x07cc, B:261:0x07cf, B:262:0x07d2, B:263:0x07d5, B:264:0x07d8, B:265:0x07db, B:267:0x07e1, B:269:0x0827, B:271:0x0846, B:273:0x084e, B:276:0x085e, B:278:0x0865, B:281:0x0875, B:283:0x0887, B:285:0x0891, B:280:0x086e), top: B:389:0x0750 }] */
    /* JADX WARN: Removed duplicated region for block: B:280:0x086e A[Catch: all -> 0x07c3, TryCatch #12 {all -> 0x07c3, blocks: (B:247:0x0750, B:249:0x075e, B:250:0x07a3, B:252:0x07a9, B:253:0x07ba, B:254:0x07bd, B:255:0x07c2, B:258:0x07c6, B:266:0x07dd, B:259:0x07c9, B:260:0x07cc, B:261:0x07cf, B:262:0x07d2, B:263:0x07d5, B:264:0x07d8, B:265:0x07db, B:267:0x07e1, B:269:0x0827, B:271:0x0846, B:273:0x084e, B:276:0x085e, B:278:0x0865, B:281:0x0875, B:283:0x0887, B:285:0x0891, B:280:0x086e), top: B:389:0x0750 }] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0887 A[Catch: all -> 0x07c3, TryCatch #12 {all -> 0x07c3, blocks: (B:247:0x0750, B:249:0x075e, B:250:0x07a3, B:252:0x07a9, B:253:0x07ba, B:254:0x07bd, B:255:0x07c2, B:258:0x07c6, B:266:0x07dd, B:259:0x07c9, B:260:0x07cc, B:261:0x07cf, B:262:0x07d2, B:263:0x07d5, B:264:0x07d8, B:265:0x07db, B:267:0x07e1, B:269:0x0827, B:271:0x0846, B:273:0x084e, B:276:0x085e, B:278:0x0865, B:281:0x0875, B:283:0x0887, B:285:0x0891, B:280:0x086e), top: B:389:0x0750 }] */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0891 A[Catch: all -> 0x07c3, TRY_LEAVE, TryCatch #12 {all -> 0x07c3, blocks: (B:247:0x0750, B:249:0x075e, B:250:0x07a3, B:252:0x07a9, B:253:0x07ba, B:254:0x07bd, B:255:0x07c2, B:258:0x07c6, B:266:0x07dd, B:259:0x07c9, B:260:0x07cc, B:261:0x07cf, B:262:0x07d2, B:263:0x07d5, B:264:0x07d8, B:265:0x07db, B:267:0x07e1, B:269:0x0827, B:271:0x0846, B:273:0x084e, B:276:0x085e, B:278:0x0865, B:281:0x0875, B:283:0x0887, B:285:0x0891, B:280:0x086e), top: B:389:0x0750 }] */
    /* JADX WARN: Removed duplicated region for block: B:298:0x08d8  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0906  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0928  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0936 A[Catch: all -> 0x098f, TryCatch #20 {all -> 0x098f, blocks: (B:307:0x092c, B:308:0x0930, B:310:0x0936, B:313:0x0947, B:315:0x095f, B:319:0x0996), top: B:399:0x092c, outer: #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:325:0x09e4 A[Catch: all -> 0x0a1d, TRY_LEAVE, TryCatch #28 {all -> 0x0a1d, blocks: (B:323:0x09a2, B:325:0x09e4), top: B:408:0x09a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0a20  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0a42 A[Catch: all -> 0x0a4e, TryCatch #18 {all -> 0x0a4e, blocks: (B:344:0x0a3b, B:346:0x0a42, B:348:0x0a46, B:350:0x0a4a, B:353:0x0a51, B:355:0x0a55, B:357:0x0a59, B:359:0x0a5d, B:360:0x0a5e, B:361:0x0a63, B:362:0x0a64, B:363:0x0a6b, B:364:0x0a6c, B:365:0x0a73, B:366:0x0a74), top: B:397:0x0a3b }] */
    /* JADX WARN: Removed duplicated region for block: B:366:0x0a74 A[Catch: all -> 0x0a4e, TRY_LEAVE, TryCatch #18 {all -> 0x0a4e, blocks: (B:344:0x0a3b, B:346:0x0a42, B:348:0x0a46, B:350:0x0a4a, B:353:0x0a51, B:355:0x0a55, B:357:0x0a59, B:359:0x0a5d, B:360:0x0a5e, B:361:0x0a63, B:362:0x0a64, B:363:0x0a6b, B:364:0x0a6c, B:365:0x0a73, B:366:0x0a74), top: B:397:0x0a3b }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02f0 A[Catch: all -> 0x0305, TryCatch #13 {all -> 0x0305, blocks: (B:61:0x02df, B:63:0x02f0, B:66:0x0309), top: B:390:0x02df, outer: #21 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0313 A[Catch: all -> 0x0352, TryCatch #21 {all -> 0x0352, blocks: (B:79:0x0349, B:81:0x034e, B:87:0x035d, B:88:0x0361, B:68:0x030c, B:70:0x0313, B:72:0x031b, B:74:0x0322, B:176:0x063b, B:177:0x063e, B:61:0x02df, B:63:0x02f0, B:66:0x0309, B:78:0x0343), top: B:390:0x02df, inners: #13, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x034e A[Catch: all -> 0x0352, TryCatch #21 {all -> 0x0352, blocks: (B:79:0x0349, B:81:0x034e, B:87:0x035d, B:88:0x0361, B:68:0x030c, B:70:0x0313, B:72:0x031b, B:74:0x0322, B:176:0x063b, B:177:0x063e, B:61:0x02df, B:63:0x02f0, B:66:0x0309, B:78:0x0343), top: B:390:0x02df, inners: #13, #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0359 A[PHI: r0 r1 r2 r3 r7 r10 r15 r22 r23 r24 r25 r26 r27 r28 r35 r38
      0x0359: PHI (r0v27 ads_mobile_sdk.hf) = (r0v112 ads_mobile_sdk.hf), (r0v113 ads_mobile_sdk.hf), (r0v114 ads_mobile_sdk.hf), (r0v32 ads_mobile_sdk.hf) binds: [B:69:0x0311, B:71:0x0319, B:73:0x0320, B:84:0x0356] A[DONT_GENERATE, DONT_INLINE]
      0x0359: PHI (r1v34 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig) = 
      (r1v24 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
      (r1v24 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
      (r1v24 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
      (r1v37 com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig)
     binds: [B:69:0x0311, B:71:0x0319, B:73:0x0320, B:84:0x0356] A[DONT_GENERATE, DONT_INLINE]
      0x0359: PHI (r2v9 java.lang.Object) = (r2v79 java.lang.Object), (r2v80 java.lang.Object), (r2v81 java.lang.Object), (r2v82 java.lang.Object) binds: [B:69:0x0311, B:71:0x0319, B:73:0x0320, B:84:0x0356] A[DONT_GENERATE, DONT_INLINE]
      0x0359: PHI (r3v11 java.io.Closeable) = (r3v69 java.io.Closeable), (r3v70 java.io.Closeable), (r3v71 java.io.Closeable), (r3v72 java.io.Closeable) binds: [B:69:0x0311, B:71:0x0319, B:73:0x0320, B:84:0x0356] A[DONT_GENERATE, DONT_INLINE]
      0x0359: PHI (r7v8 kotlin.jvm.internal.Ref$BooleanRef) = 
      (r7v57 kotlin.jvm.internal.Ref$BooleanRef)
      (r7v58 kotlin.jvm.internal.Ref$BooleanRef)
      (r7v59 kotlin.jvm.internal.Ref$BooleanRef)
      (r7v60 kotlin.jvm.internal.Ref$BooleanRef)
     binds: [B:69:0x0311, B:71:0x0319, B:73:0x0320, B:84:0x0356] A[DONT_GENERATE, DONT_INLINE]
      0x0359: PHI (r10v13 ??) = (r10v79 ??), (r10v80 ??), (r10v81 ??), (r10v82 ??) binds: [B:69:0x0311, B:71:0x0319, B:73:0x0320, B:84:0x0356] A[DONT_GENERATE, DONT_INLINE]
      0x0359: PHI (r15v5 java.lang.String) = (r15v4 java.lang.String), (r15v4 java.lang.String), (r15v4 java.lang.String), (r15v22 java.lang.String) binds: [B:69:0x0311, B:71:0x0319, B:73:0x0320, B:84:0x0356] A[DONT_GENERATE, DONT_INLINE]
      0x0359: PHI (r22v3 java.lang.String) = (r22v1 java.lang.String), (r22v1 java.lang.String), (r22v1 java.lang.String), (r22v5 java.lang.String) binds: [B:69:0x0311, B:71:0x0319, B:73:0x0320, B:84:0x0356] A[DONT_GENERATE, DONT_INLINE]
      0x0359: PHI (r23v4 java.lang.String) = (r23v2 java.lang.String), (r23v2 java.lang.String), (r23v2 java.lang.String), (r23v5 java.lang.String) binds: [B:69:0x0311, B:71:0x0319, B:73:0x0320, B:84:0x0356] A[DONT_GENERATE, DONT_INLINE]
      0x0359: PHI (r24v4 java.lang.String) = (r24v2 java.lang.String), (r24v2 java.lang.String), (r24v2 java.lang.String), (r24v5 java.lang.String) binds: [B:69:0x0311, B:71:0x0319, B:73:0x0320, B:84:0x0356] A[DONT_GENERATE, DONT_INLINE]
      0x0359: PHI (r25v4 java.lang.String) = (r25v2 java.lang.String), (r25v2 java.lang.String), (r25v2 java.lang.String), (r25v5 java.lang.String) binds: [B:69:0x0311, B:71:0x0319, B:73:0x0320, B:84:0x0356] A[DONT_GENERATE, DONT_INLINE]
      0x0359: PHI (r26v3 java.lang.String) = (r26v1 java.lang.String), (r26v1 java.lang.String), (r26v1 java.lang.String), (r26v6 java.lang.String) binds: [B:69:0x0311, B:71:0x0319, B:73:0x0320, B:84:0x0356] A[DONT_GENERATE, DONT_INLINE]
      0x0359: PHI (r27v3 java.lang.String) = (r27v1 java.lang.String), (r27v1 java.lang.String), (r27v1 java.lang.String), (r27v6 java.lang.String) binds: [B:69:0x0311, B:71:0x0319, B:73:0x0320, B:84:0x0356] A[DONT_GENERATE, DONT_INLINE]
      0x0359: PHI (r28v1 java.lang.String) = (r28v0 java.lang.String), (r28v0 java.lang.String), (r28v0 java.lang.String), (r28v2 java.lang.String) binds: [B:69:0x0311, B:71:0x0319, B:73:0x0320, B:84:0x0356] A[DONT_GENERATE, DONT_INLINE]
      0x0359: PHI (r35v3 java.lang.Object) = (r35v26 java.lang.Object), (r35v27 java.lang.Object), (r35v28 java.lang.Object), (r35v29 java.lang.Object) binds: [B:69:0x0311, B:71:0x0319, B:73:0x0320, B:84:0x0356] A[DONT_GENERATE, DONT_INLINE]
      0x0359: PHI (r38v5 java.lang.String) = (r38v3 java.lang.String), (r38v3 java.lang.String), (r38v3 java.lang.String), (r38v6 java.lang.String) binds: [B:69:0x0311, B:71:0x0319, B:73:0x0320, B:84:0x0356] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0370 A[Catch: all -> 0x0199, TryCatch #24 {all -> 0x0199, blocks: (B:34:0x018b, B:164:0x05b1, B:166:0x05f3, B:39:0x01b4, B:140:0x051a, B:136:0x04e9, B:89:0x0362, B:91:0x0370, B:92:0x03b5, B:94:0x03bb, B:95:0x03cc, B:96:0x03cf, B:97:0x03d4, B:98:0x03d5, B:106:0x03ec, B:99:0x03d8, B:100:0x03db, B:101:0x03de, B:102:0x03e1, B:103:0x03e4, B:104:0x03e7, B:105:0x03ea, B:107:0x03f0, B:109:0x0436, B:111:0x0454, B:113:0x045c, B:116:0x046b, B:118:0x0472, B:120:0x047d, B:122:0x048f, B:124:0x0499, B:119:0x0477), top: B:377:0x004c }] */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v22, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v33 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v55 */
    /* JADX WARN: Type inference failed for: r10v62, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v63 */
    /* JADX WARN: Type inference failed for: r10v65 */
    /* JADX WARN: Type inference failed for: r10v66 */
    /* JADX WARN: Type inference failed for: r10v67 */
    /* JADX WARN: Type inference failed for: r10v74 */
    /* JADX WARN: Type inference failed for: r10v75 */
    /* JADX WARN: Type inference failed for: r10v76 */
    /* JADX WARN: Type inference failed for: r10v77 */
    /* JADX WARN: Type inference failed for: r10v78 */
    /* JADX WARN: Type inference failed for: r10v79 */
    /* JADX WARN: Type inference failed for: r10v80 */
    /* JADX WARN: Type inference failed for: r10v81 */
    /* JADX WARN: Type inference failed for: r10v82 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v19, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v51 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r13v40 */
    /* JADX WARN: Type inference failed for: r13v8, types: [com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener] */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v67 */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v4, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r8v47 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v59 */
    /* JADX WARN: Type inference failed for: r8v69 */
    /* JADX WARN: Type inference failed for: r8v70 */
    /* JADX WARN: Type inference failed for: r8v80 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v33 */
    /* JADX WARN: Type inference failed for: r9v35 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.hf r35, com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig r36, com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener r37, kotlin.coroutines.Continuation r38) {
        /*
            Method dump skipped, instruction units count: 2750
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hf.a(ads_mobile_sdk.hf, com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig, com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x023c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.jf r21, java.lang.String r22, ads_mobile_sdk.be r23, kotlin.coroutines.Continuation r24) {
        /*
            Method dump skipped, instruction units count: 589
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hf.a(ads_mobile_sdk.jf, java.lang.String, ads_mobile_sdk.be, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object a(BaseRequest baseRequest, String str, ContinuationImpl continuationImpl) {
        return a(this, baseRequest, str, continuationImpl);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.hf r5, com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r6, java.lang.String r7, kotlin.coroutines.Continuation r8) {
        /*
            Method dump skipped, instruction units count: 213
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hf.a(ads_mobile_sdk.hf, com.google.android.libraries.ads.mobile.sdk.common.BaseRequest, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.hf r5, ads_mobile_sdk.ke r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof ads_mobile_sdk.ef
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.ef r0 = (ads_mobile_sdk.ef) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.ef r0 = new ads_mobile_sdk.ef
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            kotlinx.coroutines.sync.Mutex r5 = r0.c
            com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus r6 = r0.b
            ads_mobile_sdk.hf r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = r5
            r5 = r0
            goto L4e
        L32:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3a:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r7 = r5.l
            r0.a = r5
            r0.b = r6
            r0.c = r7
            r0.f = r3
            java.lang.Object r0 = r7.lock(r4, r0)
            if (r0 != r1) goto L4e
            return r1
        L4e:
            r5.p = r6     // Catch: java.lang.Throwable -> L6f
            kotlin.time.Duration$Companion r6 = kotlin.time.Duration.Companion     // Catch: java.lang.Throwable -> L6f
            ads_mobile_sdk.tx r6 = r5.h     // Catch: java.lang.Throwable -> L6f
            r6.getClass()     // Catch: java.lang.Throwable -> L6f
            long r0 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L6f
            kotlin.time.DurationUnit r6 = kotlin.time.DurationUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L6f
            long r0 = kotlin.time.DurationKt.toDuration(r0, r6)     // Catch: java.lang.Throwable -> L6f
            long r2 = r5.o     // Catch: java.lang.Throwable -> L6f
            long r0 = kotlin.time.Duration.m2896minusLRDsOJo(r0, r2)     // Catch: java.lang.Throwable -> L6f
            r5.q = r0     // Catch: java.lang.Throwable -> L6f
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6f
            r7.unlock(r4)
            return r5
        L6f:
            r5 = move-exception
            r7.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hf.a(ads_mobile_sdk.hf, ads_mobile_sdk.ke, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof ads_mobile_sdk.ff
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.ff r0 = (ads_mobile_sdk.ff) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ff r0 = new ads_mobile_sdk.ff
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.hf r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L4a
        L2e:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L36:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.sync.Mutex r10 = r9.l
            r0.a = r9
            r0.b = r10
            r0.e = r3
            java.lang.Object r0 = r10.lock(r4, r0)
            if (r0 != r1) goto L48
            return r1
        L48:
            r0 = r9
            r1 = r10
        L4a:
            int r10 = r0.s     // Catch: java.lang.Throwable -> L61
            if (r10 != 0) goto L74
            long r5 = r0.t     // Catch: java.lang.Throwable -> L61
            kotlin.time.Duration$Companion r10 = kotlin.time.Duration.Companion     // Catch: java.lang.Throwable -> L61
            long r7 = r10.m2911getZEROUwyO8pc()     // Catch: java.lang.Throwable -> L61
            boolean r10 = kotlin.time.Duration.m2875equalsimpl0(r5, r7)     // Catch: java.lang.Throwable -> L61
            if (r10 == 0) goto L63
            long r5 = r0.o     // Catch: java.lang.Throwable -> L61
            r0.t = r5     // Catch: java.lang.Throwable -> L61
            goto L74
        L61:
            r10 = move-exception
            goto L7f
        L63:
            ads_mobile_sdk.tx r10 = r0.h     // Catch: java.lang.Throwable -> L61
            r10.getClass()     // Catch: java.lang.Throwable -> L61
            long r5 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L61
            kotlin.time.DurationUnit r10 = kotlin.time.DurationUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L61
            long r5 = kotlin.time.DurationKt.toDuration(r5, r10)     // Catch: java.lang.Throwable -> L61
            r0.t = r5     // Catch: java.lang.Throwable -> L61
        L74:
            int r10 = r0.s     // Catch: java.lang.Throwable -> L61
            int r10 = r10 + r3
            r0.s = r10     // Catch: java.lang.Throwable -> L61
            r1.unlock(r4)
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        L7f:
            r1.unlock(r4)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hf.a(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
