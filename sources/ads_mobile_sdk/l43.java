package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final class l43 {
    public static final /* synthetic */ KProperty[] b = {kk.a(l43.class, "requestConfiguration", "getRequestConfiguration()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;", 0)};
    public final tn3 a = new tn3(new RequestConfiguration.Builder().build());

    public final RequestConfiguration a() {
        return (RequestConfiguration) this.a.getValue(this, b[0]);
    }

    public final void a(RequestConfiguration requestConfiguration) {
        Intrinsics.checkNotNullParameter(requestConfiguration, "<set-?>");
        this.a.setValue(this, b[0], requestConfiguration);
    }
}
