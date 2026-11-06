package ads_mobile_sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public interface ur3 {
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* synthetic */ java.lang.Object a(ads_mobile_sdk.ur3 r4, java.lang.String r5, ads_mobile_sdk.ed2 r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof ads_mobile_sdk.tr3
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.tr3 r0 = (ads_mobile_sdk.tr3) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.tr3 r0 = new ads_mobile_sdk.tr3
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.String r5 = r0.b
            ads_mobile_sdk.ur3 r4 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L2d
            return r7
        L2d:
            r6 = move-exception
            goto L48
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.a = r4     // Catch: java.lang.Exception -> L2d
            r0.b = r5     // Catch: java.lang.Exception -> L2d
            r0.e = r3     // Catch: java.lang.Exception -> L2d
            java.lang.Object r4 = r6.invoke(r0)     // Catch: java.lang.Exception -> L2d
            if (r4 != r1) goto L47
            return r1
        L47:
            return r4
        L48:
            ads_mobile_sdk.as3 r4 = (ads_mobile_sdk.as3) r4
            r4.a(r5, r6)
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ur3.a(ads_mobile_sdk.ur3, java.lang.String, ads_mobile_sdk.ed2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    default Object a(String label, Function0 block) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            return block.invoke();
        } catch (Exception e) {
            ((as3) this).a(label, (Throwable) e);
            return null;
        }
    }
}
