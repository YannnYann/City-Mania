package com.unity3d.ads.core.data.model;

import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdRevenueData.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AdRevenueData {
    private final AdRevenueAdFormat adFormat;
    private final String adUnitId;
    private final String countryCode;
    private final UUID eventId;
    private final String networkName;
    private final Double revenue;
    private final String thirdPartyAdPlacementId;

    public static /* synthetic */ AdRevenueData copy$default(AdRevenueData adRevenueData, UUID uuid, Double d, String str, String str2, String str3, String str4, AdRevenueAdFormat adRevenueAdFormat, int i, Object obj) {
        if ((i & 1) != 0) {
            uuid = adRevenueData.eventId;
        }
        if ((i & 2) != 0) {
            d = adRevenueData.revenue;
        }
        if ((i & 4) != 0) {
            str = adRevenueData.countryCode;
        }
        if ((i & 8) != 0) {
            str2 = adRevenueData.networkName;
        }
        if ((i & 16) != 0) {
            str3 = adRevenueData.adUnitId;
        }
        if ((i & 32) != 0) {
            str4 = adRevenueData.thirdPartyAdPlacementId;
        }
        if ((i & 64) != 0) {
            adRevenueAdFormat = adRevenueData.adFormat;
        }
        String str5 = str4;
        AdRevenueAdFormat adRevenueAdFormat2 = adRevenueAdFormat;
        String str6 = str3;
        String str7 = str;
        return adRevenueData.copy(uuid, d, str7, str2, str6, str5, adRevenueAdFormat2);
    }

    public final UUID component1() {
        return this.eventId;
    }

    public final Double component2() {
        return this.revenue;
    }

    public final String component3() {
        return this.countryCode;
    }

    public final String component4() {
        return this.networkName;
    }

    public final String component5() {
        return this.adUnitId;
    }

    public final String component6() {
        return this.thirdPartyAdPlacementId;
    }

    public final AdRevenueAdFormat component7() {
        return this.adFormat;
    }

    public final AdRevenueData copy(UUID eventId, Double d, String str, String str2, String str3, String str4, AdRevenueAdFormat adRevenueAdFormat) {
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        return new AdRevenueData(eventId, d, str, str2, str3, str4, adRevenueAdFormat);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdRevenueData)) {
            return false;
        }
        AdRevenueData adRevenueData = (AdRevenueData) obj;
        return Intrinsics.areEqual(this.eventId, adRevenueData.eventId) && Intrinsics.areEqual(this.revenue, adRevenueData.revenue) && Intrinsics.areEqual(this.countryCode, adRevenueData.countryCode) && Intrinsics.areEqual(this.networkName, adRevenueData.networkName) && Intrinsics.areEqual(this.adUnitId, adRevenueData.adUnitId) && Intrinsics.areEqual(this.thirdPartyAdPlacementId, adRevenueData.thirdPartyAdPlacementId) && this.adFormat == adRevenueData.adFormat;
    }

    public int hashCode() {
        int iHashCode = this.eventId.hashCode() * 31;
        Double d = this.revenue;
        int iHashCode2 = (iHashCode + (d == null ? 0 : d.hashCode())) * 31;
        String str = this.countryCode;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.networkName;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.adUnitId;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.thirdPartyAdPlacementId;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        AdRevenueAdFormat adRevenueAdFormat = this.adFormat;
        return iHashCode6 + (adRevenueAdFormat != null ? adRevenueAdFormat.hashCode() : 0);
    }

    public String toString() {
        return "AdRevenueData(eventId=" + this.eventId + ", revenue=" + this.revenue + ", countryCode=" + this.countryCode + ", networkName=" + this.networkName + ", adUnitId=" + this.adUnitId + ", thirdPartyAdPlacementId=" + this.thirdPartyAdPlacementId + ", adFormat=" + this.adFormat + ')';
    }

    public AdRevenueData(UUID eventId, Double d, String str, String str2, String str3, String str4, AdRevenueAdFormat adRevenueAdFormat) {
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        this.eventId = eventId;
        this.revenue = d;
        this.countryCode = str;
        this.networkName = str2;
        this.adUnitId = str3;
        this.thirdPartyAdPlacementId = str4;
        this.adFormat = adRevenueAdFormat;
    }

    public /* synthetic */ AdRevenueData(UUID uuid, Double d, String str, String str2, String str3, String str4, AdRevenueAdFormat adRevenueAdFormat, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? UUID.randomUUID() : uuid, d, str, str2, str3, str4, adRevenueAdFormat);
    }

    public final UUID getEventId() {
        return this.eventId;
    }

    public final Double getRevenue() {
        return this.revenue;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getNetworkName() {
        return this.networkName;
    }

    public final String getAdUnitId() {
        return this.adUnitId;
    }

    public final String getThirdPartyAdPlacementId() {
        return this.thirdPartyAdPlacementId;
    }

    public final AdRevenueAdFormat getAdFormat() {
        return this.adFormat;
    }
}
