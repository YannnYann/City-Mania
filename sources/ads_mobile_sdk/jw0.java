package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class jw0 {
    public final ks1 a;
    public final Mutex b;
    public vv0 c;

    public jw0(ks1 dataStore, tx clock) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = dataStore;
        this.b = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a6 A[Catch: all -> 0x00a9, TRY_LEAVE, TryCatch #1 {all -> 0x00a9, blocks: (B:35:0x00a2, B:37:0x00a6), top: B:51:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object b(ads_mobile_sdk.jw0 r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.zv0
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.zv0 r0 = (ads_mobile_sdk.zv0) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.zv0 r0 = new ads_mobile_sdk.zv0
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L53
            if (r2 == r5) goto L47
            if (r2 == r4) goto L41
            if (r2 != r3) goto L39
            kotlinx.coroutines.sync.Mutex r7 = r0.c
            java.lang.Object r1 = r0.b
            ads_mobile_sdk.vv0 r1 = (ads_mobile_sdk.vv0) r1
            ads_mobile_sdk.jw0 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto La2
        L39:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L41:
            ads_mobile_sdk.jw0 r7 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L86
        L47:
            java.lang.Object r7 = r0.b
            kotlinx.coroutines.sync.Mutex r7 = (kotlinx.coroutines.sync.Mutex) r7
            ads_mobile_sdk.jw0 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r7
            r7 = r2
            goto L65
        L53:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.b
            r0.a = r7
            r0.b = r8
            r0.f = r5
            java.lang.Object r2 = r8.lock(r6, r0)
            if (r2 != r1) goto L65
            goto L9e
        L65:
            ads_mobile_sdk.vv0 r2 = r7.c     // Catch: java.lang.Throwable -> Lb7
            r8.unlock(r6)
            if (r2 == 0) goto L6d
            return r2
        L6d:
            ads_mobile_sdk.ks1 r8 = r7.a
            java.lang.Object r8 = r8.get()
            androidx.datastore.core.DataStore r8 = (androidx.datastore.core.DataStore) r8
            kotlinx.coroutines.flow.Flow r8 = r8.getData()
            r0.a = r7
            r0.b = r6
            r0.f = r4
            java.lang.Object r8 = kotlinx.coroutines.flow.FlowKt.firstOrNull(r8, r0)
            if (r8 != r1) goto L86
            goto L9e
        L86:
            ads_mobile_sdk.vv0 r8 = (ads_mobile_sdk.vv0) r8
            if (r8 != 0) goto L8e
            ads_mobile_sdk.vv0 r8 = ads_mobile_sdk.vv0.x()
        L8e:
            kotlinx.coroutines.sync.Mutex r2 = r7.b
            r0.a = r7
            r0.b = r8
            r0.c = r2
            r0.f = r3
            java.lang.Object r0 = r2.lock(r6, r0)
            if (r0 != r1) goto L9f
        L9e:
            return r1
        L9f:
            r0 = r7
            r1 = r8
            r7 = r2
        La2:
            ads_mobile_sdk.vv0 r8 = r0.c     // Catch: java.lang.Throwable -> La9
            if (r8 != 0) goto Lab
            r0.c = r1     // Catch: java.lang.Throwable -> La9
            goto Lac
        La9:
            r8 = move-exception
            goto Lb3
        Lab:
            r1 = r8
        Lac:
            r7.unlock(r6)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            return r1
        Lb3:
            r7.unlock(r6)
            throw r8
        Lb7:
            r7 = move-exception
            r8.unlock(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.jw0.b(ads_mobile_sdk.jw0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object c(ads_mobile_sdk.jw0 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.aw0
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.aw0 r0 = (ads_mobile_sdk.aw0) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.aw0 r0 = new ads_mobile_sdk.aw0
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
            ads_mobile_sdk.jw0 r0 = r0.a
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
            kotlinx.coroutines.sync.Mutex r6 = r5.b
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            ads_mobile_sdk.vv0 r5 = r5.c     // Catch: java.lang.Throwable -> L5d
            r6.unlock(r4)
            if (r5 == 0) goto L55
            java.util.Map r4 = r5.B()
        L55:
            if (r4 != 0) goto L5c
            java.util.Map r5 = kotlin.collections.MapsKt__MapsKt.emptyMap()
            return r5
        L5c:
            return r4
        L5d:
            r5 = move-exception
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.jw0.c(ads_mobile_sdk.jw0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof ads_mobile_sdk.xv0
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.xv0 r0 = (ads_mobile_sdk.xv0) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.xv0 r0 = new ads_mobile_sdk.xv0
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
            java.lang.Object r5 = b(r4, r0)
            if (r5 != r1) goto L3d
            return r1
        L3d:
            ads_mobile_sdk.vv0 r5 = (ads_mobile_sdk.vv0) r5
            ads_mobile_sdk.k30 r5 = r5.w()
            java.lang.String r0 = "getConsentState(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.jw0.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.jw0 r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof ads_mobile_sdk.yv0
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.yv0 r0 = (ads_mobile_sdk.yv0) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.yv0 r0 = new ads_mobile_sdk.yv0
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
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.c = r3
            java.lang.Object r5 = r4.a(r0)
            if (r5 != r1) goto L3d
            return r1
        L3d:
            ads_mobile_sdk.k30 r5 = (ads_mobile_sdk.k30) r5
            boolean r4 = r5.C()
            if (r4 != 0) goto L47
            r4 = 0
            return r4
        L47:
            ads_mobile_sdk.pb0 r4 = ads_mobile_sdk.qb0.z()
            java.lang.String r0 = "newBuilder(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r0)
            java.lang.String r0 = "builder"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            ads_mobile_sdk.hj2 r0 = r5.A()
            java.lang.String r1 = "getPatternMatchingFlag(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.lang.String r1 = "value"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            r4.a(r0)
            ads_mobile_sdk.yp2 r0 = r5.B()
            java.lang.String r2 = "getPreProcessingFlag(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            r4.a(r0)
            ads_mobile_sdk.no0 r0 = new ads_mobile_sdk.no0
            java.util.Map r1 = r4.h()
            java.lang.String r2 = "getConcatenatedSignalsMapMap(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            r0.<init>(r1)
            java.util.Map r5 = r5.v()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r2)
            java.lang.String r1 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            java.lang.String r0 = "map"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            r4.a(r5)
            ads_mobile_sdk.vz0 r4 = r4.b()
            java.lang.String r5 = "build(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
            ads_mobile_sdk.qb0 r4 = (ads_mobile_sdk.qb0) r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.jw0.a(ads_mobile_sdk.jw0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.jw0 r7, java.lang.String r8, java.lang.String r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof ads_mobile_sdk.fw0
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.fw0 r0 = (ads_mobile_sdk.fw0) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.fw0 r0 = new ads_mobile_sdk.fw0
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L41
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            kotlinx.coroutines.sync.Mutex r7 = r0.c
            ads_mobile_sdk.vv0 r8 = r0.b
            ads_mobile_sdk.jw0 r9 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L80
            goto L73
        L33:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3b:
            ads_mobile_sdk.jw0 r7 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L80
            goto L5c
        L41:
            kotlin.ResultKt.throwOnFailure(r10)
            ads_mobile_sdk.ks1 r10 = r7.a     // Catch: java.lang.Exception -> L80
            java.lang.Object r10 = r10.get()     // Catch: java.lang.Exception -> L80
            androidx.datastore.core.DataStore r10 = (androidx.datastore.core.DataStore) r10     // Catch: java.lang.Exception -> L80
            ads_mobile_sdk.gw0 r2 = new ads_mobile_sdk.gw0     // Catch: java.lang.Exception -> L80
            r2.<init>(r9, r8, r5)     // Catch: java.lang.Exception -> L80
            r0.a = r7     // Catch: java.lang.Exception -> L80
            r0.f = r4     // Catch: java.lang.Exception -> L80
            java.lang.Object r10 = r10.updateData(r2, r0)     // Catch: java.lang.Exception -> L80
            if (r10 != r1) goto L5c
            goto L6f
        L5c:
            r8 = r10
            ads_mobile_sdk.vv0 r8 = (ads_mobile_sdk.vv0) r8     // Catch: java.lang.Exception -> L80
            kotlinx.coroutines.sync.Mutex r9 = r7.b     // Catch: java.lang.Exception -> L80
            r0.a = r7     // Catch: java.lang.Exception -> L80
            r0.b = r8     // Catch: java.lang.Exception -> L80
            r0.c = r9     // Catch: java.lang.Exception -> L80
            r0.f = r3     // Catch: java.lang.Exception -> L80
            java.lang.Object r10 = r9.lock(r5, r0)     // Catch: java.lang.Exception -> L80
            if (r10 != r1) goto L70
        L6f:
            return r1
        L70:
            r6 = r9
            r9 = r7
            r7 = r6
        L73:
            r9.c = r8     // Catch: java.lang.Throwable -> L7b
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7b
            r7.unlock(r5)     // Catch: java.lang.Exception -> L80
            goto L94
        L7b:
            r8 = move-exception
            r7.unlock(r5)     // Catch: java.lang.Exception -> L80
            throw r8     // Catch: java.lang.Exception -> L80
        L80:
            r7 = move-exception
            java.lang.String r8 = "exception"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r8)
            ads_mobile_sdk.rr3 r8 = ads_mobile_sdk.hs3.a()
            ads_mobile_sdk.uj2 r9 = r8.e()
            r10 = 0
            r9.m = r10
            r8.a(r7)
        L94:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.jw0.a(ads_mobile_sdk.jw0, java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.cw0
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.cw0 r0 = (ads_mobile_sdk.cw0) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.cw0 r0 = new ads_mobile_sdk.cw0
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L43
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            kotlinx.coroutines.sync.Mutex r1 = r0.c
            ads_mobile_sdk.vv0 r2 = r0.b
            ads_mobile_sdk.jw0 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L33
            goto L75
        L33:
            r7 = move-exception
            goto L82
        L35:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L3d:
            ads_mobile_sdk.jw0 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L33
            goto L5f
        L43:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.ks1 r7 = r6.a     // Catch: java.lang.Exception -> L33
            java.lang.Object r7 = r7.get()     // Catch: java.lang.Exception -> L33
            androidx.datastore.core.DataStore r7 = (androidx.datastore.core.DataStore) r7     // Catch: java.lang.Exception -> L33
            ads_mobile_sdk.dw0 r2 = new ads_mobile_sdk.dw0     // Catch: java.lang.Exception -> L33
            r2.<init>(r5)     // Catch: java.lang.Exception -> L33
            r0.a = r6     // Catch: java.lang.Exception -> L33
            r0.f = r4     // Catch: java.lang.Exception -> L33
            java.lang.Object r7 = r7.updateData(r2, r0)     // Catch: java.lang.Exception -> L33
            if (r7 != r1) goto L5e
            goto L71
        L5e:
            r2 = r6
        L5f:
            ads_mobile_sdk.vv0 r7 = (ads_mobile_sdk.vv0) r7     // Catch: java.lang.Exception -> L33
            kotlinx.coroutines.sync.Mutex r4 = r2.b     // Catch: java.lang.Exception -> L33
            r0.a = r2     // Catch: java.lang.Exception -> L33
            r0.b = r7     // Catch: java.lang.Exception -> L33
            r0.c = r4     // Catch: java.lang.Exception -> L33
            r0.f = r3     // Catch: java.lang.Exception -> L33
            java.lang.Object r0 = r4.lock(r5, r0)     // Catch: java.lang.Exception -> L33
            if (r0 != r1) goto L72
        L71:
            return r1
        L72:
            r0 = r2
            r1 = r4
            r2 = r7
        L75:
            r0.c = r2     // Catch: java.lang.Throwable -> L7d
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7d
            r1.unlock(r5)     // Catch: java.lang.Exception -> L33
            goto L95
        L7d:
            r7 = move-exception
            r1.unlock(r5)     // Catch: java.lang.Exception -> L33
            throw r7     // Catch: java.lang.Exception -> L33
        L82:
            java.lang.String r0 = "exception"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            ads_mobile_sdk.rr3 r0 = ads_mobile_sdk.hs3.a()
            ads_mobile_sdk.uj2 r1 = r0.e()
            r2 = 0
            r1.m = r2
            r0.a(r7)
        L95:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.jw0.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.jw0 r7, ads_mobile_sdk.k30 r8, com.google.gson.JsonObject r9, boolean r10, kotlin.coroutines.Continuation r11) {
        /*
            boolean r0 = r11 instanceof ads_mobile_sdk.hw0
            if (r0 == 0) goto L13
            r0 = r11
            ads_mobile_sdk.hw0 r0 = (ads_mobile_sdk.hw0) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.hw0 r0 = new ads_mobile_sdk.hw0
            r0.<init>(r7, r11)
        L18:
            java.lang.Object r11 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L41
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            kotlinx.coroutines.sync.Mutex r7 = r0.c
            ads_mobile_sdk.vv0 r8 = r0.b
            ads_mobile_sdk.jw0 r9 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Exception -> L80
            goto L73
        L33:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3b:
            ads_mobile_sdk.jw0 r7 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Exception -> L80
            goto L5c
        L41:
            kotlin.ResultKt.throwOnFailure(r11)
            ads_mobile_sdk.ks1 r11 = r7.a     // Catch: java.lang.Exception -> L80
            java.lang.Object r11 = r11.get()     // Catch: java.lang.Exception -> L80
            androidx.datastore.core.DataStore r11 = (androidx.datastore.core.DataStore) r11     // Catch: java.lang.Exception -> L80
            ads_mobile_sdk.iw0 r2 = new ads_mobile_sdk.iw0     // Catch: java.lang.Exception -> L80
            r2.<init>(r8, r9, r5, r10)     // Catch: java.lang.Exception -> L80
            r0.a = r7     // Catch: java.lang.Exception -> L80
            r0.f = r4     // Catch: java.lang.Exception -> L80
            java.lang.Object r11 = r11.updateData(r2, r0)     // Catch: java.lang.Exception -> L80
            if (r11 != r1) goto L5c
            goto L6f
        L5c:
            r8 = r11
            ads_mobile_sdk.vv0 r8 = (ads_mobile_sdk.vv0) r8     // Catch: java.lang.Exception -> L80
            kotlinx.coroutines.sync.Mutex r9 = r7.b     // Catch: java.lang.Exception -> L80
            r0.a = r7     // Catch: java.lang.Exception -> L80
            r0.b = r8     // Catch: java.lang.Exception -> L80
            r0.c = r9     // Catch: java.lang.Exception -> L80
            r0.f = r3     // Catch: java.lang.Exception -> L80
            java.lang.Object r10 = r9.lock(r5, r0)     // Catch: java.lang.Exception -> L80
            if (r10 != r1) goto L70
        L6f:
            return r1
        L70:
            r6 = r9
            r9 = r7
            r7 = r6
        L73:
            r9.c = r8     // Catch: java.lang.Throwable -> L7b
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7b
            r7.unlock(r5)     // Catch: java.lang.Exception -> L80
            goto L94
        L7b:
            r8 = move-exception
            r7.unlock(r5)     // Catch: java.lang.Exception -> L80
            throw r8     // Catch: java.lang.Exception -> L80
        L80:
            r7 = move-exception
            java.lang.String r8 = "exception"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r8)
            ads_mobile_sdk.rr3 r8 = ads_mobile_sdk.hs3.a()
            ads_mobile_sdk.uj2 r9 = r8.e()
            r10 = 0
            r9.m = r10
            r8.a(r7)
        L94:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.jw0.a(ads_mobile_sdk.jw0, ads_mobile_sdk.k30, com.google.gson.JsonObject, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
