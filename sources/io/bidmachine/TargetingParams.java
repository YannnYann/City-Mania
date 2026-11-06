package io.bidmachine;

import android.location.Location;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.models.RequestParams;
import io.bidmachine.protobuf.EventTypeExtended;
import io.bidmachine.utils.Gender;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import vm2.Lua;

/* JADX INFO: loaded from: classes4.dex */
public final class TargetingParams extends RequestParams<TargetingParams> {
    private BlockedParams blockedParams;
    private Data data;

    public static final class Data {
        private final Integer birthdayYear;
        private final String city;
        private final String country;
        private final Location deviceLocation;
        private final List<ExternalUserId> externalUserIdList;
        private final String framework;
        private final Gender gender;
        private final Boolean isPaid;
        private final List<String> keywords;
        private final String storeCategory;
        private final List<String> storeSubCategories;
        private final String storeUrl;
        private final String userId;
        private final String zip;

        public Data() {
            this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, Lua.MASK_NOT_Bx, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Data copy$default(Data data, String str, Gender gender, Integer num, List list, Location location, String str2, String str3, String str4, String str5, String str6, List list2, String str7, Boolean bool, List list3, int i, Object obj) {
            return data.copy((i & 1) != 0 ? data.userId : str, (i & 2) != 0 ? data.gender : gender, (i & 4) != 0 ? data.birthdayYear : num, (i & 8) != 0 ? data.keywords : list, (i & 16) != 0 ? data.deviceLocation : location, (i & 32) != 0 ? data.country : str2, (i & 64) != 0 ? data.city : str3, (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? data.zip : str4, (i & 256) != 0 ? data.storeUrl : str5, (i & EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) != 0 ? data.storeCategory : str6, (i & 1024) != 0 ? data.storeSubCategories : list2, (i & com.ironsource.mediationsdk.metadata.a.o) != 0 ? data.framework : str7, (i & 4096) != 0 ? data.isPaid : bool, (i & 8192) != 0 ? data.externalUserIdList : list3);
        }

        public final String component1() {
            return this.userId;
        }

        public final String component10() {
            return this.storeCategory;
        }

        public final List<String> component11() {
            return this.storeSubCategories;
        }

        public final String component12() {
            return this.framework;
        }

        public final Boolean component13() {
            return this.isPaid;
        }

        public final List<ExternalUserId> component14() {
            return this.externalUserIdList;
        }

        public final Gender component2() {
            return this.gender;
        }

        public final Integer component3() {
            return this.birthdayYear;
        }

        public final List<String> component4() {
            return this.keywords;
        }

        public final Location component5() {
            return this.deviceLocation;
        }

        public final String component6() {
            return this.country;
        }

        public final String component7() {
            return this.city;
        }

        public final String component8() {
            return this.zip;
        }

        public final String component9() {
            return this.storeUrl;
        }

        public final Data copy(String str, Gender gender, Integer num, List<String> list, Location location, String str2, String str3, String str4, String str5, String str6, List<String> list2, String str7, Boolean bool, List<? extends ExternalUserId> list3) {
            return new Data(str, gender, num, list, location, str2, str3, str4, str5, str6, list2, str7, bool, list3);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Data)) {
                return false;
            }
            Data data = (Data) obj;
            return Intrinsics.areEqual(this.userId, data.userId) && this.gender == data.gender && Intrinsics.areEqual(this.birthdayYear, data.birthdayYear) && Intrinsics.areEqual(this.keywords, data.keywords) && Intrinsics.areEqual(this.deviceLocation, data.deviceLocation) && Intrinsics.areEqual(this.country, data.country) && Intrinsics.areEqual(this.city, data.city) && Intrinsics.areEqual(this.zip, data.zip) && Intrinsics.areEqual(this.storeUrl, data.storeUrl) && Intrinsics.areEqual(this.storeCategory, data.storeCategory) && Intrinsics.areEqual(this.storeSubCategories, data.storeSubCategories) && Intrinsics.areEqual(this.framework, data.framework) && Intrinsics.areEqual(this.isPaid, data.isPaid) && Intrinsics.areEqual(this.externalUserIdList, data.externalUserIdList);
        }

        public final Integer getBirthdayYear() {
            return this.birthdayYear;
        }

        public final String getCity() {
            return this.city;
        }

        public final String getCountry() {
            return this.country;
        }

        public final Location getDeviceLocation() {
            return this.deviceLocation;
        }

        public final List<ExternalUserId> getExternalUserIdList() {
            return this.externalUserIdList;
        }

        public final String getFramework() {
            return this.framework;
        }

        public final Gender getGender() {
            return this.gender;
        }

        public final List<String> getKeywords() {
            return this.keywords;
        }

        public final String getStoreCategory() {
            return this.storeCategory;
        }

        public final List<String> getStoreSubCategories() {
            return this.storeSubCategories;
        }

        public final String getStoreUrl() {
            return this.storeUrl;
        }

        public final String getUserId() {
            return this.userId;
        }

        public final String getZip() {
            return this.zip;
        }

        public int hashCode() {
            String str = this.userId;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            Gender gender = this.gender;
            int iHashCode2 = (iHashCode + (gender == null ? 0 : gender.hashCode())) * 31;
            Integer num = this.birthdayYear;
            int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
            List<String> list = this.keywords;
            int iHashCode4 = (iHashCode3 + (list == null ? 0 : list.hashCode())) * 31;
            Location location = this.deviceLocation;
            int iHashCode5 = (iHashCode4 + (location == null ? 0 : location.hashCode())) * 31;
            String str2 = this.country;
            int iHashCode6 = (iHashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.city;
            int iHashCode7 = (iHashCode6 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.zip;
            int iHashCode8 = (iHashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.storeUrl;
            int iHashCode9 = (iHashCode8 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.storeCategory;
            int iHashCode10 = (iHashCode9 + (str6 == null ? 0 : str6.hashCode())) * 31;
            List<String> list2 = this.storeSubCategories;
            int iHashCode11 = (iHashCode10 + (list2 == null ? 0 : list2.hashCode())) * 31;
            String str7 = this.framework;
            int iHashCode12 = (iHashCode11 + (str7 == null ? 0 : str7.hashCode())) * 31;
            Boolean bool = this.isPaid;
            int iHashCode13 = (iHashCode12 + (bool == null ? 0 : bool.hashCode())) * 31;
            List<ExternalUserId> list3 = this.externalUserIdList;
            return iHashCode13 + (list3 != null ? list3.hashCode() : 0);
        }

        public final Boolean isPaid() {
            return this.isPaid;
        }

        public String toString() {
            return "Data(userId=" + this.userId + ", gender=" + this.gender + ", birthdayYear=" + this.birthdayYear + ", keywords=" + this.keywords + ", deviceLocation=" + this.deviceLocation + ", country=" + this.country + ", city=" + this.city + ", zip=" + this.zip + ", storeUrl=" + this.storeUrl + ", storeCategory=" + this.storeCategory + ", storeSubCategories=" + this.storeSubCategories + ", framework=" + this.framework + ", isPaid=" + this.isPaid + ", externalUserIdList=" + this.externalUserIdList + ')';
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Data(String str, Gender gender, Integer num, List<String> list, Location location, String str2, String str3, String str4, String str5, String str6, List<String> list2, String str7, Boolean bool, List<? extends ExternalUserId> list3) {
            this.userId = str;
            this.gender = gender;
            this.birthdayYear = num;
            this.keywords = list;
            this.deviceLocation = location;
            this.country = str2;
            this.city = str3;
            this.zip = str4;
            this.storeUrl = str5;
            this.storeCategory = str6;
            this.storeSubCategories = list2;
            this.framework = str7;
            this.isPaid = bool;
            this.externalUserIdList = list3;
        }

        public /* synthetic */ Data(String str, Gender gender, Integer num, List list, Location location, String str2, String str3, String str4, String str5, String str6, List list2, String str7, Boolean bool, List list3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : gender, (i & 4) != 0 ? null : num, (i & 8) != 0 ? null : list, (i & 16) != 0 ? null : location, (i & 32) != 0 ? null : str2, (i & 64) != 0 ? null : str3, (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? null : str4, (i & 256) != 0 ? null : str5, (i & EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) != 0 ? null : str6, (i & 1024) != 0 ? null : list2, (i & com.ironsource.mediationsdk.metadata.a.o) != 0 ? null : str7, (i & 4096) != 0 ? null : bool, (i & 8192) != 0 ? null : list3);
        }
    }

    public TargetingParams() {
        this.data = new Data(null, null, null, null, null, null, null, null, null, null, null, null, null, null, Lua.MASK_NOT_Bx, null);
    }

    private final BlockedParams prepareBlockParams() {
        BlockedParams blockedParams = this.blockedParams;
        if (blockedParams != null) {
            return blockedParams;
        }
        BlockedParams blockedParams2 = new BlockedParams();
        this.blockedParams = blockedParams2;
        return blockedParams2;
    }

    public final Integer getBirthdayYear() {
        return this.data.getBirthdayYear();
    }

    public final /* synthetic */ BlockedParams getBlockedParams$bidmachine_android_sdk_ba_3_8_0() {
        return this.blockedParams;
    }

    public final String getCity() {
        return this.data.getCity();
    }

    public final String getCountry() {
        return this.data.getCountry();
    }

    public final /* synthetic */ Data getData$bidmachine_android_sdk_ba_3_8_0() {
        return this.data;
    }

    public final Location getDeviceLocation() {
        return this.data.getDeviceLocation();
    }

    public final List<ExternalUserId> getExternalUserIdList() {
        return this.data.getExternalUserIdList();
    }

    public final String getFramework() {
        return this.data.getFramework();
    }

    public final Gender getGender() {
        return this.data.getGender();
    }

    public final List<String> getKeywords() {
        return this.data.getKeywords();
    }

    public final Boolean getPaid() {
        return this.data.isPaid();
    }

    public final String getStoreCategory() {
        return this.data.getStoreCategory();
    }

    public final String[] getStoreSubCategories() {
        List<String> storeSubCategories = this.data.getStoreSubCategories();
        if (storeSubCategories != null) {
            return (String[]) storeSubCategories.toArray(new String[0]);
        }
        return null;
    }

    public final String getStoreUrl() {
        return this.data.getStoreUrl();
    }

    public final String getUserId() {
        return this.data.getUserId();
    }

    public final String getZip() {
        return this.data.getZip();
    }

    /* JADX INFO: renamed from: setExternalUserIds, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Object m2462setExternalUserIds(List list) {
        return setExternalUserIds((List<? extends ExternalUserId>) list);
    }

    /* JADX INFO: renamed from: addBlockedAdvertiserDomain, reason: merged with bridge method [inline-methods] */
    public TargetingParams m2455addBlockedAdvertiserDomain(String domain) {
        Intrinsics.checkNotNullParameter(domain, "domain");
        prepareBlockParams().m2436addBlockedAdvertiserDomain(domain);
        return this;
    }

    /* JADX INFO: renamed from: addBlockedAdvertiserIABCategory, reason: merged with bridge method [inline-methods] */
    public TargetingParams m2456addBlockedAdvertiserIABCategory(String category) {
        Intrinsics.checkNotNullParameter(category, "category");
        prepareBlockParams().m2437addBlockedAdvertiserIABCategory(category);
        return this;
    }

    /* JADX INFO: renamed from: addBlockedApplication, reason: merged with bridge method [inline-methods] */
    public TargetingParams m2457addBlockedApplication(String bundleOrPackage) {
        Intrinsics.checkNotNullParameter(bundleOrPackage, "bundleOrPackage");
        prepareBlockParams().m2438addBlockedApplication(bundleOrPackage);
        return this;
    }

    @Override // io.bidmachine.models.RequestParams
    public void merge(TargetingParams instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        Data data = this.data;
        String userId = data.getUserId();
        if (userId == null) {
            userId = instance.data.getUserId();
        }
        String str = userId;
        Gender gender = data.getGender();
        if (gender == null) {
            gender = instance.data.getGender();
        }
        Gender gender2 = gender;
        Integer birthdayYear = data.getBirthdayYear();
        if (birthdayYear == null) {
            birthdayYear = instance.data.getBirthdayYear();
        }
        Integer num = birthdayYear;
        List<String> keywords = data.getKeywords();
        if (keywords == null) {
            keywords = instance.data.getKeywords();
        }
        List<String> list = keywords;
        Location deviceLocation = data.getDeviceLocation();
        if (deviceLocation == null) {
            deviceLocation = instance.data.getDeviceLocation();
        }
        Location location = deviceLocation;
        String country = data.getCountry();
        if (country == null) {
            country = instance.data.getCountry();
        }
        String str2 = country;
        String city = data.getCity();
        if (city == null) {
            city = instance.data.getCity();
        }
        String str3 = city;
        String zip = data.getZip();
        if (zip == null) {
            zip = instance.data.getZip();
        }
        String str4 = zip;
        String storeUrl = data.getStoreUrl();
        if (storeUrl == null) {
            storeUrl = instance.data.getStoreUrl();
        }
        String str5 = storeUrl;
        String storeCategory = data.getStoreCategory();
        if (storeCategory == null) {
            storeCategory = instance.data.getStoreCategory();
        }
        String str6 = storeCategory;
        List<String> storeSubCategories = data.getStoreSubCategories();
        if (storeSubCategories == null) {
            storeSubCategories = instance.data.getStoreSubCategories();
        }
        List<String> list2 = storeSubCategories;
        String framework = data.getFramework();
        if (framework == null) {
            framework = instance.data.getFramework();
        }
        String str7 = framework;
        Boolean boolIsPaid = data.isPaid();
        if (boolIsPaid == null) {
            boolIsPaid = instance.data.isPaid();
        }
        Boolean bool = boolIsPaid;
        List<ExternalUserId> externalUserIdList = data.getExternalUserIdList();
        if (externalUserIdList == null) {
            externalUserIdList = instance.data.getExternalUserIdList();
        }
        this.data = data.copy(str, gender2, num, list, location, str2, str3, str4, str5, str6, list2, str7, bool, externalUserIdList);
        BlockedParams blockedParams = instance.blockedParams;
        if (blockedParams != null) {
            if (this.blockedParams == null) {
                this.blockedParams = new BlockedParams();
            }
            BlockedParams blockedParams2 = this.blockedParams;
            if (blockedParams2 != null) {
                blockedParams2.merge(blockedParams);
            }
        }
    }

    /* JADX INFO: renamed from: setBirthdayYear, reason: merged with bridge method [inline-methods] */
    public TargetingParams m2458setBirthdayYear(Integer num) {
        if (num == null || Utils.isYearValid(num.intValue())) {
            this.data = Data.copy$default(this.data, null, null, num, null, null, null, null, null, null, null, null, null, null, null, 16379, null);
            return this;
        }
        Logger.e("Birthday Year should be 4-digit integer, more or equal 1900 and less or equal than current year");
        return this;
    }

    /* JADX INFO: renamed from: setCity, reason: merged with bridge method [inline-methods] */
    public TargetingParams m2459setCity(String str) {
        this.data = Data.copy$default(this.data, null, null, null, null, null, null, str, null, null, null, null, null, null, null, 16319, null);
        return this;
    }

    /* JADX INFO: renamed from: setCountry, reason: merged with bridge method [inline-methods] */
    public TargetingParams m2460setCountry(String str) {
        this.data = Data.copy$default(this.data, null, null, null, null, null, str, null, null, null, null, null, null, null, null, 16351, null);
        return this;
    }

    /* JADX INFO: renamed from: setDeviceLocation, reason: merged with bridge method [inline-methods] */
    public TargetingParams m2461setDeviceLocation(Location location) {
        this.data = Data.copy$default(this.data, null, null, null, null, location, null, null, null, null, null, null, null, null, null, 16367, null);
        return this;
    }

    public TargetingParams setExternalUserIds(List<? extends ExternalUserId> list) {
        this.data = Data.copy$default(this.data, null, null, null, null, null, null, null, null, null, null, null, null, null, list != null ? CollectionsKt___CollectionsKt.toList(list) : null, 8191, null);
        return this;
    }

    /* JADX INFO: renamed from: setFramework, reason: merged with bridge method [inline-methods] */
    public TargetingParams m2463setFramework(String str) {
        this.data = Data.copy$default(this.data, null, null, null, null, null, null, null, null, null, null, null, str, null, null, 14335, null);
        return this;
    }

    /* JADX INFO: renamed from: setGender, reason: merged with bridge method [inline-methods] */
    public TargetingParams m2464setGender(Gender gender) {
        this.data = Data.copy$default(this.data, null, gender, null, null, null, null, null, null, null, null, null, null, null, null, 16381, null);
        return this;
    }

    /* JADX INFO: renamed from: setKeywords, reason: merged with bridge method [inline-methods] */
    public TargetingParams m2465setKeywords(String... keywords) {
        Intrinsics.checkNotNullParameter(keywords, "keywords");
        this.data = Data.copy$default(this.data, null, null, null, ArraysKt___ArraysKt.filterNotNull(keywords), null, null, null, null, null, null, null, null, null, null, 16375, null);
        return this;
    }

    /* JADX INFO: renamed from: setPaid, reason: merged with bridge method [inline-methods] */
    public TargetingParams m2466setPaid(Boolean bool) {
        this.data = Data.copy$default(this.data, null, null, null, null, null, null, null, null, null, null, null, null, bool, null, 12287, null);
        return this;
    }

    /* JADX INFO: renamed from: setStoreCategory, reason: merged with bridge method [inline-methods] */
    public TargetingParams m2467setStoreCategory(String str) {
        this.data = Data.copy$default(this.data, null, null, null, null, null, null, null, null, null, str, null, null, null, null, 15871, null);
        return this;
    }

    /* JADX INFO: renamed from: setStoreSubCategories, reason: merged with bridge method [inline-methods] */
    public TargetingParams m2468setStoreSubCategories(String... storeSubCategories) {
        Intrinsics.checkNotNullParameter(storeSubCategories, "storeSubCategories");
        this.data = Data.copy$default(this.data, null, null, null, null, null, null, null, null, null, null, ArraysKt___ArraysKt.filterNotNull(storeSubCategories), null, null, null, 15359, null);
        return this;
    }

    /* JADX INFO: renamed from: setStoreUrl, reason: merged with bridge method [inline-methods] */
    public TargetingParams m2469setStoreUrl(String str) {
        this.data = Data.copy$default(this.data, null, null, null, null, null, null, null, null, str, null, null, null, null, null, 16127, null);
        return this;
    }

    /* JADX INFO: renamed from: setUserId, reason: merged with bridge method [inline-methods] */
    public TargetingParams m2470setUserId(String str) {
        this.data = Data.copy$default(this.data, str, null, null, null, null, null, null, null, null, null, null, null, null, null, 16382, null);
        return this;
    }

    /* JADX INFO: renamed from: setZip, reason: merged with bridge method [inline-methods] */
    public TargetingParams m2471setZip(String str) {
        this.data = Data.copy$default(this.data, null, null, null, null, null, null, null, str, null, null, null, null, null, null, 16255, null);
        return this;
    }

    public /* synthetic */ TargetingParams(Data data, BlockedParams blockedParams, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new Data(null, null, null, null, null, null, null, null, null, null, null, null, null, null, Lua.MASK_NOT_Bx, null) : data, (i & 2) != 0 ? null : blockedParams);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TargetingParams(Data data, BlockedParams blockedParams) {
        this();
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
        this.blockedParams = blockedParams;
    }
}
