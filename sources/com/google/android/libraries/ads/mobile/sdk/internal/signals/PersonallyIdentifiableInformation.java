package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class PersonallyIdentifiableInformation {

    @SerializedName("rdid")
    public String adId;

    @SerializedName("adsid")
    public String adsId;

    @SerializedName("afai")
    public String amazonFireAdId;

    @SerializedName("pvid")
    public String appSetId;

    @SerializedName("pvid_s")
    public Integer appSetIdScope;

    @SerializedName("idtype")
    public String idTypeParameter;

    @SerializedName("is_afai_lat")
    public Boolean isAmazonFireAdIdLimitAdTracking;

    @SerializedName("is_lat")
    public Boolean isLimitedAdTracking;

    @SerializedName("paidv1_creation_time_android")
    public Long paidV1CreationTimeMilliseconds;

    @SerializedName("paidv1_creation_time_android_seconds")
    public Long paidV1CreationTimeSeconds;

    @SerializedName("paidv2_creation_time_android")
    public Long paidV2CreationTimeMilliseconds;

    @SerializedName("paidv2_pub_option_android")
    public Boolean paidV2PubOption;

    @SerializedName("paidv2_user_option_android")
    public Boolean paidV2UserOption;

    @SerializedName("paidv1_id_android")
    public String perAppIdV1;

    @SerializedName("paidv2_id_android")
    public String perAppIdV2;

    public PersonallyIdentifiableInformation() {
        this(0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PersonallyIdentifiableInformation)) {
            return false;
        }
        PersonallyIdentifiableInformation personallyIdentifiableInformation = (PersonallyIdentifiableInformation) obj;
        return Intrinsics.areEqual(this.appSetId, personallyIdentifiableInformation.appSetId) && Intrinsics.areEqual(this.appSetIdScope, personallyIdentifiableInformation.appSetIdScope) && Intrinsics.areEqual(this.perAppIdV1, personallyIdentifiableInformation.perAppIdV1) && Intrinsics.areEqual(this.paidV1CreationTimeMilliseconds, personallyIdentifiableInformation.paidV1CreationTimeMilliseconds) && Intrinsics.areEqual(this.paidV1CreationTimeSeconds, personallyIdentifiableInformation.paidV1CreationTimeSeconds) && Intrinsics.areEqual(this.perAppIdV2, personallyIdentifiableInformation.perAppIdV2) && Intrinsics.areEqual(this.paidV2CreationTimeMilliseconds, personallyIdentifiableInformation.paidV2CreationTimeMilliseconds) && Intrinsics.areEqual(this.paidV2UserOption, personallyIdentifiableInformation.paidV2UserOption) && Intrinsics.areEqual(this.paidV2PubOption, personallyIdentifiableInformation.paidV2PubOption) && Intrinsics.areEqual(this.adId, personallyIdentifiableInformation.adId) && Intrinsics.areEqual(this.isLimitedAdTracking, personallyIdentifiableInformation.isLimitedAdTracking) && Intrinsics.areEqual(this.idTypeParameter, personallyIdentifiableInformation.idTypeParameter) && Intrinsics.areEqual(this.adsId, personallyIdentifiableInformation.adsId) && Intrinsics.areEqual(this.amazonFireAdId, personallyIdentifiableInformation.amazonFireAdId) && Intrinsics.areEqual(this.isAmazonFireAdIdLimitAdTracking, personallyIdentifiableInformation.isAmazonFireAdIdLimitAdTracking);
    }

    public final int hashCode() {
        String str = this.appSetId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.appSetIdScope;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.perAppIdV1;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l = this.paidV1CreationTimeMilliseconds;
        int iHashCode4 = (iHashCode3 + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.paidV1CreationTimeSeconds;
        int iHashCode5 = (iHashCode4 + (l2 == null ? 0 : l2.hashCode())) * 31;
        String str3 = this.perAppIdV2;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Long l3 = this.paidV2CreationTimeMilliseconds;
        int iHashCode7 = (iHashCode6 + (l3 == null ? 0 : l3.hashCode())) * 31;
        Boolean bool = this.paidV2UserOption;
        int iHashCode8 = (iHashCode7 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.paidV2PubOption;
        int iHashCode9 = (iHashCode8 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str4 = this.adId;
        int iHashCode10 = (iHashCode9 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Boolean bool3 = this.isLimitedAdTracking;
        int iHashCode11 = (iHashCode10 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        String str5 = this.idTypeParameter;
        int iHashCode12 = (iHashCode11 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.adsId;
        int iHashCode13 = (iHashCode12 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.amazonFireAdId;
        int iHashCode14 = (iHashCode13 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Boolean bool4 = this.isAmazonFireAdIdLimitAdTracking;
        return iHashCode14 + (bool4 != null ? bool4.hashCode() : 0);
    }

    public final String toString() {
        return "PersonallyIdentifiableInformation(appSetId=" + this.appSetId + ", appSetIdScope=" + this.appSetIdScope + ", perAppIdV1=" + this.perAppIdV1 + ", paidV1CreationTimeMilliseconds=" + this.paidV1CreationTimeMilliseconds + ", paidV1CreationTimeSeconds=" + this.paidV1CreationTimeSeconds + ", perAppIdV2=" + this.perAppIdV2 + ", paidV2CreationTimeMilliseconds=" + this.paidV2CreationTimeMilliseconds + ", paidV2UserOption=" + this.paidV2UserOption + ", paidV2PubOption=" + this.paidV2PubOption + ", adId=" + this.adId + ", isLimitedAdTracking=" + this.isLimitedAdTracking + ", idTypeParameter=" + this.idTypeParameter + ", adsId=" + this.adsId + ", amazonFireAdId=" + this.amazonFireAdId + ", isAmazonFireAdIdLimitAdTracking=" + this.isAmazonFireAdIdLimitAdTracking + ")";
    }

    public PersonallyIdentifiableInformation(String str, Integer num, String str2, Long l, Long l2, String str3, Long l3, Boolean bool, Boolean bool2, String str4, Boolean bool3, String str5, String str6, String str7, Boolean bool4) {
        this.appSetId = str;
        this.appSetIdScope = num;
        this.perAppIdV1 = str2;
        this.paidV1CreationTimeMilliseconds = l;
        this.paidV1CreationTimeSeconds = l2;
        this.perAppIdV2 = str3;
        this.paidV2CreationTimeMilliseconds = l3;
        this.paidV2UserOption = bool;
        this.paidV2PubOption = bool2;
        this.adId = str4;
        this.isLimitedAdTracking = bool3;
        this.idTypeParameter = str5;
        this.adsId = str6;
        this.amazonFireAdId = str7;
        this.isAmazonFireAdIdLimitAdTracking = bool4;
    }

    public /* synthetic */ PersonallyIdentifiableInformation(int i) {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
    }
}
