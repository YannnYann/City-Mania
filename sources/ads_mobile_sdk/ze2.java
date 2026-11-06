package ads_mobile_sdk;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class ze2 extends es {
    public final kd2 c;
    public final i2 d;
    public final Mutex e;
    public aq1 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ze2(kd2 omid, i2 adConfiguration, ex0 flags, CoroutineContext uiContext) {
        super(flags, uiContext);
        Intrinsics.checkNotNullParameter(omid, "omid");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        this.c = omid;
        this.d = adConfiguration;
        this.e = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x008c, code lost:
    
        if (r8.a(r7, r1) == r2) goto L29;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /* JADX WARN: Type inference failed for: r14v0, types: [ads_mobile_sdk.ze2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [ads_mobile_sdk.es, ads_mobile_sdk.ze2] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.ze2 r14, android.view.View r15, ads_mobile_sdk.tx0 r16, java.lang.String r17, kotlin.coroutines.Continuation r18) {
        /*
            r0 = r18
            boolean r1 = r0 instanceof ads_mobile_sdk.qe2
            if (r1 == 0) goto L15
            r1 = r0
            ads_mobile_sdk.qe2 r1 = (ads_mobile_sdk.qe2) r1
            int r2 = r1.h
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.h = r2
            goto L1a
        L15:
            ads_mobile_sdk.qe2 r1 = new ads_mobile_sdk.qe2
            r1.<init>(r14, r0)
        L1a:
            java.lang.Object r0 = r1.f
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r1.h
            r4 = 2
            r5 = 1
            r6 = 0
            if (r3 == 0) goto L50
            if (r3 == r5) goto L3d
            if (r3 != r4) goto L35
            java.lang.Object r14 = r1.a
            kotlinx.coroutines.sync.Mutex r14 = (kotlinx.coroutines.sync.Mutex) r14
            kotlin.ResultKt.throwOnFailure(r0)     // Catch: java.lang.Throwable -> L33
            goto L8f
        L33:
            r0 = move-exception
            goto L95
        L35:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r0)
            throw r14
        L3d:
            kotlinx.coroutines.sync.Mutex r14 = r1.e
            java.lang.String r3 = r1.d
            ads_mobile_sdk.tx0 r5 = r1.c
            android.view.View r7 = r1.b
            java.lang.Object r8 = r1.a
            ads_mobile_sdk.ze2 r8 = (ads_mobile_sdk.ze2) r8
            kotlin.ResultKt.throwOnFailure(r0)
            r12 = r3
            r11 = r5
            r10 = r7
            goto L71
        L50:
            kotlin.ResultKt.throwOnFailure(r0)
            kotlinx.coroutines.sync.Mutex r0 = r14.e
            r1.a = r14
            r1.b = r15
            r7 = r16
            r1.c = r7
            r8 = r17
            r1.d = r8
            r1.e = r0
            r1.h = r5
            java.lang.Object r5 = r0.lock(r6, r1)
            if (r5 != r2) goto L6c
            goto L8e
        L6c:
            r10 = r15
            r11 = r7
            r12 = r8
            r8 = r14
            r14 = r0
        L71:
            ads_mobile_sdk.aq1 r9 = r8.f     // Catch: java.lang.Throwable -> L33
            if (r9 != 0) goto L76
            goto L8f
        L76:
            ads_mobile_sdk.re2 r7 = new ads_mobile_sdk.re2     // Catch: java.lang.Throwable -> L33
            r13 = 0
            r7.<init>(r8, r9, r10, r11, r12, r13)     // Catch: java.lang.Throwable -> L33
            r1.a = r14     // Catch: java.lang.Throwable -> L33
            r1.b = r6     // Catch: java.lang.Throwable -> L33
            r1.c = r6     // Catch: java.lang.Throwable -> L33
            r1.d = r6     // Catch: java.lang.Throwable -> L33
            r1.e = r6     // Catch: java.lang.Throwable -> L33
            r1.h = r4     // Catch: java.lang.Throwable -> L33
            java.lang.Object r0 = r8.a(r7, r1)     // Catch: java.lang.Throwable -> L33
            if (r0 != r2) goto L8f
        L8e:
            return r2
        L8f:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L33
            r14.unlock(r6)
            return r0
        L95:
            r14.unlock(r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ze2.a(ads_mobile_sdk.ze2, android.view.View, ads_mobile_sdk.tx0, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.ze2 r6, ads_mobile_sdk.zp1 r7, kotlin.coroutines.Continuation r8) throws java.lang.Throwable {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.se2
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.se2 r0 = (ads_mobile_sdk.se2) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.se2 r0 = new ads_mobile_sdk.se2
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4b
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r6 = r0.b
            kotlinx.coroutines.sync.Mutex r6 = (kotlinx.coroutines.sync.Mutex) r6
            ads_mobile_sdk.ze2 r7 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L33
            goto L79
        L33:
            r7 = move-exception
            goto L87
        L35:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3d:
            kotlinx.coroutines.sync.Mutex r6 = r0.c
            java.lang.Object r7 = r0.b
            ads_mobile_sdk.zp1 r7 = (ads_mobile_sdk.zp1) r7
            ads_mobile_sdk.ze2 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r6
            r6 = r2
            goto L5f
        L4b:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r6.e
            r0.a = r6
            r0.b = r7
            r0.c = r8
            r0.f = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 != r1) goto L5f
            goto L76
        L5f:
            ads_mobile_sdk.aq1 r2 = r6.f     // Catch: java.lang.Throwable -> L7f
            if (r2 == 0) goto L82
            ads_mobile_sdk.te2 r4 = new ads_mobile_sdk.te2     // Catch: java.lang.Throwable -> L7f
            r4.<init>(r6, r2, r7, r5)     // Catch: java.lang.Throwable -> L7f
            r0.a = r6     // Catch: java.lang.Throwable -> L7f
            r0.b = r8     // Catch: java.lang.Throwable -> L7f
            r0.c = r5     // Catch: java.lang.Throwable -> L7f
            r0.f = r3     // Catch: java.lang.Throwable -> L7f
            java.lang.Object r7 = r6.a(r4, r0)     // Catch: java.lang.Throwable -> L7f
            if (r7 != r1) goto L77
        L76:
            return r1
        L77:
            r7 = r6
            r6 = r8
        L79:
            r7.f = r5     // Catch: java.lang.Throwable -> L33
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L33
            r8 = r6
            goto L83
        L7f:
            r7 = move-exception
            r6 = r8
            goto L87
        L82:
            r7 = r5
        L83:
            r8.unlock(r5)
            return r7
        L87:
            r6.unlock(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ze2.a(ads_mobile_sdk.ze2, ads_mobile_sdk.zp1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0073, code lost:
    
        if (r6.a(r4, r0) == r1) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.ze2 r6, ads_mobile_sdk.h41 r7, kotlin.coroutines.Continuation r8) throws java.lang.Throwable {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.ue2
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.ue2 r0 = (ads_mobile_sdk.ue2) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.ue2 r0 = new ads_mobile_sdk.ue2
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L49
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r6 = r0.a
            kotlinx.coroutines.sync.Mutex r6 = (kotlinx.coroutines.sync.Mutex) r6
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L31
            goto L77
        L31:
            r7 = move-exception
            goto L7d
        L33:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3b:
            kotlinx.coroutines.sync.Mutex r6 = r0.c
            ads_mobile_sdk.h41 r7 = r0.b
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.ze2 r2 = (ads_mobile_sdk.ze2) r2
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r6
            r6 = r2
            goto L5d
        L49:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r6.e
            r0.a = r6
            r0.b = r7
            r0.c = r8
            r0.f = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 != r1) goto L5d
            goto L75
        L5d:
            ads_mobile_sdk.aq1 r2 = r6.f     // Catch: java.lang.Throwable -> L7f
            if (r2 != 0) goto L62
            goto L76
        L62:
            ads_mobile_sdk.ve2 r4 = new ads_mobile_sdk.ve2     // Catch: java.lang.Throwable -> L7f
            r4.<init>(r7, r6, r2, r5)     // Catch: java.lang.Throwable -> L7f
            r0.a = r8     // Catch: java.lang.Throwable -> L7f
            r0.b = r5     // Catch: java.lang.Throwable -> L7f
            r0.c = r5     // Catch: java.lang.Throwable -> L7f
            r0.f = r3     // Catch: java.lang.Throwable -> L7f
            java.lang.Object r6 = r6.a(r4, r0)     // Catch: java.lang.Throwable -> L7f
            if (r6 != r1) goto L76
        L75:
            return r1
        L76:
            r6 = r8
        L77:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            r6.unlock(r5)
            return r7
        L7d:
            r8 = r6
            goto L81
        L7f:
            r6 = move-exception
            r7 = r6
        L81:
            r8.unlock(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ze2.a(ads_mobile_sdk.ze2, ads_mobile_sdk.h41, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.ze2 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.we2
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.we2 r0 = (ads_mobile_sdk.we2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.we2 r0 = new ads_mobile_sdk.we2
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
            ads_mobile_sdk.ze2 r0 = r0.a
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
            kotlinx.coroutines.sync.Mutex r6 = r5.e
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            ads_mobile_sdk.aq1 r5 = r5.f     // Catch: java.lang.Throwable -> L58
            if (r5 == 0) goto L4f
            goto L50
        L4f:
            r3 = 0
        L50:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)     // Catch: java.lang.Throwable -> L58
            r6.unlock(r4)
            return r5
        L58:
            r5 = move-exception
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ze2.a(ads_mobile_sdk.ze2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.ze2 r10, ads_mobile_sdk.r31 r11, boolean r12, kotlin.coroutines.Continuation r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ze2.a(ads_mobile_sdk.ze2, ads_mobile_sdk.r31, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
