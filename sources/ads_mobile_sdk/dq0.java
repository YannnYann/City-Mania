package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class dq0 {
    public final zd3 a;
    public final tx b;
    public final ex0 c;
    public final f13 d;
    public final Mutex e;

    public dq0(zd3 sharedSettingsDataStore, tx clock, ex0 flags, f13 randomGenerator) {
        Intrinsics.checkNotNullParameter(sharedSettingsDataStore, "sharedSettingsDataStore");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(randomGenerator, "randomGenerator");
        this.a = sharedSettingsDataStore;
        this.b = clock;
        this.c = flags;
        this.d = randomGenerator;
        this.e = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.dq0 r7, kotlin.coroutines.Continuation r8) throws java.lang.Throwable {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.yp0
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.yp0 r0 = (ads_mobile_sdk.yp0) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.yp0 r0 = new ads_mobile_sdk.yp0
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r7 = r0.a
            kotlinx.coroutines.sync.Mutex r7 = (kotlinx.coroutines.sync.Mutex) r7
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L31
            goto L77
        L31:
            r8 = move-exception
            goto L81
        L33:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3b:
            kotlinx.coroutines.sync.Mutex r7 = r0.b
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.dq0 r2 = (ads_mobile_sdk.dq0) r2
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r7
            r7 = r2
            goto L59
        L47:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.e
            r0.a = r7
            r0.b = r8
            r0.e = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 != r1) goto L59
            goto L75
        L59:
            ads_mobile_sdk.zd3 r7 = r7.a     // Catch: java.lang.Throwable -> L7d
            r0.a = r8     // Catch: java.lang.Throwable -> L7d
            r0.b = r5     // Catch: java.lang.Throwable -> L7d
            r0.e = r3     // Catch: java.lang.Throwable -> L7d
            r7.getClass()     // Catch: java.lang.Throwable -> L7d
            ads_mobile_sdk.pd3 r2 = ads_mobile_sdk.pd3.a     // Catch: java.lang.Throwable -> L7d
            java.lang.Object r7 = ads_mobile_sdk.zd3.a(r7, r2, r0)     // Catch: java.lang.Throwable -> L7d
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()     // Catch: java.lang.Throwable -> L7d
            if (r7 != r0) goto L71
            goto L73
        L71:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7d
        L73:
            if (r7 != r1) goto L76
        L75:
            return r1
        L76:
            r7 = r8
        L77:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            r7.unlock(r5)
            return r8
        L7d:
            r7 = move-exception
            r6 = r8
            r8 = r7
            r7 = r6
        L81:
            r7.unlock(r5)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.dq0.a(ads_mobile_sdk.dq0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a4, code lost:
    
        if (r2.a(r4, r0) != r1) goto L38;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0082 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:14:0x0030, B:38:0x00a7, B:21:0x0046, B:31:0x007e, B:33:0x0082, B:35:0x0091), top: B:45:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [ads_mobile_sdk.dq0] */
    /* JADX WARN: Type inference failed for: r8v0, types: [ads_mobile_sdk.dq0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v2, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v3, types: [ads_mobile_sdk.dq0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v8, types: [kotlinx.coroutines.sync.Mutex] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.dq0 r8, kotlin.coroutines.Continuation r9) throws java.lang.Throwable {
        /*
            boolean r0 = r9 instanceof ads_mobile_sdk.aq0
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.aq0 r0 = (ads_mobile_sdk.aq0) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.aq0 r0 = new ads_mobile_sdk.aq0
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L56
            if (r2 == r5) goto L4a
            if (r2 == r4) goto L40
            if (r2 != r3) goto L38
            java.lang.Object r8 = r0.a
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L35
            goto La7
        L35:
            r9 = move-exception
            goto Lb1
        L38:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L40:
            kotlinx.coroutines.sync.Mutex r8 = r0.b
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.dq0 r2 = (ads_mobile_sdk.dq0) r2
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L35
            goto L7e
        L4a:
            kotlinx.coroutines.sync.Mutex r8 = r0.b
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.dq0 r2 = (ads_mobile_sdk.dq0) r2
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r8
            r8 = r2
            goto L68
        L56:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r8.e
            r0.a = r8
            r0.b = r9
            r0.e = r5
            java.lang.Object r2 = r9.lock(r6, r0)
            if (r2 != r1) goto L68
            goto La6
        L68:
            ads_mobile_sdk.zd3 r2 = r8.a     // Catch: java.lang.Throwable -> Lad
            r0.a = r8     // Catch: java.lang.Throwable -> Lad
            r0.b = r9     // Catch: java.lang.Throwable -> Lad
            r0.e = r4     // Catch: java.lang.Throwable -> Lad
            r2.getClass()     // Catch: java.lang.Throwable -> Lad
            java.lang.Object r2 = ads_mobile_sdk.zd3.a(r2, r0)     // Catch: java.lang.Throwable -> Lad
            if (r2 != r1) goto L7a
            goto La6
        L7a:
            r7 = r2
            r2 = r8
            r8 = r9
            r9 = r7
        L7e:
            ads_mobile_sdk.xp0 r9 = (ads_mobile_sdk.xp0) r9     // Catch: java.lang.Throwable -> L35
            if (r9 == 0) goto L91
            java.lang.String r9 = r9.w()     // Catch: java.lang.Throwable -> L35
            java.lang.String r4 = "getEoid(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r4)     // Catch: java.lang.Throwable -> L35
            int r9 = r9.length()     // Catch: java.lang.Throwable -> L35
            if (r9 != 0) goto La7
        L91:
            ads_mobile_sdk.tx r9 = r2.b     // Catch: java.lang.Throwable -> L35
            r9.getClass()     // Catch: java.lang.Throwable -> L35
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L35
            r0.a = r8     // Catch: java.lang.Throwable -> L35
            r0.b = r6     // Catch: java.lang.Throwable -> L35
            r0.e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r9 = r2.a(r4, r0)     // Catch: java.lang.Throwable -> L35
            if (r9 != r1) goto La7
        La6:
            return r1
        La7:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L35
            r8.unlock(r6)
            return r9
        Lad:
            r8 = move-exception
            r7 = r9
            r9 = r8
            r8 = r7
        Lb1:
            r8.unlock(r6)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.dq0.b(ads_mobile_sdk.dq0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0096 A[Catch: all -> 0x004f, TryCatch #2 {all -> 0x004f, blocks: (B:21:0x004b, B:33:0x0089, B:35:0x0096, B:37:0x00a5, B:40:0x00d9), top: B:57:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object c(ads_mobile_sdk.dq0 r17, kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.dq0.c(ads_mobile_sdk.dq0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(long r6, kotlin.coroutines.Continuation r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.zp0
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.zp0 r0 = (ads_mobile_sdk.zp0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.zp0 r0 = new ads_mobile_sdk.zp0
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            ads_mobile_sdk.xp0 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            return r6
        L2b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L33:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.wp0 r8 = ads_mobile_sdk.xp0.y()
            java.lang.String r2 = "newBuilder(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r2)
            java.lang.String r2 = "builder"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r2)
            ads_mobile_sdk.f13 r2 = r5.d
            r2.getClass()
            java.util.UUID r2 = java.util.UUID.randomUUID()
            java.lang.String r2 = r2.toString()
            java.lang.String r4 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r4)
            java.lang.String r4 = "value"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r4)
            r8.a(r2)
            r8.a(r6)
            ads_mobile_sdk.vz0 r6 = r8.b()
            java.lang.String r7 = "build(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r7)
            ads_mobile_sdk.xp0 r6 = (ads_mobile_sdk.xp0) r6
            ads_mobile_sdk.zd3 r7 = r5.a
            r0.a = r6
            r0.d = r3
            r7.getClass()
            ads_mobile_sdk.ud3 r8 = new ads_mobile_sdk.ud3
            r8.<init>(r6)
            java.lang.Object r7 = ads_mobile_sdk.zd3.a(r7, r8, r0)
            java.lang.Object r8 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r7 != r8) goto L85
            goto L87
        L85:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
        L87:
            if (r7 != r1) goto L8a
            return r1
        L8a:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.dq0.a(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00b6 A[Catch: all -> 0x0116, TryCatch #0 {all -> 0x0116, blocks: (B:21:0x0053, B:38:0x00b2, B:40:0x00b6, B:44:0x00c8, B:47:0x0109), top: B:60:0x0053 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0109 A[Catch: all -> 0x0116, TRY_LEAVE, TryCatch #0 {all -> 0x0116, blocks: (B:21:0x0053, B:38:0x00b2, B:40:0x00b6, B:44:0x00c8, B:47:0x0109), top: B:60:0x0053 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.dq0 r14, java.lang.String r15, long r16, kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 289
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.dq0.a(ads_mobile_sdk.dq0, java.lang.String, long, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
