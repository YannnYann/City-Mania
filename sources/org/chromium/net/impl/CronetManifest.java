package org.chromium.net.impl;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import org.chromium.base.metrics.ScopedSysTraceEvent;
import org.chromium.net.impl.CronetLogger;

/* JADX INFO: loaded from: classes5.dex */
public final class CronetManifest {

    @SuppressLint({"StaticFieldLeak"})
    public static Context sLastContext;
    public static final Object sLock = new Object();
    public static Bundle sMetaData;

    public static boolean isAppOptedInForTelemetry(Context context, CronetLogger.CronetSource source) {
        return getMetaData(context).getBoolean("android.net.http.EnableTelemetry", source == CronetLogger.CronetSource.CRONET_SOURCE_PLATFORM || source == CronetLogger.CronetSource.CRONET_SOURCE_PLAY_SERVICES);
    }

    public static boolean isAppOptedInForTelemetry(Context context) {
        boolean z = false;
        try {
            Class.forName("org.chromium.net.impl.NativeCronetEngineBuilderImpl", false, CronetManifest.class.getClassLoader());
            z = true;
        } catch (ClassNotFoundException unused) {
        }
        return getMetaData(context).getBoolean("android.net.http.EnableTelemetry", !z);
    }

    public static boolean shouldReadHttpFlags(Context context) {
        return getMetaData(context).getBoolean("android.net.http.ReadHttpFlags", true);
    }

    public static Bundle getMetaData(Context context) {
        Bundle bundle;
        ServiceInfo serviceInfo;
        Bundle bundle2;
        Context applicationContext = context.getApplicationContext();
        synchronized (sLock) {
            if (applicationContext != sLastContext) {
                ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("CronetManifest#getMetaData fetching info");
                try {
                    try {
                        serviceInfo = applicationContext.getPackageManager().getServiceInfo(new ComponentName(applicationContext, "android.net.http.MetaDataHolder"), 787072);
                    } finally {
                    }
                } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
                    serviceInfo = null;
                }
                if (serviceInfo == null || (bundle2 = serviceInfo.metaData) == null) {
                    bundle2 = new Bundle();
                }
                sMetaData = bundle2;
                sLastContext = applicationContext;
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            }
            bundle = sMetaData;
        }
        return bundle;
    }
}
