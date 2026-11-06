package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class nl1 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ cm1 b;
    public final /* synthetic */ OnAdapterInitializationCompleteListener c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nl1(cm1 cm1Var, OnAdapterInitializationCompleteListener onAdapterInitializationCompleteListener, Continuation continuation) {
        super(2, continuation);
        this.b = cm1Var;
        this.c = onAdapterInitializationCompleteListener;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new nl1(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new nl1(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004b, code lost:
    
        if (ads_mobile_sdk.hf.a(r1, r5, r3, r4) == r0) goto L19;
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
            goto L4e
        L12:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L1a:
            kotlin.ResultKt.throwOnFailure(r5)
            goto L2e
        L1e:
            kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.cm1 r5 = r4.b
            kotlinx.coroutines.CompletableJob r5 = r5.A
            r4.a = r3
            java.lang.Object r5 = r5.join(r4)
            if (r5 != r0) goto L2e
            goto L4d
        L2e:
            ads_mobile_sdk.cm1 r5 = r4.b
            ads_mobile_sdk.hf r1 = r5.i
            ads_mobile_sdk.ja1 r5 = r5.s
            com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig r5 = r5.a()
            if (r5 == 0) goto L3f
            com.google.android.libraries.ads.mobile.sdk.initialization.AdapterInitializationConfig r5 = r5.getAdapterInitializationConfig()
            goto L40
        L3f:
            r5 = 0
        L40:
            com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener r3 = r4.c
            r4.a = r2
            r1.getClass()
            java.lang.Object r5 = ads_mobile_sdk.hf.a(r1, r5, r3, r4)
            if (r5 != r0) goto L4e
        L4d:
            return r0
        L4e:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.nl1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
