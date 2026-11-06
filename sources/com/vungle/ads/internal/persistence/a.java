package com.vungle.ads.internal.persistence;

import com.vungle.ads.internal.executor.j;
import com.vungle.ads.internal.util.PathProvider;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public final synchronized FilePreferences a(j ioExecutor, PathProvider pathProvider, String filename) {
        Object filePreferences;
        Object objPutIfAbsent;
        try {
            Intrinsics.checkNotNullParameter(ioExecutor, "ioExecutor");
            Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
            Intrinsics.checkNotNullParameter(filename, "filename");
            ConcurrentHashMap concurrentHashMap = FilePreferences.e;
            filePreferences = concurrentHashMap.get(filename);
            if (filePreferences == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(filename, (filePreferences = new FilePreferences(ioExecutor, pathProvider, filename, 0)))) != null) {
                filePreferences = objPutIfAbsent;
            }
            Intrinsics.checkNotNullExpressionValue(filePreferences, "filePreferenceMap.getOrP…, filename)\n            }");
        } catch (Throwable th) {
            throw th;
        }
        return (FilePreferences) filePreferences;
    }
}
