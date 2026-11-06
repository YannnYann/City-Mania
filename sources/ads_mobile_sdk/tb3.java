package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class tb3 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ ub3 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tb3(ub3 ub3Var, Continuation continuation) {
        super(2, continuation);
        this.b = ub3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new tb3(this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new tb3(this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0030 A[PHI: r6
      0x0030: PHI (r6v2 java.lang.Object) = (r6v7 java.lang.Object), (r6v0 java.lang.Object) binds: [B:15:0x002d, B:12:0x001c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0038 -> B:14:0x0023). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x003b -> B:14:0x0023). Please report as a decompilation issue!!! */
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
            if (r1 == 0) goto L20
            if (r1 == r3) goto L1c
            if (r1 != r2) goto L14
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L12
            goto L23
        L12:
            r6 = move-exception
            goto L3b
        L14:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1c:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L30
        L20:
            kotlin.ResultKt.throwOnFailure(r6)
        L23:
            ads_mobile_sdk.ub3 r6 = r5.b
            kotlinx.coroutines.channels.Channel r6 = r6.b
            r5.a = r3
            java.lang.Object r6 = r6.receive(r5)
            if (r6 != r0) goto L30
            goto L3a
        L30:
            kotlin.jvm.functions.Function1 r6 = (kotlin.jvm.functions.Function1) r6
            r5.a = r2     // Catch: java.lang.Throwable -> L12
            java.lang.Object r6 = r6.invoke(r5)     // Catch: java.lang.Throwable -> L12
            if (r6 != r0) goto L23
        L3a:
            return r0
        L3b:
            ads_mobile_sdk.ub3 r1 = r5.b
            ads_mobile_sdk.ur3 r1 = r1.a
            ads_mobile_sdk.as3 r1 = (ads_mobile_sdk.as3) r1
            java.lang.String r4 = "Exception caught executing serial event queue task"
            r1.a(r4, r6)
            goto L23
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.tb3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
