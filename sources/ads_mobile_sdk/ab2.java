package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class ab2 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ ac3 b;
    public final /* synthetic */ bb2 c;
    public final /* synthetic */ boolean d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ab2(ac3 ac3Var, bb2 bb2Var, boolean z, Continuation continuation) {
        super(2, continuation);
        this.b = ac3Var;
        this.c = bb2Var;
        this.d = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ab2(this.b, this.c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ab2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0088, code lost:
    
        if (ads_mobile_sdk.b53.d(r1, r9, r2, r8) == r0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a6, code lost:
    
        if (ads_mobile_sdk.b53.c(r1, r9, r3, r8) == r0) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008b  */
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
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L2a
            if (r1 == r5) goto L26
            if (r1 == r4) goto L22
            if (r1 == r3) goto L1d
            if (r1 != r2) goto L15
            goto L1d
        L15:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1d:
            kotlin.ResultKt.throwOnFailure(r9)
            goto La9
        L22:
            kotlin.ResultKt.throwOnFailure(r9)
            goto L67
        L26:
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4d
        L2a:
            kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.ac3 r9 = r8.b
            ads_mobile_sdk.zy r9 = r9.b
            com.google.gson.JsonObject r9 = r9.t
            if (r9 == 0) goto L4d
            ads_mobile_sdk.bb2 r1 = r8.c
            ads_mobile_sdk.b53 r6 = r1.j
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r7 = r1.d
            java.lang.String r7 = r7.getAdUnitId()
            ads_mobile_sdk.j53 r1 = r1.e
            r8.a = r5
            r6.getClass()
            java.lang.Object r9 = ads_mobile_sdk.b53.a(r6, r9, r7, r1, r8)
            if (r9 != r0) goto L4d
            goto La8
        L4d:
            ads_mobile_sdk.bb2 r9 = r8.c
            ads_mobile_sdk.b53 r1 = r9.j
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r9 = r9.d
            java.lang.String r9 = r9.getAdUnitId()
            ads_mobile_sdk.bb2 r5 = r8.c
            ads_mobile_sdk.j53 r5 = r5.e
            r8.a = r4
            r1.getClass()
            java.lang.Object r9 = ads_mobile_sdk.b53.a(r1, r9, r5, r8)
            if (r9 != r0) goto L67
            goto La8
        L67:
            ads_mobile_sdk.zr0 r9 = (ads_mobile_sdk.zr0) r9
            boolean r1 = r8.d
            if (r1 != 0) goto L8b
            ads_mobile_sdk.zr0 r1 = ads_mobile_sdk.zr0.c
            if (r9 == r1) goto La9
            ads_mobile_sdk.bb2 r9 = r8.c
            ads_mobile_sdk.b53 r1 = r9.j
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r9 = r9.d
            java.lang.String r9 = r9.getAdUnitId()
            ads_mobile_sdk.bb2 r2 = r8.c
            ads_mobile_sdk.j53 r2 = r2.e
            r8.a = r3
            r1.getClass()
            java.lang.Object r9 = ads_mobile_sdk.b53.d(r1, r9, r2, r8)
            if (r9 != r0) goto La9
            goto La8
        L8b:
            ads_mobile_sdk.zr0 r1 = ads_mobile_sdk.zr0.d
            if (r9 != r1) goto La9
            ads_mobile_sdk.bb2 r9 = r8.c
            ads_mobile_sdk.b53 r1 = r9.j
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r9 = r9.d
            java.lang.String r9 = r9.getAdUnitId()
            ads_mobile_sdk.bb2 r3 = r8.c
            ads_mobile_sdk.j53 r3 = r3.e
            r8.a = r2
            r1.getClass()
            java.lang.Object r9 = ads_mobile_sdk.b53.c(r1, r9, r3, r8)
            if (r9 != r0) goto La9
        La8:
            return r0
        La9:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ab2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
