package ads_mobile_sdk;

import com.google.android.gms.common.api.Api;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;

/* JADX INFO: loaded from: classes.dex */
public final class vw3 extends nc1 {
    public final CoroutineScope c;
    public final e01 d;
    public final Channel e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vw3(CoroutineScope backgroundScope, e01 httpClient) {
        super((s11) null, 3);
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.c = backgroundScope;
        this.d = httpClient;
        this.e = ChannelKt.Channel$default(Api.BaseClientBuilder.API_PRIORITY_OTHER, null, null, 6, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x007c, code lost:
    
        if (r10 != r1) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x007c -> B:29:0x007f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object v(kotlin.coroutines.Continuation r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof ads_mobile_sdk.tw3
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.tw3 r0 = (ads_mobile_sdk.tw3) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.tw3 r0 = new ads_mobile_sdk.tw3
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L3a
            if (r2 != r3) goto L32
            android.net.Uri r2 = r0.b
            ads_mobile_sdk.vw3 r5 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L30
            goto L7f
        L30:
            r10 = move-exception
            goto L92
        L32:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L3a:
            ads_mobile_sdk.vw3 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            r5 = r2
            goto L57
        L41:
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r9
        L45:
            kotlinx.coroutines.channels.Channel r2 = r10.e
            r0.a = r10
            r5 = 0
            r0.b = r5
            r0.e = r4
            java.lang.Object r2 = r2.receive(r0)
            if (r2 != r1) goto L55
            goto L7e
        L55:
            r5 = r10
            r10 = r2
        L57:
            kotlin.Pair r10 = (kotlin.Pair) r10
            java.lang.Object r2 = r10.component1()
            android.net.Uri r2 = (android.net.Uri) r2
            java.lang.Object r10 = r10.component2()
            java.util.Map r10 = (java.util.Map) r10
            ads_mobile_sdk.e01 r6 = r5.d     // Catch: java.lang.Exception -> L30
            java.net.URL r7 = new java.net.URL     // Catch: java.lang.Exception -> L30
            java.lang.String r8 = r2.toString()     // Catch: java.lang.Exception -> L30
            r7.<init>(r8)     // Catch: java.lang.Exception -> L30
            r0.a = r5     // Catch: java.lang.Exception -> L30
            r0.b = r2     // Catch: java.lang.Exception -> L30
            r0.e = r3     // Catch: java.lang.Exception -> L30
            r8 = 26
            java.lang.Object r10 = ads_mobile_sdk.e01.a(r6, r7, r10, r0, r8)     // Catch: java.lang.Exception -> L30
            if (r10 != r1) goto L7f
        L7e:
            return r1
        L7f:
            ads_mobile_sdk.v01 r10 = (ads_mobile_sdk.v01) r10     // Catch: java.lang.Exception -> L30
            boolean r6 = r10 instanceof ads_mobile_sdk.q01     // Catch: java.lang.Exception -> L30
            if (r6 == 0) goto L90
            ads_mobile_sdk.q01 r10 = (ads_mobile_sdk.q01) r10     // Catch: java.lang.Exception -> L30
            java.lang.Object r10 = r10.a()     // Catch: java.lang.Exception -> L30
            ads_mobile_sdk.h81 r10 = (ads_mobile_sdk.h81) r10     // Catch: java.lang.Exception -> L30
            r10.getClass()     // Catch: java.lang.Exception -> L30
        L90:
            r10 = r5
            goto L45
        L92:
            com.google.common.base.Splitter r6 = ads_mobile_sdk.f01.a
            java.lang.String r10 = r10.getMessage()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "Error while pinging URL: "
            r6.append(r7)
            r6.append(r2)
            java.lang.String r2 = ": "
            r6.append(r2)
            r6.append(r10)
            java.lang.String r10 = r6.toString()
            ads_mobile_sdk.f01.b(r10)
            goto L90
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.vw3.v(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        CoroutineScope coroutineScope = this.c;
        uw3 block = new uw3(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return new q01(Unit.INSTANCE);
    }
}
