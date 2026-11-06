package ads_mobile_sdk;

import androidx.webkit.WebViewFeature;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class rz3 {
    public static boolean a() {
        Intrinsics.checkNotNullParameter(WebViewFeature.MULTI_PROFILE, "feature");
        return WebViewFeature.isFeatureSupported(WebViewFeature.MULTI_PROFILE);
    }
}
