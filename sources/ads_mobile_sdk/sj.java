package ads_mobile_sdk;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class sj extends nc1 implements ox0 {
    public boolean A;
    public long B;
    public final CoroutineScope c;
    public final CoroutineScope d;
    public final ex0 e;
    public final tx f;
    public final e01 g;
    public final ni h;
    public final vi i;
    public final g83 j;
    public long k;
    public long l;
    public long m;
    public final AtomicBoolean n;
    public final AtomicBoolean o;
    public boolean p;
    public Job q;
    public Job r;
    public aj s;
    public final i11 t;
    public e11 u;
    public String v;
    public final Mutex w;
    public long x;
    public final Channel y;
    public final Mutex z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sj(CoroutineScope backgroundScope, CoroutineScope uiScope, ex0 flags, tx clock, e01 httpClient, ni anrDataCollector, vi anrLogsDataStore, g83 rootTraceCreator) {
        super((s11) null, 1);
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(anrDataCollector, "anrDataCollector");
        Intrinsics.checkNotNullParameter(anrLogsDataStore, "anrLogsDataStore");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        this.c = backgroundScope;
        this.d = uiScope;
        this.e = flags;
        this.f = clock;
        this.g = httpClient;
        this.h = anrDataCollector;
        this.i = anrLogsDataStore;
        this.j = rootTraceCreator;
        Duration.Companion companion = Duration.Companion;
        this.k = companion.m2911getZEROUwyO8pc();
        this.l = companion.m2911getZEROUwyO8pc();
        this.m = companion.m2911getZEROUwyO8pc();
        this.n = new AtomicBoolean(false);
        this.o = new AtomicBoolean(false);
        this.s = aj.a;
        this.t = l11.v();
        this.w = MutexKt.Mutex$default(false, 1, null);
        this.x = companion.m2911getZEROUwyO8pc();
        this.y = ChannelKt.Channel$default(0, null, null, 7, null);
        this.z = MutexKt.Mutex$default(false, 1, null);
        this.A = true;
        this.B = companion.m2911getZEROUwyO8pc();
    }

    @Override // ads_mobile_sdk.ox0
    public final Object d(long j, Continuation continuation) {
        return a(this, j, continuation);
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        return d(this, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object v(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof ads_mobile_sdk.bj
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.bj r0 = (ads_mobile_sdk.bj) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.bj r0 = new ads_mobile_sdk.bj
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            ads_mobile_sdk.sj r1 = r0.b
            ads_mobile_sdk.sj r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r5)
            goto L49
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.ni r5 = r4.h
            r0.a = r4
            r0.b = r4
            r0.e = r3
            java.lang.Object r5 = r5.a(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            r0 = r4
            r1 = r0
        L49:
            ads_mobile_sdk.e11 r5 = (ads_mobile_sdk.e11) r5
            r1.u = r5
            java.util.UUID r5 = java.util.UUID.randomUUID()
            java.lang.String r5 = r5.toString()
            r0.v = r5
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.sj.v(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object w(kotlin.coroutines.Continuation r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.cj
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.cj r0 = (ads_mobile_sdk.cj) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.cj r0 = new ads_mobile_sdk.cj
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            long r1 = r0.c
            kotlinx.coroutines.sync.Mutex r5 = r0.b
            ads_mobile_sdk.sj r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L60
        L30:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L38:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.time.Duration$Companion r9 = kotlin.time.Duration.Companion
            ads_mobile_sdk.tx r9 = r8.f
            r9.getClass()
            long r5 = java.lang.System.currentTimeMillis()
            kotlin.time.DurationUnit r9 = kotlin.time.DurationUnit.MILLISECONDS
            long r5 = kotlin.time.DurationKt.toDuration(r5, r9)
            kotlinx.coroutines.sync.Mutex r9 = r8.w
            r0.a = r8
            r0.b = r9
            r0.c = r5
            r0.f = r3
            java.lang.Object r0 = r9.lock(r4, r0)
            if (r0 != r1) goto L5d
            return r1
        L5d:
            r0 = r8
            r1 = r5
            r5 = r9
        L60:
            long r6 = r0.x     // Catch: java.lang.Throwable -> L9f
            r5.unlock(r4)
            long r1 = kotlin.time.Duration.m2896minusLRDsOJo(r1, r6)
            ads_mobile_sdk.aj r9 = r0.s
            int r9 = r9.ordinal()
            if (r9 == 0) goto L86
            if (r9 == r3) goto L7f
            r1 = 2
            if (r9 != r1) goto L79
            long r0 = r0.m
            goto L8c
        L79:
            kotlin.NoWhenBranchMatchedException r9 = new kotlin.NoWhenBranchMatchedException
            r9.<init>()
            throw r9
        L7f:
            long r3 = r0.l
            long r0 = kotlin.time.Duration.m2896minusLRDsOJo(r3, r1)
            goto L8c
        L86:
            long r3 = r0.k
            long r0 = kotlin.time.Duration.m2896minusLRDsOJo(r3, r1)
        L8c:
            kotlin.time.Duration$Companion r9 = kotlin.time.Duration.Companion
            long r2 = r9.m2911getZEROUwyO8pc()
            kotlin.time.Duration r9 = kotlin.time.Duration.m2870boximpl(r2)
            kotlin.time.Duration r0 = kotlin.time.Duration.m2870boximpl(r0)
            java.lang.Comparable r9 = kotlin.comparisons.ComparisonsKt___ComparisonsJvmKt.maxOf(r9, r0)
            return r9
        L9f:
            r9 = move-exception
            r5.unlock(r4)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.sj.w(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00da, code lost:
    
        if (r14.v(r2) == r3) goto L104;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01f5 A[Catch: all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:111:0x01ee, B:113:0x01f5, B:115:0x01f9, B:117:0x01fd, B:120:0x0204, B:122:0x0208, B:124:0x020c, B:126:0x0210, B:127:0x0211, B:128:0x0216, B:129:0x0217, B:130:0x021e, B:131:0x021f, B:132:0x0226, B:133:0x0227), top: B:148:0x01ee }] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0227 A[Catch: all -> 0x0201, TRY_LEAVE, TryCatch #0 {all -> 0x0201, blocks: (B:111:0x01ee, B:113:0x01f5, B:115:0x01f9, B:117:0x01fd, B:120:0x0204, B:122:0x0208, B:124:0x020c, B:126:0x0210, B:127:0x0211, B:128:0x0216, B:129:0x0217, B:130:0x021e, B:131:0x021f, B:132:0x0226, B:133:0x0227), top: B:148:0x01ee }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0190 A[Catch: all -> 0x019c, TryCatch #8 {all -> 0x019c, blocks: (B:74:0x0189, B:76:0x0190, B:78:0x0194, B:80:0x0198, B:83:0x019f, B:85:0x01a3, B:87:0x01a7, B:89:0x01ab, B:90:0x01ac, B:91:0x01b1, B:92:0x01b2, B:93:0x01b9, B:94:0x01ba, B:95:0x01c1, B:96:0x01c2), top: B:163:0x0189 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01c2 A[Catch: all -> 0x019c, TRY_LEAVE, TryCatch #8 {all -> 0x019c, blocks: (B:74:0x0189, B:76:0x0190, B:78:0x0194, B:80:0x0198, B:83:0x019f, B:85:0x01a3, B:87:0x01a7, B:89:0x01ab, B:90:0x01ac, B:91:0x01b1, B:92:0x01b2, B:93:0x01b9, B:94:0x01ba, B:95:0x01c1, B:96:0x01c2), top: B:163:0x0189 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object x(kotlin.coroutines.Continuation r17) {
        /*
            Method dump skipped, instruction units count: 589
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.sj.x(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object d(ads_mobile_sdk.sj r16, kotlin.coroutines.Continuation r17) {
        /*
            Method dump skipped, instruction units count: 508
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.sj.d(ads_mobile_sdk.sj, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.sj r10, kotlin.coroutines.Continuation r11) {
        /*
            r10.getClass()
            boolean r0 = r11 instanceof ads_mobile_sdk.fj
            if (r0 == 0) goto L16
            r0 = r11
            ads_mobile_sdk.fj r0 = (ads_mobile_sdk.fj) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.d = r1
            goto L1b
        L16:
            ads_mobile_sdk.fj r0 = new ads_mobile_sdk.fj
            r0.<init>(r10, r11)
        L1b:
            java.lang.Object r11 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L2a
            if (r2 != r3) goto L2e
            ads_mobile_sdk.sj r10 = r0.a
        L2a:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L36
        L2e:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L36:
            java.util.concurrent.atomic.AtomicBoolean r11 = r10.n
            boolean r11 = r11.get()
            if (r11 == 0) goto L5a
            kotlinx.coroutines.CoroutineScope r4 = r10.d
            ads_mobile_sdk.gj r7 = new ads_mobile_sdk.gj
            r11 = 0
            r7.<init>(r10, r11)
            r8 = 3
            r9 = 0
            r5 = 0
            r6 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r4, r5, r6, r7, r8, r9)
            long r4 = r10.m
            r0.a = r10
            r0.d = r3
            java.lang.Object r11 = kotlinx.coroutines.DelayKt.m2937delayVtjQ1oo(r4, r0)
            if (r11 != r1) goto L36
            return r1
        L5a:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.sj.a(ads_mobile_sdk.sj, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0050, code lost:
    
        if (r7 == r1) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object b(ads_mobile_sdk.sj r6, kotlin.coroutines.Continuation r7) {
        /*
            r6.getClass()
            boolean r0 = r7 instanceof ads_mobile_sdk.oj
            if (r0 == 0) goto L16
            r0 = r7
            ads_mobile_sdk.oj r0 = (ads_mobile_sdk.oj) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.f = r1
            goto L1b
        L16:
            ads_mobile_sdk.oj r0 = new ads_mobile_sdk.oj
            r0.<init>(r6, r7)
        L1b:
            java.lang.Object r7 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L43
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            java.util.Iterator r6 = r0.c
            java.util.Map r2 = r0.b
            ads_mobile_sdk.sj r4 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L62
        L35:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3d:
            ads_mobile_sdk.sj r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L53
        L43:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.vi r7 = r6.i
            r0.a = r6
            r0.f = r4
            java.lang.Object r7 = r7.a(r0)
            if (r7 != r1) goto L53
            goto L88
        L53:
            r2 = r7
            java.util.Map r2 = (java.util.Map) r2
            if (r2 == 0) goto L89
            java.util.Set r7 = r2.entrySet()
            java.util.Iterator r7 = r7.iterator()
            r4 = r6
            r6 = r7
        L62:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L89
            java.lang.Object r7 = r6.next()
            java.util.Map$Entry r7 = (java.util.Map.Entry) r7
            java.lang.Object r5 = r7.getKey()
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r7 = r7.getValue()
            ads_mobile_sdk.e11 r7 = (ads_mobile_sdk.e11) r7
            r0.a = r4
            r0.b = r2
            r0.c = r6
            r0.f = r3
            java.lang.Object r7 = r4.a(r5, r7, r0)
            if (r7 != r1) goto L62
        L88:
            return r1
        L89:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.sj.b(ads_mobile_sdk.sj, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0048 A[PHI: r9
      0x0048: PHI (r9v3 ads_mobile_sdk.sj) = (r9v1 ads_mobile_sdk.sj), (r9v5 ads_mobile_sdk.sj) binds: [B:14:0x0030, B:28:0x0094] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008c A[PHI: r9
      0x008c: PHI (r9v5 ads_mobile_sdk.sj) = (r9v2 ads_mobile_sdk.sj), (r9v7 ads_mobile_sdk.sj) binds: [B:25:0x0089, B:17:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0094 -> B:19:0x0048). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object c(ads_mobile_sdk.sj r9, kotlin.coroutines.Continuation r10) {
        /*
            r9.getClass()
            boolean r0 = r10 instanceof ads_mobile_sdk.pj
            if (r0 == 0) goto L16
            r0 = r10
            ads_mobile_sdk.pj r0 = (ads_mobile_sdk.pj) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.d = r1
            goto L1b
        L16:
            ads_mobile_sdk.pj r0 = new ads_mobile_sdk.pj
            r0.<init>(r9, r10)
        L1b:
            java.lang.Object r10 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L30
            if (r2 == r5) goto L42
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            ads_mobile_sdk.sj r9 = r0.a
        L30:
            kotlin.ResultKt.throwOnFailure(r10)
            goto L48
        L34:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3c:
            ads_mobile_sdk.sj r9 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L8c
        L42:
            ads_mobile_sdk.sj r9 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L5b
        L48:
            java.util.concurrent.atomic.AtomicBoolean r10 = r9.n
            boolean r10 = r10.get()
            if (r10 == 0) goto L97
            r0.a = r9
            r0.d = r5
            java.lang.Object r10 = r9.w(r0)
            if (r10 != r1) goto L5b
            goto L96
        L5b:
            kotlin.time.Duration r10 = (kotlin.time.Duration) r10
            long r6 = r10.m2906unboximpl()
            kotlinx.coroutines.selects.SelectImplementation r10 = new kotlinx.coroutines.selects.SelectImplementation
            kotlin.coroutines.CoroutineContext r2 = r0.getContext()
            r10.<init>(r2)
            ads_mobile_sdk.qj r2 = new ads_mobile_sdk.qj
            r8 = 0
            r2.<init>(r8)
            kotlinx.coroutines.selects.OnTimeoutKt.m2981onTimeout8Mi8wO0(r10, r6, r2)
            kotlinx.coroutines.channels.Channel r2 = r9.y
            kotlinx.coroutines.selects.SelectClause1 r2 = r2.getOnReceive()
            ads_mobile_sdk.rj r6 = new ads_mobile_sdk.rj
            r6.<init>(r8)
            r10.invoke(r2, r6)
            r0.a = r9
            r0.d = r4
            java.lang.Object r10 = r10.doSelect(r0)
            if (r10 != r1) goto L8c
            goto L96
        L8c:
            r0.a = r9
            r0.d = r3
            java.lang.Object r10 = r9.x(r0)
            if (r10 != r1) goto L48
        L96:
            return r1
        L97:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.sj.c(ads_mobile_sdk.sj, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.sj r5, long r6, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.dj
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.dj r0 = (ads_mobile_sdk.dj) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.dj r0 = new ads_mobile_sdk.dj
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            long r6 = r0.c
            kotlinx.coroutines.sync.Mutex r5 = r0.b
            ads_mobile_sdk.sj r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r5
            r5 = r0
            goto L4e
        L32:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3a:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r5.z
            r0.a = r5
            r0.b = r8
            r0.c = r6
            r0.f = r3
            java.lang.Object r0 = r8.lock(r4, r0)
            if (r0 != r1) goto L4e
            return r1
        L4e:
            long r0 = r5.B     // Catch: java.lang.Throwable -> L6d
            int r0 = kotlin.time.Duration.m2871compareToLRDsOJo(r6, r0)     // Catch: java.lang.Throwable -> L6d
            if (r0 <= 0) goto L81
            boolean r0 = r5.A     // Catch: java.lang.Throwable -> L6d
            if (r0 != 0) goto L5b
            goto L81
        L5b:
            r0 = 0
            r5.A = r0     // Catch: java.lang.Throwable -> L6d
            r5.B = r6     // Catch: java.lang.Throwable -> L6d
            java.util.concurrent.atomic.AtomicBoolean r6 = r5.n     // Catch: java.lang.Throwable -> L6d
            r6.set(r0)     // Catch: java.lang.Throwable -> L6d
            kotlinx.coroutines.Job r6 = r5.q     // Catch: java.lang.Throwable -> L6d
            if (r6 == 0) goto L6f
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r6, r4, r3, r4)     // Catch: java.lang.Throwable -> L6d
            goto L6f
        L6d:
            r5 = move-exception
            goto L87
        L6f:
            kotlinx.coroutines.Job r5 = r5.r     // Catch: java.lang.Throwable -> L6d
            if (r5 == 0) goto L76
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r5, r4, r3, r4)     // Catch: java.lang.Throwable -> L6d
        L76:
            java.lang.String r5 = "ANR watchdog stopped"
            ads_mobile_sdk.f01.b(r5, r4)     // Catch: java.lang.Throwable -> L6d
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6d
            r8.unlock(r4)
            return r5
        L81:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6d
            r8.unlock(r4)
            return r5
        L87:
            r8.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.sj.a(ads_mobile_sdk.sj, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.ox0
    public final Object b(long j, Continuation continuation) {
        return b(this, j, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.sj r9, long r10, kotlin.coroutines.Continuation r12) throws java.lang.Throwable {
        /*
            boolean r0 = r12 instanceof ads_mobile_sdk.ej
            if (r0 == 0) goto L13
            r0 = r12
            ads_mobile_sdk.ej r0 = (ads_mobile_sdk.ej) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.ej r0 = new ads_mobile_sdk.ej
            r0.<init>(r9, r12)
        L18:
            java.lang.Object r12 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L49
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r9 = r0.a
            kotlinx.coroutines.sync.Mutex r9 = (kotlinx.coroutines.sync.Mutex) r9
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L31
            goto L7e
        L31:
            r10 = move-exception
            goto L86
        L33:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3b:
            long r10 = r0.c
            kotlinx.coroutines.sync.Mutex r9 = r0.b
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.sj r2 = (ads_mobile_sdk.sj) r2
            kotlin.ResultKt.throwOnFailure(r12)
            r12 = r9
            r9 = r2
            goto L5d
        L49:
            kotlin.ResultKt.throwOnFailure(r12)
            kotlinx.coroutines.sync.Mutex r12 = r9.z
            r0.a = r9
            r0.b = r12
            r0.c = r10
            r0.f = r4
            java.lang.Object r2 = r12.lock(r5, r0)
            if (r2 != r1) goto L5d
            goto L7a
        L5d:
            long r6 = r9.B     // Catch: java.lang.Throwable -> L88
            int r2 = kotlin.time.Duration.m2871compareToLRDsOJo(r10, r6)     // Catch: java.lang.Throwable -> L88
            if (r2 <= 0) goto L8b
            boolean r2 = r9.A     // Catch: java.lang.Throwable -> L88
            if (r2 == 0) goto L6a
            goto L8b
        L6a:
            r9.A = r4     // Catch: java.lang.Throwable -> L88
            r9.B = r10     // Catch: java.lang.Throwable -> L88
            r0.a = r12     // Catch: java.lang.Throwable -> L88
            r0.b = r5     // Catch: java.lang.Throwable -> L88
            r0.f = r3     // Catch: java.lang.Throwable -> L88
            java.lang.Object r9 = d(r9, r0)     // Catch: java.lang.Throwable -> L88
            if (r9 != r1) goto L7b
        L7a:
            return r1
        L7b:
            r8 = r12
            r12 = r9
            r9 = r8
        L7e:
            ads_mobile_sdk.v01 r12 = (ads_mobile_sdk.v01) r12     // Catch: java.lang.Throwable -> L31
            kotlin.Unit r10 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            r9.unlock(r5)
            return r10
        L86:
            r12 = r9
            goto L91
        L88:
            r9 = move-exception
            r10 = r9
            goto L91
        L8b:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L88
            r12.unlock(r5)
            return r9
        L91:
            r12.unlock(r5)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.sj.b(ads_mobile_sdk.sj, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00bb, code lost:
    
        if (r9 == r1) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r8, ads_mobile_sdk.e11 r9, kotlin.coroutines.Continuation r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof ads_mobile_sdk.ij
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.ij r0 = (ads_mobile_sdk.ij) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ij r0 = new ads_mobile_sdk.ij
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L42
            if (r2 == r4) goto L37
            if (r2 != r3) goto L2f
            ads_mobile_sdk.sj r8 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto Lbe
        L2f:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L37:
            java.lang.String r8 = r0.b
            ads_mobile_sdk.sj r9 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            r6 = r9
            r9 = r8
            r8 = r6
            goto L90
        L42:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.String r10 = "log"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r10)
            ads_mobile_sdk.i11 r10 = r7.t
            ads_mobile_sdk.j11 r2 = ads_mobile_sdk.k11.v()
            java.lang.String r5 = "newBuilder(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r5)
            java.lang.String r5 = "builder"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r5)
            java.lang.String r5 = "value"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r5)
            r2.a(r9)
            ads_mobile_sdk.vz0 r9 = r2.b()
            java.lang.String r2 = "build(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r2)
            ads_mobile_sdk.k11 r9 = (ads_mobile_sdk.k11) r9
            r10.a(r9)
            ads_mobile_sdk.i11 r9 = r7.t
            ads_mobile_sdk.vz0 r9 = r9.b()
            ads_mobile_sdk.l11 r9 = (ads_mobile_sdk.l11) r9
            byte[] r9 = r9.c()
            java.lang.String r10 = "toByteArray(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r10)
            r0.a = r7
            r0.b = r8
            r0.e = r4
            java.lang.Object r10 = r7.a(r9, r0)
            if (r10 != r1) goto L8e
            goto Lbd
        L8e:
            r9 = r8
            r8 = r7
        L90:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto Lbe
            ads_mobile_sdk.vi r10 = r8.i
            r0.a = r8
            r2 = 0
            r0.b = r2
            r0.e = r3
            ads_mobile_sdk.ks1 r10 = r10.a
            java.lang.Object r10 = r10.get()
            androidx.datastore.core.DataStore r10 = (androidx.datastore.core.DataStore) r10
            ads_mobile_sdk.ti r3 = new ads_mobile_sdk.ti
            r3.<init>(r9, r2)
            java.lang.Object r9 = r10.updateData(r3, r0)
            java.lang.Object r10 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r9 != r10) goto Lb9
            goto Lbb
        Lb9:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
        Lbb:
            if (r9 != r1) goto Lbe
        Lbd:
            return r1
        Lbe:
            ads_mobile_sdk.i11 r8 = r8.t
            r8.h()
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.sj.a(java.lang.String, ads_mobile_sdk.e11, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(byte[] r8, kotlin.coroutines.Continuation r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.nj
            if (r0 == 0) goto L14
            r0 = r9
            ads_mobile_sdk.nj r0 = (ads_mobile_sdk.nj) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.c = r1
        L12:
            r5 = r0
            goto L1a
        L14:
            ads_mobile_sdk.nj r0 = new ads_mobile_sdk.nj
            r0.<init>(r7, r9)
            goto L12
        L1a:
            java.lang.Object r9 = r5.a
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.c
            r2 = 1
            if (r1 == 0) goto L36
            if (r1 != r2) goto L2e
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Exception -> L2b
            goto L62
        L2b:
            r0 = move-exception
            r8 = r0
            goto L6b
        L2e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L36:
            kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.e81 r9 = new ads_mobile_sdk.e81     // Catch: java.lang.Exception -> L2b
            r9.<init>()     // Catch: java.lang.Exception -> L2b
            ads_mobile_sdk.ex0 r1 = r7.e     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = r1.w0()     // Catch: java.lang.Exception -> L2b
            ads_mobile_sdk.e81 r9 = r9.b(r1)     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = "application/x-protobuf"
            ads_mobile_sdk.e81 r8 = r9.b(r1, r8)     // Catch: java.lang.Exception -> L2b
            ads_mobile_sdk.f81 r8 = r8.a()     // Catch: java.lang.Exception -> L2b
            ads_mobile_sdk.e01 r1 = r7.g     // Catch: java.lang.Exception -> L2b
            r5.c = r2     // Catch: java.lang.Exception -> L2b
            r3 = 0
            r4 = 0
            r6 = 30
            r2 = r8
            java.lang.Object r9 = ads_mobile_sdk.e01.a(r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Exception -> L2b
            if (r9 != r0) goto L62
            return r0
        L62:
            ads_mobile_sdk.v01 r9 = (ads_mobile_sdk.v01) r9     // Catch: java.lang.Exception -> L2b
            boolean r8 = r9 instanceof ads_mobile_sdk.q01     // Catch: java.lang.Exception -> L2b
            java.lang.Boolean r8 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r8)     // Catch: java.lang.Exception -> L2b
            return r8
        L6b:
            com.google.common.base.Splitter r9 = ads_mobile_sdk.f01.a
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r0 = "Failed to ping RCS payload: "
            r9.append(r0)
            r9.append(r8)
            java.lang.String r8 = r9.toString()
            ads_mobile_sdk.f01.b(r8)
            r8 = 0
            java.lang.Boolean r8 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.sj.a(byte[], kotlin.coroutines.Continuation):java.lang.Object");
    }
}
