package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class x02 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public s02 c;
    public int d;
    public final /* synthetic */ s02 e;
    public final /* synthetic */ g12 f;
    public final /* synthetic */ JsonObject g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x02(s02 s02Var, g12 g12Var, JsonObject jsonObject, Continuation continuation) {
        super(2, continuation);
        this.e = s02Var;
        this.f = g12Var;
        this.g = jsonObject;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new x02(this.e, this.f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((x02) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0061 A[Catch: all -> 0x006d, TryCatch #3 {all -> 0x006d, blocks: (B:23:0x005a, B:25:0x0061, B:27:0x0065, B:29:0x0069, B:32:0x006f, B:34:0x0073, B:36:0x0077, B:38:0x007b, B:39:0x007c, B:40:0x0081, B:41:0x0082, B:42:0x0089, B:43:0x008a, B:44:0x0091, B:45:0x0092), top: B:56:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0092 A[Catch: all -> 0x006d, TRY_LEAVE, TryCatch #3 {all -> 0x006d, blocks: (B:23:0x005a, B:25:0x0061, B:27:0x0065, B:29:0x0069, B:32:0x006f, B:34:0x0073, B:36:0x0077, B:38:0x007b, B:39:0x007c, B:40:0x0081, B:41:0x0082, B:42:0x0089, B:43:0x008a, B:44:0x0091, B:45:0x0092), top: B:56:0x005a }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.d
            r2 = 1
            if (r1 == 0) goto L1f
            if (r1 != r2) goto L17
            ads_mobile_sdk.s02 r0 = r6.c
            ads_mobile_sdk.rr3 r1 = r6.b
            ads_mobile_sdk.rr3 r2 = r6.a
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L15
            goto L4a
        L15:
            r7 = move-exception
            goto L55
        L17:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1f:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.s02 r7 = r6.e
            ads_mobile_sdk.s11 r1 = ads_mobile_sdk.s11.CUI_NAME_LOAD_NATIVE_ATTRIBUTION_INFO
            ads_mobile_sdk.g12 r3 = r6.f
            com.google.gson.JsonObject r4 = r6.g
            java.util.WeakHashMap r5 = ads_mobile_sdk.hs3.a
            java.util.List r5 = kotlin.collections.CollectionsKt__CollectionsKt.emptyList()
            ads_mobile_sdk.rr3 r1 = ads_mobile_sdk.hs3.a(r1, r5, r2)
            ads_mobile_sdk.v42 r3 = r3.c     // Catch: java.lang.Throwable -> L58
            java.lang.String r5 = "attribution"
            r6.a = r1     // Catch: java.lang.Throwable -> L58
            r6.b = r1     // Catch: java.lang.Throwable -> L58
            r6.c = r7     // Catch: java.lang.Throwable -> L58
            r6.d = r2     // Catch: java.lang.Throwable -> L58
            java.lang.Object r2 = r3.a(r4, r5, r6)     // Catch: java.lang.Throwable -> L58
            if (r2 != r0) goto L47
            return r0
        L47:
            r0 = r7
            r7 = r2
            r2 = r1
        L4a:
            ads_mobile_sdk.ak1 r7 = (ads_mobile_sdk.ak1) r7     // Catch: java.lang.Throwable -> L15
            r2 = 0
            kotlin.io.CloseableKt.closeFinally(r1, r2)
            r0.h = r7
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L55:
            r0 = r1
            r1 = r2
            goto L5a
        L58:
            r7 = move-exception
            r0 = r1
        L5a:
            r1.b(r7)     // Catch: java.lang.Throwable -> L6d
            boolean r2 = r7 instanceof ads_mobile_sdk.v24     // Catch: java.lang.Throwable -> L6d
            if (r2 != 0) goto L92
            boolean r2 = r7 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L6d
            if (r2 != 0) goto L6f
            boolean r2 = r7 instanceof java.util.concurrent.CancellationException     // Catch: java.lang.Throwable -> L6d
            if (r2 != 0) goto L6f
            r1.a(r7)     // Catch: java.lang.Throwable -> L6d
            goto L6f
        L6d:
            r7 = move-exception
            goto L93
        L6f:
            boolean r1 = r7 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L6d
            if (r1 != 0) goto L8a
            boolean r1 = r7 instanceof java.util.concurrent.CancellationException     // Catch: java.lang.Throwable -> L6d
            if (r1 != 0) goto L82
            boolean r1 = r7 instanceof ads_mobile_sdk.w01     // Catch: java.lang.Throwable -> L6d
            if (r1 == 0) goto L7c
            throw r7     // Catch: java.lang.Throwable -> L6d
        L7c:
            ads_mobile_sdk.b01 r1 = new ads_mobile_sdk.b01     // Catch: java.lang.Throwable -> L6d
            r1.<init>(r7)     // Catch: java.lang.Throwable -> L6d
            throw r1     // Catch: java.lang.Throwable -> L6d
        L82:
            ads_mobile_sdk.wz0 r1 = new ads_mobile_sdk.wz0     // Catch: java.lang.Throwable -> L6d
            java.util.concurrent.CancellationException r7 = (java.util.concurrent.CancellationException) r7     // Catch: java.lang.Throwable -> L6d
            r1.<init>(r7)     // Catch: java.lang.Throwable -> L6d
            throw r1     // Catch: java.lang.Throwable -> L6d
        L8a:
            ads_mobile_sdk.i21 r1 = new ads_mobile_sdk.i21     // Catch: java.lang.Throwable -> L6d
            kotlinx.coroutines.TimeoutCancellationException r7 = (kotlinx.coroutines.TimeoutCancellationException) r7     // Catch: java.lang.Throwable -> L6d
            r1.<init>(r7)     // Catch: java.lang.Throwable -> L6d
            throw r1     // Catch: java.lang.Throwable -> L6d
        L92:
            throw r7     // Catch: java.lang.Throwable -> L6d
        L93:
            throw r7     // Catch: java.lang.Throwable -> L94
        L94:
            r1 = move-exception
            kotlin.io.CloseableKt.closeFinally(r0, r7)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.x02.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
