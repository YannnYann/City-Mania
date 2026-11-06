package ads_mobile_sdk;

import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class t41 implements zr1 {
    public final Map a;

    public t41(Map handlers) {
        Intrinsics.checkNotNullParameter(handlers, "handlers");
        this.a = handlers;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.nr1 r9, kotlin.coroutines.Continuation r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof ads_mobile_sdk.s41
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.s41 r0 = (ads_mobile_sdk.s41) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.s41 r0 = new ads_mobile_sdk.s41
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.util.Iterator r9 = r0.b
            ads_mobile_sdk.nr1 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L44
        L2d:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L35:
            kotlin.ResultKt.throwOnFailure(r10)
            java.util.Map r10 = r8.a
            java.util.Set r10 = r10.entrySet()
            java.util.Iterator r10 = r10.iterator()
            r2 = r9
            r9 = r10
        L44:
            boolean r10 = r9.hasNext()
            if (r10 == 0) goto L90
            java.lang.Object r10 = r9.next()
            java.util.Map$Entry r10 = (java.util.Map.Entry) r10
            java.lang.Object r4 = r10.getKey()
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r10 = r10.getValue()
            ads_mobile_sdk.r41 r10 = (ads_mobile_sdk.r41) r10
            com.google.common.base.Splitter r5 = ads_mobile_sdk.f01.a
            java.lang.String r5 = r10.k()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "Installing gmsg handler for ["
            r6.append(r7)
            r6.append(r4)
            java.lang.String r7 = "] adKey: ["
            r6.append(r7)
            r6.append(r5)
            java.lang.String r5 = "]"
            r6.append(r5)
            java.lang.String r5 = r6.toString()
            ads_mobile_sdk.f01.b(r5)
            r0.a = r2
            r0.b = r9
            r0.e = r3
            java.lang.Object r10 = r2.a(r4, r10, r0)
            if (r10 != r1) goto L44
            return r1
        L90:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.t41.a(ads_mobile_sdk.nr1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.zr1
    public final /* bridge */ /* synthetic */ Object a(Object obj, or1 or1Var) {
        return a((nr1) obj, (Continuation) or1Var);
    }
}
