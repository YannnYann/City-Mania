package ads_mobile_sdk;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class k {
    public final Map a;

    public k(Map actionHandlers) {
        Intrinsics.checkNotNullParameter(actionHandlers, "actionHandlers");
        this.a = actionHandlers;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.ac3 r7, kotlin.coroutines.Continuation r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.j
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.j r0 = (ads_mobile_sdk.j) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.j r0 = new ads_mobile_sdk.j
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.util.Iterator r7 = r0.b
            ads_mobile_sdk.k r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L3f
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            kotlin.ResultKt.throwOnFailure(r8)
            java.util.List r7 = r7.c
            java.util.Iterator r7 = r7.iterator()
            r2 = r6
        L3f:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto L68
            java.lang.Object r8 = r7.next()
            ads_mobile_sdk.yb3 r8 = (ads_mobile_sdk.yb3) r8
            com.google.gson.JsonObject r4 = r8.b
            if (r4 == 0) goto L3f
            java.util.Map r5 = r2.a
            java.lang.String r8 = r8.a
            java.lang.Object r8 = r5.get(r8)
            ads_mobile_sdk.m r8 = (ads_mobile_sdk.m) r8
            if (r8 == 0) goto L3f
            r0.a = r2
            r0.b = r7
            r0.e = r3
            java.lang.Object r8 = r8.a(r4, r0)
            if (r8 != r1) goto L3f
            return r1
        L68:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.k.a(ads_mobile_sdk.ac3, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
