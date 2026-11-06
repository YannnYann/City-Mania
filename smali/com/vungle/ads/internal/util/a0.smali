###### Class com.vungle.ads.internal.util.a0 (com.vungle.ads.internal.util.a0)
.class public abstract Lcom/vungle/ads/internal/util/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)J
    .registers 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_4e

    .line 6
    :try_start_b
    const-string v1, "storagestats"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.usage.StorageStatsManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vungle/ads/internal/util/a0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/usage/StorageStatsManager;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/vungle/ads/internal/util/a0$$ExternalSyntheticApiModelOutline1;->m()Ljava/util/UUID;

    move-result-object v2

    .line 9
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 10
    invoke-static {v1, v2, v3}, Lcom/vungle/ads/internal/util/a0$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/usage/StorageStatsManager;Ljava/util/UUID;I)Landroid/app/usage/StorageStats;

    move-result-object v1

    const-string v2, "storageStatsManager.quer\u2026myUid()\n                )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {v1}, Lcom/vungle/ads/internal/util/a0$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/usage/StorageStats;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/vungle/ads/internal/util/a0$$ExternalSyntheticApiModelOutline4;->m(Landroid/app/usage/StorageStats;)J

    move-result-wide v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_33} :catch_35

    add-long/2addr v2, v0

    return-wide v2

    :catch_35
    move-exception v1

    .line 17
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 18
    const-string v2, "Error reading host app data size: "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 88
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HostAppSize"

    invoke-static {v2, v1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_4e
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 124
    :try_start_53
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v4, "app_webview"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 126
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 127
    invoke-static {v2}, Lkotlin/io/FilesKt__FileTreeWalkKt;->walkTopDown(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Lkotlin/io/FileTreeWalk;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide v3, v0

    :cond_75
    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 182
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_75

    .line 183
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_8b} :catch_8d

    add-long/2addr v3, v5

    goto :goto_75

    :catch_8d
    move-exception p0

    goto :goto_d0

    :cond_8f
    move-wide v3, v0

    .line 184
    :cond_90
    :try_start_90
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 185
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 186
    const-string v2, "cacheDir"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "webviewCache"

    invoke-static {p0, v2}, Lkotlin/io/FilesKt__UtilsKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 188
    invoke-static {p0}, Lkotlin/io/FilesKt__FileTreeWalkKt;->walkTopDown(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    move-result-object p0

    .line 242
    invoke-virtual {p0}, Lkotlin/io/FileTreeWalk;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b3
    :goto_b3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 243
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 244
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_c9} :catch_cb

    add-long/2addr v0, v5

    goto :goto_b3

    :catch_cb
    move-exception p0

    move-wide v0, v3

    goto :goto_d0

    :cond_ce
    add-long/2addr v3, v0

    goto :goto_e9

    .line 245
    :goto_d0
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 246
    const-string v2, "Error reading WebView data size: "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 247
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "WebViewSize"

    invoke-static {v2, p0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v0

    :cond_e9
    :goto_e9
    return-wide v3
.end method

.method public static a()Z
    .registers 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_17

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_17

    :cond_9
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    :cond_15
    const/4 p0, 0x1

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x0

    return p0
.end method
