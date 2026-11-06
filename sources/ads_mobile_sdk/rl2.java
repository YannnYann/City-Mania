package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class rl2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ im2 a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rl2(im2 im2Var, String str, Continuation continuation) {
        super(2, continuation);
        this.a = im2Var;
        this.b = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new rl2(this.a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new rl2(this.a, this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0079 A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #1 {all -> 0x003c, blocks: (B:3:0x0021, B:11:0x003e, B:13:0x0044, B:21:0x0075, B:23:0x0079, B:14:0x004e, B:16:0x0054, B:17:0x005e, B:19:0x0064, B:20:0x006c, B:6:0x0026, B:8:0x0032), top: B:54:0x0021 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.im2 r5 = r4.a
            ads_mobile_sdk.e9 r5 = r5.b
            java.lang.String r0 = r4.b
            r5.getClass()
            java.lang.String r1 = "filename"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            ads_mobile_sdk.s11 r1 = ads_mobile_sdk.s11.CUI_NAME_PERSISTENT_CACHE_FILE_DELETE
            java.util.WeakHashMap r2 = ads_mobile_sdk.hs3.a
            java.util.List r2 = kotlin.collections.CollectionsKt__CollectionsKt.emptyList()
            r3 = 1
            ads_mobile_sdk.rr3 r1 = ads_mobile_sdk.hs3.a(r1, r2, r3)
            boolean r2 = r5.b     // Catch: java.lang.Throwable -> L3c
            if (r2 == 0) goto L26
            goto L3e
        L26:
            java.io.File r2 = r5.a     // Catch: java.lang.Throwable -> L3c
            boolean r2 = r2.exists()     // Catch: java.lang.Throwable -> L3c
            r5.b = r2     // Catch: java.lang.Throwable -> L3c
            boolean r2 = r5.b     // Catch: java.lang.Throwable -> L3c
            if (r2 != 0) goto L3e
            ads_mobile_sdk.m01 r5 = new ads_mobile_sdk.m01     // Catch: java.lang.Throwable -> L3c
            java.lang.String r0 = "Cache directory not found"
            ads_mobile_sdk.kk1 r2 = ads_mobile_sdk.kk1.a     // Catch: java.lang.Throwable -> L3c
            r5.<init>(r0, r2)     // Catch: java.lang.Throwable -> L3c
            goto L75
        L3c:
            r5 = move-exception
            goto L85
        L3e:
            java.io.File r5 = r5.b(r0)     // Catch: java.lang.Throwable -> L3c
            if (r5 != 0) goto L4e
            ads_mobile_sdk.m01 r5 = new ads_mobile_sdk.m01     // Catch: java.lang.Throwable -> L3c
            java.lang.String r0 = "Invalid filename"
            ads_mobile_sdk.kk1 r2 = ads_mobile_sdk.kk1.a     // Catch: java.lang.Throwable -> L3c
            r5.<init>(r0, r2)     // Catch: java.lang.Throwable -> L3c
            goto L75
        L4e:
            boolean r0 = r5.exists()     // Catch: java.lang.Throwable -> L3c
            if (r0 != 0) goto L5e
            ads_mobile_sdk.m01 r5 = new ads_mobile_sdk.m01     // Catch: java.lang.Throwable -> L3c
            java.lang.String r0 = "File not found"
            ads_mobile_sdk.kk1 r2 = ads_mobile_sdk.kk1.a     // Catch: java.lang.Throwable -> L3c
            r5.<init>(r0, r2)     // Catch: java.lang.Throwable -> L3c
            goto L75
        L5e:
            boolean r5 = r5.delete()     // Catch: java.lang.Throwable -> L3c
            if (r5 == 0) goto L6c
            ads_mobile_sdk.q01 r5 = new ads_mobile_sdk.q01     // Catch: java.lang.Throwable -> L3c
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L3c
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L3c
            goto L75
        L6c:
            ads_mobile_sdk.m01 r5 = new ads_mobile_sdk.m01     // Catch: java.lang.Throwable -> L3c
            java.lang.String r0 = "Failed to delete file"
            ads_mobile_sdk.kk1 r2 = ads_mobile_sdk.kk1.a     // Catch: java.lang.Throwable -> L3c
            r5.<init>(r0, r2)     // Catch: java.lang.Throwable -> L3c
        L75:
            boolean r0 = r5 instanceof ads_mobile_sdk.i01     // Catch: java.lang.Throwable -> L3c
            if (r0 == 0) goto L80
            r0 = r5
            ads_mobile_sdk.i01 r0 = (ads_mobile_sdk.i01) r0     // Catch: java.lang.Throwable -> L3c
            r2 = 0
            ads_mobile_sdk.xs3.a(r0, r2)     // Catch: java.lang.Throwable -> L3c
        L80:
            r0 = 0
            kotlin.io.CloseableKt.closeFinally(r1, r0)
            return r5
        L85:
            r1.b(r5)     // Catch: java.lang.Throwable -> L98
            boolean r0 = r5 instanceof ads_mobile_sdk.v24     // Catch: java.lang.Throwable -> L98
            if (r0 != 0) goto Lbd
            boolean r0 = r5 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L98
            if (r0 != 0) goto L9a
            boolean r0 = r5 instanceof java.util.concurrent.CancellationException     // Catch: java.lang.Throwable -> L98
            if (r0 != 0) goto L9a
            r1.a(r5)     // Catch: java.lang.Throwable -> L98
            goto L9a
        L98:
            r5 = move-exception
            goto Lbe
        L9a:
            boolean r0 = r5 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L98
            if (r0 != 0) goto Lb5
            boolean r0 = r5 instanceof java.util.concurrent.CancellationException     // Catch: java.lang.Throwable -> L98
            if (r0 != 0) goto Lad
            boolean r0 = r5 instanceof ads_mobile_sdk.w01     // Catch: java.lang.Throwable -> L98
            if (r0 == 0) goto La7
            throw r5     // Catch: java.lang.Throwable -> L98
        La7:
            ads_mobile_sdk.b01 r0 = new ads_mobile_sdk.b01     // Catch: java.lang.Throwable -> L98
            r0.<init>(r5)     // Catch: java.lang.Throwable -> L98
            throw r0     // Catch: java.lang.Throwable -> L98
        Lad:
            ads_mobile_sdk.wz0 r0 = new ads_mobile_sdk.wz0     // Catch: java.lang.Throwable -> L98
            java.util.concurrent.CancellationException r5 = (java.util.concurrent.CancellationException) r5     // Catch: java.lang.Throwable -> L98
            r0.<init>(r5)     // Catch: java.lang.Throwable -> L98
            throw r0     // Catch: java.lang.Throwable -> L98
        Lb5:
            ads_mobile_sdk.i21 r0 = new ads_mobile_sdk.i21     // Catch: java.lang.Throwable -> L98
            kotlinx.coroutines.TimeoutCancellationException r5 = (kotlinx.coroutines.TimeoutCancellationException) r5     // Catch: java.lang.Throwable -> L98
            r0.<init>(r5)     // Catch: java.lang.Throwable -> L98
            throw r0     // Catch: java.lang.Throwable -> L98
        Lbd:
            throw r5     // Catch: java.lang.Throwable -> L98
        Lbe:
            throw r5     // Catch: java.lang.Throwable -> Lbf
        Lbf:
            r0 = move-exception
            kotlin.io.CloseableKt.closeFinally(r1, r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.rl2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
