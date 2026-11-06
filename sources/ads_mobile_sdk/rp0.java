package ads_mobile_sdk;

import com.google.gson.JsonObject;
import java.util.UUID;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class rp0 implements eq1 {
    public final Mutex a = MutexKt.Mutex$default(false, 1, null);
    public boolean b;
    public fl1 c;

    public abstract Object a(String str, Continuation continuation);

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004f, code lost:
    
        if (r7.c(r0) == r1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005e, code lost:
    
        if (r2.a(r6, r0) == r1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0060, code lost:
    
        return r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(ads_mobile_sdk.fl1 r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.fp0
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.fp0 r0 = (ads_mobile_sdk.fp0) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.fp0 r0 = new ads_mobile_sdk.fp0
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L61
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.fl1 r6 = r0.b
            ads_mobile_sdk.rp0 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L53
        L3c:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.fl1 r7 = r5.c
            r5.c = r6
            if (r7 == 0) goto L52
            r0.a = r5
            r0.b = r6
            r0.e = r4
            java.lang.Object r7 = r7.c(r0)
            if (r7 != r1) goto L52
            goto L60
        L52:
            r2 = r5
        L53:
            r7 = 0
            r0.a = r7
            r0.b = r7
            r0.e = r3
            java.lang.Object r6 = r2.a(r6, r0)
            if (r6 != r1) goto L61
        L60:
            return r1
        L61:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rp0.b(ads_mobile_sdk.fl1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(ads_mobile_sdk.fl1 r8, kotlin.coroutines.Continuation r9) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.gp0
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.gp0 r0 = (ads_mobile_sdk.gp0) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.gp0 r0 = new ads_mobile_sdk.gp0
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L49
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r8 = r0.a
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L31
            goto L6e
        L31:
            r9 = move-exception
            goto L78
        L33:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3b:
            kotlinx.coroutines.sync.Mutex r8 = r0.c
            ads_mobile_sdk.fl1 r2 = r0.b
            java.lang.Object r4 = r0.a
            ads_mobile_sdk.rp0 r4 = (ads_mobile_sdk.rp0) r4
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r8
            r8 = r2
            goto L5e
        L49:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r7.a
            r0.a = r7
            r0.b = r8
            r0.c = r9
            r0.f = r4
            java.lang.Object r2 = r9.lock(r5, r0)
            if (r2 != r1) goto L5d
            goto L6c
        L5d:
            r4 = r7
        L5e:
            r0.a = r9     // Catch: java.lang.Throwable -> L74
            r0.b = r5     // Catch: java.lang.Throwable -> L74
            r0.c = r5     // Catch: java.lang.Throwable -> L74
            r0.f = r3     // Catch: java.lang.Throwable -> L74
            java.lang.Object r8 = r4.b(r8, r0)     // Catch: java.lang.Throwable -> L74
            if (r8 != r1) goto L6d
        L6c:
            return r1
        L6d:
            r8 = r9
        L6e:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L31
            r8.unlock(r5)
            return r9
        L74:
            r8 = move-exception
            r6 = r9
            r9 = r8
            r8 = r6
        L78:
            r8.unlock(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rp0.c(ads_mobile_sdk.fl1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object d(kotlin.coroutines.Continuation r5) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r5 instanceof ads_mobile_sdk.lp0
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.lp0 r0 = (ads_mobile_sdk.lp0) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.lp0 r0 = new ads_mobile_sdk.lp0
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3d
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.c = r3
            java.lang.Object r5 = r4.b(r0)
            if (r5 != r1) goto L3d
            return r1
        L3d:
            ads_mobile_sdk.v01 r5 = (ads_mobile_sdk.v01) r5
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rp0.d(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.eq1
    public final Object a(String str, String str2, Continuation continuation) {
        UUID uuidRandomUUID = UUID.randomUUID();
        Intrinsics.checkNotNullExpressionValue(uuidRandomUUID, "randomUUID(...)");
        return a(new hp0(str, str2, uuidRandomUUID, null), continuation);
    }

    @Override // ads_mobile_sdk.eq1
    public final Object a(JsonObject jsonObject, String str, Continuation continuation) throws Throwable {
        Object objA = a(new ip0(jsonObject, str, null), continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a3 A[Catch: all -> 0x00b8, PHI: r11 r12
      0x00a3: PHI (r11v10 ??) = (r11v22 ??), (r11v23 ??) binds: [B:40:0x00a0, B:21:0x004f] A[DONT_GENERATE, DONT_INLINE]
      0x00a3: PHI (r12v13 java.lang.Object) = (r12v12 java.lang.Object), (r12v1 java.lang.Object) binds: [B:40:0x00a0, B:21:0x004f] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #0 {all -> 0x00b8, blocks: (B:21:0x004f, B:42:0x00a3, B:24:0x0059, B:39:0x0096), top: B:56:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r10v0, types: [ads_mobile_sdk.rp0] */
    /* JADX WARN: Type inference failed for: r11v0, types: [ads_mobile_sdk.hp0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10, types: [ads_mobile_sdk.fl1] */
    /* JADX WARN: Type inference failed for: r11v2, types: [ads_mobile_sdk.fl1] */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v25 */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [kotlin.jvm.functions.Function2] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.hp0 r11, kotlin.coroutines.Continuation r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rp0.a(ads_mobile_sdk.hp0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00b4 A[Catch: all -> 0x00df, TryCatch #2 {all -> 0x00df, blocks: (B:21:0x004c, B:46:0x00ae, B:48:0x00b4, B:49:0x00b9), top: B:65:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b9 A[Catch: all -> 0x00df, TRY_LEAVE, TryCatch #2 {all -> 0x00df, blocks: (B:21:0x004c, B:46:0x00ae, B:48:0x00b4, B:49:0x00b9), top: B:65:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rp0.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00af, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r12, r2, r0) != r1) goto L44;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a0 A[PHI: r11
      0x00a0: PHI (r11v10 ads_mobile_sdk.fl1) = (r11v9 ads_mobile_sdk.fl1), (r11v17 ads_mobile_sdk.fl1) binds: [B:39:0x009d, B:20:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r10v0, types: [ads_mobile_sdk.rp0] */
    /* JADX WARN: Type inference failed for: r11v0, types: [ads_mobile_sdk.ip0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v1, types: [ads_mobile_sdk.fl1] */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [kotlin.jvm.functions.Function2] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.ip0 r11, kotlin.coroutines.Continuation r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 209
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rp0.a(ads_mobile_sdk.ip0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.kp0
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.kp0 r0 = (ads_mobile_sdk.kp0) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.kp0 r0 = new ads_mobile_sdk.kp0
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
            ads_mobile_sdk.rp0 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.a
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
            ads_mobile_sdk.fl1 r6 = r0.c     // Catch: java.lang.Throwable -> L5d
            if (r6 == 0) goto L5f
            ads_mobile_sdk.r31 r6 = r6.a     // Catch: java.lang.Throwable -> L5d
            if (r6 == 0) goto L5f
            java.util.concurrent.atomic.AtomicBoolean r6 = r6.k     // Catch: java.lang.Throwable -> L5d
            if (r6 == 0) goto L5f
            boolean r6 = r6.get()     // Catch: java.lang.Throwable -> L5d
            if (r6 != 0) goto L5f
            goto L60
        L5d:
            r6 = move-exception
            goto L68
        L5f:
            r3 = 0
        L60:
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)     // Catch: java.lang.Throwable -> L5d
            r1.unlock(r4)
            return r6
        L68:
            r1.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rp0.c(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public Object a(fl1 fl1Var, Continuation continuation) {
        return Unit.INSTANCE;
    }
}
