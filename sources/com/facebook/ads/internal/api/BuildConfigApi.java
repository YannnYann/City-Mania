package com.facebook.ads.internal.api;

import android.content.Context;
import androidx.annotation.Keep;
import com.facebook.ads.BuildConfig;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes3.dex */
@Keep
@Nullsafe(Nullsafe.Mode.LOCAL)
public class BuildConfigApi {
    static final String UNITY_SHARED_PREFERENCES_SUFIX = ".v2.playerprefs";
    static final String UNITY_TAG = "an_isUnitySDK";
    static final String UNITY_VERSION_SUFIX = "-unity";
    private static volatile String sVersionOverride;

    public static void setVersionOverride(String str) {
        sVersionOverride = str;
    }

    public static String getVersionOverride() {
        return sVersionOverride;
    }

    public static String getVersionName(Context context) {
        String str = sVersionOverride;
        if (str != null && !str.isEmpty()) {
            if (!isUnity(context)) {
                return str;
            }
            return str + UNITY_VERSION_SUFIX;
        }
        if (isUnity(context)) {
            return BuildConfig.VERSION_NAME + UNITY_VERSION_SUFIX;
        }
        return BuildConfig.VERSION_NAME;
    }

    private static boolean isUnity(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getPackageName());
        sb.append(UNITY_SHARED_PREFERENCES_SUFIX);
        return context.getSharedPreferences(sb.toString(), 0).contains(UNITY_TAG) || context.getSharedPreferences(context.getPackageName(), 0).contains(UNITY_TAG);
    }

    public static boolean isDebug() {
        return BuildConfig.DEBUG;
    }
}
