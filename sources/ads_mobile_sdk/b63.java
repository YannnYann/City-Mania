package ads_mobile_sdk;

import android.net.Uri;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class b63 extends SuspendLambda implements Function2 {
    public long a;
    public int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ ha2 d;
    public final /* synthetic */ long e;
    public final /* synthetic */ c63 f;
    public final /* synthetic */ Uri g;
    public final /* synthetic */ String h;
    public final /* synthetic */ Map i;
    public final /* synthetic */ v3 j;
    public final /* synthetic */ i2 k;
    public final /* synthetic */ Boolean l;
    public final /* synthetic */ ks3 m;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.c;
        ha2 ha2Var = this.d;
        long j = this.e;
        c63 c63Var = this.f;
        Uri uri = this.g;
        String str = this.h;
        Map map = this.i;
        v3 v3Var = this.j;
        return new b63(i, j, uri, this.k, v3Var, ha2Var, this.m, c63Var, this.l, str, map, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((b63) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x006e, code lost:
    
        if (r0.a(r3, r2, r7, r4, r6, r7, r8, r9, r10, r11, r15) == r13) goto L20;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r16) {
        /*
            r15 = this;
            java.lang.Object r13 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r15.b
            r1 = 2
            r2 = 1
            if (r0 == 0) goto L21
            if (r0 == r2) goto L1a
            if (r0 != r1) goto L12
            kotlin.ResultKt.throwOnFailure(r16)
            goto L71
        L12:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L1a:
            long r3 = r15.a
            kotlin.ResultKt.throwOnFailure(r16)
        L1f:
            r4 = r3
            goto L4a
        L21:
            kotlin.ResultKt.throwOnFailure(r16)
            int r0 = r15.c
            if (r0 != r2) goto L35
            kotlin.time.Duration$Companion r0 = kotlin.time.Duration.Companion
            ads_mobile_sdk.ha2 r0 = r15.d
            int r0 = r0.b
            kotlin.time.DurationUnit r3 = kotlin.time.DurationUnit.MILLISECONDS
            long r3 = kotlin.time.DurationKt.toDuration(r0, r3)
            goto L3f
        L35:
            long r3 = r15.e
            ads_mobile_sdk.ha2 r0 = r15.d
            double r5 = r0.d
            long r3 = kotlin.time.Duration.m2898timesUwyO8pc(r3, r5)
        L3f:
            r15.a = r3
            r15.b = r2
            java.lang.Object r0 = kotlinx.coroutines.DelayKt.m2937delayVtjQ1oo(r3, r15)
            if (r0 != r13) goto L1f
            goto L70
        L4a:
            ads_mobile_sdk.c63 r0 = r15.f
            android.net.Uri r3 = r15.g
            r6 = r2
            ads_mobile_sdk.ha2 r2 = r15.d
            int r7 = r15.c
            int r7 = r7 + r6
            java.lang.String r6 = r15.h
            r8 = r3
            r3 = r7
            java.util.Map r7 = r15.i
            r9 = r8
            ads_mobile_sdk.v3 r8 = r15.j
            r10 = r9
            ads_mobile_sdk.i2 r9 = r15.k
            r11 = r10
            java.lang.Boolean r10 = r15.l
            r14 = r11
            ads_mobile_sdk.ks3 r11 = r15.m
            r15.b = r1
            r12 = r15
            r1 = r14
            java.lang.Object r0 = r0.a(r1, r2, r3, r4, r6, r7, r8, r9, r10, r11, r12)
            if (r0 != r13) goto L71
        L70:
            return r13
        L71:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.b63.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b63(int i, long j, Uri uri, i2 i2Var, v3 v3Var, ha2 ha2Var, ks3 ks3Var, c63 c63Var, Boolean bool, String str, Map map, Continuation continuation) {
        super(2, continuation);
        this.c = i;
        this.d = ha2Var;
        this.e = j;
        this.f = c63Var;
        this.g = uri;
        this.h = str;
        this.i = map;
        this.j = v3Var;
        this.k = i2Var;
        this.l = bool;
        this.m = ks3Var;
    }
}
