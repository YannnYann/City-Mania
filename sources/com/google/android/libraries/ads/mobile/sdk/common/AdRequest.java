package com.google.android.libraries.ads.mobile.sdk.common;

import android.os.Bundle;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public class AdRequest extends BaseRequest {
    public final String m;

    public static final class Builder extends BaseAdRequestBuilder<Builder> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(String adUnitId) {
            super(adUnitId);
            Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        }

        public final AdRequest build() {
            String strB = b();
            if (strB != null) {
                return new AdRequest(strB, c(), d(), e(), f(), g(), h(), a(), j(), k(), i(), l());
            }
            throw new IllegalArgumentException("Ad unit ID cannot be null.");
        }

        @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
        public Builder self() {
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdRequest(String adUnitId, Set<String> categoryExclusions, String str, Map<String, String> customTargeting, Bundle googleExtrasBundle, Set<String> keywords, Set<String> neighboringContentUrls, Map<String, Bundle> adSourceExtrasBundles, String str2, String str3, long j, boolean z) {
        super(adUnitId, categoryExclusions, str, customTargeting, googleExtrasBundle, keywords, neighboringContentUrls, adSourceExtrasBundles, str2, str3, j, z);
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(categoryExclusions, "categoryExclusions");
        Intrinsics.checkNotNullParameter(customTargeting, "customTargeting");
        Intrinsics.checkNotNullParameter(googleExtrasBundle, "googleExtrasBundle");
        Intrinsics.checkNotNullParameter(keywords, "keywords");
        Intrinsics.checkNotNullParameter(neighboringContentUrls, "neighboringContentUrls");
        Intrinsics.checkNotNullParameter(adSourceExtrasBundles, "adSourceExtrasBundles");
        this.m = adUnitId;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequest
    public String getAdUnitId() {
        return this.m;
    }
}
