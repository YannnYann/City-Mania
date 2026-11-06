package com.vungle.ads.internal.util;

import android.app.usage.StorageStats;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.storage.StorageManager;
import android.webkit.URLUtil;
import java.io.File;
import kotlin.io.FilesKt__FileTreeWalkKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a0 {
    public static boolean a(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return URLUtil.isHttpsUrl(str) || URLUtil.isHttpUrl(str);
    }

    public static boolean a() {
        return Build.VERSION.SDK_INT < 25;
    }

    public static long a(Context context) {
        long length;
        Intrinsics.checkNotNullParameter(context, "context");
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                Object systemService = context.getSystemService("storagestats");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.usage.StorageStatsManager");
                StorageStats storageStatsQueryStatsForUid = a0$$ExternalSyntheticApiModelOutline0.m(systemService).queryStatsForUid(StorageManager.UUID_DEFAULT, Process.myUid());
                Intrinsics.checkNotNullExpressionValue(storageStatsQueryStatsForUid, "storageStatsManager.quer…myUid()\n                )");
                return storageStatsQueryStatsForUid.getAppBytes() + storageStatsQueryStatsForUid.getDataBytes();
            } catch (Exception e) {
                boolean z = v.a;
                StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Error reading host app data size: ");
                sbA.append(e.getMessage());
                u.b("HostAppSize", sbA.toString());
            }
        }
        Intrinsics.checkNotNullParameter(context, "context");
        long length2 = 0;
        try {
            File file = new File(context.getApplicationInfo().dataDir, "app_webview");
            if (file.exists() && file.exists()) {
                length = 0;
                for (File file2 : FilesKt__FileTreeWalkKt.walkTopDown(file)) {
                    if (file2.isFile()) {
                        length += file2.length();
                    }
                }
            } else {
                length = 0;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            File cacheDir = context.getCacheDir();
            if (!cacheDir.exists()) {
                return length;
            }
            Intrinsics.checkNotNullExpressionValue(cacheDir, "cacheDir");
            File fileResolve = FilesKt__UtilsKt.resolve(cacheDir, "webviewCache");
            if (fileResolve.exists()) {
                for (File file3 : FilesKt__FileTreeWalkKt.walkTopDown(fileResolve)) {
                    if (file3.isFile()) {
                        length2 += file3.length();
                    }
                }
            }
            return length + length2;
        } catch (Exception e3) {
            e = e3;
            length2 = length;
            boolean z2 = v.a;
            StringBuilder sbA2 = com.iab.omid.library.vungle.internal.l.a("Error reading WebView data size: ");
            sbA2.append(e.getMessage());
            u.b("WebViewSize", sbA2.toString());
            return length2;
        }
    }
}
