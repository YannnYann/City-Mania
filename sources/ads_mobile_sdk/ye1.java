package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ye1 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ if1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ye1(if1 if1Var, Continuation continuation) {
        super(2, continuation);
        this.b = if1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ye1(this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ye1(this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
    
        if (ads_mobile_sdk.if1.a(r1, r5, (com.google.gson.JsonObject) null, r4) == r0) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r5)
            goto L4c
        L12:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L1a:
            kotlin.ResultKt.throwOnFailure(r5)
            goto L2f
        L1e:
            kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.if1 r5 = r4.b
            r4.a = r3
            r5.getClass()
            java.lang.Object r5 = ads_mobile_sdk.if1.b(r5, r4)
            if (r5 != r0) goto L2f
            goto L4b
        L2f:
            ads_mobile_sdk.og1 r5 = (ads_mobile_sdk.og1) r5
            boolean r1 = r5.A()
            if (r1 == 0) goto L4c
            ads_mobile_sdk.if1 r1 = r4.b
            java.lang.String r5 = r5.v()
            r4.a = r2
            com.google.android.libraries.ads.mobile.sdk.common.AdInspectorError r2 = ads_mobile_sdk.if1.N
            r1.getClass()
            r2 = 0
            java.lang.Object r5 = ads_mobile_sdk.if1.a(r1, r5, r2, r4)
            if (r5 != r0) goto L4c
        L4b:
            return r0
        L4c:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ye1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
