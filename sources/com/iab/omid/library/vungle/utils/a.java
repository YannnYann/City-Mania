package com.iab.omid.library.vungle.utils;

import android.content.Context;
import com.iab.omid.library.vungle.adsession.DeviceCategory;

/* JADX INFO: loaded from: classes3.dex */
public final class a {
    private static Context a;
    private static volatile DeviceCategory b;

    public static DeviceCategory a() {
        if (b == null && a != null) {
            b();
        }
        return b == null ? DeviceCategory.OTHER : b;
    }

    private static DeviceCategory a(int i) {
        return i != 1 ? i != 4 ? DeviceCategory.OTHER : DeviceCategory.CTV : DeviceCategory.MOBILE;
    }

    public static void a(Context context) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            a = applicationContext;
            if (applicationContext == null) {
                a = context;
            }
        }
        b = null;
    }

    private static synchronized void b() {
        if (a == null || b != null) {
            return;
        }
        try {
            b = a(a.getResources().getConfiguration().uiMode & 15);
        } catch (RuntimeException unused) {
        }
    }
}
