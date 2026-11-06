package ads_mobile_sdk;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes.dex */
public interface zw3 {
    static {
        Regex regex = xw3.a;
    }

    default Object a() {
        return null;
    }

    Object a(ContinuationImpl continuationImpl);

    Object b(ContinuationImpl continuationImpl);

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* synthetic */ java.lang.Object a(ads_mobile_sdk.zw3 r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof ads_mobile_sdk.yw3
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.yw3 r0 = (ads_mobile_sdk.yw3) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.yw3 r0 = new ads_mobile_sdk.yw3
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3d
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.c = r3
            java.lang.Object r5 = r4.a()
            if (r5 != r1) goto L3d
            return r1
        L3d:
            java.lang.String r5 = (java.lang.String) r5
            r4 = 0
            if (r5 != 0) goto L43
            return r4
        L43:
            kotlin.text.Regex r0 = ads_mobile_sdk.xw3.a
            r1 = 0
            r2 = 2
            kotlin.text.MatchResult r5 = kotlin.text.Regex.find$default(r0, r5, r1, r2, r4)
            if (r5 == 0) goto L61
            kotlin.text.MatchResult$Destructured r5 = r5.getDestructured()
            if (r5 == 0) goto L61
            kotlin.text.MatchResult r4 = r5.getMatch()
            java.util.List r4 = r4.getGroupValues()
            java.lang.Object r4 = r4.get(r3)
            java.lang.String r4 = (java.lang.String) r4
        L61:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.zw3.a(ads_mobile_sdk.zw3, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
