package com.vungle.ads.internal.task;

import android.content.Context;
import android.os.Bundle;
import com.vungle.ads.BuildConfig;
import com.vungle.ads.internal.ServiceLocator;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.r1;
import com.vungle.ads.internal.util.PathProvider;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements c {
    public final Context a;
    public final PathProvider b;

    static {
        new a();
    }

    public b(Context context, PathProvider pathProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        this.a = context;
        this.b = pathProvider;
    }

    @Override // com.vungle.ads.internal.task.c
    public final int a(Bundle bundle, g jobRunner) {
        File fileB;
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(jobRunner, "jobRunner");
        File vmDir = this.b.getVmDir();
        String string = bundle.getString("AD_ID_KEY");
        if (string == null || (fileB = this.b.b(string)) == null) {
            fileB = vmDir;
        }
        boolean z = v.a;
        u.a("CleanupJob", "CleanupJob: Current directory snapshot");
        try {
            if (Intrinsics.areEqual(fileB, vmDir)) {
                ServiceLocator serviceLocatorA = r1.a();
                if (serviceLocatorA == null) {
                    return 0;
                }
                a(serviceLocatorA);
                if (r1.a() == null) {
                    return 0;
                }
                if (bundle.containsKey("STALE_DIRS_KEY")) {
                    ArrayList<String> stringArrayList = bundle.getStringArrayList("STALE_DIRS_KEY");
                    if (stringArrayList != null) {
                        Iterator<T> it = stringArrayList.iterator();
                        while (it.hasNext()) {
                            com.vungle.ads.internal.util.o.a(new File(vmDir, (String) it.next()), (Set) null);
                        }
                    }
                } else {
                    File[] fileArrListFiles = vmDir.listFiles();
                    if (fileArrListFiles == null) {
                        return 0;
                    }
                    for (File file : fileArrListFiles) {
                        if (file.isDirectory()) {
                            com.vungle.ads.internal.util.o.a(file, (Set) null);
                        }
                    }
                }
            } else {
                com.vungle.ads.internal.util.o.a(fileB, (Set) null);
            }
            return 0;
        } catch (IOException unused) {
            return 1;
        }
    }

    public final void a(ServiceLocator serviceLocator) {
        FilePreferences filePreferences = (FilePreferences) serviceLocator.getService(FilePreferences.class);
        int iA = filePreferences.a("VERSION_CODE", -1);
        if (iA < 70709) {
            if (iA < 70000) {
                boolean z = v.a;
                u.a("CleanupJob", "CleanupJob: drop old files data");
                File file = new File(this.a.getNoBackupFilesDir(), "vungle_db");
                if (file.exists()) {
                    com.vungle.ads.internal.util.o.a(file, (Set) null);
                    com.vungle.ads.internal.util.o.a(new File(file.getPath() + "-journal"), (Set) null);
                } else {
                    this.a.deleteDatabase("vungle_db");
                }
                String string = this.a.getSharedPreferences("com.vungle.sdk", 0).getString("cache_path", null);
                this.a.deleteSharedPreferences("com.vungle.sdk");
                File noBackupFilesDir = this.a.getNoBackupFilesDir();
                Intrinsics.checkNotNullExpressionValue(noBackupFilesDir, "context.noBackupFilesDir");
                com.vungle.ads.internal.util.o.a(new File(noBackupFilesDir, "vungle_settings"), (Set) null);
                if (string != null) {
                    com.vungle.ads.internal.util.o.a(new File(string), (Set) null);
                }
            }
            if (iA < 70100) {
                com.vungle.ads.internal.util.o.a(new File(this.a.getApplicationInfo().dataDir, "vungle"), (Set) null);
            }
            if (iA < 70301) {
                try {
                    com.vungle.ads.internal.util.o.a(new File(this.b.a(), "vungleSettings"), (Set) null);
                    com.vungle.ads.internal.util.o.a(new File(this.b.a(), "failedTpatSet"), (Set) null);
                } catch (Exception e) {
                    boolean z2 = v.a;
                    u.a("CleanupJob", "Failed to delete temp data", e);
                }
            }
            if (iA < 70500) {
                File noBackupFilesDir2 = this.a.getNoBackupFilesDir();
                try {
                    com.vungle.ads.internal.util.o.a(new File(noBackupFilesDir2, "failedTpats"), (Set) null);
                    com.vungle.ads.internal.util.o.a(new File(noBackupFilesDir2, "failedGenericTpats"), (Set) null);
                } catch (Exception e2) {
                    boolean z3 = v.a;
                    u.a("CleanupJob", "Failed to delete 742 tpat data", e2);
                }
            }
            if (iA < 70600) {
                File noBackupFilesDir3 = this.a.getNoBackupFilesDir();
                try {
                    com.vungle.ads.internal.util.o.a(new File(noBackupFilesDir3, "vungle_cache/downloads"), (Set) null);
                    com.vungle.ads.internal.util.o.a(new File(noBackupFilesDir3, "vungle_cache/js"), (Set) null);
                } catch (Exception e3) {
                    boolean z4 = v.a;
                    u.a("CleanupJob", "Failed to delete 750 data", e3);
                }
            }
            filePreferences.b("VERSION_CODE", BuildConfig.VERSION_CODE).b();
        }
    }
}
