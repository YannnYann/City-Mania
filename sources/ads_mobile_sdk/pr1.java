package ads_mobile_sdk;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class pr1 {
    public final Map a;

    public pr1(Map modifiers) {
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        this.a = modifiers;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.nr1 r8, kotlin.coroutines.Continuation r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.or1
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.or1 r0 = (ads_mobile_sdk.or1) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.or1 r0 = new ads_mobile_sdk.or1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.util.Iterator r8 = r0.b
            java.lang.Object r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L44
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L35:
            kotlin.ResultKt.throwOnFailure(r9)
            java.util.Map r9 = r7.a
            java.util.Set r9 = r9.entrySet()
            java.util.Iterator r9 = r9.iterator()
            r2 = r8
            r8 = r9
        L44:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto L84
            java.lang.Object r9 = r8.next()
            java.util.Map$Entry r9 = (java.util.Map.Entry) r9
            java.lang.Object r4 = r9.getKey()
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r9 = r9.getValue()
            ads_mobile_sdk.zr1 r9 = (ads_mobile_sdk.zr1) r9
            com.google.common.base.Splitter r5 = ads_mobile_sdk.f01.a
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Configuring JsContext with modifier ["
            r5.append(r6)
            r5.append(r4)
            java.lang.String r4 = "]"
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            ads_mobile_sdk.f01.b(r4)
            r0.a = r2
            r0.b = r8
            r0.e = r3
            java.lang.Object r9 = r9.a(r2, r0)
            if (r9 != r1) goto L44
            return r1
        L84:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pr1.a(ads_mobile_sdk.nr1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
