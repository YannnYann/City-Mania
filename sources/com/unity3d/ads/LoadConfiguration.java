package com.unity3d.ads;

import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoadConfiguration.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class LoadConfiguration {
    private final String adMarkup;
    private final Map<String, String> extras;
    private final String mediationAdUnitId;
    private final MediationInfo mediationInfo;
    private final String placementId;

    public /* synthetic */ LoadConfiguration(String str, String str2, MediationInfo mediationInfo, String str3, Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, mediationInfo, str3, map);
    }

    private LoadConfiguration(String str, String str2, MediationInfo mediationInfo, String str3, Map<String, String> map) {
        this.placementId = str;
        this.adMarkup = str2;
        this.mediationInfo = mediationInfo;
        this.mediationAdUnitId = str3;
        this.extras = map;
    }

    public final String getPlacementId() {
        return this.placementId;
    }

    public final String getAdMarkup() {
        return this.adMarkup;
    }

    public final MediationInfo getMediationInfo() {
        return this.mediationInfo;
    }

    public final String getMediationAdUnitId() {
        return this.mediationAdUnitId;
    }

    public final Map<String, String> getExtras() {
        return this.extras;
    }

    /* JADX INFO: compiled from: LoadConfiguration.kt */
    public static final class Builder {
        private String adMarkup;
        private Map<String, String> extras;
        private String mediationAdUnitId;
        private MediationInfo mediationInfo;
        private final String placementId;

        public Builder(String placementId) {
            Intrinsics.checkNotNullParameter(placementId, "placementId");
            this.placementId = placementId;
            this.extras = MapsKt__MapsKt.emptyMap();
        }

        public final String getPlacementId() {
            return this.placementId;
        }

        public final Builder withAdMarkup(String adMarkup) {
            Intrinsics.checkNotNullParameter(adMarkup, "adMarkup");
            this.adMarkup = adMarkup;
            return this;
        }

        public final Builder withExtras(Map<String, String> extras) {
            Intrinsics.checkNotNullParameter(extras, "extras");
            this.extras = extras;
            return this;
        }

        public final Builder withMediationInfo(MediationInfo mediationInfo) {
            Intrinsics.checkNotNullParameter(mediationInfo, "mediationInfo");
            this.mediationInfo = mediationInfo;
            return this;
        }

        public final Builder withMediationAdUnitId(String mediationAdUnitId) {
            Intrinsics.checkNotNullParameter(mediationAdUnitId, "mediationAdUnitId");
            this.mediationAdUnitId = mediationAdUnitId;
            return this;
        }

        public final LoadConfiguration build() {
            return new LoadConfiguration(this.placementId, this.adMarkup, this.mediationInfo, this.mediationAdUnitId, this.extras, null);
        }
    }
}
