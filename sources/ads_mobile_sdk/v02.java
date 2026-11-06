package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class v02 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public s02 c;
    public int d;
    public final /* synthetic */ s02 e;
    public final /* synthetic */ g12 f;
    public final /* synthetic */ JsonObject g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v02(s02 s02Var, g12 g12Var, JsonObject jsonObject, Continuation continuation) {
        super(2, continuation);
        this.e = s02Var;
        this.f = g12Var;
        this.g = jsonObject;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new v02(this.e, this.f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((v02) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0082 A[Catch: all -> 0x008e, TryCatch #3 {all -> 0x008e, blocks: (B:30:0x007b, B:32:0x0082, B:34:0x0086, B:36:0x008a, B:39:0x0090, B:41:0x0094, B:43:0x0098, B:45:0x009c, B:46:0x009d, B:47:0x00a2, B:48:0x00a3, B:49:0x00aa, B:50:0x00ab, B:51:0x00b2, B:52:0x00b3), top: B:63:0x007b }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b3 A[Catch: all -> 0x008e, TRY_LEAVE, TryCatch #3 {all -> 0x008e, blocks: (B:30:0x007b, B:32:0x0082, B:34:0x0086, B:36:0x008a, B:39:0x0090, B:41:0x0094, B:43:0x0098, B:45:0x009c, B:46:0x009d, B:47:0x00a2, B:48:0x00a3, B:49:0x00aa, B:50:0x00ab, B:51:0x00b2, B:52:0x00b3), top: B:63:0x007b }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.d
            r2 = 0
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L21
            if (r1 != r3) goto L19
            ads_mobile_sdk.s02 r0 = r8.c
            ads_mobile_sdk.rr3 r1 = r8.b
            ads_mobile_sdk.rr3 r2 = r8.a
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L17
            goto L6c
        L17:
            r9 = move-exception
            goto L76
        L19:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L21:
            kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.s02 r9 = r8.e
            ads_mobile_sdk.s11 r1 = ads_mobile_sdk.s11.CUI_NAME_LOAD_NATIVE_IMAGE
            ads_mobile_sdk.g12 r5 = r8.f
            com.google.gson.JsonObject r6 = r8.g
            java.util.WeakHashMap r7 = ads_mobile_sdk.hs3.a
            java.util.List r7 = kotlin.collections.CollectionsKt__CollectionsKt.emptyList()
            ads_mobile_sdk.rr3 r1 = ads_mobile_sdk.hs3.a(r1, r7, r3)
            ads_mobile_sdk.v42 r5 = r5.c     // Catch: java.lang.Throwable -> L79
            java.lang.String r7 = "images"
            r8.a = r1     // Catch: java.lang.Throwable -> L79
            r8.b = r1     // Catch: java.lang.Throwable -> L79
            r8.c = r9     // Catch: java.lang.Throwable -> L79
            r8.d = r3     // Catch: java.lang.Throwable -> L79
            r5.getClass()     // Catch: java.lang.Throwable -> L79
            com.google.gson.JsonArray r3 = ads_mobile_sdk.ds1.e(r6, r7)     // Catch: java.lang.Throwable -> L79
            if (r3 == 0) goto L65
            boolean r6 = r3.isEmpty()     // Catch: java.lang.Throwable -> L79
            if (r6 == 0) goto L52
            goto L65
        L52:
            com.google.gson.JsonElement r2 = r3.get(r2)     // Catch: java.lang.Throwable -> L79
            com.google.gson.JsonObject r2 = ads_mobile_sdk.ds1.a(r2)     // Catch: java.lang.Throwable -> L79
            com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest r3 = r5.a     // Catch: java.lang.Throwable -> L79
            boolean r3 = r3.isImageLoadingDisabled()     // Catch: java.lang.Throwable -> L79
            java.lang.Object r2 = r5.a(r2, r3, r8)     // Catch: java.lang.Throwable -> L79
            goto L66
        L65:
            r2 = r4
        L66:
            if (r2 != r0) goto L69
            return r0
        L69:
            r0 = r9
            r9 = r2
            r2 = r1
        L6c:
            ads_mobile_sdk.km1 r9 = (ads_mobile_sdk.km1) r9     // Catch: java.lang.Throwable -> L17
            kotlin.io.CloseableKt.closeFinally(r1, r4)
            r0.f = r9
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L76:
            r0 = r1
            r1 = r2
            goto L7b
        L79:
            r9 = move-exception
            r0 = r1
        L7b:
            r1.b(r9)     // Catch: java.lang.Throwable -> L8e
            boolean r2 = r9 instanceof ads_mobile_sdk.v24     // Catch: java.lang.Throwable -> L8e
            if (r2 != 0) goto Lb3
            boolean r2 = r9 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L8e
            if (r2 != 0) goto L90
            boolean r2 = r9 instanceof java.util.concurrent.CancellationException     // Catch: java.lang.Throwable -> L8e
            if (r2 != 0) goto L90
            r1.a(r9)     // Catch: java.lang.Throwable -> L8e
            goto L90
        L8e:
            r9 = move-exception
            goto Lb4
        L90:
            boolean r1 = r9 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L8e
            if (r1 != 0) goto Lab
            boolean r1 = r9 instanceof java.util.concurrent.CancellationException     // Catch: java.lang.Throwable -> L8e
            if (r1 != 0) goto La3
            boolean r1 = r9 instanceof ads_mobile_sdk.w01     // Catch: java.lang.Throwable -> L8e
            if (r1 == 0) goto L9d
            throw r9     // Catch: java.lang.Throwable -> L8e
        L9d:
            ads_mobile_sdk.b01 r1 = new ads_mobile_sdk.b01     // Catch: java.lang.Throwable -> L8e
            r1.<init>(r9)     // Catch: java.lang.Throwable -> L8e
            throw r1     // Catch: java.lang.Throwable -> L8e
        La3:
            ads_mobile_sdk.wz0 r1 = new ads_mobile_sdk.wz0     // Catch: java.lang.Throwable -> L8e
            java.util.concurrent.CancellationException r9 = (java.util.concurrent.CancellationException) r9     // Catch: java.lang.Throwable -> L8e
            r1.<init>(r9)     // Catch: java.lang.Throwable -> L8e
            throw r1     // Catch: java.lang.Throwable -> L8e
        Lab:
            ads_mobile_sdk.i21 r1 = new ads_mobile_sdk.i21     // Catch: java.lang.Throwable -> L8e
            kotlinx.coroutines.TimeoutCancellationException r9 = (kotlinx.coroutines.TimeoutCancellationException) r9     // Catch: java.lang.Throwable -> L8e
            r1.<init>(r9)     // Catch: java.lang.Throwable -> L8e
            throw r1     // Catch: java.lang.Throwable -> L8e
        Lb3:
            throw r9     // Catch: java.lang.Throwable -> L8e
        Lb4:
            throw r9     // Catch: java.lang.Throwable -> Lb5
        Lb5:
            r1 = move-exception
            kotlin.io.CloseableKt.closeFinally(r0, r9)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.v02.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
