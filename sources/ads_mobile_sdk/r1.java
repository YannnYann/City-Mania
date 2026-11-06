package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class r1 {
    public final ks1 a;

    public r1(ks1 dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        this.a = dataStore;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0077 A[Catch: all -> 0x0083, TryCatch #0 {all -> 0x0083, blocks: (B:28:0x0070, B:30:0x0077, B:32:0x007b, B:34:0x007f, B:37:0x0085, B:39:0x0089, B:41:0x008d, B:43:0x0091, B:44:0x0092, B:45:0x0097, B:46:0x0098, B:47:0x009f, B:48:0x00a0, B:49:0x00a7, B:50:0x00a8), top: B:55:0x0070 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a8 A[Catch: all -> 0x0083, TRY_LEAVE, TryCatch #0 {all -> 0x0083, blocks: (B:28:0x0070, B:30:0x0077, B:32:0x007b, B:34:0x007f, B:37:0x0085, B:39:0x0089, B:41:0x008d, B:43:0x0091, B:44:0x0092, B:45:0x0097, B:46:0x0098, B:47:0x009f, B:48:0x00a0, B:49:0x00a7, B:50:0x00a8), top: B:55:0x0070 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.jvm.functions.Function1 r7, kotlin.coroutines.Continuation r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.p1
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.p1 r0 = (ads_mobile_sdk.p1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.p1 r0 = new ads_mobile_sdk.p1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            ads_mobile_sdk.rr3 r7 = r0.b
            ads_mobile_sdk.rr3 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L2e
            goto L64
        L2e:
            r8 = move-exception
            goto L70
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L38:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.s11 r8 = ads_mobile_sdk.s11.CUI_NAME_PERSISTENT_CACHE_METADATA_WRITE
            java.util.WeakHashMap r2 = ads_mobile_sdk.hs3.a
            java.util.List r2 = kotlin.collections.CollectionsKt__CollectionsKt.emptyList()
            ads_mobile_sdk.rr3 r8 = ads_mobile_sdk.hs3.a(r8, r2, r3)
            ads_mobile_sdk.ks1 r2 = r6.a     // Catch: java.lang.Throwable -> L6c
            java.lang.Object r2 = r2.get()     // Catch: java.lang.Throwable -> L6c
            androidx.datastore.core.DataStore r2 = (androidx.datastore.core.DataStore) r2     // Catch: java.lang.Throwable -> L6c
            ads_mobile_sdk.q1 r5 = new ads_mobile_sdk.q1     // Catch: java.lang.Throwable -> L6c
            r5.<init>(r7, r4)     // Catch: java.lang.Throwable -> L6c
            r0.a = r8     // Catch: java.lang.Throwable -> L6c
            r0.b = r8     // Catch: java.lang.Throwable -> L6c
            r0.e = r3     // Catch: java.lang.Throwable -> L6c
            java.lang.Object r7 = r2.updateData(r5, r0)     // Catch: java.lang.Throwable -> L6c
            if (r7 != r1) goto L61
            return r1
        L61:
            r0 = r8
            r8 = r7
            r7 = r0
        L64:
            ads_mobile_sdk.o1 r8 = (ads_mobile_sdk.o1) r8     // Catch: java.lang.Throwable -> L2e
            kotlin.io.CloseableKt.closeFinally(r7, r4)
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L6c:
            r7 = move-exception
            r0 = r8
            r8 = r7
            r7 = r0
        L70:
            r0.b(r8)     // Catch: java.lang.Throwable -> L83
            boolean r1 = r8 instanceof ads_mobile_sdk.v24     // Catch: java.lang.Throwable -> L83
            if (r1 != 0) goto La8
            boolean r1 = r8 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L83
            if (r1 != 0) goto L85
            boolean r1 = r8 instanceof java.util.concurrent.CancellationException     // Catch: java.lang.Throwable -> L83
            if (r1 != 0) goto L85
            r0.a(r8)     // Catch: java.lang.Throwable -> L83
            goto L85
        L83:
            r8 = move-exception
            goto La9
        L85:
            boolean r0 = r8 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L83
            if (r0 != 0) goto La0
            boolean r0 = r8 instanceof java.util.concurrent.CancellationException     // Catch: java.lang.Throwable -> L83
            if (r0 != 0) goto L98
            boolean r0 = r8 instanceof ads_mobile_sdk.w01     // Catch: java.lang.Throwable -> L83
            if (r0 == 0) goto L92
            throw r8     // Catch: java.lang.Throwable -> L83
        L92:
            ads_mobile_sdk.b01 r0 = new ads_mobile_sdk.b01     // Catch: java.lang.Throwable -> L83
            r0.<init>(r8)     // Catch: java.lang.Throwable -> L83
            throw r0     // Catch: java.lang.Throwable -> L83
        L98:
            ads_mobile_sdk.wz0 r0 = new ads_mobile_sdk.wz0     // Catch: java.lang.Throwable -> L83
            java.util.concurrent.CancellationException r8 = (java.util.concurrent.CancellationException) r8     // Catch: java.lang.Throwable -> L83
            r0.<init>(r8)     // Catch: java.lang.Throwable -> L83
            throw r0     // Catch: java.lang.Throwable -> L83
        La0:
            ads_mobile_sdk.i21 r0 = new ads_mobile_sdk.i21     // Catch: java.lang.Throwable -> L83
            kotlinx.coroutines.TimeoutCancellationException r8 = (kotlinx.coroutines.TimeoutCancellationException) r8     // Catch: java.lang.Throwable -> L83
            r0.<init>(r8)     // Catch: java.lang.Throwable -> L83
            throw r0     // Catch: java.lang.Throwable -> L83
        La8:
            throw r8     // Catch: java.lang.Throwable -> L83
        La9:
            throw r8     // Catch: java.lang.Throwable -> Laa
        Laa:
            r0 = move-exception
            kotlin.io.CloseableKt.closeFinally(r7, r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.r1.a(kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
