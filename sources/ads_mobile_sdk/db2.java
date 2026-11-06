package ads_mobile_sdk;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class db2 {
    public static final int a(Context context) {
        NetworkInfo activeNetworkInfo;
        Intrinsics.checkNotNullParameter(context, "context");
        if (!a(context, "android.permission.ACCESS_NETWORK_STATE") || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService(ConnectivityManager.class)).getActiveNetworkInfo()) == null) {
            return -1;
        }
        return activeNetworkInfo.getDetailedState().ordinal();
    }

    public static final String b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String networkOperator = ((TelephonyManager) context.getSystemService(TelephonyManager.class)).getNetworkOperator();
        Intrinsics.checkNotNullExpressionValue(networkOperator, "getNetworkOperator(...)");
        return networkOperator;
    }

    public static final int c(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (a(context, "android.permission.READ_PHONE_STATE") || (Build.VERSION.SDK_INT >= 33 && a(context, "android.permission.READ_BASIC_PHONE_STATE"))) {
            return ((TelephonyManager) context.getSystemService(TelephonyManager.class)).getDataNetworkType();
        }
        return 0;
    }

    public static final int d(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return ((TelephonyManager) context.getSystemService(TelephonyManager.class)).getPhoneType();
    }

    public static final boolean e(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return ((ConnectivityManager) context.getSystemService(ConnectivityManager.class)).isActiveNetworkMetered();
        }
        return false;
    }

    public static final int a(Context context, NetworkCapabilities networkCapabilities) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!a(context, "android.permission.ACCESS_NETWORK_STATE") || networkCapabilities == null) {
            return -1;
        }
        if (networkCapabilities.hasTransport(3)) {
            return 9;
        }
        if (networkCapabilities.hasTransport(1)) {
            return 1;
        }
        return networkCapabilities.hasTransport(0) ? 0 : -1;
    }

    public static final boolean a(Context context, String permissionName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(permissionName, "permissionName");
        return context.checkSelfPermission(permissionName) == 0;
    }
}
