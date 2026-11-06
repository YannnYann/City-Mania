package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class i31 extends SuspendLambda implements Function2 {
    public r31 a;
    public int b;
    public final /* synthetic */ r31 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i31(r31 r31Var, Continuation continuation) {
        super(2, continuation);
        this.c = r31Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new i31(this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new i31(this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r10.b
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L22
            if (r1 == r3) goto L1d
            if (r1 != r2) goto L15
            ads_mobile_sdk.r31 r0 = r10.a
            kotlin.ResultKt.throwOnFailure(r11)
            r9 = r10
            goto L72
        L15:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L1d:
            kotlin.ResultKt.throwOnFailure(r11)
        L20:
            r9 = r10
            goto L58
        L22:
            kotlin.ResultKt.throwOnFailure(r11)
            ads_mobile_sdk.r31 r11 = r10.c
            ads_mobile_sdk.ir3 r1 = r11.v
            if (r1 == 0) goto L20
            ads_mobile_sdk.mb0 r4 = r11.d
            r10.b = r3
            r4.getClass()
            java.lang.String r6 = r1.a
            kotlin.time.Duration$Companion r11 = kotlin.time.Duration.Companion
            ads_mobile_sdk.tx r11 = r4.c
            r11.getClass()
            long r7 = android.os.SystemClock.elapsedRealtime()
            kotlin.time.DurationUnit r11 = kotlin.time.DurationUnit.MILLISECONDS
            long r7 = kotlin.time.DurationKt.toDuration(r7, r11)
            java.lang.String r5 = "awfllc"
            r9 = r10
            java.lang.Object r11 = r4.a(r5, r6, r7, r9)
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r11 != r1) goto L53
            goto L55
        L53:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
        L55:
            if (r11 != r0) goto L58
            goto L6f
        L58:
            ads_mobile_sdk.r31 r11 = r9.c
            ads_mobile_sdk.ir3 r1 = r11.w
            if (r1 != 0) goto L76
            ads_mobile_sdk.mb0 r1 = r11.d
            r9.a = r11
            r9.b = r2
            r1.getClass()
            java.lang.String r2 = "native:view_load"
            java.lang.Object r1 = ads_mobile_sdk.mb0.a(r1, r2, r10)
            if (r1 != r0) goto L70
        L6f:
            return r0
        L70:
            r0 = r11
            r11 = r1
        L72:
            r1 = r11
            ads_mobile_sdk.ir3 r1 = (ads_mobile_sdk.ir3) r1
            r11 = r0
        L76:
            r11.w = r1
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.i31.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
