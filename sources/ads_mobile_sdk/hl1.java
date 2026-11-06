package ads_mobile_sdk;

import android.graphics.drawable.Drawable;
import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hl1 {
    public final s02 a;
    public Drawable c;
    public final VideoController d;
    public final boolean e;

    public hl1(s02 nativeAdAssets) {
        Intrinsics.checkNotNullParameter(nativeAdAssets, "nativeAdAssets");
        this.a = nativeAdAssets;
        VideoController videoController = nativeAdAssets.m;
        this.d = videoController;
        this.e = videoController != null;
    }
}
