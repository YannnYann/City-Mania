package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class iq1 extends SuspendLambda implements Function2 {
    public uw0 a;
    public fl1 b;
    public int c;
    public final /* synthetic */ yq1 d;
    public final /* synthetic */ fl1 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iq1(yq1 yq1Var, fl1 fl1Var, Continuation continuation) {
        super(2, continuation);
        this.d = yq1Var;
        this.e = fl1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new iq1(this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new iq1(this.d, this.e, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ac, code lost:
    
        if (ads_mobile_sdk.uw0.a(r2, r1, (com.google.gson.JsonObject) r12, r11) != r0) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009b  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.c
            java.lang.String r2 = "consentStringsProvider"
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r1 == 0) goto L35
            if (r1 == r6) goto L31
            if (r1 == r5) goto L2d
            if (r1 == r4) goto L24
            if (r1 != r3) goto L1c
            kotlin.ResultKt.throwOnFailure(r12)
            goto Laf
        L1c:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L24:
            ads_mobile_sdk.fl1 r1 = r11.b
            ads_mobile_sdk.uw0 r2 = r11.a
            kotlin.ResultKt.throwOnFailure(r12)
            goto L9d
        L2d:
            kotlin.ResultKt.throwOnFailure(r12)
            goto L7b
        L31:
            kotlin.ResultKt.throwOnFailure(r12)
            goto L64
        L35:
            kotlin.ResultKt.throwOnFailure(r12)
            ads_mobile_sdk.yq1 r12 = r11.d
            ads_mobile_sdk.ex0 r12 = r12.f
            ads_mobile_sdk.eb3 r12 = r12.s
            r12.getClass()
            kotlin.time.Duration$Companion r1 = kotlin.time.Duration.Companion
            kotlin.time.DurationUnit r1 = kotlin.time.DurationUnit.SECONDS
            java.lang.String r8 = "key"
            r9 = 60
            java.lang.String r10 = "gads:flag_update_delay_sec"
            kotlin.time.Duration r1 = ads_mobile_sdk.wm2.a(r9, r1, r10, r8)
            ads_mobile_sdk.ur r8 = ads_mobile_sdk.yr.l
            java.lang.Object r12 = r12.a(r10, r1, r8)
            kotlin.time.Duration r12 = (kotlin.time.Duration) r12
            long r8 = r12.m2906unboximpl()
            r11.c = r6
            java.lang.Object r12 = kotlinx.coroutines.DelayKt.m2937delayVtjQ1oo(r8, r11)
            if (r12 != r0) goto L64
            goto Lae
        L64:
            ads_mobile_sdk.yq1 r12 = r11.d
            ads_mobile_sdk.n30 r12 = r12.p
            if (r12 != 0) goto L6e
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            r12 = r7
        L6e:
            ads_mobile_sdk.g30 r12 = (ads_mobile_sdk.g30) r12
            kotlinx.coroutines.CompletableJob r12 = r12.C
            r11.c = r5
            java.lang.Object r12 = r12.join(r11)
            if (r12 != r0) goto L7b
            goto Lae
        L7b:
            ads_mobile_sdk.yq1 r12 = r11.d
            ads_mobile_sdk.uw0 r1 = r12.i
            ads_mobile_sdk.fl1 r5 = r11.e
            ads_mobile_sdk.n30 r12 = r12.p
            if (r12 != 0) goto L89
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            r12 = r7
        L89:
            r11.a = r1
            r11.b = r5
            r11.c = r4
            ads_mobile_sdk.g30 r12 = (ads_mobile_sdk.g30) r12
            r12.getClass()
            java.lang.Object r12 = ads_mobile_sdk.g30.e(r12, r11)
            if (r12 != r0) goto L9b
            goto Lae
        L9b:
            r2 = r1
            r1 = r5
        L9d:
            com.google.gson.JsonObject r12 = (com.google.gson.JsonObject) r12
            r11.a = r7
            r11.b = r7
            r11.c = r3
            r2.getClass()
            java.lang.Object r12 = ads_mobile_sdk.uw0.a(r2, r1, r12, r11)
            if (r12 != r0) goto Laf
        Lae:
            return r0
        Laf:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.iq1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
