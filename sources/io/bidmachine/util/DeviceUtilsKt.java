package io.bidmachine.util;

import android.app.UiModeManager;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Size;
import android.util.TypedValue;
import android.view.Display;
import android.view.WindowManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DeviceUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DeviceUtilsKt {
    public static final DisplayMetrics getDisplayMetrics(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics, "resources.displayMetrics");
        return displayMetrics;
    }

    public static final Configuration getConfiguration(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Configuration configuration = context.getResources().getConfiguration();
        Intrinsics.checkNotNullExpressionValue(configuration, "resources.configuration");
        return configuration;
    }

    public static final float getScreenDensity(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return getDisplayMetrics(context).density;
    }

    public static final Size getScreenSize(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Size realScreenSize = getRealScreenSize(context);
        return realScreenSize == null ? getDisplayMetricsScreenSize(context) : realScreenSize;
    }

    public static final Size getRealScreenSize(Context context) {
        Size size;
        try {
            WindowManager windowManager = UtilsKt.getWindowManager(context);
            if (windowManager == null) {
                return null;
            }
            if (Build.VERSION.SDK_INT >= 30) {
                Rect bounds = windowManager.getMaximumWindowMetrics().getBounds();
                size = new Size(bounds.width(), bounds.height());
            } else {
                Display defaultDisplay = windowManager.getDefaultDisplay();
                if (defaultDisplay != null) {
                    Intrinsics.checkNotNullExpressionValue(defaultDisplay, "defaultDisplay");
                    Point point = new Point();
                    defaultDisplay.getRealSize(point);
                    size = new Size(point.x, point.y);
                } else {
                    size = null;
                }
            }
            if (size != null && size.getWidth() > 0) {
                if (size.getHeight() > 0) {
                    return size;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static final Size getDisplayMetricsScreenSize(Context context) {
        DisplayMetrics displayMetrics = getDisplayMetrics(context);
        return new Size(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    public static final String getPhoneMCCMNC(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        try {
            TelephonyManager telephonyManager = UtilsKt.getTelephonyManager(context);
            String networkOperator = telephonyManager != null ? telephonyManager.getNetworkOperator() : null;
            if (networkOperator != null && networkOperator.length() >= 3) {
                StringBuilder sb = new StringBuilder();
                String strSubstring = networkOperator.substring(0, 3);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                sb.append(strSubstring);
                sb.append('-');
                String strSubstring2 = networkOperator.substring(3);
                Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String).substring(startIndex)");
                sb.append(strSubstring2);
                return sb.toString();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static final String getPhoneNetworkOperatorName(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        TelephonyManager telephonyManager = UtilsKt.getTelephonyManager(context);
        if (telephonyManager != null) {
            return telephonyManager.getNetworkOperatorName();
        }
        return null;
    }

    public static final String getPhoneSimOperatorName(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        TelephonyManager telephonyManager = UtilsKt.getTelephonyManager(context);
        if (telephonyManager != null) {
            return telephonyManager.getSimOperatorName();
        }
        return null;
    }

    public static final String getPhoneSimCountryIso(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        TelephonyManager telephonyManager = UtilsKt.getTelephonyManager(context);
        if (telephonyManager != null) {
            return telephonyManager.getSimCountryIso();
        }
        return null;
    }

    public static final Boolean isNetworkRoaming(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        TelephonyManager telephonyManager = UtilsKt.getTelephonyManager(context);
        if (telephonyManager != null) {
            return Boolean.valueOf(telephonyManager.isNetworkRoaming());
        }
        return null;
    }

    public static final boolean isTablet(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return DeviceUtils.isTablet(context);
    }

    public static final boolean isTv(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        UiModeManager uiModeManager = UtilsKt.getUiModeManager(context);
        return (uiModeManager != null && uiModeManager.getCurrentModeType() == 4) || context.getPackageManager().hasSystemFeature("android.software.leanback");
    }

    public static final DeviceType getDeviceType(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return isTv(context) ? DeviceType.CTV : isTablet(context) ? DeviceType.TABLET : DeviceType.PHONE_DEVICE;
    }

    public static final float applyDimension(DisplayMetrics displayMetrics, int i, float f) {
        Intrinsics.checkNotNullParameter(displayMetrics, "<this>");
        return TypedValue.applyDimension(i, f, displayMetrics);
    }
}
