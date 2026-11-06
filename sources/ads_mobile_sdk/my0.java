package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class my0 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ yy0 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public my0(yy0 yy0Var, Continuation continuation) {
        super(2, continuation);
        this.b = yy0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new my0(this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new my0(this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0078, code lost:
    
        if (r9.c(r8) != r0) goto L25;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.a
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L25
            if (r1 == r4) goto L21
            if (r1 == r3) goto L1d
            if (r1 != r2) goto L15
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7b
        L15:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1d:
            kotlin.ResultKt.throwOnFailure(r9)
            goto L70
        L21:
            kotlin.ResultKt.throwOnFailure(r9)
            goto L52
        L25:
            kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.yy0 r9 = r8.b
            ads_mobile_sdk.ex0 r9 = r9.e
            r9.getClass()
            kotlin.time.Duration$Companion r1 = kotlin.time.Duration.Companion
            kotlin.time.DurationUnit r1 = kotlin.time.DurationUnit.MILLISECONDS
            java.lang.String r5 = "key"
            r6 = 3000(0xbb8, float:4.204E-42)
            java.lang.String r7 = "gads:timeout_for_show_call_succeed:ms"
            kotlin.time.Duration r1 = ads_mobile_sdk.wm2.a(r6, r1, r7, r5)
            ads_mobile_sdk.sr r5 = ads_mobile_sdk.yr.j
            java.lang.Object r9 = r9.a(r7, r1, r5)
            kotlin.time.Duration r9 = (kotlin.time.Duration) r9
            long r5 = r9.m2906unboximpl()
            r8.a = r4
            java.lang.Object r9 = kotlinx.coroutines.DelayKt.m2937delayVtjQ1oo(r5, r8)
            if (r9 != r0) goto L52
            goto L7a
        L52:
            ads_mobile_sdk.yy0 r9 = r8.b
            java.util.concurrent.atomic.AtomicBoolean r9 = r9.m
            boolean r9 = r9.get()
            if (r9 == 0) goto L5f
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L5f:
            java.lang.String r9 = "Full screen Activity took too long to start."
            r1 = 0
            ads_mobile_sdk.f01.c(r9, r1)
            ads_mobile_sdk.yy0 r9 = r8.b
            r8.a = r3
            java.lang.Object r9 = r9.e(r8)
            if (r9 != r0) goto L70
            goto L7a
        L70:
            ads_mobile_sdk.yy0 r9 = r8.b
            r8.a = r2
            java.lang.Object r9 = r9.c(r8)
            if (r9 != r0) goto L7b
        L7a:
            return r0
        L7b:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.my0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
