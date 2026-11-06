package com.google.android.libraries.ads.mobile.sdk.nativead;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.common.BaseSignalRequestBuilder;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class NativeSignalRequest extends SignalRequest implements NativeRequest {
    public final List o;
    public final List p;
    public final boolean q;
    public final NativeAd.NativeMediaAspectRatio r;
    public final AdChoicesPlacement s;
    public final VideoOptions t;
    public final NativeAd.SwipeGestureDirection u;
    public final boolean v;
    public final boolean w;
    public final AdSize x;
    public final List y;
    public final boolean z;

    public /* synthetic */ NativeSignalRequest(String str, String str2, LinkedHashSet linkedHashSet, String str3, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str4, String str5, List list, List list2, boolean z, NativeAd.NativeMediaAspectRatio nativeMediaAspectRatio, AdChoicesPlacement adChoicesPlacement, VideoOptions videoOptions, NativeAd.SwipeGestureDirection swipeGestureDirection, boolean z2, AdSize adSize, List list3, boolean z3, int i) {
        this(str, str2, linkedHashSet, str3, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str4, str5, list, list2, z, nativeMediaAspectRatio, adChoicesPlacement, videoOptions, swipeGestureDirection, z2, adSize, list3, z3);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public AdChoicesPlacement getAdChoicesPlacement() {
        return this.s;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public AdSize getAdSize() {
        return this.x;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public List<AdSize> getAdSizes() {
        return this.y;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public boolean getCustomClickGestureAllowTaps() {
        return this.v;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public NativeAd.SwipeGestureDirection getCustomClickGestureDirection() {
        return this.u;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public List<String> getCustomFormatIds() {
        return this.p;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public boolean getCustomMuteThisAdRequested() {
        return this.w;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public boolean getManualImpressionRequested() {
        return this.z;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public NativeAd.NativeMediaAspectRatio getMediaAspectRatio() {
        return this.r;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public List<NativeAd.NativeAdType> getNativeAdTypes() {
        return this.o;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public VideoOptions getVideoOptions() {
        return this.t;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public boolean isImageLoadingDisabled() {
        return this.q;
    }

    public NativeSignalRequest(String str, String str2, LinkedHashSet linkedHashSet, String str3, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str4, String str5, List list, List list2, boolean z, NativeAd.NativeMediaAspectRatio nativeMediaAspectRatio, AdChoicesPlacement adChoicesPlacement, VideoOptions videoOptions, NativeAd.SwipeGestureDirection swipeGestureDirection, boolean z2, AdSize adSize, List list3, boolean z3) {
        super(str, str2, linkedHashSet, str3, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str4, str5);
        this.o = list;
        this.p = list2;
        this.q = z;
        this.r = nativeMediaAspectRatio;
        this.s = adChoicesPlacement;
        this.t = videoOptions;
        this.u = swipeGestureDirection;
        this.v = z2;
        this.w = false;
        this.x = adSize;
        this.y = list3;
        this.z = z3;
    }

    public static final class Builder extends BaseSignalRequestBuilder<Builder> {
        public List n;
        public List o;
        public boolean p;
        public NativeAd.NativeMediaAspectRatio q;
        public AdChoicesPlacement r;
        public VideoOptions s;
        public NativeAd.SwipeGestureDirection t;
        public boolean u;
        public AdSize v;
        public List w;
        public boolean x;

        public Builder(String str, int i) {
            super(str, null);
            this.n = CollectionsKt__CollectionsKt.emptyList();
            this.o = CollectionsKt__CollectionsKt.emptyList();
            this.q = NativeAd.NativeMediaAspectRatio.UNKNOWN;
            this.r = AdChoicesPlacement.TOP_RIGHT;
            this.w = CollectionsKt__CollectionsKt.emptyList();
        }

        public final NativeSignalRequest build() {
            return new NativeSignalRequest(m(), b(), c(), d(), e(), f(), g(), h(), a(), j(), k(), this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, 0);
        }

        public Builder disableImageDownloading() {
            this.p = true;
            return self();
        }

        @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
        public Builder self() {
            return this;
        }

        public Builder setAdChoicesPlacement(AdChoicesPlacement adChoicesPlacement) {
            Intrinsics.checkNotNullParameter(adChoicesPlacement, "adChoicesPlacement");
            this.r = adChoicesPlacement;
            return self();
        }

        public final Builder setNativeAdTypes(List<? extends NativeAd.NativeAdType> nativeAdTypes) {
            Intrinsics.checkNotNullParameter(nativeAdTypes, "nativeAdTypes");
            this.n = CollectionsKt___CollectionsKt.toList(nativeAdTypes);
            return self();
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(String signalType) {
            this(signalType, 0);
            Intrinsics.checkNotNullParameter(signalType, "signalType");
        }
    }
}
