package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.iconad.IconRequest;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l91 implements rh3 {
    public final IconRequest a;

    public l91(IconRequest iconRequest) {
        Intrinsics.checkNotNullParameter(iconRequest, "iconRequest");
        this.a = iconRequest;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.ICON_AD;
    }

    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        return new q01(new k91(this.a));
    }
}
