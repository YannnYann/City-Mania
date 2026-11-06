package ads_mobile_sdk;

import android.net.Uri;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class z53 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ c63 b;
    public final /* synthetic */ Uri c;
    public final /* synthetic */ v3 d;
    public final /* synthetic */ ks3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z53(c63 c63Var, Uri uri, v3 v3Var, ks3 ks3Var, Continuation continuation) {
        super(2, continuation);
        this.b = c63Var;
        this.c = uri;
        this.d = v3Var;
        this.e = ks3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new z53(this.b, this.c, this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((z53) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0064, code lost:
    
        if (r3.a(r4, r5, r6, r7, r8) == r0) goto L24;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L24
            if (r1 == r3) goto L20
            if (r1 != r2) goto L18
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L14
        L11:
            r8 = r9
            goto L91
        L14:
            r0 = move-exception
            r10 = r0
            r8 = r9
            goto L6d
        L18:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L20:
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L14
            goto L4c
        L24:
            kotlin.ResultKt.throwOnFailure(r10)
            ads_mobile_sdk.c63 r10 = r9.b     // Catch: java.lang.Exception -> L6a
            android.net.Uri r1 = r9.c     // Catch: java.lang.Exception -> L6a
            java.util.Map r10 = ads_mobile_sdk.c63.a(r10, r1)     // Catch: java.lang.Exception -> L6a
            ads_mobile_sdk.c63 r1 = r9.b     // Catch: java.lang.Exception -> L6a
            ads_mobile_sdk.e01 r1 = ads_mobile_sdk.c63.a(r1)     // Catch: java.lang.Exception -> L6a
            java.net.URL r4 = new java.net.URL     // Catch: java.lang.Exception -> L6a
            android.net.Uri r5 = r9.c     // Catch: java.lang.Exception -> L6a
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L6a
            r4.<init>(r5)     // Catch: java.lang.Exception -> L6a
            r9.a = r3     // Catch: java.lang.Exception -> L6a
            r3 = 26
            java.lang.Object r10 = ads_mobile_sdk.e01.a(r1, r4, r10, r9, r3)     // Catch: java.lang.Exception -> L6a
            if (r10 != r0) goto L4c
            r8 = r9
            goto L66
        L4c:
            ads_mobile_sdk.v01 r10 = (ads_mobile_sdk.v01) r10     // Catch: java.lang.Exception -> L6a
            boolean r1 = r10 instanceof ads_mobile_sdk.q01     // Catch: java.lang.Exception -> L6a
            if (r1 == 0) goto L11
            ads_mobile_sdk.c63 r3 = r9.b     // Catch: java.lang.Exception -> L6a
            android.net.Uri r4 = r9.c     // Catch: java.lang.Exception -> L6a
            r5 = r10
            ads_mobile_sdk.q01 r5 = (ads_mobile_sdk.q01) r5     // Catch: java.lang.Exception -> L6a
            ads_mobile_sdk.v3 r6 = r9.d     // Catch: java.lang.Exception -> L6a
            ads_mobile_sdk.ks3 r7 = r9.e     // Catch: java.lang.Exception -> L6a
            r9.a = r2     // Catch: java.lang.Exception -> L6a
            r8 = r9
            java.lang.Object r10 = ads_mobile_sdk.c63.a(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L67
            if (r10 != r0) goto L91
        L66:
            return r0
        L67:
            r0 = move-exception
        L68:
            r10 = r0
            goto L6d
        L6a:
            r0 = move-exception
            r8 = r9
            goto L68
        L6d:
            com.google.common.base.Splitter r0 = ads_mobile_sdk.f01.a
            android.net.Uri r0 = r8.c
            java.lang.String r10 = r10.getMessage()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Error while pinging URL: "
            r1.append(r2)
            r1.append(r0)
            java.lang.String r0 = ": "
            r1.append(r0)
            r1.append(r10)
            java.lang.String r10 = r1.toString()
            ads_mobile_sdk.f01.b(r10)
        L91:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.z53.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
