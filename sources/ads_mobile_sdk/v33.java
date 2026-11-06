package ads_mobile_sdk;

import java.util.List;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class v33 {
    public final CoroutineScope a;
    public final tx b;
    public final c63 c;
    public final du1 d;
    public final ji1 e;
    public final pb f;
    public final int g;
    public long h;
    public ec3 i;
    public final Mutex j;
    public n33[] k;

    public v33(CoroutineScope backgroundScope, tx clock, c63 retryingUrlPinger, du1 macroExpander, ji1 internalAdLoadEventEmitter, pb adSourceResponseInfoCollector, int i) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(retryingUrlPinger, "retryingUrlPinger");
        Intrinsics.checkNotNullParameter(macroExpander, "macroExpander");
        Intrinsics.checkNotNullParameter(internalAdLoadEventEmitter, "internalAdLoadEventEmitter");
        Intrinsics.checkNotNullParameter(adSourceResponseInfoCollector, "adSourceResponseInfoCollector");
        this.a = backgroundScope;
        this.b = clock;
        this.c = retryingUrlPinger;
        this.d = macroExpander;
        this.e = internalAdLoadEventEmitter;
        this.f = adSourceResponseInfoCollector;
        this.g = i;
        this.h = Duration.Companion.m2911getZEROUwyO8pc();
        this.j = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.v33 r14, kotlin.coroutines.Continuation r15) {
        /*
            r14.getClass()
            boolean r0 = r15 instanceof ads_mobile_sdk.o33
            if (r0 == 0) goto L16
            r0 = r15
            ads_mobile_sdk.o33 r0 = (ads_mobile_sdk.o33) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.e = r1
            goto L1b
        L16:
            ads_mobile_sdk.o33 r0 = new ads_mobile_sdk.o33
            r0.<init>(r14, r15)
        L1b:
            java.lang.Object r15 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            kotlinx.coroutines.sync.Mutex r14 = r0.b
            ads_mobile_sdk.v33 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r15)
            r15 = r14
            r14 = r0
            goto L4d
        L33:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L3b:
            kotlin.ResultKt.throwOnFailure(r15)
            kotlinx.coroutines.sync.Mutex r15 = r14.j
            r0.a = r14
            r0.b = r15
            r0.e = r3
            java.lang.Object r0 = r15.lock(r4, r0)
            if (r0 != r1) goto L4d
            return r1
        L4d:
            ads_mobile_sdk.n33[] r14 = r14.k     // Catch: java.lang.Throwable -> L58
            if (r14 != 0) goto L5b
            java.lang.String r14 = "results"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r14)     // Catch: java.lang.Throwable -> L58
            r14 = r4
            goto L5b
        L58:
            r0 = move-exception
            r14 = r0
            goto L71
        L5b:
            java.util.List r5 = kotlin.collections.ArraysKt___ArraysKt.filterNotNull(r14)     // Catch: java.lang.Throwable -> L58
            r15.unlock(r4)
            r12 = 62
            r13 = 0
            java.lang.String r6 = "_"
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            java.lang.String r14 = kotlin.collections.CollectionsKt___CollectionsKt.joinToString$default(r5, r6, r7, r8, r9, r10, r11, r12, r13)
            return r14
        L71:
            r15.unlock(r4)
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.v33.a(ads_mobile_sdk.v33, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00b5 A[Catch: all -> 0x00bc, TryCatch #1 {all -> 0x00bc, blocks: (B:29:0x00b1, B:31:0x00b5, B:34:0x00bf, B:36:0x00c3, B:38:0x00c7, B:40:0x00cf, B:46:0x00dc, B:43:0x00d4), top: B:89:0x00b1 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c3 A[Catch: all -> 0x00bc, TryCatch #1 {all -> 0x00bc, blocks: (B:29:0x00b1, B:31:0x00b5, B:34:0x00bf, B:36:0x00c3, B:38:0x00c7, B:40:0x00cf, B:46:0x00dc, B:43:0x00d4), top: B:89:0x00b1 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00dc A[Catch: all -> 0x00bc, TRY_LEAVE, TryCatch #1 {all -> 0x00bc, blocks: (B:29:0x00b1, B:31:0x00b5, B:34:0x00bf, B:36:0x00c3, B:38:0x00c7, B:40:0x00cf, B:46:0x00dc, B:43:0x00d4), top: B:89:0x00b1 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00d9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instruction units count: 453
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.v33.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0144 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.ec3 r12, kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 349
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.v33.a(ads_mobile_sdk.ec3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void a(List list, i2 i2Var, long j) {
        ec3 ec3Var = this.i;
        if (ec3Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("serverTransaction");
            ec3Var = null;
        }
        if (ec3Var.c) {
            return;
        }
        CoroutineScope coroutineScope = this.a;
        r33 block = new r33(this, list, i2Var, j, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.v01 r17, ads_mobile_sdk.i2 r18, long r19, kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instruction units count: 282
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.v33.a(ads_mobile_sdk.v01, ads_mobile_sdk.i2, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.i2 r12, kotlin.coroutines.Continuation r13) {
        /*
            r11 = this;
            boolean r0 = r13 instanceof ads_mobile_sdk.t33
            if (r0 == 0) goto L13
            r0 = r13
            ads_mobile_sdk.t33 r0 = (ads_mobile_sdk.t33) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.t33 r0 = new ads_mobile_sdk.t33
            r0.<init>(r11, r13)
        L18:
            java.lang.Object r13 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            kotlinx.coroutines.sync.Mutex r12 = r0.c
            ads_mobile_sdk.i2 r1 = r0.b
            ads_mobile_sdk.v33 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r13)
            r6 = r1
            goto L50
        L31:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L39:
            kotlin.ResultKt.throwOnFailure(r13)
            kotlinx.coroutines.sync.Mutex r13 = r11.j
            r0.a = r11
            r0.b = r12
            r0.c = r13
            r0.f = r3
            java.lang.Object r0 = r13.lock(r4, r0)
            if (r0 != r1) goto L4d
            return r1
        L4d:
            r0 = r11
            r6 = r12
            r12 = r13
        L50:
            ads_mobile_sdk.n33[] r13 = r0.k     // Catch: java.lang.Throwable -> L5b
            if (r13 != 0) goto L5e
            java.lang.String r13 = "results"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r13)     // Catch: java.lang.Throwable -> L5b
            r13 = r4
            goto L5e
        L5b:
            r0 = move-exception
            r13 = r0
            goto L78
        L5e:
            int r0 = r6.w     // Catch: java.lang.Throwable -> L5b
            ads_mobile_sdk.n33 r5 = new ads_mobile_sdk.n33     // Catch: java.lang.Throwable -> L5b
            ads_mobile_sdk.as0 r1 = ads_mobile_sdk.bs0.b     // Catch: java.lang.Throwable -> L5b
            kotlin.time.Duration$Companion r1 = kotlin.time.Duration.Companion     // Catch: java.lang.Throwable -> L5b
            long r8 = r1.m2911getZEROUwyO8pc()     // Catch: java.lang.Throwable -> L5b
            ads_mobile_sdk.bs0 r7 = ads_mobile_sdk.bs0.k     // Catch: java.lang.Throwable -> L5b
            r10 = 0
            r5.<init>(r6, r7, r8, r10)     // Catch: java.lang.Throwable -> L5b
            r13[r0] = r5     // Catch: java.lang.Throwable -> L5b
            kotlin.Unit r13 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L5b
            r12.unlock(r4)
            return r13
        L78:
            r12.unlock(r4)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.v33.a(ads_mobile_sdk.i2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(long r8, ads_mobile_sdk.i2 r10, kotlin.coroutines.Continuation r11) {
        /*
            r7 = this;
            boolean r0 = r11 instanceof ads_mobile_sdk.u33
            if (r0 == 0) goto L13
            r0 = r11
            ads_mobile_sdk.u33 r0 = (ads_mobile_sdk.u33) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.u33 r0 = new ads_mobile_sdk.u33
            r0.<init>(r7, r11)
        L18:
            java.lang.Object r11 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            long r8 = r0.d
            kotlinx.coroutines.sync.Mutex r10 = r0.c
            ads_mobile_sdk.i2 r1 = r0.b
            ads_mobile_sdk.v33 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)
            r11 = r10
            r10 = r1
            goto L53
        L34:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3c:
            kotlin.ResultKt.throwOnFailure(r11)
            kotlinx.coroutines.sync.Mutex r11 = r7.j
            r0.a = r7
            r0.b = r10
            r0.c = r11
            r0.d = r8
            r0.g = r3
            java.lang.Object r0 = r11.lock(r4, r0)
            if (r0 != r1) goto L52
            return r1
        L52:
            r0 = r7
        L53:
            int r10 = r10.w     // Catch: java.lang.Throwable -> L61
            int r10 = r10 + r3
            ads_mobile_sdk.n33[] r1 = r0.k     // Catch: java.lang.Throwable -> L61
            java.lang.String r2 = "results"
            if (r1 != 0) goto L63
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)     // Catch: java.lang.Throwable -> L61
            r1 = r4
            goto L63
        L61:
            r8 = move-exception
            goto L8e
        L63:
            int r1 = r1.length     // Catch: java.lang.Throwable -> L61
        L64:
            if (r10 >= r1) goto L88
            ads_mobile_sdk.n33[] r3 = r0.k     // Catch: java.lang.Throwable -> L61
            if (r3 != 0) goto L6e
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)     // Catch: java.lang.Throwable -> L61
            r3 = r4
        L6e:
            r3 = r3[r10]     // Catch: java.lang.Throwable -> L61
            if (r3 == 0) goto L75
            ads_mobile_sdk.bs0 r5 = r3.b     // Catch: java.lang.Throwable -> L61
            goto L76
        L75:
            r5 = r4
        L76:
            ads_mobile_sdk.bs0 r6 = ads_mobile_sdk.bs0.c     // Catch: java.lang.Throwable -> L61
            if (r5 != r6) goto L85
            ads_mobile_sdk.bs0 r5 = ads_mobile_sdk.bs0.j     // Catch: java.lang.Throwable -> L61
            r3.b = r5     // Catch: java.lang.Throwable -> L61
            ads_mobile_sdk.i2 r3 = r3.a     // Catch: java.lang.Throwable -> L61
            java.util.List r5 = r3.S     // Catch: java.lang.Throwable -> L61
            r0.a(r5, r3, r8)     // Catch: java.lang.Throwable -> L61
        L85:
            int r10 = r10 + 1
            goto L64
        L88:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L61
            r11.unlock(r4)
            return r8
        L8e:
            r11.unlock(r4)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.v33.a(long, ads_mobile_sdk.i2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
