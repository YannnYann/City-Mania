package io.bidmachine;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class AdPlacementConfig {
    public static final Companion Companion = new Companion(null);
    private final AdFormat adFormat;
    private final CustomParams customParams;
    private final String placementId;

    public static final class Builder {
        private final AdFormat adFormat;
        private CustomParams customParams;
        private String placementId;

        public Builder(AdFormat adFormat) {
            Intrinsics.checkNotNullParameter(adFormat, "adFormat");
            this.adFormat = adFormat;
        }

        public final AdPlacementConfig build() {
            return new AdPlacementConfig(this.adFormat, this.placementId, this.customParams);
        }

        public final Builder withCustomParams(CustomParams customParams) {
            this.customParams = customParams;
            return this;
        }

        public final Builder withPlacementId(String str) {
            this.placementId = str;
            return this;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Builder(AdsFormat adsFormat) {
            Intrinsics.checkNotNullParameter(adsFormat, "adsFormat");
            AdFormat adFormat = adsFormat.toAdFormat();
            Intrinsics.checkNotNullExpressionValue(adFormat, "adsFormat.toAdFormat()");
            this(adFormat);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ Builder bannerBuilder$default(Companion companion, BannerAdSize bannerAdSize, int i, Object obj) {
            if ((i & 1) != 0) {
                bannerAdSize = BannerAdSize.Banner;
            }
            return companion.bannerBuilder(bannerAdSize);
        }

        public static /* synthetic */ Builder interstitialBuilder$default(Companion companion, AdContentType adContentType, int i, Object obj) {
            if ((i & 1) != 0) {
                adContentType = AdContentType.All;
            }
            return companion.interstitialBuilder(adContentType);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Builder nativeBuilder$default(Companion companion, List DEFAULT, int i, Object obj) {
            if ((i & 1) != 0) {
                DEFAULT = MediaAssetType.DEFAULT;
                Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
            }
            return companion.nativeBuilder(DEFAULT);
        }

        public static /* synthetic */ Builder rewardedBuilder$default(Companion companion, AdContentType adContentType, int i, Object obj) {
            if ((i & 1) != 0) {
                adContentType = AdContentType.All;
            }
            return companion.rewardedBuilder(adContentType);
        }

        public final Builder bannerBuilder() {
            return bannerBuilder$default(this, null, 1, null);
        }

        public final Builder interstitialBuilder() {
            return interstitialBuilder$default(this, null, 1, null);
        }

        public final Builder nativeBuilder() {
            return nativeBuilder$default(this, null, 1, null);
        }

        public final Builder rewardedBuilder() {
            return rewardedBuilder$default(this, null, 1, null);
        }

        private Companion() {
        }

        public final Builder bannerBuilder(BannerAdSize bannerAdSize) {
            Intrinsics.checkNotNullParameter(bannerAdSize, "bannerAdSize");
            return new Builder(AdFormat.Companion.createBanner(bannerAdSize));
        }

        public final Builder interstitialBuilder(AdContentType adContentType) {
            Intrinsics.checkNotNullParameter(adContentType, "adContentType");
            return new Builder(AdFormat.Companion.createInterstitial(adContentType));
        }

        public final Builder nativeBuilder(List<? extends MediaAssetType> mediaAssetTypes) {
            Intrinsics.checkNotNullParameter(mediaAssetTypes, "mediaAssetTypes");
            return new Builder(AdFormat.Companion.createNative(mediaAssetTypes));
        }

        public final Builder rewardedBuilder(AdContentType adContentType) {
            Intrinsics.checkNotNullParameter(adContentType, "adContentType");
            return new Builder(AdFormat.Companion.createRewarded(adContentType));
        }
    }

    public AdPlacementConfig(AdFormat adFormat, String str, CustomParams customParams) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        this.adFormat = adFormat;
        this.placementId = str;
        this.customParams = customParams;
    }

    public static final Builder bannerBuilder() {
        return Companion.bannerBuilder();
    }

    public static /* synthetic */ AdPlacementConfig copy$default(AdPlacementConfig adPlacementConfig, AdFormat adFormat, String str, CustomParams customParams, int i, Object obj) {
        if ((i & 1) != 0) {
            adFormat = adPlacementConfig.adFormat;
        }
        if ((i & 2) != 0) {
            str = adPlacementConfig.placementId;
        }
        if ((i & 4) != 0) {
            customParams = adPlacementConfig.customParams;
        }
        return adPlacementConfig.copy(adFormat, str, customParams);
    }

    public static final Builder interstitialBuilder() {
        return Companion.interstitialBuilder();
    }

    public static final Builder nativeBuilder() {
        return Companion.nativeBuilder();
    }

    public static /* synthetic */ Builder newBuilder$default(AdPlacementConfig adPlacementConfig, AdFormat adFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            adFormat = adPlacementConfig.adFormat;
        }
        return adPlacementConfig.newBuilder(adFormat);
    }

    public static final Builder rewardedBuilder() {
        return Companion.rewardedBuilder();
    }

    public final AdFormat component1() {
        return this.adFormat;
    }

    public final String component2() {
        return this.placementId;
    }

    public final CustomParams component3() {
        return this.customParams;
    }

    public final AdPlacementConfig copy(AdFormat adFormat, String str, CustomParams customParams) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        return new AdPlacementConfig(adFormat, str, customParams);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdPlacementConfig)) {
            return false;
        }
        AdPlacementConfig adPlacementConfig = (AdPlacementConfig) obj;
        return Intrinsics.areEqual(this.adFormat, adPlacementConfig.adFormat) && Intrinsics.areEqual(this.placementId, adPlacementConfig.placementId) && Intrinsics.areEqual(this.customParams, adPlacementConfig.customParams);
    }

    public final AdFormat getAdFormat() {
        return this.adFormat;
    }

    public final CustomParams getCustomParams() {
        return this.customParams;
    }

    public final String getPlacementId() {
        return this.placementId;
    }

    public int hashCode() {
        int iHashCode = this.adFormat.hashCode() * 31;
        String str = this.placementId;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        CustomParams customParams = this.customParams;
        return iHashCode2 + (customParams != null ? customParams.hashCode() : 0);
    }

    public final Builder newBuilder() {
        return newBuilder$default(this, null, 1, null);
    }

    public String toString() {
        return "AdPlacementConfig(adFormat=" + this.adFormat + ", placementId=" + this.placementId + ", customParams=" + this.customParams + ')';
    }

    public static final Builder bannerBuilder(BannerAdSize bannerAdSize) {
        return Companion.bannerBuilder(bannerAdSize);
    }

    public static final Builder interstitialBuilder(AdContentType adContentType) {
        return Companion.interstitialBuilder(adContentType);
    }

    public static final Builder nativeBuilder(List<? extends MediaAssetType> list) {
        return Companion.nativeBuilder(list);
    }

    public static final Builder rewardedBuilder(AdContentType adContentType) {
        return Companion.rewardedBuilder(adContentType);
    }

    public final Builder newBuilder(AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        return new Builder(adFormat).withPlacementId(this.placementId).withCustomParams(this.customParams);
    }

    public /* synthetic */ AdPlacementConfig(AdFormat adFormat, String str, CustomParams customParams, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(adFormat, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : customParams);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AdPlacementConfig(AdsFormat adsFormat, String str, CustomParams customParams) {
        Intrinsics.checkNotNullParameter(adsFormat, "adsFormat");
        AdFormat adFormat = adsFormat.toAdFormat();
        Intrinsics.checkNotNullExpressionValue(adFormat, "adsFormat.toAdFormat()");
        this(adFormat, str, customParams);
    }
}
