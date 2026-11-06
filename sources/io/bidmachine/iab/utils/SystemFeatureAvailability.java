package io.bidmachine.iab.utils;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public class SystemFeatureAvailability {
    public final Context a;

    public SystemFeatureAvailability(Context context) {
        this.a = context.getApplicationContext();
    }

    public boolean hasTelephony() {
        return this.a.getPackageManager().hasSystemFeature("android.hardware.telephony");
    }
}
