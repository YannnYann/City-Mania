package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class th1 extends fp2 {
    public final CoroutineScope c;
    public final CoroutineScope d;
    public final ex0 e;
    public final zd3 f;
    public final g83 g;
    public final eh1 h;

    public th1(CoroutineScope backgroundScope, CoroutineScope uiScope, ex0 flags, zd3 sharedSettingsDataStore, g83 rootTraceCreator, eh1 installReferrerClientProxy) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(sharedSettingsDataStore, "sharedSettingsDataStore");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(installReferrerClientProxy, "installReferrerClientProxy");
        this.c = backgroundScope;
        this.d = uiScope;
        this.e = flags;
        this.f = sharedSettingsDataStore;
        this.g = rootTraceCreator;
        this.h = installReferrerClientProxy;
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
            boolean r0 = r8 instanceof ads_mobile_sdk.qh1
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.qh1 r0 = (ads_mobile_sdk.qh1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.qh1 r0 = new ads_mobile_sdk.qh1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            ads_mobile_sdk.th1 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L63
        L2b:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L33:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.ex0 r8 = r7.e
            r8.getClass()
            java.lang.String r2 = "key"
            java.lang.String r4 = "gads:install_referrer_details:enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r2)
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            ads_mobile_sdk.ir r5 = ads_mobile_sdk.yr.b
            java.lang.Object r8 = r8.a(r4, r2, r5)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L7a
            ads_mobile_sdk.zd3 r8 = r7.f
            r0.a = r7
            r0.d = r3
            r8.getClass()
            java.lang.Object r8 = ads_mobile_sdk.zd3.c(r8, r0)
            if (r8 != r1) goto L62
            return r1
        L62:
            r0 = r7
        L63:
            ads_mobile_sdk.od3 r8 = (ads_mobile_sdk.od3) r8
            boolean r8 = r8.x()
            if (r8 != 0) goto L7a
            kotlinx.coroutines.CoroutineScope r1 = r0.d
            ads_mobile_sdk.sh1 r4 = new ads_mobile_sdk.sh1
            r8 = 0
            r4.<init>(r0, r8)
            r5 = 3
            r6 = 0
            r2 = 0
            r3 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r1, r2, r3, r4, r5, r6)
        L7a:
            ads_mobile_sdk.q01 r8 = new ads_mobile_sdk.q01
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            r8.<init>(r0)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.th1.u(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
