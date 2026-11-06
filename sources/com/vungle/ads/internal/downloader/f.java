package com.vungle.ads.internal.downloader;

import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.util.PathProvider;
import com.vungle.ads.internal.util.v;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cache;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes4.dex */
public final class f {
    public static final f a = new f();
    public static volatile OkHttpClient b;

    public final synchronized OkHttpClient a(PathProvider pathProvider) {
        OkHttpClient okHttpClientBuild;
        try {
            Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
            okHttpClientBuild = b;
            if (okHttpClientBuild == null) {
                OkHttpClient.Builder builder = new OkHttpClient.Builder();
                TimeUnit timeUnit = TimeUnit.SECONDS;
                OkHttpClient.Builder builderFollowSslRedirects = builder.readTimeout(60L, timeUnit).connectTimeout(60L, timeUnit).cache(null).followRedirects(true).followSslRedirects(true);
                ConfigManager.INSTANCE.getClass();
                long jG = ConfigManager.g();
                int iF = ConfigManager.f();
                String absolutePath = pathProvider.getCleverCacheDir().getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "pathProvider.getCleverCacheDir().absolutePath");
                long jMin = Math.min(jG, (PathProvider.a(absolutePath) * ((long) iF)) / ((long) 100));
                if (jMin > 0) {
                    builderFollowSslRedirects.cache(new Cache(pathProvider.getCleverCacheDir(), jMin));
                } else {
                    boolean z = v.a;
                    com.vungle.ads.internal.util.u.c("AssetDownloader", "cache disk capacity size <=0, no clever cache active.");
                }
                okHttpClientBuild = builderFollowSslRedirects.build();
                b = okHttpClientBuild;
            }
        } catch (Throwable th) {
            throw th;
        }
        return okHttpClientBuild;
    }
}
