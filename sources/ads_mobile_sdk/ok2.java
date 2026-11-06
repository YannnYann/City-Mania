package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ok2 implements li1, gj1 {
    public final al2 a;
    public final im2 b;
    public final BaseRequest c;
    public final j53 d;
    public final int e;
    public final ur3 f;
    public final cl2 g;
    public om2 h;

    public ok2(al2 persistentCacheFillManager, im2 persistentCacheManager, BaseRequest baseRequest, j53 requestType, int i, ur3 traceLogger, cl2 flags) {
        Intrinsics.checkNotNullParameter(persistentCacheFillManager, "persistentCacheFillManager");
        Intrinsics.checkNotNullParameter(persistentCacheManager, "persistentCacheManager");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = persistentCacheFillManager;
        this.b = persistentCacheManager;
        this.c = baseRequest;
        this.d = requestType;
        this.e = i;
        this.f = traceLogger;
        this.g = flags;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.li1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.i01 r3, com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo r4, kotlin.coroutines.Continuation r5) {
        /*
            r2 = this;
            boolean r3 = r5 instanceof ads_mobile_sdk.nk2
            if (r3 == 0) goto L13
            r3 = r5
            ads_mobile_sdk.nk2 r3 = (ads_mobile_sdk.nk2) r3
            int r4 = r3.d
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r4 & r0
            if (r1 == 0) goto L13
            int r4 = r4 - r0
            r3.d = r4
            goto L18
        L13:
            ads_mobile_sdk.nk2 r3 = new ads_mobile_sdk.nk2
            r3.<init>(r2, r5)
        L18:
            java.lang.Object r4 = r3.b
            java.lang.Object r5 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r3.d
            r1 = 1
            if (r0 == 0) goto L33
            if (r0 != r1) goto L2b
            ads_mobile_sdk.ok2 r3 = r3.a
            kotlin.ResultKt.throwOnFailure(r4)
            goto L4b
        L2b:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            r3.<init>(r4)
            throw r3
        L33:
            kotlin.ResultKt.throwOnFailure(r4)
            ads_mobile_sdk.om2 r4 = r2.h
            if (r4 == 0) goto L6d
            ads_mobile_sdk.im2 r0 = r2.b
            r3.a = r2
            r3.d = r1
            r0.getClass()
            java.lang.Object r4 = ads_mobile_sdk.im2.b(r0, r4, r3)
            if (r4 != r5) goto L4a
            return r5
        L4a:
            r3 = r2
        L4b:
            ads_mobile_sdk.v01 r4 = (ads_mobile_sdk.v01) r4
            boolean r5 = r4 instanceof ads_mobile_sdk.i01
            if (r5 == 0) goto L6e
            ads_mobile_sdk.ur3 r5 = r3.f
            r0 = r4
            ads_mobile_sdk.i01 r0 = (ads_mobile_sdk.i01) r0
            java.lang.Throwable r0 = r0.b()
            if (r0 != 0) goto L65
            java.lang.Exception r0 = new java.lang.Exception
            java.lang.String r4 = r4.toString()
            r0.<init>(r4)
        L65:
            ads_mobile_sdk.as3 r5 = (ads_mobile_sdk.as3) r5
            java.lang.String r4 = "Failed to evict cached ad upon load/render failure"
            r5.a(r4, r0)
            goto L6e
        L6d:
            r3 = r2
        L6e:
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r4 = r3.c
            boolean r5 = r4 instanceof com.google.android.libraries.ads.mobile.sdk.common.AdRequest
            r0 = 0
            if (r5 == 0) goto L78
            com.google.android.libraries.ads.mobile.sdk.common.AdRequest r4 = (com.google.android.libraries.ads.mobile.sdk.common.AdRequest) r4
            goto L79
        L78:
            r4 = r0
        L79:
            if (r4 != 0) goto L7c
            goto L85
        L7c:
            ads_mobile_sdk.al2 r5 = r3.a
            ads_mobile_sdk.j53 r1 = r3.d
            int r3 = r3.e
            r5.a(r4, r1, r3, r0)
        L85:
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ok2.a(ads_mobile_sdk.i01, com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.li1
    public final Object a(ec3 ec3Var, i2 i2Var, ResponseInfo responseInfo, Continuation continuation) {
        if (ec3Var.c && this.g.a()) {
            return Unit.INSTANCE;
        }
        BaseRequest baseRequest = this.c;
        AdRequest adRequest = baseRequest instanceof AdRequest ? (AdRequest) baseRequest : null;
        if (adRequest != null) {
            this.a.a(adRequest, this.d, this.e, (om2) null);
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.gj1
    public final Object a(ec3 ec3Var, Continuation continuation) {
        if (ec3Var.c) {
            this.h = ec3Var.d;
        }
        return Unit.INSTANCE;
    }
}
