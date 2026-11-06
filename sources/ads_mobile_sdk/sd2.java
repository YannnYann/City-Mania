package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public abstract class sd2 {
    public static Context a;
    public static volatile int b;

    public static int a() {
        if (b == 0 && a != null) {
            synchronized (sd2.class) {
                if (a != null && b == 0) {
                    try {
                        int i = a.getResources().getConfiguration().uiMode & 15;
                        int i2 = 1;
                        if (i == 1) {
                            i2 = 2;
                        } else if (i != 4) {
                            i2 = 3;
                        }
                        b = i2;
                    } catch (RuntimeException unused) {
                    }
                }
            }
        }
        if (b == 0) {
            return 3;
        }
        return b;
    }
}
