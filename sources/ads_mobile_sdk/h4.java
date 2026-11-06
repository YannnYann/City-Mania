package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h4 extends pl3 {
    public final g30 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h4(g30 consentManager) {
        super(s11.CUI_NAME_SDKINIT_INIT_AD_ID_PERMISSION);
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.d = consentManager;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.AD_ID_PERMISSION;
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
            boolean r0 = r5 instanceof ads_mobile_sdk.g4
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.g4 r0 = (ads_mobile_sdk.g4) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.g4 r0 = new ads_mobile_sdk.g4
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L4c
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.g30 r5 = r4.d
            r0.c = r3
            r5.getClass()
            ads_mobile_sdk.m21 r0 = ads_mobile_sdk.o21.f
            android.content.Context r5 = r5.c
            java.lang.String r0 = "com.google.android.gms.permission.AD_ID"
            boolean r5 = ads_mobile_sdk.m21.a(r5, r0)
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            if (r5 != r1) goto L4c
            return r1
        L4c:
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            ads_mobile_sdk.f4 r0 = new ads_mobile_sdk.f4
            r0.<init>(r5)
            ads_mobile_sdk.q01 r5 = new ads_mobile_sdk.q01
            r5.<init>(r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.h4.s(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
