package io.bidmachine;

import android.location.Location;
import io.bidmachine.models.TargetingInfo;
import io.bidmachine.utils.Gender;
import java.util.Calendar;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class TargetingInfoImpl implements TargetingInfo {
    private final TargetingParams targetingParams;

    public TargetingInfoImpl(TargetingParams targetingParams) {
        Intrinsics.checkNotNullParameter(targetingParams, "targetingParams");
        this.targetingParams = targetingParams;
    }

    public String getCity() {
        return this.targetingParams.getCity();
    }

    public String getCountry() {
        return this.targetingParams.getCountry();
    }

    public Location getDeviceLocation() {
        return this.targetingParams.getDeviceLocation();
    }

    public Gender getGender() {
        return this.targetingParams.getGender();
    }

    public List<String> getKeywords() {
        return this.targetingParams.getKeywords();
    }

    public String getStoreUrl() {
        return this.targetingParams.getStoreUrl();
    }

    public Integer getUserAge() {
        Integer userBirthdayYear = getUserBirthdayYear();
        if (userBirthdayYear == null) {
            return null;
        }
        return Integer.valueOf(Calendar.getInstance().get(1) - userBirthdayYear.intValue());
    }

    public Integer getUserBirthdayYear() {
        return this.targetingParams.getBirthdayYear();
    }

    public String getUserId() {
        return this.targetingParams.getUserId();
    }

    public String getZip() {
        return this.targetingParams.getZip();
    }

    public Boolean isPaid() {
        return this.targetingParams.getPaid();
    }
}
