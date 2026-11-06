package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class wz1 implements xz1, zh1 {
    public final InternalNativeAd a;

    public wz1(InternalNativeAd internalNativeAd) {
        Intrinsics.checkNotNullParameter(internalNativeAd, "internalNativeAd");
        this.a = internalNativeAd;
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
        return this.a.g();
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
        return this.a.a(continuation);
    }

    @Override // ads_mobile_sdk.zh1
    public final void a(ResponseInfo responseInfo) {
        Intrinsics.checkNotNullParameter(responseInfo, "<set-?>");
        InternalNativeAd internalNativeAd = this.a;
        internalNativeAd.getClass();
        Intrinsics.checkNotNullParameter(responseInfo, "<set-?>");
        internalNativeAd.k = responseInfo;
    }
}
