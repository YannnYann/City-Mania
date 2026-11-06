package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class fm implements rh3 {
    public final g30 a;

    public fm(g30 consentManager) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.a = consentManager;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.APP_SET_ID;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.rh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object s(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof ads_mobile_sdk.em
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.em r0 = (ads_mobile_sdk.em) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.em r0 = new ads_mobile_sdk.em
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3f
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.g30 r5 = r4.a
            r0.c = r3
            java.lang.Object r5 = r5.E(r0)
            if (r5 != r1) goto L3f
            return r1
        L3f:
            ads_mobile_sdk.v01 r5 = (ads_mobile_sdk.v01) r5
            r0 = 0
            if (r5 == 0) goto L52
            boolean r1 = r5 instanceof ads_mobile_sdk.i01
            if (r1 == 0) goto L4b
            ads_mobile_sdk.i01 r5 = (ads_mobile_sdk.i01) r5
            return r5
        L4b:
            ads_mobile_sdk.q01 r5 = (ads_mobile_sdk.q01) r5
            java.lang.Object r5 = r5.b
            ads_mobile_sdk.fu r5 = (ads_mobile_sdk.fu) r5
            goto L53
        L52:
            r5 = r0
        L53:
            ads_mobile_sdk.q01 r1 = new ads_mobile_sdk.q01
            ads_mobile_sdk.dm r2 = new ads_mobile_sdk.dm
            if (r5 == 0) goto L5b
            com.google.android.gms.appset.AppSetIdInfo r0 = r5.a
        L5b:
            r2.<init>(r0)
            r1.<init>(r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.fm.s(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
