package ads_mobile_sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class x41 {
    public static x41 c;
    public final String a;
    public final SharedPreferences b;

    public final void a(Object obj, String str) throws IOException {
        boolean zCommit;
        if (obj instanceof String) {
            zCommit = this.b.edit().putString(str, (String) obj).commit();
        } else if (obj instanceof Long) {
            zCommit = this.b.edit().putLong(str, ((Long) obj).longValue()).commit();
        } else if (obj instanceof Boolean) {
            zCommit = this.b.edit().putBoolean(str, ((Boolean) obj).booleanValue()).commit();
        } else {
            if (!(obj instanceof Integer)) {
                Log.e("GpidLifecycleSPHandler", "Unexpected object class " + obj.getClass() + " for app " + this.a);
                throw new IOException("Failed to store " + str + " for app " + this.a);
            }
            zCommit = this.b.edit().putInt(str, ((Integer) obj).intValue()).commit();
        }
        if (zCommit) {
            return;
        }
        throw new IOException("Failed to store " + str + " for app " + this.a);
    }

    public x41(Context context) {
        this.a = context.getPackageName();
        this.b = context.getSharedPreferences("paid_storage_sp", 0);
    }

    public final void a(String str) throws IOException {
        if (this.b.edit().remove(str).commit()) {
            return;
        }
        throw new IOException("Failed to remove " + str + " for app " + this.a);
    }

    public static x41 a(Context context) {
        if (c == null) {
            c = new x41(context);
        }
        return c;
    }
}
