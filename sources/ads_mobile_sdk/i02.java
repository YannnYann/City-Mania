package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class i02 extends Lambda implements Function1 {
    public static final i02 a = new i02();

    public i02() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        InternalNativeAd ad = (InternalNativeAd) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        return new wz1(ad);
    }
}
