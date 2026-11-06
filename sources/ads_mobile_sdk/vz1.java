package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vz1 implements xz1, zh1 {
    public final ck1 a;

    public vz1(ck1 internalBannerAd) {
        Intrinsics.checkNotNullParameter(internalBannerAd, "internalBannerAd");
        this.a = internalBannerAd;
    }

    @Override // ads_mobile_sdk.zh1
    public final ks3 a() {
        return this.a.a();
    }

    @Override // ads_mobile_sdk.zh1
    public final i2 b() {
        return this.a.b();
    }

    @Override // ads_mobile_sdk.zh1
    public final void destroy() {
        this.a.destroy();
    }

    @Override // ads_mobile_sdk.zh1
    public final JsonObject g() {
        this.a.getClass();
        return null;
    }

    @Override // ads_mobile_sdk.zh1
    public final ResponseInfo getResponseInfo() {
        return this.a.getResponseInfo();
    }

    @Override // ads_mobile_sdk.zh1
    public final Unit a(ContinuationImpl continuationImpl) {
        return this.a.a(continuationImpl);
    }

    @Override // ads_mobile_sdk.zh1
    public final Object a(Continuation continuation) {
        ck1 ck1Var = this.a;
        ck1Var.getClass();
        return ci1.a(ck1Var, continuation);
    }

    @Override // ads_mobile_sdk.zh1
    public final void a(ResponseInfo responseInfo) {
        Intrinsics.checkNotNullParameter(responseInfo, "<set-?>");
        ck1 ck1Var = this.a;
        ck1Var.getClass();
        Intrinsics.checkNotNullParameter(responseInfo, "<set-?>");
        ck1Var.k = responseInfo;
    }
}
