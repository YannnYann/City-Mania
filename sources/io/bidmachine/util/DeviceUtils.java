package io.bidmachine.util;

import android.content.Context;
import android.os.Build;
import android.util.Size;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DeviceUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DeviceUtils {
    public static final DeviceUtils INSTANCE = new DeviceUtils();

    public static final String getOsVersion() {
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        return RELEASE;
    }

    public static final String getBuildId() {
        String ID = Build.ID;
        Intrinsics.checkNotNullExpressionValue(ID, "ID");
        return ID;
    }

    public static final String getModel() {
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        return MODEL;
    }

    public static final String getManufacturer() {
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        return MANUFACTURER;
    }

    public static final float getScreenDensity(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return DeviceUtilsKt.getScreenDensity(context);
    }

    public static final Size getScreenSize(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return DeviceUtilsKt.getScreenSize(context);
    }

    public static final String getPhoneMCCMNC(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return DeviceUtilsKt.getPhoneMCCMNC(context);
    }

    public static final String getPhoneNetworkOperatorName(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return DeviceUtilsKt.getPhoneNetworkOperatorName(context);
    }

    public static final String getPhoneSimOperatorName(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return DeviceUtilsKt.getPhoneSimOperatorName(context);
    }

    public static final String getPhoneSimCountryIso(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return DeviceUtilsKt.getPhoneSimCountryIso(context);
    }

    public static final Boolean isNetworkRoaming(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return DeviceUtilsKt.isNetworkRoaming(context);
    }

    public static final boolean isTablet(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return DeviceUtilsKt.getConfiguration(context).smallestScreenWidthDp >= 600;
    }

    public static final DeviceType getDeviceType(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return DeviceUtilsKt.getDeviceType(context);
    }
}
