package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class po2 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ ro2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public po2(ro2 ro2Var, Continuation continuation) {
        super(2, continuation);
        this.b = ro2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new po2(this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new po2(this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0053, code lost:
    
        if (ads_mobile_sdk.ro2.a(r8, r7) == r0) goto L15;
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
            goto L56
        L12:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1a:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L4b
        L1e:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.ro2 r8 = r7.b
            ads_mobile_sdk.ex0 r8 = r8.c
            r8.getClass()
            kotlin.time.Duration$Companion r1 = kotlin.time.Duration.Companion
            kotlin.time.DurationUnit r1 = kotlin.time.DurationUnit.SECONDS
            java.lang.String r4 = "key"
            r5 = 180(0xb4, float:2.52E-43)
            java.lang.String r6 = "gads:play_prewarm_manager_connection_duration"
            kotlin.time.Duration r1 = ads_mobile_sdk.wm2.a(r5, r1, r6, r4)
            ads_mobile_sdk.ur r4 = ads_mobile_sdk.yr.l
            java.lang.Object r8 = r8.a(r6, r1, r4)
            kotlin.time.Duration r8 = (kotlin.time.Duration) r8
            long r4 = r8.m2906unboximpl()
            r7.a = r3
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.m2937delayVtjQ1oo(r4, r7)
            if (r8 != r0) goto L4b
            goto L55
        L4b:
            ads_mobile_sdk.ro2 r8 = r7.b
            r7.a = r2
            java.lang.Object r8 = ads_mobile_sdk.ro2.a(r8, r7)
            if (r8 != r0) goto L56
        L55:
            return r0
        L56:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.po2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
