package ads_mobile_sdk;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public interface rh3 {
    /* JADX WARN: Removed duplicated region for block: B:32:0x0087 A[Catch: all -> 0x0093, TryCatch #0 {all -> 0x0093, blocks: (B:30:0x0080, B:32:0x0087, B:34:0x008b, B:36:0x008f, B:39:0x0095, B:41:0x0099, B:43:0x009d, B:45:0x00a1, B:46:0x00a2, B:47:0x00a7, B:48:0x00a8, B:49:0x00af, B:50:0x00b0, B:51:0x00b7, B:52:0x00b8), top: B:57:0x0080 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b8 A[Catch: all -> 0x0093, TRY_LEAVE, TryCatch #0 {all -> 0x0093, blocks: (B:30:0x0080, B:32:0x0087, B:34:0x008b, B:36:0x008f, B:39:0x0095, B:41:0x0099, B:43:0x009d, B:45:0x00a1, B:46:0x00a2, B:47:0x00a7, B:48:0x00a8, B:49:0x00af, B:50:0x00b0, B:51:0x00b7, B:52:0x00b8), top: B:57:0x0080 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* synthetic */ java.lang.Object a(ads_mobile_sdk.rh3 r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof ads_mobile_sdk.qh3
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.qh3 r0 = (ads_mobile_sdk.qh3) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.qh3 r0 = new ads_mobile_sdk.qh3
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            ads_mobile_sdk.rr3 r8 = r0.b
            ads_mobile_sdk.rr3 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L2e
            goto L6b
        L2e:
            r9 = move-exception
            goto L80
        L30:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L38:
            kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.s11 r9 = ads_mobile_sdk.s11.CUI_NAME_SIGNAL
            java.util.WeakHashMap r2 = ads_mobile_sdk.hs3.a
            java.util.List r2 = kotlin.collections.CollectionsKt__CollectionsKt.emptyList()
            ads_mobile_sdk.rr3 r9 = ads_mobile_sdk.hs3.a(r9, r2, r3)
            ads_mobile_sdk.rr3 r2 = ads_mobile_sdk.hs3.a()     // Catch: java.lang.Throwable -> L7c
            ads_mobile_sdk.uj2 r2 = r2.e()     // Catch: java.lang.Throwable -> L7c
            ads_mobile_sdk.gh3 r5 = new ads_mobile_sdk.gh3     // Catch: java.lang.Throwable -> L7c
            ads_mobile_sdk.y11 r6 = r8.f()     // Catch: java.lang.Throwable -> L7c
            r7 = 6
            r5.<init>(r6, r4, r7)     // Catch: java.lang.Throwable -> L7c
            r2.t = r5     // Catch: java.lang.Throwable -> L7c
            r0.a = r9     // Catch: java.lang.Throwable -> L7c
            r0.b = r9     // Catch: java.lang.Throwable -> L7c
            r0.e = r3     // Catch: java.lang.Throwable -> L7c
            java.lang.Object r8 = r8.s(r0)     // Catch: java.lang.Throwable -> L7c
            if (r8 != r1) goto L68
            return r1
        L68:
            r0 = r9
            r9 = r8
            r8 = r0
        L6b:
            ads_mobile_sdk.v01 r9 = (ads_mobile_sdk.v01) r9     // Catch: java.lang.Throwable -> L2e
            boolean r1 = r9 instanceof ads_mobile_sdk.i01     // Catch: java.lang.Throwable -> L2e
            if (r1 == 0) goto L78
            r1 = r9
            ads_mobile_sdk.i01 r1 = (ads_mobile_sdk.i01) r1     // Catch: java.lang.Throwable -> L2e
            r2 = 0
            ads_mobile_sdk.xs3.a(r1, r2)     // Catch: java.lang.Throwable -> L2e
        L78:
            kotlin.io.CloseableKt.closeFinally(r8, r4)
            return r9
        L7c:
            r8 = move-exception
            r0 = r9
            r9 = r8
            r8 = r0
        L80:
            r0.b(r9)     // Catch: java.lang.Throwable -> L93
            boolean r1 = r9 instanceof ads_mobile_sdk.v24     // Catch: java.lang.Throwable -> L93
            if (r1 != 0) goto Lb8
            boolean r1 = r9 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L93
            if (r1 != 0) goto L95
            boolean r1 = r9 instanceof java.util.concurrent.CancellationException     // Catch: java.lang.Throwable -> L93
            if (r1 != 0) goto L95
            r0.a(r9)     // Catch: java.lang.Throwable -> L93
            goto L95
        L93:
            r9 = move-exception
            goto Lb9
        L95:
            boolean r0 = r9 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L93
            if (r0 != 0) goto Lb0
            boolean r0 = r9 instanceof java.util.concurrent.CancellationException     // Catch: java.lang.Throwable -> L93
            if (r0 != 0) goto La8
            boolean r0 = r9 instanceof ads_mobile_sdk.w01     // Catch: java.lang.Throwable -> L93
            if (r0 == 0) goto La2
            throw r9     // Catch: java.lang.Throwable -> L93
        La2:
            ads_mobile_sdk.b01 r0 = new ads_mobile_sdk.b01     // Catch: java.lang.Throwable -> L93
            r0.<init>(r9)     // Catch: java.lang.Throwable -> L93
            throw r0     // Catch: java.lang.Throwable -> L93
        La8:
            ads_mobile_sdk.wz0 r0 = new ads_mobile_sdk.wz0     // Catch: java.lang.Throwable -> L93
            java.util.concurrent.CancellationException r9 = (java.util.concurrent.CancellationException) r9     // Catch: java.lang.Throwable -> L93
            r0.<init>(r9)     // Catch: java.lang.Throwable -> L93
            throw r0     // Catch: java.lang.Throwable -> L93
        Lb0:
            ads_mobile_sdk.i21 r0 = new ads_mobile_sdk.i21     // Catch: java.lang.Throwable -> L93
            kotlinx.coroutines.TimeoutCancellationException r9 = (kotlinx.coroutines.TimeoutCancellationException) r9     // Catch: java.lang.Throwable -> L93
            r0.<init>(r9)     // Catch: java.lang.Throwable -> L93
            throw r0     // Catch: java.lang.Throwable -> L93
        Lb8:
            throw r9     // Catch: java.lang.Throwable -> L93
        Lb9:
            throw r9     // Catch: java.lang.Throwable -> Lba
        Lba:
            r0 = move-exception
            kotlin.io.CloseableKt.closeFinally(r8, r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rh3.a(ads_mobile_sdk.rh3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    default Object b(Continuation continuation) {
        return a(this, continuation);
    }

    y11 f();

    Object s(Continuation continuation);
}
