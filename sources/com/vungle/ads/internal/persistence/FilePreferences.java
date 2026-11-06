package com.vungle.ads.internal.persistence;

import com.ironsource.C3522b4;
import com.vungle.ads.internal.executor.j;
import com.vungle.ads.internal.util.PathProvider;
import com.vungle.ads.internal.util.o;
import java.io.File;
import java.io.Serializable;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class FilePreferences {
    public static final a d = new a();
    public static final ConcurrentHashMap e = new ConcurrentHashMap();
    public final Executor a;
    public final File b;
    public final ConcurrentHashMap c;

    public FilePreferences(j jVar, PathProvider pathProvider, String str) throws Throwable {
        this.a = jVar;
        File file = new File(pathProvider.a(), str);
        this.b = file;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.c = concurrentHashMap;
        Object objC = o.c(file);
        if (objC instanceof HashMap) {
            concurrentHashMap.putAll((HashMap) objC);
        }
    }

    public /* synthetic */ FilePreferences(j jVar, PathProvider pathProvider, String str, int i) {
        this(jVar, pathProvider, str);
    }

    public final void b() {
        final HashMap map = new HashMap(this.c);
        final File file = this.b;
        this.a.execute(new Runnable() { // from class: com.vungle.ads.internal.persistence.FilePreferences$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                FilePreferences.a(file, map);
            }
        });
    }

    public final String getString(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object obj = this.c.get(key);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public static final void a(File fileToWrite, Serializable serializable) throws Throwable {
        Intrinsics.checkNotNullParameter(fileToWrite, "$fileToWrite");
        Intrinsics.checkNotNullParameter(serializable, "$serializable");
        o.a(fileToWrite, serializable);
    }

    public final String c() {
        Intrinsics.checkNotNullParameter("previous_tcf_token", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("", "defaultValue");
        Object obj = this.c.get("previous_tcf_token");
        return obj instanceof String ? (String) obj : "";
    }

    public final FilePreferences a(boolean z, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.c.put(key, Boolean.valueOf(z));
        return this;
    }

    public final Boolean a(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object obj = this.c.get(key);
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        return null;
    }

    public final FilePreferences b(String key, int i) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.c.put(key, Integer.valueOf(i));
        return this;
    }

    public final FilePreferences b(String key, long j) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.c.put(key, Long.valueOf(j));
        return this;
    }

    public final FilePreferences a(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.c.put(key, value);
        return this;
    }

    public final int a(String key, int i) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object obj = this.c.get(key);
        return obj instanceof Integer ? ((Number) obj).intValue() : i;
    }

    public final long a(String key, long j) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object obj = this.c.get(key);
        return obj instanceof Long ? ((Number) obj).longValue() : j;
    }
}
