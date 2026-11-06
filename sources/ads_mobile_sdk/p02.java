package ads_mobile_sdk;

import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class p02 {
    public final Mutex a = MutexKt.Mutex(false);
    public Object b;

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.m02
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.m02 r0 = (ads_mobile_sdk.m02) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.m02 r0 = new ads_mobile_sdk.m02
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
            ads_mobile_sdk.p02 r0 = r0.a
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
            java.lang.Object r6 = r0.b     // Catch: java.lang.Throwable -> L50
            r1.unlock(r4)
            return r6
        L50:
            r6 = move-exception
            r1.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.p02.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public p02(Object obj) {
        this.b = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0081, code lost:
    
        if (((java.lang.Boolean) r2.invoke(r4)).booleanValue() != false) goto L28;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r8v0, types: [ads_mobile_sdk.dt3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.ct3 r7, ads_mobile_sdk.dt3 r8, kotlin.coroutines.Continuation r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.n02
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.n02 r0 = (ads_mobile_sdk.n02) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.n02 r0 = new ads_mobile_sdk.n02
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L55
            if (r2 == r4) goto L42
            if (r2 != r3) goto L3a
            java.lang.Object r7 = r0.c
            ads_mobile_sdk.p02 r7 = (ads_mobile_sdk.p02) r7
            java.lang.Object r8 = r0.b
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            ads_mobile_sdk.p02 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L37
            goto L95
        L37:
            r7 = move-exception
            goto La1
        L3a:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L42:
            kotlinx.coroutines.sync.Mutex r7 = r0.d
            java.lang.Object r8 = r0.c
            kotlin.jvm.functions.Function1 r8 = (kotlin.jvm.functions.Function1) r8
            java.lang.Object r2 = r0.b
            kotlin.jvm.functions.Function1 r2 = (kotlin.jvm.functions.Function1) r2
            ads_mobile_sdk.p02 r4 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r8
            r8 = r7
            r7 = r4
            goto L70
        L55:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r6.a
            r0.a = r6
            r0.b = r7
            r0.c = r8
            r0.d = r9
            r0.g = r4
            java.lang.Object r2 = r9.lock(r5, r0)
            if (r2 != r1) goto L6b
            goto L93
        L6b:
            r2 = r9
            r9 = r8
            r8 = r2
            r2 = r7
            r7 = r6
        L70:
            java.lang.Object r4 = r7.b     // Catch: java.lang.Throwable -> L37
            if (r4 == 0) goto L83
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)     // Catch: java.lang.Throwable -> L37
            java.lang.Object r2 = r2.invoke(r4)     // Catch: java.lang.Throwable -> L37
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.Throwable -> L37
            boolean r2 = r2.booleanValue()     // Catch: java.lang.Throwable -> L37
            if (r2 == 0) goto L98
        L83:
            r0.a = r7     // Catch: java.lang.Throwable -> L37
            r0.b = r8     // Catch: java.lang.Throwable -> L37
            r0.c = r7     // Catch: java.lang.Throwable -> L37
            r0.d = r5     // Catch: java.lang.Throwable -> L37
            r0.g = r3     // Catch: java.lang.Throwable -> L37
            java.lang.Object r9 = r9.invoke(r0)     // Catch: java.lang.Throwable -> L37
            if (r9 != r1) goto L94
        L93:
            return r1
        L94:
            r0 = r7
        L95:
            r7.b = r9     // Catch: java.lang.Throwable -> L37
            r7 = r0
        L98:
            java.lang.Object r7 = r7.b     // Catch: java.lang.Throwable -> L37
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)     // Catch: java.lang.Throwable -> L37
            r8.unlock(r5)
            return r7
        La1:
            r8.unlock(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.p02.a(ads_mobile_sdk.ct3, ads_mobile_sdk.dt3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.Object r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.o02
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.o02 r0 = (ads_mobile_sdk.o02) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.o02 r0 = new ads_mobile_sdk.o02
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
            java.lang.Object r1 = r0.b
            ads_mobile_sdk.p02 r0 = r0.a
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
            kotlinx.coroutines.sync.Mutex r7 = r5.a
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
            r0.b = r6     // Catch: java.lang.Throwable -> L57
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L57
            r7.unlock(r4)
            return r6
        L57:
            r6 = move-exception
            r7.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.p02.a(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
