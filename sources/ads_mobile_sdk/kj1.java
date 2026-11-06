package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class kj1 extends bs implements hj1 {
    public final int e;
    public final bb2 f;
    public final ex0 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kj1(String requestId, int i, ks3 traceMetaSet, ej1 internalAdRequestEventEmitter, bb2 networkRequester, ex0 flags) {
        super(requestId, i, traceMetaSet, internalAdRequestEventEmitter);
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(internalAdRequestEventEmitter, "internalAdRequestEventEmitter");
        Intrinsics.checkNotNullParameter(networkRequester, "networkRequester");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.e = i;
        this.f = networkRequester;
        this.g = flags;
    }

    public final int a() {
        return this.e;
    }

    public final Object a(vk2 vk2Var) {
        return a(this, vk2Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a8, code lost:
    
        if (r9 == r1) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.kj1 r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof ads_mobile_sdk.ij1
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.ij1 r0 = (ads_mobile_sdk.ij1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.ij1 r0 = new ads_mobile_sdk.ij1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3e
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            goto Lab
        L2d:
            r8 = move-exception
            goto Lae
        L30:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L38:
            ads_mobile_sdk.kj1 r8 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L75
        L3e:
            kotlin.ResultKt.throwOnFailure(r9)
            r0.a = r8
            r0.d = r4
            r8.getClass()
            ads_mobile_sdk.rr3 r9 = ads_mobile_sdk.hs3.a()
            ads_mobile_sdk.ks3 r2 = r8.c
            java.lang.String r5 = "<set-?>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r5)
            r9.a = r2
            ads_mobile_sdk.ks3 r9 = r8.c
            ads_mobile_sdk.tn1 r9 = r9.b
            java.lang.String r2 = r8.a
            r9.a = r2
            int r2 = r8.b
            r9.c = r2
            ads_mobile_sdk.ej1 r9 = r8.d
            java.lang.Object r9 = r9.c(r0)
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r9 != r2) goto L70
            kotlin.Unit r9 = (kotlin.Unit) r9
            goto L72
        L70:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
        L72:
            if (r9 != r1) goto L75
            goto Laa
        L75:
            ads_mobile_sdk.ex0 r9 = r8.g     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            r9.getClass()     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            java.lang.String r2 = "gads:load_timeout:milliseconds"
            kotlin.time.Duration$Companion r5 = kotlin.time.Duration.Companion     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            kotlin.time.DurationUnit r5 = kotlin.time.DurationUnit.MINUTES     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            r6 = 5
            long r5 = kotlin.time.DurationKt.toDuration(r6, r5)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            java.lang.String r7 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r7)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            kotlin.time.Duration r5 = kotlin.time.Duration.m2870boximpl(r5)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            ads_mobile_sdk.sr r6 = ads_mobile_sdk.yr.j     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            java.lang.Object r9 = r9.a(r2, r5, r6)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            kotlin.time.Duration r9 = (kotlin.time.Duration) r9     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            long r5 = r9.m2906unboximpl()     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            ads_mobile_sdk.jj1 r9 = new ads_mobile_sdk.jj1     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            r2 = 0
            r9.<init>(r8, r2)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            r0.a = r2     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            r0.d = r3     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            java.lang.Object r9 = kotlinx.coroutines.TimeoutKt.m2940withTimeoutKLykuaI(r5, r9, r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            if (r9 != r1) goto Lab
        Laa:
            return r1
        Lab:
            ads_mobile_sdk.v01 r9 = (ads_mobile_sdk.v01) r9     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L2d
            return r9
        Lae:
            ads_mobile_sdk.r01 r9 = new ads_mobile_sdk.r01
            r9.<init>(r8, r4)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.kj1.a(ads_mobile_sdk.kj1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
