package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class ed2 extends SuspendLambda implements Function1 {
    public int a;
    public final /* synthetic */ kd2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ed2(kd2 kd2Var, Continuation continuation) {
        super(1, continuation);
        this.b = kd2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new ed2(this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new ed2(this.b, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0040, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r1, r3, r5) == r0) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r6)
            goto L43
        L12:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1a:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L30
        L1e:
            kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.bu r6 = ads_mobile_sdk.au.a
            ads_mobile_sdk.bu r1 = ads_mobile_sdk.bu.d
            if (r6 == r1) goto L4a
            r5.a = r3
            java.lang.Object r6 = kotlinx.coroutines.YieldKt.yield(r5)
            if (r6 != r0) goto L30
            goto L42
        L30:
            ads_mobile_sdk.kd2 r6 = r5.b
            kotlin.coroutines.CoroutineContext r1 = r6.d
            ads_mobile_sdk.dd2 r3 = new ads_mobile_sdk.dd2
            r4 = 0
            r3.<init>(r6, r4)
            r5.a = r2
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r1, r3, r5)
            if (r6 != r0) goto L43
        L42:
            return r0
        L43:
            ads_mobile_sdk.kd2 r6 = r5.b
            kotlinx.coroutines.CompletableJob r6 = r6.i
            r6.complete()
        L4a:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ed2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
