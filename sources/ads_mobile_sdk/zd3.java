package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class zd3 {
    public final ks1 a;
    public final Mutex b;
    public od3 c;

    public zd3(ks1 dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        this.a = dataStore;
        this.b = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.zd3 r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof ads_mobile_sdk.qd3
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.qd3 r0 = (ads_mobile_sdk.qd3) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.qd3 r0 = new ads_mobile_sdk.qd3
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L40
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.c = r3
            r4.getClass()
            java.lang.Object r5 = c(r4, r0)
            if (r5 != r1) goto L40
            return r1
        L40:
            ads_mobile_sdk.od3 r5 = (ads_mobile_sdk.od3) r5
            boolean r4 = r5.A()
            if (r4 == 0) goto L4d
            ads_mobile_sdk.xp0 r4 = r5.w()
            return r4
        L4d:
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.zd3.a(ads_mobile_sdk.zd3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.zd3 r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof ads_mobile_sdk.rd3
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.rd3 r0 = (ads_mobile_sdk.rd3) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.rd3 r0 = new ads_mobile_sdk.rd3
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L40
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.c = r3
            r4.getClass()
            java.lang.Object r5 = c(r4, r0)
            if (r5 != r1) goto L40
            return r1
        L40:
            ads_mobile_sdk.od3 r5 = (ads_mobile_sdk.od3) r5
            boolean r4 = r5.y()
            java.lang.Boolean r4 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.zd3.b(ads_mobile_sdk.zd3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object c(ads_mobile_sdk.zd3 r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.sd3
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.sd3 r0 = (ads_mobile_sdk.sd3) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.sd3 r0 = new ads_mobile_sdk.sd3
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
            ads_mobile_sdk.od3 r1 = (ads_mobile_sdk.od3) r1
            ads_mobile_sdk.zd3 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto La2
        L39:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L41:
            ads_mobile_sdk.zd3 r7 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L86
        L47:
            java.lang.Object r7 = r0.b
            kotlinx.coroutines.sync.Mutex r7 = (kotlinx.coroutines.sync.Mutex) r7
            ads_mobile_sdk.zd3 r2 = r0.a
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
            ads_mobile_sdk.od3 r2 = r7.c     // Catch: java.lang.Throwable -> Lb2
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
            ads_mobile_sdk.od3 r8 = (ads_mobile_sdk.od3) r8
            if (r8 != 0) goto L8e
            ads_mobile_sdk.od3 r8 = ads_mobile_sdk.od3.v()
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
            r0.c = r1     // Catch: java.lang.Throwable -> Lad
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lad
            r7.unlock(r6)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            return r1
        Lad:
            r8 = move-exception
            r7.unlock(r6)
            throw r8
        Lb2:
            r7 = move-exception
            r8.unlock(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.zd3.c(ads_mobile_sdk.zd3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object d(ads_mobile_sdk.zd3 r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof ads_mobile_sdk.td3
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.td3 r0 = (ads_mobile_sdk.td3) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.td3 r0 = new ads_mobile_sdk.td3
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L40
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.c = r3
            r4.getClass()
            java.lang.Object r5 = c(r4, r0)
            if (r5 != r1) goto L40
            return r1
        L40:
            ads_mobile_sdk.od3 r5 = (ads_mobile_sdk.od3) r5
            int r4 = r5.z()
            java.lang.Integer r4 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.zd3.d(ads_mobile_sdk.zd3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object a(int i, j jVar) {
        Object objA = a(this, new wd3(i), jVar);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.zd3 r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.xd3
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.xd3 r0 = (ads_mobile_sdk.xd3) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.xd3 r0 = new ads_mobile_sdk.xd3
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
            kotlinx.coroutines.sync.Mutex r6 = r0.c
            ads_mobile_sdk.od3 r7 = r0.b
            ads_mobile_sdk.zd3 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L7f
            goto L72
        L33:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3b:
            ads_mobile_sdk.zd3 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L7f
            goto L5c
        L41:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.ks1 r8 = r6.a     // Catch: java.lang.Throwable -> L7f
            java.lang.Object r8 = r8.get()     // Catch: java.lang.Throwable -> L7f
            androidx.datastore.core.DataStore r8 = (androidx.datastore.core.DataStore) r8     // Catch: java.lang.Throwable -> L7f
            ads_mobile_sdk.yd3 r2 = new ads_mobile_sdk.yd3     // Catch: java.lang.Throwable -> L7f
            r2.<init>(r7, r5)     // Catch: java.lang.Throwable -> L7f
            r0.a = r6     // Catch: java.lang.Throwable -> L7f
            r0.f = r4     // Catch: java.lang.Throwable -> L7f
            java.lang.Object r8 = r8.updateData(r2, r0)     // Catch: java.lang.Throwable -> L7f
            if (r8 != r1) goto L5c
            goto L6f
        L5c:
            r7 = r8
            ads_mobile_sdk.od3 r7 = (ads_mobile_sdk.od3) r7     // Catch: java.lang.Throwable -> L7f
            kotlinx.coroutines.sync.Mutex r8 = r6.b     // Catch: java.lang.Throwable -> L7f
            r0.a = r6     // Catch: java.lang.Throwable -> L7f
            r0.b = r7     // Catch: java.lang.Throwable -> L7f
            r0.c = r8     // Catch: java.lang.Throwable -> L7f
            r0.f = r3     // Catch: java.lang.Throwable -> L7f
            java.lang.Object r0 = r8.lock(r5, r0)     // Catch: java.lang.Throwable -> L7f
            if (r0 != r1) goto L70
        L6f:
            return r1
        L70:
            r0 = r6
            r6 = r8
        L72:
            r0.c = r7     // Catch: java.lang.Throwable -> L7a
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7a
            r6.unlock(r5)     // Catch: java.lang.Throwable -> L7f
            goto L96
        L7a:
            r7 = move-exception
            r6.unlock(r5)     // Catch: java.lang.Throwable -> L7f
            throw r7     // Catch: java.lang.Throwable -> L7f
        L7f:
            r6 = move-exception
            com.google.common.base.Splitter r7 = ads_mobile_sdk.f01.a
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Failed to update shared settings: "
            r7.append(r8)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            ads_mobile_sdk.f01.c(r6)
        L96:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.zd3.a(ads_mobile_sdk.zd3, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
