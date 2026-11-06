package ads_mobile_sdk;

import android.os.SystemClock;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class e33 implements gj1, g33 {
    public final CoroutineScope a;
    public final tx b;
    public final ex0 c;
    public wy2 d;
    public final Mutex e;
    public Job f;
    public CompletableJob g;
    public CompletableJob h;
    public boolean i;
    public boolean j;
    public boolean k;
    public long l;
    public long m;
    public long n;
    public long o;
    public long p;

    public e33(CoroutineScope backgroundScope, tx clock, ex0 flags) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = backgroundScope;
        this.b = clock;
        this.c = flags;
        this.e = MutexKt.Mutex$default(false, 1, null);
        CompletableJob completableJobJob$default = JobKt__JobKt.Job$default(null, 1, null);
        completableJobJob$default.complete();
        this.g = completableJobJob$default;
        CompletableJob completableJobJob$default2 = JobKt__JobKt.Job$default(null, 1, null);
        completableJobJob$default2.complete();
        this.h = completableJobJob$default2;
        Duration.Companion companion = Duration.Companion;
        this.l = companion.m2911getZEROUwyO8pc();
        this.m = companion.m2911getZEROUwyO8pc();
        this.n = companion.m2911getZEROUwyO8pc();
        this.o = flags.B();
        this.p = flags.D();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.g33
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.q23
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.q23 r0 = (ads_mobile_sdk.q23) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.q23 r0 = new ads_mobile_sdk.q23
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.e33 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.e
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L48
            return r1
        L48:
            r0 = r5
            r1 = r6
        L4a:
            r6 = 0
            r0.i = r6     // Catch: java.lang.Throwable -> L69
            r0.j = r6     // Catch: java.lang.Throwable -> L69
            r0.k = r3     // Catch: java.lang.Throwable -> L69
            long r2 = r0.g()     // Catch: java.lang.Throwable -> L69
            r0.m = r2     // Catch: java.lang.Throwable -> L69
            r0.n = r2     // Catch: java.lang.Throwable -> L69
            kotlinx.coroutines.CompletableJob r6 = r0.g     // Catch: java.lang.Throwable -> L69
            r6.complete()     // Catch: java.lang.Throwable -> L69
            kotlinx.coroutines.CompletableJob r6 = r0.h     // Catch: java.lang.Throwable -> L69
            r6.complete()     // Catch: java.lang.Throwable -> L69
            r1.unlock(r4)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L69:
            r6 = move-exception
            r1.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.e33.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.g33
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(boolean r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.s23
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.s23 r0 = (ads_mobile_sdk.s23) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.s23 r0 = new ads_mobile_sdk.s23
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            boolean r6 = r0.c
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.e33 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4e
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r7 = r5.e
            r0.a = r5
            r0.b = r7
            r0.c = r6
            r0.f = r3
            java.lang.Object r0 = r7.lock(r4, r0)
            if (r0 != r1) goto L4c
            return r1
        L4c:
            r0 = r5
            r1 = r7
        L4e:
            r7 = 0
            if (r6 == 0) goto L56
            r0.i = r7     // Catch: java.lang.Throwable -> L54
            goto L58
        L54:
            r6 = move-exception
            goto L8d
        L56:
            r0.j = r7     // Catch: java.lang.Throwable -> L54
        L58:
            boolean r6 = r0.i     // Catch: java.lang.Throwable -> L54
            if (r6 != 0) goto L87
            boolean r6 = r0.j     // Catch: java.lang.Throwable -> L54
            if (r6 != 0) goto L87
            kotlinx.coroutines.CompletableJob r6 = r0.g     // Catch: java.lang.Throwable -> L54
            boolean r6 = r6.isCompleted()     // Catch: java.lang.Throwable -> L54
            if (r6 != 0) goto L87
            long r6 = r0.g()     // Catch: java.lang.Throwable -> L54
            long r2 = r0.l     // Catch: java.lang.Throwable -> L54
            long r6 = kotlin.time.Duration.m2896minusLRDsOJo(r6, r2)     // Catch: java.lang.Throwable -> L54
            long r2 = r0.n     // Catch: java.lang.Throwable -> L54
            long r2 = kotlin.time.Duration.m2897plusLRDsOJo(r2, r6)     // Catch: java.lang.Throwable -> L54
            r0.n = r2     // Catch: java.lang.Throwable -> L54
            long r2 = r0.m     // Catch: java.lang.Throwable -> L54
            long r6 = kotlin.time.Duration.m2897plusLRDsOJo(r2, r6)     // Catch: java.lang.Throwable -> L54
            r0.m = r6     // Catch: java.lang.Throwable -> L54
            kotlinx.coroutines.CompletableJob r6 = r0.g     // Catch: java.lang.Throwable -> L54
            r6.complete()     // Catch: java.lang.Throwable -> L54
        L87:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L54
            r1.unlock(r4)
            return r6
        L8d:
            r1.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.e33.c(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object d(boolean r10, kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.e33.d(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object s(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.i23
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.i23 r0 = (ads_mobile_sdk.i23) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.i23 r0 = new ads_mobile_sdk.i23
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.e33 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.e
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L48
            return r1
        L48:
            r0 = r5
            r1 = r6
        L4a:
            kotlinx.coroutines.Job r6 = r0.f     // Catch: java.lang.Throwable -> L52
            if (r6 == 0) goto L54
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r6, r4, r3, r4)     // Catch: java.lang.Throwable -> L52
            goto L54
        L52:
            r6 = move-exception
            goto L5c
        L54:
            r0.j = r3     // Catch: java.lang.Throwable -> L52
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L52
            r1.unlock(r4)
            return r6
        L5c:
            r1.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.e33.s(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0077 A[Catch: all -> 0x007c, TRY_LEAVE, TryCatch #1 {all -> 0x007c, blocks: (B:30:0x0072, B:32:0x0077), top: B:57:0x0072 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object t(kotlin.coroutines.Continuation r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.z23
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.z23 r0 = (ads_mobile_sdk.z23) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.z23 r0 = new ads_mobile_sdk.z23
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L48
            if (r2 == r5) goto L40
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r9)
            return r9
        L30:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L38:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            ads_mobile_sdk.e33 r4 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L72
        L40:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            ads_mobile_sdk.e33 r7 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5b
        L48:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r2 = r8.e
            r0.a = r8
            r0.b = r2
            r0.e = r5
            java.lang.Object r9 = r2.lock(r6, r0)
            if (r9 != r1) goto L5a
            goto L9a
        L5a:
            r7 = r8
        L5b:
            boolean r9 = r7.k     // Catch: java.lang.Throwable -> La7
            r2.unlock(r6)
            if (r9 != 0) goto La2
            kotlinx.coroutines.sync.Mutex r2 = r7.e
            r0.a = r7
            r0.b = r2
            r0.e = r4
            java.lang.Object r9 = r2.lock(r6, r0)
            if (r9 != r1) goto L71
            goto L9a
        L71:
            r4 = r7
        L72:
            boolean r9 = r4.i     // Catch: java.lang.Throwable -> L7c
            r7 = 0
            if (r9 != 0) goto L7e
            boolean r9 = r4.j     // Catch: java.lang.Throwable -> L7c
            if (r9 != 0) goto L7e
            goto L7f
        L7c:
            r9 = move-exception
            goto L9e
        L7e:
            r5 = r7
        L7f:
            r2.unlock(r6)
            if (r5 == 0) goto L9c
            ads_mobile_sdk.wy2 r9 = r4.d
            if (r9 != 0) goto L8e
            java.lang.String r9 = "adLoader"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r9)
            r9 = r6
        L8e:
            r0.a = r6
            r0.b = r6
            r0.e = r3
            java.lang.Object r9 = r9.e(r0)
            if (r9 != r1) goto L9b
        L9a:
            return r1
        L9b:
            return r9
        L9c:
            r5 = r7
            goto La2
        L9e:
            r2.unlock(r6)
            throw r9
        La2:
            java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            return r9
        La7:
            r9 = move-exception
            r2.unlock(r6)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.e33.t(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x00ad A[EXC_TOP_SPLITTER, PHI: r12 r13
      0x00ad: PHI (r12v38 ??) = (r12v17 ??), (r12v46 ??) binds: [B:45:0x0091, B:50:0x00a9] A[DONT_GENERATE, DONT_INLINE]
      0x00ad: PHI (r13v21 kotlinx.coroutines.sync.Mutex) = (r13v6 kotlinx.coroutines.sync.Mutex), (r13v24 kotlinx.coroutines.sync.Mutex) binds: [B:45:0x0091, B:50:0x00a9] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:110:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:111:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x009d A[Catch: CancellationException -> 0x003f, dz2 -> 0x0042, PHI: r12
      0x009d: PHI (r12v40 ??) = (r12v43 ??), (r12v44 ??), (r12v45 ??) binds: [B:48:0x009a, B:86:0x0161, B:14:0x003a] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #8 {dz2 -> 0x0042, CancellationException -> 0x003f, blocks: (B:14:0x003a, B:49:0x009d, B:56:0x00be, B:58:0x00c3, B:60:0x00c6, B:63:0x00da, B:65:0x00de, B:66:0x00e2, B:69:0x00f6, B:85:0x0154, B:92:0x016a, B:93:0x016d, B:38:0x007d, B:41:0x0084, B:52:0x00ad), top: B:108:0x0028, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c3 A[Catch: CancellationException -> 0x003f, dz2 -> 0x0042, TryCatch #8 {dz2 -> 0x0042, CancellationException -> 0x003f, blocks: (B:14:0x003a, B:49:0x009d, B:56:0x00be, B:58:0x00c3, B:60:0x00c6, B:63:0x00da, B:65:0x00de, B:66:0x00e2, B:69:0x00f6, B:85:0x0154, B:92:0x016a, B:93:0x016d, B:38:0x007d, B:41:0x0084, B:52:0x00ad), top: B:108:0x0028, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00c6 A[Catch: CancellationException -> 0x003f, dz2 -> 0x0042, TryCatch #8 {dz2 -> 0x0042, CancellationException -> 0x003f, blocks: (B:14:0x003a, B:49:0x009d, B:56:0x00be, B:58:0x00c3, B:60:0x00c6, B:63:0x00da, B:65:0x00de, B:66:0x00e2, B:69:0x00f6, B:85:0x0154, B:92:0x016a, B:93:0x016d, B:38:0x007d, B:41:0x0084, B:52:0x00ad), top: B:108:0x0028, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00de A[Catch: CancellationException -> 0x003f, dz2 -> 0x0042, TryCatch #8 {dz2 -> 0x0042, CancellationException -> 0x003f, blocks: (B:14:0x003a, B:49:0x009d, B:56:0x00be, B:58:0x00c3, B:60:0x00c6, B:63:0x00da, B:65:0x00de, B:66:0x00e2, B:69:0x00f6, B:85:0x0154, B:92:0x016a, B:93:0x016d, B:38:0x007d, B:41:0x0084, B:52:0x00ad), top: B:108:0x0028, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f6 A[Catch: CancellationException -> 0x003f, dz2 -> 0x0042, PHI: r12 r13
      0x00f6: PHI (r12v35 ??) = (r12v49 ??), (r12v50 ??) binds: [B:38:0x007d, B:67:0x00f2] A[DONT_GENERATE, DONT_INLINE]
      0x00f6: PHI (r13v13 java.lang.Object) = (r13v1 java.lang.Object), (r13v19 java.lang.Object) binds: [B:38:0x007d, B:67:0x00f2] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #8 {dz2 -> 0x0042, CancellationException -> 0x003f, blocks: (B:14:0x003a, B:49:0x009d, B:56:0x00be, B:58:0x00c3, B:60:0x00c6, B:63:0x00da, B:65:0x00de, B:66:0x00e2, B:69:0x00f6, B:85:0x0154, B:92:0x016a, B:93:0x016d, B:38:0x007d, B:41:0x0084, B:52:0x00ad), top: B:108:0x0028, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x013d A[Catch: CancellationException -> 0x0065, dz2 -> 0x0068, TryCatch #6 {dz2 -> 0x0068, CancellationException -> 0x0065, blocks: (B:73:0x011c, B:78:0x0136, B:80:0x013d, B:81:0x0141, B:89:0x0165, B:90:0x0168, B:28:0x0060, B:35:0x0073), top: B:108:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0153  */
    /* JADX WARN: Type inference failed for: r12v0, types: [ads_mobile_sdk.e33, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v26, types: [ads_mobile_sdk.e33] */
    /* JADX WARN: Type inference failed for: r12v31 */
    /* JADX WARN: Type inference failed for: r12v35, types: [ads_mobile_sdk.e33] */
    /* JADX WARN: Type inference failed for: r12v37, types: [ads_mobile_sdk.e33] */
    /* JADX WARN: Type inference failed for: r12v38, types: [ads_mobile_sdk.e33] */
    /* JADX WARN: Type inference failed for: r12v40, types: [ads_mobile_sdk.e33] */
    /* JADX WARN: Type inference failed for: r12v43 */
    /* JADX WARN: Type inference failed for: r12v44 */
    /* JADX WARN: Type inference failed for: r12v45 */
    /* JADX WARN: Type inference failed for: r12v46 */
    /* JADX WARN: Type inference failed for: r12v47 */
    /* JADX WARN: Type inference failed for: r12v48 */
    /* JADX WARN: Type inference failed for: r12v49 */
    /* JADX WARN: Type inference failed for: r12v50 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r8v10, types: [ads_mobile_sdk.e33] */
    /* JADX WARN: Type inference failed for: r8v11, types: [ads_mobile_sdk.e33] */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [ads_mobile_sdk.e33] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [ads_mobile_sdk.e33] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:86:0x0161 -> B:49:0x009d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.e33 r12, kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 450
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.e33.a(ads_mobile_sdk.e33, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final long g() {
        Duration.Companion companion = Duration.Companion;
        this.b.getClass();
        return DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00cc, code lost:
    
        if (r0.join(r4) != r5) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(long r17, ads_mobile_sdk.e33 r19, kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 220
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.e33.a(long, ads_mobile_sdk.e33, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.gj1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.ec3 r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.p23
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.p23 r0 = (ads_mobile_sdk.p23) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.p23 r0 = new ads_mobile_sdk.p23
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            kotlinx.coroutines.sync.Mutex r6 = r0.c
            ads_mobile_sdk.ec3 r1 = r0.b
            ads_mobile_sdk.e33 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = r6
            r6 = r1
            goto L4f
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r7 = r5.e
            r0.a = r5
            r0.b = r6
            r0.c = r7
            r0.f = r3
            java.lang.Object r0 = r7.lock(r4, r0)
            if (r0 != r1) goto L4e
            return r1
        L4e:
            r0 = r5
        L4f:
            ads_mobile_sdk.ac3 r6 = r6.b     // Catch: java.lang.Throwable -> L61
            ads_mobile_sdk.zy r6 = r6.b     // Catch: java.lang.Throwable -> L61
            long r1 = r6.o     // Catch: java.lang.Throwable -> L61
            r0.p = r1     // Catch: java.lang.Throwable -> L61
            long r1 = r6.n     // Catch: java.lang.Throwable -> L61
            r0.o = r1     // Catch: java.lang.Throwable -> L61
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L61
            r7.unlock(r4)
            return r6
        L61:
            r6 = move-exception
            r7.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.e33.a(ads_mobile_sdk.ec3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.g33
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(boolean r8, kotlin.coroutines.Continuation r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.r23
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.r23 r0 = (ads_mobile_sdk.r23) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.r23 r0 = new ads_mobile_sdk.r23
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            boolean r8 = r0.c
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.e33 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4e
        L30:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L38:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r7.e
            r0.a = r7
            r0.b = r9
            r0.c = r8
            r0.f = r3
            java.lang.Object r0 = r9.lock(r4, r0)
            if (r0 != r1) goto L4c
            return r1
        L4c:
            r0 = r7
            r1 = r9
        L4e:
            boolean r9 = r0.i     // Catch: java.lang.Throwable -> L63
            if (r9 != 0) goto L65
            boolean r9 = r0.j     // Catch: java.lang.Throwable -> L63
            if (r9 != 0) goto L65
            kotlinx.coroutines.CompletableJob r9 = kotlinx.coroutines.JobKt.Job$default(r4, r3, r4)     // Catch: java.lang.Throwable -> L63
            r0.g = r9     // Catch: java.lang.Throwable -> L63
            long r5 = r0.g()     // Catch: java.lang.Throwable -> L63
            r0.l = r5     // Catch: java.lang.Throwable -> L63
            goto L65
        L63:
            r8 = move-exception
            goto L72
        L65:
            if (r8 == 0) goto L6a
            r0.i = r3     // Catch: java.lang.Throwable -> L63
            goto L6c
        L6a:
            r0.j = r3     // Catch: java.lang.Throwable -> L63
        L6c:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L63
            r1.unlock(r4)
            return r8
        L72:
            r1.unlock(r4)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.e33.a(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00aa, code lost:
    
        if (r10.invoke(r0) == r1) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0043 A[PHI: r2 r10
      0x0043: PHI (r2v5 ads_mobile_sdk.e33) = (r2v1 ads_mobile_sdk.e33), (r2v8 ads_mobile_sdk.e33) binds: [B:31:0x008f, B:17:0x003c] A[DONT_GENERATE, DONT_INLINE]
      0x0043: PHI (r10v5 kotlin.jvm.functions.Function1) = (r10v14 kotlin.jvm.functions.Function1), (r10v15 kotlin.jvm.functions.Function1) binds: [B:31:0x008f, B:17:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x006e A[EXC_TOP_SPLITTER, PHI: r8 r10 r11
      0x006e: PHI (r8v1 ads_mobile_sdk.e33) = (r8v2 ads_mobile_sdk.e33), (r8v4 ads_mobile_sdk.e33) binds: [B:23:0x006b, B:20:0x004d] A[DONT_GENERATE, DONT_INLINE]
      0x006e: PHI (r10v2 kotlin.jvm.functions.Function1) = (r10v18 kotlin.jvm.functions.Function1), (r10v10 kotlin.jvm.functions.Function1) binds: [B:23:0x006b, B:20:0x004d] A[DONT_GENERATE, DONT_INLINE]
      0x006e: PHI (r11v4 kotlinx.coroutines.sync.Mutex) = (r11v6 kotlinx.coroutines.sync.Mutex), (r11v12 kotlinx.coroutines.sync.Mutex) binds: [B:23:0x006b, B:20:0x004d] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x008f -> B:18:0x0043). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.d33 r10, kotlin.coroutines.Continuation r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof ads_mobile_sdk.t23
            if (r0 == 0) goto L13
            r0 = r11
            ads_mobile_sdk.t23 r0 = (ads_mobile_sdk.t23) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.t23 r0 = new ads_mobile_sdk.t23
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L59
            if (r2 == r6) goto L4d
            if (r2 == r5) goto L45
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            kotlin.ResultKt.throwOnFailure(r11)
            goto Lad
        L34:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L3c:
            kotlin.jvm.functions.Function1 r10 = r0.b
            ads_mobile_sdk.e33 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)
        L43:
            r8 = r2
            goto L92
        L45:
            kotlin.jvm.functions.Function1 r10 = r0.b
            ads_mobile_sdk.e33 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)
            goto L83
        L4d:
            kotlinx.coroutines.sync.Mutex r10 = r0.c
            kotlin.jvm.functions.Function1 r2 = r0.b
            ads_mobile_sdk.e33 r8 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)
            r11 = r10
            r10 = r2
            goto L6e
        L59:
            kotlin.ResultKt.throwOnFailure(r11)
            r8 = r9
        L5d:
            kotlinx.coroutines.sync.Mutex r11 = r8.e
            r0.a = r8
            r0.b = r10
            r0.c = r11
            r0.f = r6
            java.lang.Object r2 = r11.lock(r7, r0)
            if (r2 != r1) goto L6e
            goto Lac
        L6e:
            kotlinx.coroutines.CompletableJob r2 = r8.g     // Catch: java.lang.Throwable -> Lbe
            r11.unlock(r7)
            r0.a = r8
            r0.b = r10
            r0.c = r7
            r0.f = r5
            java.lang.Object r11 = r2.join(r0)
            if (r11 != r1) goto L82
            goto Lac
        L82:
            r2 = r8
        L83:
            kotlinx.coroutines.sync.Mutex r11 = r2.e
            r0.a = r2
            r0.b = r10
            r0.f = r4
            java.lang.Object r11 = kotlinx.coroutines.sync.Mutex.DefaultImpls.lock$default(r11, r7, r0, r6, r7)
            if (r11 != r1) goto L43
            goto Lac
        L92:
            boolean r11 = r8.i     // Catch: java.lang.Throwable -> Lb0
            if (r11 != 0) goto Lb2
            boolean r11 = r8.j     // Catch: java.lang.Throwable -> Lb0
            if (r11 == 0) goto L9b
            goto Lb2
        L9b:
            kotlinx.coroutines.sync.Mutex r11 = r8.e
            kotlinx.coroutines.sync.Mutex.DefaultImpls.unlock$default(r11, r7, r6, r7)
            r0.a = r7
            r0.b = r7
            r0.f = r3
            java.lang.Object r10 = r10.invoke(r0)
            if (r10 != r1) goto Lad
        Lac:
            return r1
        Lad:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        Lb0:
            r10 = move-exception
            goto Lb8
        Lb2:
            kotlinx.coroutines.sync.Mutex r11 = r8.e
            kotlinx.coroutines.sync.Mutex.DefaultImpls.unlock$default(r11, r7, r6, r7)
            goto L5d
        Lb8:
            kotlinx.coroutines.sync.Mutex r11 = r8.e
            kotlinx.coroutines.sync.Mutex.DefaultImpls.unlock$default(r11, r7, r6, r7)
            throw r10
        Lbe:
            r10 = move-exception
            r11.unlock(r7)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.e33.a(ads_mobile_sdk.d33, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.wy2 r20, kotlinx.coroutines.flow.SharedFlow r21, kotlin.coroutines.Continuation r22) {
        /*
            Method dump skipped, instruction units count: 262
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.e33.a(ads_mobile_sdk.wy2, kotlinx.coroutines.flow.SharedFlow, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0082 A[PHI: r2 r13 r14
      0x0082: PHI (r2v4 ads_mobile_sdk.e33) = (r2v5 ads_mobile_sdk.e33), (r2v11 ads_mobile_sdk.e33) binds: [B:28:0x007f, B:20:0x004c] A[DONT_GENERATE, DONT_INLINE]
      0x0082: PHI (r13v4 kotlin.jvm.functions.Function1) = (r13v5 kotlin.jvm.functions.Function1), (r13v10 kotlin.jvm.functions.Function1) binds: [B:28:0x007f, B:20:0x004c] A[DONT_GENERATE, DONT_INLINE]
      0x0082: PHI (r14v7 java.lang.Object) = (r14v12 java.lang.Object), (r14v1 java.lang.Object) binds: [B:28:0x007f, B:20:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00bb -> B:15:0x0038). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x00e3 -> B:23:0x0060). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.jvm.functions.Function1 r13, kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.e33.a(kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
