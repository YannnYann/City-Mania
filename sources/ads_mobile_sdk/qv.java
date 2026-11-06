package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class qv extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ uv b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qv(uv uvVar, Continuation continuation) {
        super(2, continuation);
        this.b = uvVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new qv(this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new qv(this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x005d -> B:14:0x0060). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.a
            r2 = 1
            if (r1 == 0) goto L17
            if (r1 != r2) goto Lf
            kotlin.ResultKt.throwOnFailure(r7)
            goto L60
        Lf:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L17:
            kotlin.ResultKt.throwOnFailure(r7)
        L1a:
            ads_mobile_sdk.uv r7 = r6.b
            ads_mobile_sdk.ex0 r7 = r7.f
            r7.getClass()
            java.lang.String r1 = "gads:chrome_variations_refresh_enabled"
            java.lang.String r3 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r3)
            java.lang.Boolean r4 = java.lang.Boolean.TRUE
            ads_mobile_sdk.ir r5 = ads_mobile_sdk.yr.b
            java.lang.Object r7 = r7.a(r1, r4, r5)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L66
            ads_mobile_sdk.uv r7 = r6.b
            ads_mobile_sdk.ex0 r7 = r7.f
            r7.getClass()
            kotlin.time.Duration$Companion r1 = kotlin.time.Duration.Companion
            r1 = 30
            kotlin.time.DurationUnit r4 = kotlin.time.DurationUnit.MINUTES
            java.lang.String r5 = "gads:chrome_variations_refresh_interval_min"
            kotlin.time.Duration r1 = ads_mobile_sdk.wm2.a(r1, r4, r5, r3)
            ads_mobile_sdk.tr r3 = ads_mobile_sdk.yr.m
            java.lang.Object r7 = r7.a(r5, r1, r3)
            kotlin.time.Duration r7 = (kotlin.time.Duration) r7
            long r3 = r7.m2906unboximpl()
            r6.a = r2
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.m2937delayVtjQ1oo(r3, r6)
            if (r7 != r0) goto L60
            return r0
        L60:
            ads_mobile_sdk.uv r7 = r6.b
            ads_mobile_sdk.uv.a(r7)
            goto L1a
        L66:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.qv.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
