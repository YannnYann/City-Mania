package ads_mobile_sdk;

import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class ds0 implements ru1 {
    public static volatile ds0 d;
    public volatile Boolean a;
    public volatile Boolean b;
    public final Context c;

    public ds0(Context context) {
        this.c = context;
        a();
    }

    public final boolean a() {
        int i;
        if (this.a != null) {
            return this.a.booleanValue();
        }
        synchronized (this) {
            try {
                if (this.a != null) {
                    return this.a.booleanValue();
                }
                boolean z = this.c != null && Build.MANUFACTURER.equalsIgnoreCase("Amazon") && Build.MODEL.toLowerCase().startsWith("aft") && (i = Build.VERSION.SDK_INT) >= 25 && i <= 30;
                this.a = Boolean.valueOf(z);
                return z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static ds0 a(Context context) {
        if (d == null) {
            synchronized (ds0.class) {
                try {
                    if (d == null) {
                        d = new ds0(context);
                    }
                } finally {
                }
            }
        }
        return d;
    }
}
