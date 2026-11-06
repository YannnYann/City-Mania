package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ek1 extends ei1 {
    public final AdLoadCallback a;
    public final Function2 b;

    public ek1(AdLoadCallback loadCallback, Function2 wrap) {
        Intrinsics.checkNotNullParameter(loadCallback, "loadCallback");
        Intrinsics.checkNotNullParameter(wrap, "wrap");
        this.a = loadCallback;
        this.b = wrap;
    }

    @Override // ads_mobile_sdk.ei1
    public final void a() {
    }

    @Override // ads_mobile_sdk.ei1
    public final void a(LoadAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.onAdFailedToLoad(error);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.ei1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.ck1 r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.dk1
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.dk1 r0 = (ads_mobile_sdk.dk1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.dk1 r0 = new ads_mobile_sdk.dk1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L48
        L2b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L33:
            kotlin.ResultKt.throwOnFailure(r7)
            com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback r7 = r5.a
            kotlin.jvm.functions.Function2 r2 = r5.b
            r0.a = r7
            r0.d = r3
            java.lang.Object r6 = r2.invoke(r6, r0)
            if (r6 != r1) goto L45
            return r1
        L45:
            r4 = r7
            r7 = r6
            r6 = r4
        L48:
            r6.onAdLoaded(r7)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ek1.a(ads_mobile_sdk.ck1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
