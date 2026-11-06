package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class t22 extends nc1 {
    public final ks1 c;
    public final Mutex d;
    public k22 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t22(ks1 dataStore) {
        super(s11.CUI_NAME_SDKINIT_INIT_NATIVE_AD_SETTINGS, false);
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        this.c = dataStore;
        this.d = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r7, kotlin.coroutines.Continuation r8, boolean r9) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.r22
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.r22 r0 = (ads_mobile_sdk.r22) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.r22 r0 = new ads_mobile_sdk.r22
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L41
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            kotlinx.coroutines.sync.Mutex r7 = r0.c
            ads_mobile_sdk.k22 r9 = r0.b
            ads_mobile_sdk.t22 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L73
        L33:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3b:
            ads_mobile_sdk.t22 r7 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5d
        L41:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.ks1 r8 = r6.c
            java.lang.Object r8 = r8.get()
            androidx.datastore.core.DataStore r8 = (androidx.datastore.core.DataStore) r8
            ads_mobile_sdk.s22 r2 = new ads_mobile_sdk.s22
            r2.<init>(r7, r5, r9)
            r0.a = r6
            r0.f = r4
            java.lang.Object r8 = r8.updateData(r2, r0)
            if (r8 != r1) goto L5c
            goto L70
        L5c:
            r7 = r6
        L5d:
            r9 = r8
            ads_mobile_sdk.k22 r9 = (ads_mobile_sdk.k22) r9
            kotlinx.coroutines.sync.Mutex r8 = r7.d
            r0.a = r7
            r0.b = r9
            r0.c = r8
            r0.f = r3
            java.lang.Object r0 = r8.lock(r5, r0)
            if (r0 != r1) goto L71
        L70:
            return r1
        L71:
            r0 = r7
            r7 = r8
        L73:
            r0.e = r9     // Catch: java.lang.Throwable -> L7b
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7b
            r7.unlock(r5)
            return r8
        L7b:
            r8 = move-exception
            r7.unlock(r5)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.t22.a(java.lang.String, kotlin.coroutines.Continuation, boolean):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(java.lang.String r5, kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.n22
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.n22 r0 = (ads_mobile_sdk.n22) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.n22 r0 = new ads_mobile_sdk.n22
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            java.lang.String r5 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L41
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L33:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.a = r5
            r0.d = r3
            java.lang.Object r6 = r4.w(r0)
            if (r6 != r1) goto L41
            return r1
        L41:
            ads_mobile_sdk.k22 r6 = (ads_mobile_sdk.k22) r6
            java.util.Map r6 = r6.v()
            java.lang.Object r5 = r6.get(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.t22.b(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object e(long r7, kotlin.coroutines.Continuation r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.p22
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.p22 r0 = (ads_mobile_sdk.p22) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.p22 r0 = new ads_mobile_sdk.p22
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L41
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            kotlinx.coroutines.sync.Mutex r7 = r0.c
            ads_mobile_sdk.k22 r8 = r0.b
            ads_mobile_sdk.t22 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L73
        L33:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3b:
            ads_mobile_sdk.t22 r7 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5d
        L41:
            kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.ks1 r9 = r6.c
            java.lang.Object r9 = r9.get()
            androidx.datastore.core.DataStore r9 = (androidx.datastore.core.DataStore) r9
            ads_mobile_sdk.q22 r2 = new ads_mobile_sdk.q22
            r2.<init>(r7, r5)
            r0.a = r6
            r0.f = r4
            java.lang.Object r9 = r9.updateData(r2, r0)
            if (r9 != r1) goto L5c
            goto L70
        L5c:
            r7 = r6
        L5d:
            r8 = r9
            ads_mobile_sdk.k22 r8 = (ads_mobile_sdk.k22) r8
            kotlinx.coroutines.sync.Mutex r9 = r7.d
            r0.a = r7
            r0.b = r8
            r0.c = r9
            r0.f = r3
            java.lang.Object r0 = r9.lock(r5, r0)
            if (r0 != r1) goto L71
        L70:
            return r1
        L71:
            r0 = r7
            r7 = r9
        L73:
            r0.e = r8     // Catch: java.lang.Throwable -> L7b
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7b
            r7.unlock(r5)
            return r8
        L7b:
            r8 = move-exception
            r7.unlock(r5)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.t22.e(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0080 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:13:0x0031, B:28:0x007c, B:30:0x0080, B:31:0x0089), top: B:38:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.nc1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object u(kotlin.coroutines.Continuation r8) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.o22
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.o22 r0 = (ads_mobile_sdk.o22) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.o22 r0 = new ads_mobile_sdk.o22
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4c
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r1 = r0.b
            ads_mobile_sdk.t22 r1 = (ads_mobile_sdk.t22) r1
            java.lang.Object r0 = r0.a
            kotlinx.coroutines.sync.Mutex r0 = (kotlinx.coroutines.sync.Mutex) r0
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
            goto L7c
        L35:
            r8 = move-exception
            goto L96
        L37:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3f:
            java.lang.Object r2 = r0.b
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            java.lang.Object r4 = r0.a
            ads_mobile_sdk.t22 r4 = (ads_mobile_sdk.t22) r4
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r2
            goto L5f
        L4c:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.d
            r0.a = r7
            r0.b = r8
            r0.e = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 != r1) goto L5e
            goto L77
        L5e:
            r4 = r7
        L5f:
            ads_mobile_sdk.ks1 r2 = r4.c     // Catch: java.lang.Throwable -> L9a
            java.lang.Object r2 = r2.get()     // Catch: java.lang.Throwable -> L9a
            androidx.datastore.core.DataStore r2 = (androidx.datastore.core.DataStore) r2     // Catch: java.lang.Throwable -> L9a
            kotlinx.coroutines.flow.Flow r2 = r2.getData()     // Catch: java.lang.Throwable -> L9a
            r0.a = r8     // Catch: java.lang.Throwable -> L9a
            r0.b = r4     // Catch: java.lang.Throwable -> L9a
            r0.e = r3     // Catch: java.lang.Throwable -> L9a
            java.lang.Object r0 = kotlinx.coroutines.flow.FlowKt.firstOrNull(r2, r0)     // Catch: java.lang.Throwable -> L9a
            if (r0 != r1) goto L78
        L77:
            return r1
        L78:
            r1 = r0
            r0 = r8
            r8 = r1
            r1 = r4
        L7c:
            ads_mobile_sdk.k22 r8 = (ads_mobile_sdk.k22) r8     // Catch: java.lang.Throwable -> L35
            if (r8 != 0) goto L89
            ads_mobile_sdk.k22 r8 = ads_mobile_sdk.k22.x()     // Catch: java.lang.Throwable -> L35
            java.lang.String r2 = "getDefaultInstance(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r2)     // Catch: java.lang.Throwable -> L35
        L89:
            r1.e = r8     // Catch: java.lang.Throwable -> L35
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L35
            r0.unlock(r5)
            ads_mobile_sdk.q01 r0 = new ads_mobile_sdk.q01
            r0.<init>(r8)
            return r0
        L96:
            r6 = r0
            r0 = r8
            r8 = r6
            goto L9b
        L9a:
            r0 = move-exception
        L9b:
            r8.unlock(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.t22.u(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object v(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof ads_mobile_sdk.l22
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.l22 r0 = (ads_mobile_sdk.l22) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.l22 r0 = new ads_mobile_sdk.l22
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
            java.lang.Object r5 = r4.w(r0)
            if (r5 != r1) goto L3d
            return r1
        L3d:
            ads_mobile_sdk.k22 r5 = (ads_mobile_sdk.k22) r5
            long r0 = r5.w()
            java.lang.Long r5 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.t22.v(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object w(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.m22
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.m22 r0 = (ads_mobile_sdk.m22) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.m22 r0 = new ads_mobile_sdk.m22
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
            ads_mobile_sdk.t22 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.d
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
            ads_mobile_sdk.k22 r6 = r0.e     // Catch: java.lang.Throwable -> L55
            if (r6 != 0) goto L57
            java.lang.String r6 = "nativeAdSettings"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r6)     // Catch: java.lang.Throwable -> L55
            r6 = r4
            goto L57
        L55:
            r6 = move-exception
            goto L5b
        L57:
            r1.unlock(r4)
            return r6
        L5b:
            r1.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.t22.w(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
