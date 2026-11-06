package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class e14 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ r14 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e14(r14 r14Var, Continuation continuation) {
        super(2, continuation);
        this.b = r14Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new e14(this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new e14(this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0064, code lost:
    
        if (r6 == r0) goto L18;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r6)
            goto L67
        L12:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1a:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L2c
        L1e:
            kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.r14 r6 = r5.b
            r5.a = r3
            java.lang.Object r6 = ads_mobile_sdk.r14.c(r6, r5)
            if (r6 != r0) goto L2c
            goto L66
        L2c:
            ads_mobile_sdk.r14 r6 = r5.b
            r5.a = r2
            ads_mobile_sdk.ex0 r1 = r6.c
            r1.getClass()
            java.lang.String r2 = "https://pagead2.googlesyndication.com/omsdk/releases/live/omid_session_bin.js"
            java.lang.String r3 = "https://www.googletagservices.com/activeview/js/current/lidar.js?cache=r20110914"
            java.lang.String r4 = "https://pagead2.googlesyndication.com/omsdk/releases/live/omsdk-v1.js"
            java.lang.String[] r2 = new java.lang.String[]{r4, r2, r3}
            java.util.List r2 = kotlin.collections.CollectionsKt__CollectionsKt.listOf(r2)
            java.lang.String r3 = "key"
            java.lang.String r4 = "gads:webview_prefetch_resources_url_list"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r3)
            java.lang.String r3 = "defaultValue"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r3)
            ads_mobile_sdk.qr r3 = ads_mobile_sdk.yr.g
            java.lang.Object r1 = r1.a(r4, r2, r3)
            java.util.List r1 = (java.util.List) r1
            java.lang.Object r6 = ads_mobile_sdk.r14.a(r6, r1, r5)
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r6 != r1) goto L62
            goto L64
        L62:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
        L64:
            if (r6 != r0) goto L67
        L66:
            return r0
        L67:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.e14.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
