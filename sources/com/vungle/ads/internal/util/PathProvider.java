package com.vungle.ads.internal.util;

import android.content.Context;
import android.os.StatFs;
import java.io.File;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class PathProvider {
    public final Context a;
    public final File b;
    public final File c;
    public final File d;

    public PathProvider(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = context;
        File file = new File(context.getNoBackupFilesDir(), "vungle_cache");
        this.b = file;
        File file2 = new File(file, "adAssets");
        this.c = file2;
        File file3 = new File(file, "clever_cache");
        this.d = file3;
        for (File file4 : CollectionsKt__CollectionsKt.listOf((Object[]) new File[]{file, file2, file3})) {
            if (!file4.exists()) {
                file4.mkdirs();
            }
        }
    }

    public final File a() {
        File noBackupFilesDir = this.a.getNoBackupFilesDir();
        Intrinsics.checkNotNullExpressionValue(noBackupFilesDir, "context.noBackupFilesDir");
        return noBackupFilesDir;
    }

    public final File b(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        File file = new File(getVmDir(), str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public final File c() {
        if (!this.b.exists()) {
            this.b.mkdirs();
        }
        return this.b;
    }

    public final File getCleverCacheDir() {
        if (!this.d.exists()) {
            this.d.mkdirs();
        }
        return this.d;
    }

    public final File getVmDir() {
        if (!this.c.exists()) {
            this.c.mkdirs();
        }
        return this.c;
    }

    public static long a(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        try {
            return new StatFs(path).getAvailableBytes();
        } catch (IllegalArgumentException e) {
            boolean z = v.a;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Failed to get available bytes ");
            sbA.append(e.getMessage());
            u.c("PathProvider", sbA.toString());
            return -1L;
        }
    }

    public final File b() {
        Intrinsics.checkNotNullParameter("unclosed_ad", "name");
        return new File(a(), "unclosed_ad");
    }
}
