package org.chromium.net.httpflags;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.chromium.base.metrics.ScopedSysTraceEvent;
import org.chromium.net.httpflags.ResolvedFlags;
import org.chromium.net.impl.CronetManifest;

/* JADX INFO: loaded from: classes5.dex */
public final class HttpFlagsLoader {
    public static ResolvedFlags sHttpFlags;
    public static final Object sLock = new Object();
    public static String sVersion;

    public static Flags load(Context context) {
        try {
            ApplicationInfo providerApplicationInfo = getProviderApplicationInfo(context);
            if (providerApplicationInfo == null) {
                return null;
            }
            Log.d("HttpFlagsLoader", String.format("Found application exporting HTTP flags: %s", providerApplicationInfo.packageName));
            File flagsFileFromProvider = getFlagsFileFromProvider(providerApplicationInfo);
            Log.d("HttpFlagsLoader", String.format("HTTP flags file path: %s", flagsFileFromProvider.getAbsolutePath()));
            Flags flagsLoadFlagsFile = loadFlagsFile(flagsFileFromProvider);
            if (flagsLoadFlagsFile == null) {
                return null;
            }
            Log.d("HttpFlagsLoader", String.format("Successfully loaded HTTP flags: %s", flagsLoadFlagsFile));
            return flagsLoadFlagsFile;
        } catch (RuntimeException e) {
            Log.i("HttpFlagsLoader", "Unable to load HTTP flags file", e);
            return null;
        }
    }

    public static ResolvedFlags getHttpFlags(Context context, String version, boolean isLoadedFromApi, boolean isTelemetryEnabled) {
        Flags flagsLoad;
        synchronized (sLock) {
            try {
                String str = sVersion;
                if (str != null && !version.equals(str)) {
                    throw new IllegalStateException("getHttpFlags() called multiple times with different versions");
                }
                ResolvedFlags resolvedFlags = sHttpFlags;
                if (resolvedFlags != null) {
                    return resolvedFlags;
                }
                sVersion = version;
                ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("HttpFlagsLoader#getHttpFlags loading flags");
                try {
                    if (!CronetManifest.shouldReadHttpFlags(context)) {
                        Log.d("HttpFlagsLoader", "Not loading HTTP flags because they are disabled in the manifest");
                        flagsLoad = null;
                    } else {
                        flagsLoad = load(context);
                    }
                    if (flagsLoad == null) {
                        flagsLoad = Flags.newBuilder().build();
                    }
                    ResolvedFlags resolvedFlagsResolve = ResolvedFlags.resolve(flagsLoad, context.getPackageName(), version, isTelemetryEnabled);
                    sHttpFlags = resolvedFlagsResolve;
                    ResolvedFlags.Value value = resolvedFlagsResolve.flags().get("Cronet_log_me");
                    if (value != null) {
                        Log.i("HttpFlagsLoader", String.format("HTTP flags log line (%s): %s", isLoadedFromApi ? "API" : "Impl", value.getStringValue()));
                    }
                    ResolvedFlags resolvedFlags2 = sHttpFlags;
                    if (scopedSysTraceEventScoped != null) {
                        scopedSysTraceEventScoped.close();
                    }
                    return resolvedFlags2;
                } finally {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static ApplicationInfo getProviderApplicationInfo(Context context) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("HttpFlagsLoader#getProviderApplicationInfo");
        try {
            ResolveInfo resolveInfoResolveService = context.getPackageManager().resolveService(new Intent("android.net.http.FLAGS_FILE_PROVIDER"), 1048576);
            if (resolveInfoResolveService == null) {
                Log.i("HttpFlagsLoader", "Unable to resolve the HTTP flags file provider package. This is expected if the host system is not set up to provide HTTP flags.");
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
                return null;
            }
            ApplicationInfo applicationInfo = resolveInfoResolveService.serviceInfo.applicationInfo;
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
            return applicationInfo;
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static File getFlagsFileFromProvider(ApplicationInfo providerApplicationInfo) {
        return new File(new File(new File(providerApplicationInfo.deviceProtectedDataDir), "app_httpflags"), "flags.binarypb");
    }

    public static Flags loadFlagsFile(File file) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("HttpFlagsLoader#loadFlagsFile");
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    Flags delimitedFrom = Flags.parseDelimitedFrom(fileInputStream);
                    fileInputStream.close();
                    if (scopedSysTraceEventScoped != null) {
                        scopedSysTraceEventScoped.close();
                    }
                    return delimitedFrom;
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                if (scopedSysTraceEventScoped != null) {
                    try {
                        scopedSysTraceEventScoped.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (FileNotFoundException unused) {
            Log.i("HttpFlagsLoader", String.format("HTTP flags file `%s` is missing. This is expected if HTTP flags functionality is currently disabled in the host system.", file.getPath()));
            if (scopedSysTraceEventScoped == null) {
                return null;
            }
            scopedSysTraceEventScoped.close();
            return null;
        } catch (IOException e) {
            throw new RuntimeException("Unable to read HTTP flags file", e);
        }
    }
}
