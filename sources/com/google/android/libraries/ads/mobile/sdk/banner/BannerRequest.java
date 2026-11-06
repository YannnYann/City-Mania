package com.google.android.libraries.ads.mobile.sdk.banner;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public interface BannerRequest {
    AdSize getAdSize();

    List getAdSizes();

    boolean getManualImpressionRequested();

    VideoOptions getVideoOptions();
}
