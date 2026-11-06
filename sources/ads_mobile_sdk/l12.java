package ads_mobile_sdk;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesInfo;
import com.google.android.libraries.ads.mobile.sdk.common.Image;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.MediaContent;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdEventCallback;
import com.ironsource.C3522b4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final class l12 extends eq implements NativeAd {
    public static final /* synthetic */ KProperty[] q = {kk.a(l12.class, "adEventCallback", "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;", 0)};
    public final InternalNativeAd b;
    public final tn3 c;
    public final String d;
    public final Image e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final Double j;
    public final String k;
    public final String l;
    public final Image m;
    public final Bundle n;
    public final AdChoicesInfo o;
    public final su1 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l12(InternalNativeAd internalNativeAd) {
        super(internalNativeAd);
        Intrinsics.checkNotNullParameter(internalNativeAd, "internalNativeAd");
        this.b = internalNativeAd;
        this.c = new tn3(new k12(this), null);
        this.d = (String) internalNativeAd.q().d.get("headline");
        km1 km1Var = internalNativeAd.q().f;
        this.e = km1Var != null ? km1Var.a() : null;
        this.f = (String) internalNativeAd.q().d.get(C3522b4.i.E0);
        this.g = (String) internalNativeAd.q().d.get("call_to_action");
        this.h = (String) internalNativeAd.q().d.get(C3522b4.i.F0);
        this.i = (String) internalNativeAd.q().d.get("creative_summary");
        this.j = internalNativeAd.q().e;
        this.k = (String) internalNativeAd.q().d.get(C3522b4.i.U);
        this.l = (String) internalNativeAd.q().d.get("price");
        km1 km1Var2 = internalNativeAd.q().g;
        this.m = km1Var2 != null ? km1Var2.a() : null;
        this.n = internalNativeAd.q().r;
        ak1 ak1Var = internalNativeAd.q().h;
        this.o = ak1Var != null ? bk1.a(ak1Var) : null;
        this.p = new su1(internalNativeAd);
        internalNativeAd.v();
        internalNativeAd.m();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final MediaContent getMediaContent() {
        return this.p;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final void setAdEventCallback(NativeAdEventCallback nativeAdEventCallback) {
        this.c.setValue(this, q[0], nativeAdEventCallback);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final String getHeadline() {
        return this.d;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final String getBody() {
        return this.f;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final String getCallToAction() {
        return this.g;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final String getAdvertiser() {
        return this.h;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd
    public final Image getIcon() {
        return this.m;
    }
}
