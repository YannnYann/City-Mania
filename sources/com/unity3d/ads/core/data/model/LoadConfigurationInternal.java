package com.unity3d.ads.core.data.model;

import com.unity3d.ads.MediationInfo;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoadConfiguration.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class LoadConfigurationInternal {
    private final String adMarkup;
    private final Map<String, String> extras;
    private final String mediationAdUnitId;
    private final MediationInfo mediationInfo;
    private final String placementId;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LoadConfigurationInternal copy$default(LoadConfigurationInternal loadConfigurationInternal, String str, String str2, String str3, MediationInfo mediationInfo, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            str = loadConfigurationInternal.placementId;
        }
        if ((i & 2) != 0) {
            str2 = loadConfigurationInternal.adMarkup;
        }
        if ((i & 4) != 0) {
            str3 = loadConfigurationInternal.mediationAdUnitId;
        }
        if ((i & 8) != 0) {
            mediationInfo = loadConfigurationInternal.mediationInfo;
        }
        if ((i & 16) != 0) {
            map = loadConfigurationInternal.extras;
        }
        Map map2 = map;
        String str4 = str3;
        return loadConfigurationInternal.copy(str, str2, str4, mediationInfo, map2);
    }

    public final String component1() {
        return this.placementId;
    }

    public final String component2() {
        return this.adMarkup;
    }

    public final String component3() {
        return this.mediationAdUnitId;
    }

    public final MediationInfo component4() {
        return this.mediationInfo;
    }

    public final Map<String, String> component5() {
        return this.extras;
    }

    public final LoadConfigurationInternal copy(String placementId, String str, String str2, MediationInfo mediationInfo, Map<String, String> extras) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(extras, "extras");
        return new LoadConfigurationInternal(placementId, str, str2, mediationInfo, extras);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LoadConfigurationInternal)) {
            return false;
        }
        LoadConfigurationInternal loadConfigurationInternal = (LoadConfigurationInternal) obj;
        return Intrinsics.areEqual(this.placementId, loadConfigurationInternal.placementId) && Intrinsics.areEqual(this.adMarkup, loadConfigurationInternal.adMarkup) && Intrinsics.areEqual(this.mediationAdUnitId, loadConfigurationInternal.mediationAdUnitId) && Intrinsics.areEqual(this.mediationInfo, loadConfigurationInternal.mediationInfo) && Intrinsics.areEqual(this.extras, loadConfigurationInternal.extras);
    }

    public int hashCode() {
        int iHashCode = this.placementId.hashCode() * 31;
        String str = this.adMarkup;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.mediationAdUnitId;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        MediationInfo mediationInfo = this.mediationInfo;
        return ((iHashCode3 + (mediationInfo != null ? mediationInfo.hashCode() : 0)) * 31) + this.extras.hashCode();
    }

    public String toString() {
        return "LoadConfigurationInternal(placementId=" + this.placementId + ", adMarkup=" + this.adMarkup + ", mediationAdUnitId=" + this.mediationAdUnitId + ", mediationInfo=" + this.mediationInfo + ", extras=" + this.extras + ')';
    }

    public LoadConfigurationInternal(String placementId, String str, String str2, MediationInfo mediationInfo, Map<String, String> extras) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.placementId = placementId;
        this.adMarkup = str;
        this.mediationAdUnitId = str2;
        this.mediationInfo = mediationInfo;
        this.extras = extras;
    }

    public final String getPlacementId() {
        return this.placementId;
    }

    public final String getAdMarkup() {
        return this.adMarkup;
    }

    public final String getMediationAdUnitId() {
        return this.mediationAdUnitId;
    }

    public final MediationInfo getMediationInfo() {
        return this.mediationInfo;
    }

    public /* synthetic */ LoadConfigurationInternal(String str, String str2, String str3, MediationInfo mediationInfo, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : mediationInfo, (i & 16) != 0 ? MapsKt__MapsKt.emptyMap() : map);
    }

    public final Map<String, String> getExtras() {
        return this.extras;
    }
}
