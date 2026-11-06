package ads_mobile_sdk;

import com.ironsource.C3522b4;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class n8 extends fp2 {
    public final ex0 c;
    public final e01 d;
    public final CoroutineScope e;

    public n8(ex0 flags, e01 httpClient, CoroutineScope backgroundScope) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        this.c = flags;
        this.d = httpClient;
        this.e = backgroundScope;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.n8 r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof ads_mobile_sdk.m8
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.m8 r0 = (ads_mobile_sdk.m8) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.m8 r0 = new ads_mobile_sdk.m8
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            java.lang.String r4 = "key"
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            ads_mobile_sdk.n8 r9 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L93
        L2d:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L35:
            kotlin.ResultKt.throwOnFailure(r10)
            ads_mobile_sdk.ex0 r10 = r9.c
            r10.getClass()
            java.lang.String r2 = "gads:ad_request_http_client_enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r4)
            java.lang.Boolean r5 = java.lang.Boolean.TRUE
            ads_mobile_sdk.ir r6 = ads_mobile_sdk.yr.b
            java.lang.Object r10 = r10.a(r2, r5, r6)
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L93
            ads_mobile_sdk.e01 r10 = r9.d
            ads_mobile_sdk.ex0 r2 = r9.c
            java.lang.String r5 = "gads:ad_request_http_client_max_idle_connections"
            r6 = 5
            java.lang.Integer r7 = ads_mobile_sdk.by0.a(r2, r5, r4, r6)
            ads_mobile_sdk.nr r8 = ads_mobile_sdk.yr.f
            java.lang.Object r2 = r2.a(r5, r7, r8)
            java.lang.Number r2 = (java.lang.Number) r2
            int r2 = r2.intValue()
            ads_mobile_sdk.ex0 r5 = r9.c
            r5.getClass()
            kotlin.time.Duration$Companion r7 = kotlin.time.Duration.Companion
            kotlin.time.DurationUnit r7 = kotlin.time.DurationUnit.MINUTES
            java.lang.String r8 = "gads:ad_request_http_client_connection_pool_keep_alive_minutes"
            kotlin.time.Duration r6 = ads_mobile_sdk.wm2.a(r6, r7, r8, r4)
            ads_mobile_sdk.tr r7 = ads_mobile_sdk.yr.m
            java.lang.Object r5 = r5.a(r8, r6, r7)
            kotlin.time.Duration r5 = (kotlin.time.Duration) r5
            long r5 = r5.m2906unboximpl()
            long r5 = kotlin.time.Duration.m2882getInWholeMinutesimpl(r5)
            r0.a = r9
            r0.d = r3
            java.lang.Object r10 = r10.a(r2, r5, r0)
            if (r10 != r1) goto L93
            return r1
        L93:
            ads_mobile_sdk.ex0 r10 = r9.c
            r10.getClass()
            java.lang.String r0 = "gads:preconnect_initialization_task_enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r4)
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            ads_mobile_sdk.ir r2 = ads_mobile_sdk.yr.b
            java.lang.Object r10 = r10.a(r0, r1, r2)
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto Lb0
            r9.g()
        Lb0:
            ads_mobile_sdk.q01 r9 = new ads_mobile_sdk.q01
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            r9.<init>(r10)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.n8.a(ads_mobile_sdk.n8, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        return a(this, continuation);
    }

    public final void g() {
        ex0 ex0Var = this.c;
        ex0Var.getClass();
        List defaultValue = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"https://googleads.g.doubleclick.net", "https://pubads.g.doubleclick.net"});
        Intrinsics.checkNotNullParameter("gads:preconnect_urls", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        Iterator it = ((List) ex0Var.a("gads:preconnect_urls", defaultValue, yr.g)).iterator();
        while (it.hasNext()) {
            BuildersKt__Builders_commonKt.launch$default(this.e, null, null, new l8(this, (String) it.next(), null), 3, null);
        }
    }
}
