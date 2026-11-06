package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class d33 extends SuspendLambda implements Function1 {
    public int a;
    public final /* synthetic */ Function1 b;
    public final /* synthetic */ e33 c;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new d33(this.c, continuation, this.b);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Function1 function1 = this.b;
        return new d33(this.c, (Continuation) obj, function1).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
    
        if (ads_mobile_sdk.e33.a(r3, r8, r7) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r8)
            goto L47
        L12:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1a:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L2c
        L1e:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.jvm.functions.Function1 r8 = r7.b
            r7.a = r3
            java.lang.Object r8 = r8.invoke(r7)
            if (r8 != r0) goto L2c
            goto L46
        L2c:
            kotlin.time.Duration r8 = (kotlin.time.Duration) r8
            long r3 = r8.m2906unboximpl()
            ads_mobile_sdk.e33 r8 = r7.c
            long r5 = r8.g()
            ads_mobile_sdk.e33 r8 = r7.c
            long r3 = kotlin.time.Duration.m2896minusLRDsOJo(r3, r5)
            r7.a = r2
            java.lang.Object r8 = ads_mobile_sdk.e33.a(r3, r8, r7)
            if (r8 != r0) goto L47
        L46:
            return r0
        L47:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.d33.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d33(e33 e33Var, Continuation continuation, Function1 function1) {
        super(1, continuation);
        this.b = function1;
        this.c = e33Var;
    }
}
