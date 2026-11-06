package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.List;
import java.util.Optional;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class j93 implements rh3 {
    public final Optional a;
    public final Optional b;
    public final b93 c;
    public final j53 d;
    public final BaseRequest e;
    public final List f;

    public j93(ex0 flags, Optional optionalBannerRequest, Optional optionalSignalRequest, b93 rtbAdapterSignalCollector, j53 requestType, BaseRequest adRequest) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(optionalBannerRequest, "optionalBannerRequest");
        Intrinsics.checkNotNullParameter(optionalSignalRequest, "optionalSignalRequest");
        Intrinsics.checkNotNullParameter(rtbAdapterSignalCollector, "rtbAdapterSignalCollector");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        this.a = optionalBannerRequest;
        this.b = optionalSignalRequest;
        this.c = rtbAdapterSignalCollector;
        this.d = requestType;
        this.e = adRequest;
        this.f = flags.G0();
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.RTB_SIGNAL;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.rh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object s(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.i93
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.i93 r0 = (ads_mobile_sdk.i93) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.i93 r0 = new ads_mobile_sdk.i93
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L80
        L29:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            java.util.Optional r7 = r6.b
            java.lang.Object r7 = kotlin.jvm.optionals.OptionalsKt.getOrNull(r7)
            com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest r7 = (com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest) r7
            if (r7 == 0) goto L61
            java.util.List r2 = r6.f
            ads_mobile_sdk.x11 r7 = r7.a()
            int r7 = r7.getNumber()
            java.lang.String r7 = java.lang.String.valueOf(r7)
            boolean r7 = r2.contains(r7)
            if (r7 != 0) goto L61
            ads_mobile_sdk.q01 r7 = new ads_mobile_sdk.q01
            ads_mobile_sdk.f93 r0 = new ads_mobile_sdk.f93
            java.util.List r1 = kotlin.collections.CollectionsKt__CollectionsKt.emptyList()
            r0.<init>(r1)
            r7.<init>(r0)
            return r7
        L61:
            java.util.Optional r7 = r6.a
            java.lang.Object r7 = kotlin.jvm.optionals.OptionalsKt.getOrNull(r7)
            com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest r7 = (com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest) r7
            if (r7 == 0) goto L70
            com.google.android.libraries.ads.mobile.sdk.banner.AdSize r7 = r7.getAdSize()
            goto L71
        L70:
            r7 = 0
        L71:
            ads_mobile_sdk.b93 r2 = r6.c
            ads_mobile_sdk.j53 r4 = r6.d
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r5 = r6.e
            r0.c = r3
            java.lang.Object r7 = r2.a(r7, r4, r5, r0)
            if (r7 != r1) goto L80
            return r1
        L80:
            java.util.List r7 = (java.util.List) r7
            ads_mobile_sdk.f93 r0 = new ads_mobile_sdk.f93
            r0.<init>(r7)
            ads_mobile_sdk.q01 r7 = new ads_mobile_sdk.q01
            r7.<init>(r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.j93.s(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
