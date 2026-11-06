package com.unity3d.ads;

import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BannerConfiguration.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class BannerConfiguration {
    private final String adMarkup;
    private final BannerSize bannerSize;
    private final Map<String, String> extras;
    private final BannerShowListener listener;
    private final String mediationAdUnitId;
    private final MediationInfo mediationInfo;
    private final String placementId;

    public /* synthetic */ BannerConfiguration(String str, BannerSize bannerSize, BannerShowListener bannerShowListener, Map map, String str2, MediationInfo mediationInfo, String str3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bannerSize, bannerShowListener, map, str2, mediationInfo, str3);
    }

    private BannerConfiguration(String str, BannerSize bannerSize, BannerShowListener bannerShowListener, Map<String, String> map, String str2, MediationInfo mediationInfo, String str3) {
        this.placementId = str;
        this.bannerSize = bannerSize;
        this.listener = bannerShowListener;
        this.extras = map;
        this.adMarkup = str2;
        this.mediationInfo = mediationInfo;
        this.mediationAdUnitId = str3;
    }

    public final String getPlacementId() {
        return this.placementId;
    }

    public final BannerSize getBannerSize() {
        return this.bannerSize;
    }

    public final BannerShowListener getListener() {
        return this.listener;
    }

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException
        */
    public /* synthetic */ BannerConfiguration(java.lang.String r9, com.unity3d.ads.BannerSize r10, com.unity3d.ads.BannerShowListener r11, java.util.Map r12, java.lang.String r13, com.unity3d.ads.MediationInfo r14, java.lang.String r15, int r16, kotlin.jvm.internal.DefaultConstructorMarker r17) {
        /*
            r8 = this;
            r0 = r16 & 8
            if (r0 == 0) goto L8
            java.util.Map r12 = kotlin.collections.MapsKt__MapsKt.emptyMap()
        L8:
            r4 = r12
            r12 = r16 & 16
            r0 = 0
            if (r12 == 0) goto L10
            r5 = r0
            goto L11
        L10:
            r5 = r13
        L11:
            r12 = r16 & 32
            if (r12 == 0) goto L17
            r6 = r0
            goto L18
        L17:
            r6 = r14
        L18:
            r12 = r16 & 64
            if (r12 == 0) goto L22
            r7 = r0
            r1 = r9
            r2 = r10
            r3 = r11
            r0 = r8
            goto L27
        L22:
            r7 = r15
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = r11
        L27:
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.BannerConfiguration.<init>(java.lang.String, com.unity3d.ads.BannerSize, com.unity3d.ads.BannerShowListener, java.util.Map, java.lang.String, com.unity3d.ads.MediationInfo, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final Map<String, String> getExtras() {
        return this.extras;
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

    /* JADX INFO: compiled from: BannerConfiguration.kt */
    public static final class Builder {
        private String adMarkup;
        private final BannerSize bannerSize;
        private Map<String, String> extras;
        private final BannerShowListener listener;
        private String mediationAdUnitId;
        private MediationInfo mediationInfo;
        private final String placementId;

        public Builder(String placementId, BannerSize bannerSize, BannerShowListener listener) {
            Intrinsics.checkNotNullParameter(placementId, "placementId");
            Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.placementId = placementId;
            this.bannerSize = bannerSize;
            this.listener = listener;
            this.extras = MapsKt__MapsKt.emptyMap();
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

        public final BannerConfiguration build() {
            return new BannerConfiguration(this.placementId, this.bannerSize, this.listener, this.extras, this.adMarkup, this.mediationInfo, this.mediationAdUnitId, null);
        }
    }
}
