package ads_mobile_sdk;

import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public abstract class jn0 {
    public static boolean a() {
        if (Build.VERSION.SDK_INT < 31) {
            return Build.DEVICE.startsWith("generic");
        }
        String str = Build.FINGERPRINT;
        return str.contains("generic") || str.contains("emulator") || Build.HARDWARE.contains("ranchu");
    }
}
