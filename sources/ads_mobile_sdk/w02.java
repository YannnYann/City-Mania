package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class w02 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public s02 c;
    public int d;
    public final /* synthetic */ s02 e;
    public final /* synthetic */ g12 f;
    public final /* synthetic */ JsonObject g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w02(s02 s02Var, g12 g12Var, JsonObject jsonObject, Continuation continuation) {
        super(2, continuation);
        this.e = s02Var;
        this.f = g12Var;
        this.g = jsonObject;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new w02(this.e, this.f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((w02) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x006e A[Catch: all -> 0x007a, TryCatch #3 {all -> 0x007a, blocks: (B:23:0x0067, B:25:0x006e, B:27:0x0072, B:29:0x0076, B:32:0x007c, B:34:0x0080, B:36:0x0084, B:38:0x0088, B:39:0x0089, B:40:0x008e, B:41:0x008f, B:42:0x0096, B:43:0x0097, B:44:0x009e, B:45:0x009f), top: B:56:0x0067 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x009f A[Catch: all -> 0x007a, TRY_LEAVE, TryCatch #3 {all -> 0x007a, blocks: (B:23:0x0067, B:25:0x006e, B:27:0x0072, B:29:0x0076, B:32:0x007c, B:34:0x0080, B:36:0x0084, B:38:0x0088, B:39:0x0089, B:40:0x008e, B:41:0x008f, B:42:0x0096, B:43:0x0097, B:44:0x009e, B:45:0x009f), top: B:56:0x0067 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.d
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L20
            if (r1 != r2) goto L18
            ads_mobile_sdk.s02 r0 = r7.c
            ads_mobile_sdk.rr3 r1 = r7.b
            ads_mobile_sdk.rr3 r2 = r7.a
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L16
            goto L58
        L16:
            r8 = move-exception
            goto L62
        L18:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L20:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.s02 r8 = r7.e
            ads_mobile_sdk.s11 r1 = ads_mobile_sdk.s11.CUI_NAME_LOAD_NATIVE_ICON
            ads_mobile_sdk.g12 r4 = r7.f
            com.google.gson.JsonObject r5 = r7.g
            java.util.WeakHashMap r6 = ads_mobile_sdk.hs3.a
            java.util.List r6 = kotlin.collections.CollectionsKt__CollectionsKt.emptyList()
            ads_mobile_sdk.rr3 r1 = ads_mobile_sdk.hs3.a(r1, r6, r2)
            ads_mobile_sdk.v42 r4 = r4.c     // Catch: java.lang.Throwable -> L65
            java.lang.String r6 = "app_icon"
            r7.a = r1     // Catch: java.lang.Throwable -> L65
            r7.b = r1     // Catch: java.lang.Throwable -> L65
            r7.c = r8     // Catch: java.lang.Throwable -> L65
            r7.d = r2     // Catch: java.lang.Throwable -> L65
            r4.getClass()     // Catch: java.lang.Throwable -> L65
            com.google.gson.JsonObject r2 = ads_mobile_sdk.ds1.a(r5, r6, r3)     // Catch: java.lang.Throwable -> L65
            com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest r5 = r4.a     // Catch: java.lang.Throwable -> L65
            boolean r5 = r5.isImageLoadingDisabled()     // Catch: java.lang.Throwable -> L65
            java.lang.Object r2 = r4.a(r2, r5, r7)     // Catch: java.lang.Throwable -> L65
            if (r2 != r0) goto L55
            return r0
        L55:
            r0 = r8
            r8 = r2
            r2 = r1
        L58:
            ads_mobile_sdk.km1 r8 = (ads_mobile_sdk.km1) r8     // Catch: java.lang.Throwable -> L16
            kotlin.io.CloseableKt.closeFinally(r1, r3)
            r0.g = r8
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L62:
            r0 = r1
            r1 = r2
            goto L67
        L65:
            r8 = move-exception
            r0 = r1
        L67:
            r1.b(r8)     // Catch: java.lang.Throwable -> L7a
            boolean r2 = r8 instanceof ads_mobile_sdk.v24     // Catch: java.lang.Throwable -> L7a
            if (r2 != 0) goto L9f
            boolean r2 = r8 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L7a
            if (r2 != 0) goto L7c
            boolean r2 = r8 instanceof java.util.concurrent.CancellationException     // Catch: java.lang.Throwable -> L7a
            if (r2 != 0) goto L7c
            r1.a(r8)     // Catch: java.lang.Throwable -> L7a
            goto L7c
        L7a:
            r8 = move-exception
            goto La0
        L7c:
            boolean r1 = r8 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L7a
            if (r1 != 0) goto L97
            boolean r1 = r8 instanceof java.util.concurrent.CancellationException     // Catch: java.lang.Throwable -> L7a
            if (r1 != 0) goto L8f
            boolean r1 = r8 instanceof ads_mobile_sdk.w01     // Catch: java.lang.Throwable -> L7a
            if (r1 == 0) goto L89
            throw r8     // Catch: java.lang.Throwable -> L7a
        L89:
            ads_mobile_sdk.b01 r1 = new ads_mobile_sdk.b01     // Catch: java.lang.Throwable -> L7a
            r1.<init>(r8)     // Catch: java.lang.Throwable -> L7a
            throw r1     // Catch: java.lang.Throwable -> L7a
        L8f:
            ads_mobile_sdk.wz0 r1 = new ads_mobile_sdk.wz0     // Catch: java.lang.Throwable -> L7a
            java.util.concurrent.CancellationException r8 = (java.util.concurrent.CancellationException) r8     // Catch: java.lang.Throwable -> L7a
            r1.<init>(r8)     // Catch: java.lang.Throwable -> L7a
            throw r1     // Catch: java.lang.Throwable -> L7a
        L97:
            ads_mobile_sdk.i21 r1 = new ads_mobile_sdk.i21     // Catch: java.lang.Throwable -> L7a
            kotlinx.coroutines.TimeoutCancellationException r8 = (kotlinx.coroutines.TimeoutCancellationException) r8     // Catch: java.lang.Throwable -> L7a
            r1.<init>(r8)     // Catch: java.lang.Throwable -> L7a
            throw r1     // Catch: java.lang.Throwable -> L7a
        L9f:
            throw r8     // Catch: java.lang.Throwable -> L7a
        La0:
            throw r8     // Catch: java.lang.Throwable -> La1
        La1:
            r1 = move-exception
            kotlin.io.CloseableKt.closeFinally(r0, r8)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.w02.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
