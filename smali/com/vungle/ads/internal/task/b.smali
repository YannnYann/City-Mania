###### Class com.vungle.ads.internal.task.b (com.vungle.ads.internal.task.b)
.class public final Lcom/vungle/ads/internal/task/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/task/c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/vungle/ads/internal/util/PathProvider;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/task/a;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/task/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/util/PathProvider;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/task/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/ads/internal/task/b;->b:Lcom/vungle/ads/internal/util/PathProvider;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Lcom/vungle/ads/internal/task/g;)I
    .registers 8

    const/4 v0, 0x1

    const-string v1, "STALE_DIRS_KEY"

    const-string v2, "bundle"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "jobRunner"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/vungle/ads/internal/task/b;->b:Lcom/vungle/ads/internal/util/PathProvider;

    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/PathProvider;->getVmDir()Ljava/io/File;

    move-result-object p2

    .line 3
    const-string v2, "AD_ID_KEY"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 4
    iget-object v3, p0, Lcom/vungle/ads/internal/task/b;->b:Lcom/vungle/ads/internal/util/PathProvider;

    invoke-virtual {v3, v2}, Lcom/vungle/ads/internal/util/PathProvider;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_24

    goto :goto_25

    :cond_24
    move-object v2, p2

    .line 8
    :goto_25
    sget-boolean v3, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v3, "CleanupJob"

    const-string v4, "CleanupJob: Current directory snapshot"

    invoke-static {v3, v4}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :try_start_2e
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_83

    .line 15
    invoke-static {}, Lcom/vungle/ads/internal/r1;->a()Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object v2

    if-nez v2, :cond_3c

    return v4

    .line 16
    :cond_3c
    invoke-virtual {p0, v2}, Lcom/vungle/ads/internal/task/b;->a(Lcom/vungle/ads/internal/ServiceLocator;)V

    .line 18
    invoke-static {}, Lcom/vungle/ads/internal/r1;->a()Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object v2

    if-nez v2, :cond_46

    return v4

    .line 35
    :cond_46
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 38
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_86

    .line 170
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_56
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;)V

    goto :goto_56

    .line 174
    :cond_6b
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_72

    return v4

    .line 175
    :cond_72
    array-length p2, p1

    move v1, v4

    :goto_74
    if-ge v1, p2, :cond_86

    aget-object v2, p1, v1

    .line 176
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-static {v2}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;)V

    :cond_81
    add-int/2addr v1, v0

    goto :goto_74

    .line 180
    :cond_83
    invoke-static {v2}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;)V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_86} :catch_87

    :cond_86
    return v4

    :catch_87
    return v0
.end method

.method public final a(Lcom/vungle/ads/internal/ServiceLocator;)V
    .registers 10

    .line 181
    const-class v0, Lcom/vungle/ads/internal/persistence/FilePreferences;

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/persistence/FilePreferences;

    const/4 v0, -0x1

    .line 182
    const-string v1, "VERSION_CODE"

    invoke-virtual {p1, v1, v0}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;I)I

    move-result v0

    const v2, 0x11435

    if-ge v0, v2, :cond_12b

    const v3, 0x11170

    const-string v4, "CleanupJob"

    if-ge v0, v3, :cond_8f

    .line 183
    sget-boolean v3, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v3, "CleanupJob: drop old files data"

    invoke-static {v4, v3}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/vungle/ads/internal/task/b;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "vungle_db"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 188
    invoke-static {v3}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;)V

    .line 189
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-journal"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;)V

    goto :goto_5b

    .line 191
    :cond_56
    iget-object v3, p0, Lcom/vungle/ads/internal/task/b;->a:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 195
    :goto_5b
    iget-object v3, p0, Lcom/vungle/ads/internal/task/b;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const-string v6, "com.vungle.sdk"

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 196
    const-string v5, "cache_path"

    const/4 v7, 0x0

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    iget-object v5, p0, Lcom/vungle/ads/internal/task/b;->a:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    .line 412
    iget-object v5, p0, Lcom/vungle/ads/internal/task/b;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "context.noBackupFilesDir"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    new-instance v6, Ljava/io/File;

    const-string v7, "vungle_settings"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 414
    invoke-static {v6}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;)V

    if-eqz v3, :cond_8f

    .line 418
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;)V

    :cond_8f
    const v3, 0x111d4

    if-ge v0, v3, :cond_a6

    .line 419
    new-instance v3, Ljava/io/File;

    .line 420
    iget-object v5, p0, Lcom/vungle/ads/internal/task/b;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 421
    const-string v6, "vungle"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {v3}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;)V

    :cond_a6
    const v3, 0x1129d

    if-ge v0, v3, :cond_d4

    .line 426
    :try_start_ab
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/vungle/ads/internal/task/b;->b:Lcom/vungle/ads/internal/util/PathProvider;

    invoke-virtual {v5}, Lcom/vungle/ads/internal/util/PathProvider;->a()Ljava/io/File;

    move-result-object v5

    const-string v6, "vungleSettings"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;)V

    .line 427
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/vungle/ads/internal/task/b;->b:Lcom/vungle/ads/internal/util/PathProvider;

    invoke-virtual {v5}, Lcom/vungle/ads/internal/util/PathProvider;->a()Ljava/io/File;

    move-result-object v5

    const-string v6, "failedTpatSet"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_cb} :catch_cc

    goto :goto_d4

    :catch_cc
    move-exception v3

    .line 429
    sget-boolean v5, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v5, "Failed to delete temp data"

    invoke-static {v4, v5, v3}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d4
    :goto_d4
    const v3, 0x11364

    if-ge v0, v3, :cond_fc

    .line 430
    iget-object v3, p0, Lcom/vungle/ads/internal/task/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v3

    .line 432
    :try_start_df
    new-instance v5, Ljava/io/File;

    const-string v6, "failedTpats"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;)V

    .line 433
    new-instance v5, Ljava/io/File;

    const-string v6, "failedGenericTpats"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_f3} :catch_f4

    goto :goto_fc

    :catch_f4
    move-exception v3

    .line 435
    sget-boolean v5, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v5, "Failed to delete 742 tpat data"

    invoke-static {v4, v5, v3}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_fc
    :goto_fc
    const v3, 0x113c8

    if-ge v0, v3, :cond_124

    .line 436
    iget-object v0, p0, Lcom/vungle/ads/internal/task/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    .line 438
    :try_start_107
    new-instance v3, Ljava/io/File;

    const-string v5, "vungle_cache/downloads"

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;)V

    .line 439
    new-instance v3, Ljava/io/File;

    const-string v5, "vungle_cache/js"

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/vungle/ads/internal/util/o;->a(Ljava/io/File;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_11b} :catch_11c

    goto :goto_124

    :catch_11c
    move-exception v0

    .line 441
    sget-boolean v3, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v3, "Failed to delete 750 data"

    invoke-static {v4, v3, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    :cond_124
    :goto_124
    invoke-virtual {p1, v1, v2}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b(Ljava/lang/String;I)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b()V

    :cond_12b
    return-void
.end method
