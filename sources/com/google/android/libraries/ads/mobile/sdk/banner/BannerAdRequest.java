package com.google.android.libraries.ads.mobile.sdk.banner;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseAdRequestBuilder;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class BannerAdRequest extends AdRequest implements BannerRequest {
    public final AdSize n;
    public final List o;
    public final VideoOptions p;
    public final boolean q;

    public /* synthetic */ BannerAdRequest(String str, Set set, String str2, Map map, Bundle bundle, Set set2, Set set3, Map map2, String str3, String str4, long j, AdSize adSize, List list, VideoOptions videoOptions, boolean z, boolean z2, int i) {
        this(str, set, str2, map, bundle, set2, set3, map2, str3, str4, j, adSize, list, videoOptions, z, z2);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public AdSize getAdSize() {
        return this.n;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public List<AdSize> getAdSizes() {
        return this.o;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public boolean getManualImpressionRequested() {
        return this.q;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public VideoOptions getVideoOptions() {
        return this.p;
    }

    public static final class Builder extends BaseAdRequestBuilder<Builder> {
        public final AdSize m;
        public final List n;
        public VideoOptions o;
        public boolean p;

        public Builder(String str, AdSize adSize, List list) {
            super(str);
            this.m = adSize;
            this.n = list;
        }

        public final BannerAdRequest build() {
            String strB = b();
            if (strB != null) {
                return new BannerAdRequest(strB, c(), d(), e(), f(), g(), h(), a(), j(), k(), i(), this.m, this.n, this.o, this.p, l(), 0);
            }
            throw new IllegalArgumentException("Ad unit ID cannot be null.");
        }

        @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
        public Builder self() {
            return this;
        }

        public Builder setVideoOptions(VideoOptions videoOptions) {
            Intrinsics.checkNotNullParameter(videoOptions, "videoOptions");
            this.o = videoOptions;
            return self();
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(String adUnitId, AdSize adSize) {
            this(adUnitId, adSize, CollectionsKt__CollectionsJVMKt.listOf(adSize));
            Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
            Intrinsics.checkNotNullParameter(adSize, "adSize");
        }
    }

    public BannerAdRequest(String str, Set set, String str2, Map map, Bundle bundle, Set set2, Set set3, Map map2, String str3, String str4, long j, AdSize adSize, List list, VideoOptions videoOptions, boolean z, boolean z2) {
        super(str, set, str2, map, bundle, set2, set3, map2, str3, str4, j, z2);
        this.n = adSize;
        this.o = list;
        this.p = videoOptions;
        this.q = z;
    }
}
