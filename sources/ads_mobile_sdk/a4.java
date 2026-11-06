package ads_mobile_sdk;

import com.ironsource.C3522b4;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class a4 extends ou {
    public final g30 l;

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.a4 r11, kotlin.coroutines.Continuation r12) {
        /*
            boolean r0 = r12 instanceof ads_mobile_sdk.y3
            if (r0 == 0) goto L13
            r0 = r12
            ads_mobile_sdk.y3 r0 = (ads_mobile_sdk.y3) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.y3 r0 = new ads_mobile_sdk.y3
            r0.<init>(r11, r12)
        L18:
            java.lang.Object r12 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r12)
            goto L62
        L2a:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L32:
            kotlin.ResultKt.throwOnFailure(r12)
            kotlinx.coroutines.CoroutineScope r5 = r11.d
            ads_mobile_sdk.z3 r12 = new ads_mobile_sdk.z3
            r12.<init>(r11, r4)
            kotlin.coroutines.EmptyCoroutineContext r6 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            java.lang.String r11 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r11)
            java.lang.String r11 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r11)
            java.lang.String r11 = "block"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r11)
            ads_mobile_sdk.vs3 r8 = new ads_mobile_sdk.vs3
            r8.<init>(r12, r4)
            r9 = 2
            r10 = 0
            r7 = 0
            kotlinx.coroutines.Deferred r11 = kotlinx.coroutines.BuildersKt.async$default(r5, r6, r7, r8, r9, r10)
            r0.c = r3
            java.lang.Object r12 = r11.await(r0)
            if (r12 != r1) goto L62
            return r1
        L62:
            ads_mobile_sdk.v01 r12 = (ads_mobile_sdk.v01) r12
            if (r12 == 0) goto L74
            boolean r11 = r12 instanceof ads_mobile_sdk.i01
            if (r11 == 0) goto L6d
            ads_mobile_sdk.i01 r12 = (ads_mobile_sdk.i01) r12
            return r12
        L6d:
            ads_mobile_sdk.q01 r12 = (ads_mobile_sdk.q01) r12
            java.lang.Object r11 = r12.b
            r4 = r11
            com.google.android.gms.ads.identifier.AdvertisingIdClient$Info r4 = (com.google.android.gms.ads.identifier.AdvertisingIdClient.Info) r4
        L74:
            ads_mobile_sdk.q01 r11 = new ads_mobile_sdk.q01
            ads_mobile_sdk.x3 r12 = new ads_mobile_sdk.x3
            r12.<init>(r4)
            r11.<init>(r12)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.a4.a(ads_mobile_sdk.a4, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.AD_ID_INFO;
    }

    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        return a(this, continuation);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a4(g30 consentManager, ex0 flags, f0 activityTracker, g83 rootTraceCreator, tx clock, CoroutineScope backgroundScope) {
        super(clock, backgroundScope, rootTraceCreator, flags, activityTracker);
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        this.l = consentManager;
    }

    @Override // ads_mobile_sdk.ou, ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        ex0 ex0Var = this.f;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:ad_id_init_from_signal_source_enabled", C3522b4.i.W);
        return ((Boolean) ex0Var.a("gads:ad_id_init_from_signal_source_enabled", Boolean.FALSE, yr.b)).booleanValue() ? ou.c(this, continuation) : new q01(Unit.INSTANCE);
    }
}
