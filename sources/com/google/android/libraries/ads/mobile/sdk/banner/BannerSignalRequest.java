package com.google.android.libraries.ads.mobile.sdk.banner;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.BaseSignalRequestBuilder;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class BannerSignalRequest extends SignalRequest implements BannerRequest {
    public final AdSize o;
    public final List p;
    public final VideoOptions q;
    public final boolean r;

    public /* synthetic */ BannerSignalRequest(String str, String str2, LinkedHashSet linkedHashSet, String str3, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str4, String str5, AdSize adSize, List list, VideoOptions videoOptions, boolean z, int i) {
        this(str, str2, linkedHashSet, str3, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str4, str5, adSize, list, videoOptions, z);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public AdSize getAdSize() {
        return this.o;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public List<AdSize> getAdSizes() {
        return this.p;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public boolean getManualImpressionRequested() {
        return this.r;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public VideoOptions getVideoOptions() {
        return this.q;
    }

    public BannerSignalRequest(String str, String str2, LinkedHashSet linkedHashSet, String str3, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str4, String str5, AdSize adSize, List list, VideoOptions videoOptions, boolean z) {
        super(str, str2, linkedHashSet, str3, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str4, str5);
        this.o = adSize;
        this.p = list;
        this.q = videoOptions;
        this.r = z;
    }

    public static final class Builder extends BaseSignalRequestBuilder<Builder> {
        public AdSize n;
        public List o;
        public VideoOptions p;
        public boolean q;

        public Builder(String str, int i) {
            super(str, null);
            this.o = CollectionsKt__CollectionsKt.emptyList();
        }

        public final BannerSignalRequest build() {
            return new BannerSignalRequest(m(), b(), c(), d(), e(), f(), g(), h(), a(), j(), k(), this.n, this.o, this.p, this.q, 0);
        }

        @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
        public Builder self() {
            return this;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(String signalType) {
            this(signalType, 0);
            Intrinsics.checkNotNullParameter(signalType, "signalType");
        }
    }
}
