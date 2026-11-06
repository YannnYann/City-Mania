package ads_mobile_sdk;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class gh1 {
    public static void a(String str) {
        if (Log.isLoggable("InstallReferrerClient", 2)) {
            Log.v("InstallReferrerClient", str);
        }
    }

    public static void b(String str) {
        if (Log.isLoggable("InstallReferrerClient", 5)) {
            Log.w("InstallReferrerClient", str);
        }
    }
}
