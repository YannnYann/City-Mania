package ads_mobile_sdk;

import com.google.gson.JsonObject;
import java.util.UUID;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class fl1 implements eq1 {
    public r31 a;
    public final CoroutineScope b;
    public final CoroutineScope c;
    public final g83 d;
    public final ex0 e;
    public final boolean f;
    public final Mutex g;
    public boolean h;
    public int i;

    public fl1(r31 r31Var, CoroutineScope uiScope, CoroutineScope backgroundScope, g83 rootTraceCreator, ex0 flags, boolean z) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = r31Var;
        this.b = uiScope;
        this.c = backgroundScope;
        this.d = rootTraceCreator;
        this.e = flags;
        this.f = z;
        this.g = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
    
        if (r6.e(r0) == r1) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.zk1
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.zk1 r0 = (ads_mobile_sdk.zk1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.zk1 r0 = new ads_mobile_sdk.zk1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L67
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L35:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            ads_mobile_sdk.fl1 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L50
        L3d:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r2 = r7.g
            r0.a = r7
            r0.b = r2
            r0.e = r4
            java.lang.Object r8 = r2.lock(r5, r0)
            if (r8 != r1) goto L4f
            goto L66
        L4f:
            r6 = r7
        L50:
            int r8 = r6.i     // Catch: java.lang.Throwable -> L6a
            int r8 = r8 - r4
            r6.i = r8     // Catch: java.lang.Throwable -> L6a
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6a
            r2.unlock(r5)
            r0.a = r5
            r0.b = r5
            r0.e = r3
            java.lang.Object r8 = r6.e(r0)
            if (r8 != r1) goto L67
        L66:
            return r1
        L67:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L6a:
            r8 = move-exception
            r2.unlock(r5)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.fl1.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0061, code lost:
    
        if (r6.e(r0) == r1) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.al1
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.al1 r0 = (ads_mobile_sdk.al1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.al1 r0 = new ads_mobile_sdk.al1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L64
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L35:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            ads_mobile_sdk.fl1 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L50
        L3d:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r2 = r7.g
            r0.a = r7
            r0.b = r2
            r0.e = r4
            java.lang.Object r8 = r2.lock(r5, r0)
            if (r8 != r1) goto L4f
            goto L63
        L4f:
            r6 = r7
        L50:
            r6.h = r4     // Catch: java.lang.Throwable -> L67
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L67
            r2.unlock(r5)
            r0.a = r5
            r0.b = r5
            r0.e = r3
            java.lang.Object r8 = r6.e(r0)
            if (r8 != r1) goto L64
        L63:
            return r1
        L64:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L67:
            r8 = move-exception
            r2.unlock(r5)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.fl1.c(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object d(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.bl1
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.bl1 r0 = (ads_mobile_sdk.bl1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.bl1 r0 = new ads_mobile_sdk.bl1
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
            ads_mobile_sdk.fl1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.g
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
            int r6 = r0.i     // Catch: java.lang.Throwable -> L55
            int r6 = r6 + r3
            r0.i = r6     // Catch: java.lang.Throwable -> L55
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L55
            r1.unlock(r4)
            return r6
        L55:
            r6 = move-exception
            r1.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.fl1.d(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object e(kotlin.coroutines.Continuation r12) {
        /*
            r11 = this;
            boolean r0 = r12 instanceof ads_mobile_sdk.cl1
            if (r0 == 0) goto L13
            r0 = r12
            ads_mobile_sdk.cl1 r0 = (ads_mobile_sdk.cl1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.cl1 r0 = new ads_mobile_sdk.cl1
            r0.<init>(r11, r12)
        L18:
            java.lang.Object r12 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            kotlinx.coroutines.sync.Mutex r1 = r0.b
            ads_mobile_sdk.fl1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r12)
            goto L4a
        L2e:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L36:
            kotlin.ResultKt.throwOnFailure(r12)
            kotlinx.coroutines.sync.Mutex r12 = r11.g
            r0.a = r11
            r0.b = r12
            r0.e = r3
            java.lang.Object r0 = r12.lock(r4, r0)
            if (r0 != r1) goto L48
            return r1
        L48:
            r0 = r11
            r1 = r12
        L4a:
            boolean r12 = r0.h     // Catch: java.lang.Throwable -> L61
            if (r12 == 0) goto L64
            int r12 = r0.i     // Catch: java.lang.Throwable -> L61
            if (r12 > 0) goto L64
            kotlinx.coroutines.CoroutineScope r5 = r0.c     // Catch: java.lang.Throwable -> L61
            ads_mobile_sdk.dl1 r8 = new ads_mobile_sdk.dl1     // Catch: java.lang.Throwable -> L61
            r8.<init>(r0, r4)     // Catch: java.lang.Throwable -> L61
            r9 = 3
            r10 = 0
            r6 = 0
            r7 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L61
            goto L64
        L61:
            r0 = move-exception
            r12 = r0
            goto L6a
        L64:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L61
            r1.unlock(r4)
            return r12
        L6a:
            r1.unlock(r4)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.fl1.e(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.eq1
    public final Object a(String str, String str2, Continuation continuation) {
        UUID uuidRandomUUID = UUID.randomUUID();
        Intrinsics.checkNotNullExpressionValue(uuidRandomUUID, "randomUUID(...)");
        return a(this, str, str2, uuidRandomUUID, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x01b7 A[Catch: all -> 0x0191, TRY_LEAVE, TryCatch #0 {all -> 0x0191, blocks: (B:95:0x017e, B:97:0x0185, B:99:0x0189, B:101:0x018d, B:104:0x0194, B:106:0x0198, B:108:0x019c, B:110:0x01a0, B:111:0x01a1, B:112:0x01a6, B:113:0x01a7, B:114:0x01ae, B:115:0x01af, B:116:0x01b6, B:117:0x01b7), top: B:122:0x017e }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d1 A[Catch: all -> 0x004f, TRY_LEAVE, TryCatch #7 {all -> 0x004f, blocks: (B:20:0x004a, B:33:0x00c2, B:39:0x00cb, B:40:0x00cd, B:42:0x00d1), top: B:134:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e7 A[Catch: all -> 0x00f3, TryCatch #1 {all -> 0x00f3, blocks: (B:47:0x00e0, B:49:0x00e7, B:51:0x00eb, B:53:0x00ef, B:56:0x00f6, B:58:0x00fa, B:60:0x00fe, B:62:0x0102, B:63:0x0103, B:64:0x0108, B:65:0x0109, B:66:0x0110, B:67:0x0111, B:68:0x0118, B:69:0x0119), top: B:123:0x00e0 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0119 A[Catch: all -> 0x00f3, TRY_LEAVE, TryCatch #1 {all -> 0x00f3, blocks: (B:47:0x00e0, B:49:0x00e7, B:51:0x00eb, B:53:0x00ef, B:56:0x00f6, B:58:0x00fa, B:60:0x00fe, B:62:0x0102, B:63:0x0103, B:64:0x0108, B:65:0x0109, B:66:0x0110, B:67:0x0111, B:68:0x0118, B:69:0x0119), top: B:123:0x00e0 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x016f A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #6 {all -> 0x003b, blocks: (B:13:0x0036, B:81:0x0160, B:87:0x0169, B:88:0x016b, B:90:0x016f), top: B:132:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0185 A[Catch: all -> 0x0191, TryCatch #0 {all -> 0x0191, blocks: (B:95:0x017e, B:97:0x0185, B:99:0x0189, B:101:0x018d, B:104:0x0194, B:106:0x0198, B:108:0x019c, B:110:0x01a0, B:111:0x01a1, B:112:0x01a6, B:113:0x01a7, B:114:0x01ae, B:115:0x01af, B:116:0x01b6, B:117:0x01b7), top: B:122:0x017e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.fl1 r16, java.lang.String r17, java.lang.String r18, java.util.UUID r19, kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 446
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.fl1.a(ads_mobile_sdk.fl1, java.lang.String, java.lang.String, java.util.UUID, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.eq1
    public final Object a(JsonObject jsonObject, String str, Continuation continuation) {
        r31 r31Var = this.a;
        if (r31Var == null) {
            return Unit.INSTANCE;
        }
        Object objA = r31Var.a(jsonObject, str, continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }
}
