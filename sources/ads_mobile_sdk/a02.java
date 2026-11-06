package ads_mobile_sdk;

import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes.dex */
public final class a02 implements FlowCollector {
    public final /* synthetic */ FlowCollector a;
    public final /* synthetic */ e02 b;

    public a02(FlowCollector flowCollector, e02 e02Var) {
        this.a = flowCollector;
        this.b = e02Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object emit(java.lang.Object r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.zz1
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.zz1 r0 = (ads_mobile_sdk.zz1) r0
            int r1 = r0.b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.b = r1
            goto L18
        L13:
            ads_mobile_sdk.zz1 r0 = new ads_mobile_sdk.zz1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.b
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L5c
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.flow.FlowCollector r7 = r5.a
            ads_mobile_sdk.v01 r6 = (ads_mobile_sdk.v01) r6
            boolean r2 = r6 instanceof ads_mobile_sdk.q01
            if (r2 == 0) goto L4f
            ads_mobile_sdk.q01 r2 = new ads_mobile_sdk.q01
            ads_mobile_sdk.e02 r4 = r5.b
            kotlin.jvm.functions.Function1 r4 = r4.c
            ads_mobile_sdk.q01 r6 = (ads_mobile_sdk.q01) r6
            java.lang.Object r6 = r6.b
            java.lang.Object r6 = r4.invoke(r6)
            r2.<init>(r6)
            r6 = r2
            goto L53
        L4f:
            boolean r2 = r6 instanceof ads_mobile_sdk.i01
            if (r2 == 0) goto L5f
        L53:
            r0.b = r3
            java.lang.Object r6 = r7.emit(r6, r0)
            if (r6 != r1) goto L5c
            return r1
        L5c:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L5f:
            kotlin.NoWhenBranchMatchedException r6 = new kotlin.NoWhenBranchMatchedException
            r6.<init>()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.a02.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
