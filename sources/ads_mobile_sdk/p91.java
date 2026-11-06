package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconAdRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes.dex */
public final class p91 implements dn1 {
    public final cw2 a;
    public final nd1 b;
    public final f13 c;
    public final ex0 d;

    public p91(dw2 builderProvider, nd1 monitorFactory, f13 randomGenerator, ex0 flags) {
        Intrinsics.checkNotNullParameter(builderProvider, "builderProvider");
        Intrinsics.checkNotNullParameter(monitorFactory, "monitorFactory");
        Intrinsics.checkNotNullParameter(randomGenerator, "randomGenerator");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = builderProvider;
        this.b = monitorFactory;
        this.c = randomGenerator;
        this.d = flags;
    }

    @Override // ads_mobile_sdk.dn1
    public final v01 a(AdRequest adRequest, int i) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        IconAdRequest iconAdRequest = adRequest instanceof IconAdRequest ? (IconAdRequest) adRequest : null;
        if (iconAdRequest == null) {
            return new m01("Expected IconAdRequest but received " + Reflection.getOrCreateKotlinClass(adRequest.getClass()).getSimpleName());
        }
        this.c.getClass();
        String strValueOf = String.valueOf(f13.a());
        Object obj = this.a.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        mg0 mg0VarA = ((mg0) ((ok1) vy.a((bn1) obj, adRequest, j53.g, strValueOf, this.b, this.d))).a(iconAdRequest);
        NativeAdRequest nativeAdRequestA = r91.a(iconAdRequest);
        Intrinsics.checkNotNull(nativeAdRequestA, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest");
        return new q01(mg0VarA.a(nativeAdRequestA).a(i).b().a(new o91()).a());
    }
}
