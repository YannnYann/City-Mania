package com.google.android.libraries.ads.mobile.sdk.nativead;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseAdRequestBuilder;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class NativeAdRequest extends AdRequest implements BannerRequest, NativeRequest {
    public final List n;
    public final List o;
    public final boolean p;
    public final NativeAd.NativeMediaAspectRatio q;
    public final AdChoicesPlacement r;
    public final VideoOptions s;
    public final NativeAd.SwipeGestureDirection t;
    public final boolean u;
    public final boolean v;
    public final AdSize w;
    public final List x;
    public final boolean y;
    public final boolean z;

    public static final class Builder extends BaseAdRequestBuilder<Builder> {
        public final List m;
        public List n;
        public boolean o;
        public NativeAd.NativeMediaAspectRatio p;
        public AdChoicesPlacement q;
        public VideoOptions r;
        public NativeAd.SwipeGestureDirection s;
        public boolean t;
        public boolean u;
        public AdSize v;
        public List w;
        public boolean x;
        public boolean y;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(String adUnitId, List<? extends NativeAd.NativeAdType> nativeAdTypes) {
            super(adUnitId);
            Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
            Intrinsics.checkNotNullParameter(nativeAdTypes, "nativeAdTypes");
            this.m = nativeAdTypes;
            this.n = CollectionsKt__CollectionsKt.emptyList();
            this.p = NativeAd.NativeMediaAspectRatio.UNKNOWN;
            this.q = AdChoicesPlacement.TOP_RIGHT;
            this.w = CollectionsKt__CollectionsKt.emptyList();
        }

        public final void a(boolean z) {
            this.u = z;
            self();
        }

        public final NativeAdRequest build() {
            String strB = b();
            if (strB != null) {
                return new NativeAdRequest(strB, c(), d(), e(), f(), g(), h(), a(), j(), k(), i(), CollectionsKt___CollectionsKt.toList(this.m), this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, l(), this.y, 0);
            }
            throw new IllegalArgumentException("Ad unit ID cannot be null.");
        }

        public Builder disableImageDownloading() {
            this.o = true;
            return self();
        }

        @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
        public Builder self() {
            return this;
        }

        public Builder setAdChoicesPlacement(AdChoicesPlacement adChoicesPlacement) {
            Intrinsics.checkNotNullParameter(adChoicesPlacement, "adChoicesPlacement");
            this.q = adChoicesPlacement;
            return self();
        }

        public final Builder setAdPersistenceEnabled() {
            this.y = true;
            return self();
        }

        public Builder setCustomFormatIds(List<String> customFormatIds) {
            Intrinsics.checkNotNullParameter(customFormatIds, "customFormatIds");
            this.n = CollectionsKt___CollectionsKt.toList(customFormatIds);
            return self();
        }

        public Builder setMediaAspectRatio(NativeAd.NativeMediaAspectRatio mediaAspectRatio) {
            Intrinsics.checkNotNullParameter(mediaAspectRatio, "mediaAspectRatio");
            this.p = mediaAspectRatio;
            return self();
        }

        public Builder setVideoOptions(VideoOptions videoOptions) {
            Intrinsics.checkNotNullParameter(videoOptions, "videoOptions");
            this.r = videoOptions;
            return self();
        }
    }

    public /* synthetic */ NativeAdRequest(String str, Set set, String str2, Map map, Bundle bundle, Set set2, Set set3, Map map2, String str3, String str4, long j, List list, List list2, boolean z, NativeAd.NativeMediaAspectRatio nativeMediaAspectRatio, AdChoicesPlacement adChoicesPlacement, VideoOptions videoOptions, NativeAd.SwipeGestureDirection swipeGestureDirection, boolean z2, boolean z3, AdSize adSize, List list3, boolean z4, boolean z5, boolean z6, int i) {
        this(str, set, str2, map, bundle, set2, set3, map2, str3, str4, j, list, list2, z, nativeMediaAspectRatio, adChoicesPlacement, videoOptions, swipeGestureDirection, z2, z3, adSize, list3, z4, z5, z6);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public AdChoicesPlacement getAdChoicesPlacement() {
        return this.r;
    }

    public final boolean getAdPersistenceEnabled() {
        return this.z;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public AdSize getAdSize() {
        return this.w;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public List<AdSize> getAdSizes() {
        return this.x;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public boolean getCustomClickGestureAllowTaps() {
        return this.u;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public NativeAd.SwipeGestureDirection getCustomClickGestureDirection() {
        return this.t;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public List<String> getCustomFormatIds() {
        return this.o;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public final boolean getCustomMuteThisAdRequested() {
        return this.v;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public boolean getManualImpressionRequested() {
        return this.y;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public NativeAd.NativeMediaAspectRatio getMediaAspectRatio() {
        return this.q;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public List<NativeAd.NativeAdType> getNativeAdTypes() {
        return this.n;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public VideoOptions getVideoOptions() {
        return this.s;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public boolean isImageLoadingDisabled() {
        return this.p;
    }

    public NativeAdRequest(String str, Set set, String str2, Map map, Bundle bundle, Set set2, Set set3, Map map2, String str3, String str4, long j, List list, List list2, boolean z, NativeAd.NativeMediaAspectRatio nativeMediaAspectRatio, AdChoicesPlacement adChoicesPlacement, VideoOptions videoOptions, NativeAd.SwipeGestureDirection swipeGestureDirection, boolean z2, boolean z3, AdSize adSize, List list3, boolean z4, boolean z5, boolean z6) {
        super(str, set, str2, map, bundle, set2, set3, map2, str3, str4, j, z5);
        this.n = list;
        this.o = list2;
        this.p = z;
        this.q = nativeMediaAspectRatio;
        this.r = adChoicesPlacement;
        this.s = videoOptions;
        this.t = swipeGestureDirection;
        this.u = z2;
        this.v = z3;
        this.w = adSize;
        this.x = list3;
        this.y = z4;
        this.z = z6;
    }
}
