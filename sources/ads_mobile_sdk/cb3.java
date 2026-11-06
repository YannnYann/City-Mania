package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class cb3 {
    public final CoroutineScope a;
    public final ks1 b;
    public final tx c;
    public final Mutex d;
    public Deferred e;

    public cb3(CoroutineScope backgroundScope, ks1 dataStore, tx clock) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = backgroundScope;
        this.b = dataStore;
        this.c = clock;
        this.d = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.cb3 r12, kotlin.coroutines.Continuation r13) {
        /*
            boolean r0 = r13 instanceof ads_mobile_sdk.wa3
            if (r0 == 0) goto L13
            r0 = r13
            ads_mobile_sdk.wa3 r0 = (ads_mobile_sdk.wa3) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.wa3 r0 = new ads_mobile_sdk.wa3
            r0.<init>(r12, r13)
        L18:
            java.lang.Object r13 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3f
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r13)
            return r13
        L2d:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L35:
            kotlinx.coroutines.sync.Mutex r12 = r0.b
            ads_mobile_sdk.cb3 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r13)
            r13 = r12
            r12 = r2
            goto L51
        L3f:
            kotlin.ResultKt.throwOnFailure(r13)
            kotlinx.coroutines.sync.Mutex r13 = r12.d
            r0.a = r12
            r0.b = r13
            r0.e = r4
            java.lang.Object r2 = r13.lock(r5, r0)
            if (r2 != r1) goto L51
            goto L79
        L51:
            kotlinx.coroutines.Deferred r2 = r12.e     // Catch: java.lang.Throwable -> L67
            if (r2 != 0) goto L6a
            kotlinx.coroutines.CoroutineScope r6 = r12.a     // Catch: java.lang.Throwable -> L67
            ads_mobile_sdk.xa3 r9 = new ads_mobile_sdk.xa3     // Catch: java.lang.Throwable -> L67
            r9.<init>(r12, r5)     // Catch: java.lang.Throwable -> L67
            r10 = 3
            r11 = 0
            r7 = 0
            r8 = 0
            kotlinx.coroutines.Deferred r2 = kotlinx.coroutines.BuildersKt.async$default(r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L67
            r12.e = r2     // Catch: java.lang.Throwable -> L67
            goto L6a
        L67:
            r0 = move-exception
            r12 = r0
            goto L7b
        L6a:
            r13.unlock(r5)
            r0.a = r5
            r0.b = r5
            r0.e = r3
            java.lang.Object r12 = r2.await(r0)
            if (r12 != r1) goto L7a
        L79:
            return r1
        L7a:
            return r12
        L7b:
            r13.unlock(r5)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.cb3.a(ads_mobile_sdk.cb3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.cb3 r6, java.lang.String r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.ab3
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.ab3 r0 = (ads_mobile_sdk.ab3) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.ab3 r0 = new ads_mobile_sdk.ab3
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
            ads_mobile_sdk.ua3 r7 = r0.b
            ads_mobile_sdk.cb3 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Exception -> L83
            goto L72
        L33:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3b:
            ads_mobile_sdk.cb3 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Exception -> L83
            goto L5c
        L41:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.ks1 r8 = r6.b     // Catch: java.lang.Exception -> L83
            java.lang.Object r8 = r8.get()     // Catch: java.lang.Exception -> L83
            androidx.datastore.core.DataStore r8 = (androidx.datastore.core.DataStore) r8     // Catch: java.lang.Exception -> L83
            ads_mobile_sdk.bb3 r2 = new ads_mobile_sdk.bb3     // Catch: java.lang.Exception -> L83
            r2.<init>(r6, r7, r5)     // Catch: java.lang.Exception -> L83
            r0.a = r6     // Catch: java.lang.Exception -> L83
            r0.f = r4     // Catch: java.lang.Exception -> L83
            java.lang.Object r8 = r8.updateData(r2, r0)     // Catch: java.lang.Exception -> L83
            if (r8 != r1) goto L5c
            goto L6f
        L5c:
            r7 = r8
            ads_mobile_sdk.ua3 r7 = (ads_mobile_sdk.ua3) r7     // Catch: java.lang.Exception -> L83
            kotlinx.coroutines.sync.Mutex r8 = r6.d     // Catch: java.lang.Exception -> L83
            r0.a = r6     // Catch: java.lang.Exception -> L83
            r0.b = r7     // Catch: java.lang.Exception -> L83
            r0.c = r8     // Catch: java.lang.Exception -> L83
            r0.f = r3     // Catch: java.lang.Exception -> L83
            java.lang.Object r0 = r8.lock(r5, r0)     // Catch: java.lang.Exception -> L83
            if (r0 != r1) goto L70
        L6f:
            return r1
        L70:
            r0 = r6
            r6 = r8
        L72:
            kotlinx.coroutines.CompletableDeferred r7 = kotlinx.coroutines.CompletableDeferredKt.CompletableDeferred(r7)     // Catch: java.lang.Throwable -> L7e
            r0.e = r7     // Catch: java.lang.Throwable -> L7e
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7e
            r6.unlock(r5)     // Catch: java.lang.Exception -> L83
            goto L97
        L7e:
            r7 = move-exception
            r6.unlock(r5)     // Catch: java.lang.Exception -> L83
            throw r7     // Catch: java.lang.Exception -> L83
        L83:
            r6 = move-exception
            java.lang.String r7 = "exception"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r7)
            ads_mobile_sdk.rr3 r7 = ads_mobile_sdk.hs3.a()
            ads_mobile_sdk.uj2 r8 = r7.e()
            r0 = 0
            r8.m = r0
            r7.a(r6)
        L97:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.cb3.b(ads_mobile_sdk.cb3, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.cb3 r6, java.lang.String r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.ya3
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.ya3 r0 = (ads_mobile_sdk.ya3) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.ya3 r0 = new ads_mobile_sdk.ya3
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
            ads_mobile_sdk.ua3 r7 = r0.b
            ads_mobile_sdk.cb3 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Exception -> L83
            goto L72
        L33:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3b:
            ads_mobile_sdk.cb3 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Exception -> L83
            goto L5c
        L41:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.ks1 r8 = r6.b     // Catch: java.lang.Exception -> L83
            java.lang.Object r8 = r8.get()     // Catch: java.lang.Exception -> L83
            androidx.datastore.core.DataStore r8 = (androidx.datastore.core.DataStore) r8     // Catch: java.lang.Exception -> L83
            ads_mobile_sdk.za3 r2 = new ads_mobile_sdk.za3     // Catch: java.lang.Exception -> L83
            r2.<init>(r6, r7, r5)     // Catch: java.lang.Exception -> L83
            r0.a = r6     // Catch: java.lang.Exception -> L83
            r0.f = r4     // Catch: java.lang.Exception -> L83
            java.lang.Object r8 = r8.updateData(r2, r0)     // Catch: java.lang.Exception -> L83
            if (r8 != r1) goto L5c
            goto L6f
        L5c:
            r7 = r8
            ads_mobile_sdk.ua3 r7 = (ads_mobile_sdk.ua3) r7     // Catch: java.lang.Exception -> L83
            kotlinx.coroutines.sync.Mutex r8 = r6.d     // Catch: java.lang.Exception -> L83
            r0.a = r6     // Catch: java.lang.Exception -> L83
            r0.b = r7     // Catch: java.lang.Exception -> L83
            r0.c = r8     // Catch: java.lang.Exception -> L83
            r0.f = r3     // Catch: java.lang.Exception -> L83
            java.lang.Object r0 = r8.lock(r5, r0)     // Catch: java.lang.Exception -> L83
            if (r0 != r1) goto L70
        L6f:
            return r1
        L70:
            r0 = r6
            r6 = r8
        L72:
            kotlinx.coroutines.CompletableDeferred r7 = kotlinx.coroutines.CompletableDeferredKt.CompletableDeferred(r7)     // Catch: java.lang.Throwable -> L7e
            r0.e = r7     // Catch: java.lang.Throwable -> L7e
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7e
            r6.unlock(r5)     // Catch: java.lang.Exception -> L83
            goto L97
        L7e:
            r7 = move-exception
            r6.unlock(r5)     // Catch: java.lang.Exception -> L83
            throw r7     // Catch: java.lang.Exception -> L83
        L83:
            r6 = move-exception
            java.lang.String r7 = "exception"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r7)
            ads_mobile_sdk.rr3 r7 = ads_mobile_sdk.hs3.a()
            ads_mobile_sdk.uj2 r8 = r7.e()
            r0 = 0
            r8.m = r0
            r7.a(r6)
        L97:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.cb3.a(ads_mobile_sdk.cb3, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
