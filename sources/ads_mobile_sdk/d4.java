package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d4 extends fp2 {
    public final a4 c;
    public final ex0 d;

    public d4(a4 adIdInfoSignalSource, ex0 flags) {
        Intrinsics.checkNotNullParameter(adIdInfoSignalSource, "adIdInfoSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.c = adIdInfoSignalSource;
        this.d = flags;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.nc1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object u(kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.c4
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.c4 r0 = (ads_mobile_sdk.c4) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.c4 r0 = new ads_mobile_sdk.c4
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r8)
            goto L76
        L29:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L31:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.ex0 r8 = r7.d
            r8.getClass()
            java.lang.String r2 = "gads:ad_id_init_enabled"
            java.lang.String r4 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r4)
            java.lang.Boolean r5 = java.lang.Boolean.TRUE
            ads_mobile_sdk.ir r6 = ads_mobile_sdk.yr.b
            java.lang.Object r8 = r8.a(r2, r5, r6)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L78
            ads_mobile_sdk.ex0 r8 = r7.d
            r8.getClass()
            java.lang.String r2 = "gads:ad_id_init_from_signal_source_enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r4)
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            java.lang.Object r8 = r8.a(r2, r4, r6)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L78
            ads_mobile_sdk.a4 r8 = r7.c
            r0.c = r3
            r8.getClass()
            java.lang.Object r8 = ads_mobile_sdk.ou.a(r8, r0)
            if (r8 != r1) goto L76
            return r1
        L76:
            ads_mobile_sdk.v01 r8 = (ads_mobile_sdk.v01) r8
        L78:
            ads_mobile_sdk.q01 r8 = new ads_mobile_sdk.q01
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            r8.<init>(r0)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.d4.u(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
