package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.MediaContent;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class su1 implements MediaContent {
    public final InternalNativeAd a;

    public su1(InternalNativeAd internalNativeAd) {
        Intrinsics.checkNotNullParameter(internalNativeAd, "internalNativeAd");
        this.a = internalNativeAd;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.MediaContent
    public final boolean getHasVideoContent() {
        return this.a.p().e;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.MediaContent
    public final InternalNativeAd a() {
        return this.a;
    }
}
