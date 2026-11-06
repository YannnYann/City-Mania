package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes.dex */
public final class zk implements dn1 {
    public final cw2 a;
    public final nd1 b;
    public final f13 c;
    public final ex0 d;

    public zk(dw2 builderProvider, nd1 monitorFactory, f13 randomGenerator, ex0 flags) {
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
        if ((adRequest instanceof AppOpenAdRequest ? (AppOpenAdRequest) adRequest : null) == null) {
            return new m01("Expected AppOpenAdRequest but received " + Reflection.getOrCreateKotlinClass(adRequest.getClass()).getSimpleName());
        }
        this.c.getClass();
        String strValueOf = String.valueOf(f13.a());
        Object obj = this.a.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        return new q01(((eg0) ((wj1) vy.a((bn1) obj, adRequest, j53.e, strValueOf, this.b, this.d))).a());
    }
}
