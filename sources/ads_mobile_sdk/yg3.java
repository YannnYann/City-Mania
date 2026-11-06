package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class yg3 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ eh3 b;
    public final /* synthetic */ SignalGenerationCallback c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yg3(eh3 eh3Var, SignalGenerationCallback signalGenerationCallback, Continuation continuation) {
        super(2, continuation);
        this.b = eh3Var;
        this.c = signalGenerationCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new yg3(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new yg3(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004b, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r1, r2, r6) == r0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r1, r3, r6) == r0) goto L24;
     */
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
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L22
            if (r1 == r4) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            goto L1a
        L12:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1a:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L66
        L1e:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L33
        L22:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.eh3 r7 = r6.b
            r6.a = r4
            r7.getClass()
            java.lang.Object r7 = ads_mobile_sdk.eh3.a(r7, r6)
            if (r7 != r0) goto L33
            goto L65
        L33:
            ads_mobile_sdk.v01 r7 = (ads_mobile_sdk.v01) r7
            boolean r1 = r7 instanceof ads_mobile_sdk.q01
            r4 = 0
            if (r1 == 0) goto L4e
            ads_mobile_sdk.eh3 r1 = r6.b
            kotlin.coroutines.CoroutineContext r1 = r1.b
            ads_mobile_sdk.vg3 r2 = new ads_mobile_sdk.vg3
            com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback r5 = r6.c
            r2.<init>(r7, r5, r4)
            r6.a = r3
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r1, r2, r6)
            if (r7 != r0) goto L66
            goto L65
        L4e:
            boolean r1 = r7 instanceof ads_mobile_sdk.i01
            if (r1 == 0) goto L66
            ads_mobile_sdk.eh3 r1 = r6.b
            kotlin.coroutines.CoroutineContext r1 = r1.b
            ads_mobile_sdk.xg3 r3 = new ads_mobile_sdk.xg3
            com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback r5 = r6.c
            r3.<init>(r7, r5, r4)
            r6.a = r2
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r1, r3, r6)
            if (r7 != r0) goto L66
        L65:
            return r0
        L66:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.yg3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
