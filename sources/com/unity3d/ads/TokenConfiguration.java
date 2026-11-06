package com.unity3d.ads;

import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TokenConfiguration.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class TokenConfiguration {
    private BannerSize _bannerSize;
    private boolean _isNewApi;
    private String _mediationAdUnitId;
    private MediationInfo _mediationInfo;
    private String _placementId;
    private final AdFormat adFormat;
    private final Map<String, String> extras;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TokenConfiguration(AdFormat adFormat) {
        this(adFormat, null, 2, 0 == true ? 1 : 0);
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
    }

    public /* synthetic */ TokenConfiguration(AdFormat adFormat, MediationInfo mediationInfo, String str, BannerSize bannerSize, String str2, Map map, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(adFormat, mediationInfo, str, bannerSize, str2, map, z);
    }

    public TokenConfiguration(AdFormat adFormat, Map<String, String> extras) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.adFormat = adFormat;
        this.extras = extras;
    }

    public final AdFormat getAdFormat() {
        return this.adFormat;
    }

    public /* synthetic */ TokenConfiguration(AdFormat adFormat, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(adFormat, (i & 2) != 0 ? MapsKt__MapsKt.emptyMap() : map);
    }

    public final Map<String, String> getExtras() {
        return this.extras;
    }

    public final MediationInfo getMediationInfo() {
        return this._mediationInfo;
    }

    public final String getPlacementId() {
        return this._placementId;
    }

    public final BannerSize getBannerSize() {
        return this._bannerSize;
    }

    public final String getMediationAdUnitId() {
        return this._mediationAdUnitId;
    }

    public final boolean isNewApi() {
        return this._isNewApi;
    }

    public /* synthetic */ TokenConfiguration(AdFormat adFormat, MediationInfo mediationInfo, String str, BannerSize bannerSize, String str2, Map map, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(adFormat, (i & 2) != 0 ? null : mediationInfo, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : bannerSize, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? MapsKt__MapsKt.emptyMap() : map, (i & 64) != 0 ? false : z);
    }

    private TokenConfiguration(AdFormat adFormat, MediationInfo mediationInfo, String str, BannerSize bannerSize, String str2, Map<String, String> map, boolean z) {
        this(adFormat, map);
        this._mediationInfo = mediationInfo;
        this._placementId = str;
        this._bannerSize = bannerSize;
        this._mediationAdUnitId = str2;
        this._isNewApi = z;
    }

    /* JADX INFO: compiled from: TokenConfiguration.kt */
    public static final class Builder {
        private final AdFormat adFormat;
        private BannerSize bannerSize;
        private Map<String, String> extras;
        private String mediationAdUnitId;
        private MediationInfo mediationInfo;
        private String placementId;

        public Builder(AdFormat adFormat) {
            Intrinsics.checkNotNullParameter(adFormat, "adFormat");
            this.adFormat = adFormat;
            this.extras = MapsKt__MapsKt.emptyMap();
        }

        public final Builder withMediationInfo(MediationInfo mediationInfo) {
            this.mediationInfo = mediationInfo;
            return this;
        }

        public final Builder withPlacementId(String str) {
            this.placementId = str;
            return this;
        }

        public final Builder withBannerSize(BannerSize bannerSize) {
            this.bannerSize = bannerSize;
            return this;
        }

        public final Builder withMediationAdUnitId(String str) {
            this.mediationAdUnitId = str;
            return this;
        }

        public final Builder withExtras(Map<String, String> extras) {
            Intrinsics.checkNotNullParameter(extras, "extras");
            this.extras = extras;
            return this;
        }

        public final TokenConfiguration build() {
            return new TokenConfiguration(this.adFormat, this.mediationInfo, this.placementId, this.bannerSize, this.mediationAdUnitId, this.extras, true, null);
        }
    }
}
