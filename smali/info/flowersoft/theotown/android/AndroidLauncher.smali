###### Class info.flowersoft.theotown.android.AndroidLauncher (info.flowersoft.theotown.android.AndroidLauncher)
.class public abstract Linfo/flowersoft/theotown/android/AndroidLauncher;
.super Lcom/badlogic/gdx/backends/android/AndroidApplication;
.source "AndroidLauncher.java"


# instance fields
.field public useScopedStorage:Z


# direct methods
.method public static synthetic $r8$lambda$2JWCvC6HezJbN-Mdv3OUD0F4hqw(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 354
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    check-cast p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->setGotPermissions()V

    return-void
.end method

.method public static synthetic $r8$lambda$WnW8ynXkZAVzdy_Fr9yAMQCTt1Y(Linfo/flowersoft/theotown/android/AndroidLauncher;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 353
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidLauncher;->requestExternalStoragePermission()V

    return-void
.end method

.method public static synthetic $r8$lambda$i_IppoMtdJE-lLyQp5ZsU47QMAc(Linfo/flowersoft/theotown/util/ExceptionManager;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 3

    .line 139
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/util/ExceptionManager;->handleException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kfYl-XUt_9Xq7IdgoL_okXDxvq8(Linfo/flowersoft/theotown/android/AndroidLauncher;I)V
    .registers 2

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_8

    .line 325
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidLauncher;->hideVirtualButtons()V

    return-void

    .line 0
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;-><init>()V

    return-void
.end method

.method public static getAppConfig()Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    .registers 3

    .line 208
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    const/4 v1, 0x1

    .line 209
    iput-boolean v1, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useImmersiveMode:Z

    .line 210
    iput-boolean v1, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useWakelock:Z

    const/4 v1, 0x0

    .line 211
    iput-boolean v1, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useAccelerometer:Z

    .line 212
    iput-boolean v1, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useCompass:Z

    const/16 v2, 0x8

    .line 213
    iput v2, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    .line 214
    iput v2, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    .line 215
    iput v2, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    .line 216
    iput v2, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    .line 217
    iput v1, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    .line 218
    iput v1, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->numSamples:I

    return-object v0
.end method


# virtual methods
.method public createGraphics(Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidGraphics;
    .registers 4

    .line 165
    new-instance v0, Linfo/flowersoft/theotown/android/AndroidLauncher$1;

    .line 166
    iget-object v1, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    if-nez v1, :cond_b

    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;-><init>()V

    :cond_b
    invoke-direct {v0, p0, p0, p1, v1}, Linfo/flowersoft/theotown/android/AndroidLauncher$1;-><init>(Linfo/flowersoft/theotown/android/AndroidLauncher;Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    return-object v0
.end method

.method public getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    .registers 4

    .line 203
    new-instance v0, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/android/ImmediateAndroidPreferences;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public final hideVirtualButtons()V
    .registers 3

    .line 361
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public final migrateToScopedStorage()V
    .registers 12

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Linfo/flowersoft/theotown/android/AndroidLauncher;->useScopedStorage:Z

    .line 248
    sput-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->SHOW_FILES_EXPLORER:Z

    const/4 v1, 0x0

    .line 249
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 254
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External files dir not available, switching to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    :cond_2a
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switching to scoped storage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_110

    .line 261
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_110

    .line 262
    new-instance v2, Ljava/io/File;

    const-string v3, ".migrated.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_110

    .line 264
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to migrate old files from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    new-instance v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v3}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 267
    new-array v0, v0, [J

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 270
    sget-object v6, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    new-instance v7, Linfo/flowersoft/theotown/android/AndroidLauncher$2;

    invoke-direct {v7, p0, v3, v0}, Linfo/flowersoft/theotown/android/AndroidLauncher$2;-><init>(Linfo/flowersoft/theotown/android/AndroidLauncher;Linfo/flowersoft/theotown/util/json/JSONObject;[J)V

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v1, v8, v7}, Linfo/flowersoft/theotown/android/AndroidLauncher;->moveFileSave(Ljava/io/File;Ljava/io/File;ZLio/blueflower/stapel2d/util/Setter;)V

    .line 285
    :try_start_8b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Linfo/flowersoft/theotown/theotown/R$raw;->android_storage_notice:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Linfo/flowersoft/theotown/util/Files;->readTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 286
    new-instance v7, Ljava/io/File;

    sget-object v9, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    const-string v10, "README.txt"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7, v6}, Linfo/flowersoft/theotown/util/Files;->writeTextFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 288
    new-instance v6, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v6}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 289
    const-string v7, "info"

    const-string v9, "This file contains the migration report of the game files into scoped storage"

    invoke-virtual {v6, v7, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 290
    const-string v7, "date"

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 291
    const-string v7, "total size"

    aget-wide v8, v0, v8

    invoke-virtual {v6, v7, v8, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 292
    const-string v0, "seconds"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    long-to-float v4, v7

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v6, v0, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;D)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 293
    const-string v0, "target"

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 294
    const-string v0, "files"

    invoke-virtual {v6, v0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 296
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/io/File;

    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    const-string v5, "migration.txt"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Linfo/flowersoft/theotown/util/Files;->writeTextFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 299
    const-string v0, "important"

    const-string v4, "DO NOT DELETE THIS FILE UNLESS YOU KNOW WHAT YOU ARE DOING!"

    invoke-virtual {v6, v0, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 300
    invoke-virtual {v6, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Linfo/flowersoft/theotown/util/Files;->writeTextFile(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_10b
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_8b .. :try_end_10b} :catch_10c

    goto :goto_110

    :catch_10c
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 309
    :cond_110
    :goto_110
    sput-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    return-void
.end method

.method public final moveFileSave(Ljava/io/File;Ljava/io/File;ZLio/blueflower/stapel2d/util/Setter;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Z",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 223
    invoke-interface {p4, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 225
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 226
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_28

    const/4 v1, 0x0

    .line 228
    :goto_13
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 229
    aget-object v2, v0, v1

    .line 230
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, p4}, Linfo/flowersoft/theotown/android/AndroidLauncher;->moveFileSave(Ljava/io/File;Ljava/io/File;ZLio/blueflower/stapel2d/util/Setter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_28
    if-eqz p3, :cond_68

    .line 234
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    .line 236
    :cond_2e
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p3

    if-eqz p3, :cond_68

    .line 237
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_50

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p3

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-eqz p3, :cond_50

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p3

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long p3, p3, v0

    if-gtz p3, :cond_68

    .line 238
    :cond_50
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/Files;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 239
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_68

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-nez p2, :cond_68

    .line 240
    invoke-static {p1}, Linfo/flowersoft/theotown/util/Files;->deleteFile(Ljava/io/File;)Z

    :cond_68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 66
    sput-boolean p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    const/4 v0, 0x1

    .line 68
    sput-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->CHECK_TIME_ONLINE:Z

    .line 70
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "TheoTown"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_PRIVATE_DIR:Ljava/io/File;

    .line 73
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_30

    .line 76
    :cond_2a
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 78
    :cond_30
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_SCREENSHOTS_DIR:Ljava/io/File;

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_CACHE_DIR:Ljava/io/File;

    .line 81
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidLauncher;->migrateToScopedStorage()V

    .line 83
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEVICE_MANUFACTURER:Ljava/lang/String;

    .line 84
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEVICE_MODEL:Ljava/lang/String;

    const/16 v1, 0x2c20

    .line 85
    sput v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    .line 86
    const-string v1, "1.12.96a"

    sput-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_NAME:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APPLICATION_ID:Ljava/lang/String;

    .line 88
    sput-boolean p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    .line 89
    sput-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->NOT_CHILD_DIRECTED:Z

    .line 90
    sput-boolean v0, Linfo/flowersoft/theotown/util/Watchdog;->ACTIVE:Z

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TheoTown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEVICE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http.agent"

    invoke-static {v1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    :try_start_82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Z2V0UGF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "amEyRm5aVTVoYldVPQ=="

    .line 98
    invoke-static {v2}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, p1, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, p1, [Ljava/lang/Object;

    .line 98
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_af} :catch_b0

    goto :goto_b6

    :catch_b0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    .line 102
    :goto_b6
    const-string v1, "info.flowersoft.theotown.theotown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aW5mby5mbG9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "M1pYSnpiMlowTG5Sb1pXOTBiM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MlIxVEc1U2IxcFhPVEJpTTJSMQ=="

    .line 105
    invoke-static {v3}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v2}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12c

    .line 107
    :cond_f4
    :try_start_f4
    const-class v0, Ljava/lang/System;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZXhp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ZEE9PQ=="

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_127} :catch_128

    goto :goto_12c

    :catch_128
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    :cond_12c
    :goto_12c
    invoke-static {p0}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->getFactory(Lcom/badlogic/gdx/backends/android/AndroidApplication;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->videoAdStageFactory:Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;

    .line 114
    new-instance v0, Linfo/flowersoft/theotown/android/AndroidSocialManager;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/android/AndroidSocialManager;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V

    sput-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->socialManager:Linfo/flowersoft/theotown/crossplatform/SocialManager;

    .line 115
    new-instance v0, Linfo/flowersoft/theotown/android/AndroidGamesService;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/android/AndroidGamesService;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V

    sput-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    .line 118
    new-instance v0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;-><init>(Landroid/app/Activity;)V

    sput-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->purchaseManager:Lcom/badlogic/gdx/pay/PurchaseManager;

    .line 119
    const-string v0, "playstore"

    sput-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->STORE_NAME:Ljava/lang/String;

    .line 121
    new-instance v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V

    sput-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    .line 122
    new-instance v0, Linfo/flowersoft/theotown/android/AndroidAnalytics;

    new-instance v1, Ljava/io/File;

    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    const-string v3, "log.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    const-string v4, "out.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/android/AndroidAnalytics;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;Ljava/io/File;Ljava/io/File;)V

    sput-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    .line 126
    new-instance v0, Linfo/flowersoft/theotown/android/AndroidNotifications;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/android/AndroidNotifications;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V

    sput-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->notifications:Linfo/flowersoft/theotown/crossplatform/Notifications;

    .line 127
    new-instance v0, Linfo/flowersoft/theotown/android/AndroidGameSetup;

    invoke-direct {v0}, Linfo/flowersoft/theotown/android/AndroidGameSetup;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gameSetup:Linfo/flowersoft/theotown/crossplatform/GameSetup;

    .line 130
    sget-object v0, Linfo/flowersoft/theotown/android/AndroidIntentHandler;->INSTANCE:Linfo/flowersoft/theotown/android/AndroidIntentHandler;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Linfo/flowersoft/theotown/android/AndroidIntentHandler;->handleViewIntent(Landroid/content/Intent;Landroid/content/Context;)V

    .line 132
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidLauncher;->hideVirtualButtons()V

    .line 133
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidLauncher;->setupImmersiveMode()V

    .line 135
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidLauncher;->requestExternalStoragePermission()V

    .line 137
    new-instance v0, Linfo/flowersoft/theotown/util/ExceptionManager;

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidExceptionDialog;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/android/AndroidExceptionDialog;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/ExceptionManager;-><init>(Linfo/flowersoft/theotown/util/ExceptionManager$ExceptionHandler;)V

    .line 139
    new-instance v1, Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/util/ExceptionManager;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 141
    invoke-static {}, Linfo/flowersoft/theotown/android/AndroidLauncher;->getAppConfig()Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    move-result-object v1

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "info.flowersoft.theotown.theotown.DATA"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c1

    .line 147
    :try_start_1ad
    new-instance v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 148
    const-string v2, "region_id"

    invoke-virtual {v3, v2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 149
    const-string v2, "city_id"

    invoke-virtual {v3, v2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1bc
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_1ad .. :try_end_1bc} :catch_1bd

    goto :goto_1c1

    :catch_1bd
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    :cond_1c1
    :goto_1c1
    :try_start_1c1
    new-instance p1, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;

    new-instance v2, Linfo/flowersoft/theotown/TheoTownX;

    invoke-direct {v2}, Linfo/flowersoft/theotown/TheoTownX;-><init>()V

    invoke-direct {p1, v2, v0}, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;-><init>(Lcom/badlogic/gdx/ApplicationListener;Linfo/flowersoft/theotown/util/ExceptionManager;)V

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    :try_end_1ce
    .catchall {:try_start_1c1 .. :try_end_1ce} :catchall_1cf

    goto :goto_1d3

    :catchall_1cf
    move-exception p1

    .line 159
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/ExceptionManager;->handleException(Ljava/lang/Throwable;)V

    :goto_1d3
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 59
    sget-object v0, Linfo/flowersoft/theotown/android/AndroidIntentHandler;->INSTANCE:Linfo/flowersoft/theotown/android/AndroidIntentHandler;

    invoke-virtual {v0, p1, p0}, Linfo/flowersoft/theotown/android/AndroidIntentHandler;->handleViewIntent(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    .line 345
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x0

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_f

    .line 346
    array-length v1, p3

    if-lez v1, :cond_f

    aget p3, p3, p2

    if-eqz p3, :cond_13

    :cond_f
    iget-boolean p3, p0, Linfo/flowersoft/theotown/android/AndroidLauncher;->useScopedStorage:Z

    if-eqz p3, :cond_1b

    .line 347
    :cond_13
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    check-cast p1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->setGotPermissions()V

    return-void

    :cond_1b
    if-ne p1, v0, :cond_4e

    .line 349
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 350
    sget p3, Linfo/flowersoft/theotown/theotown/R$string;->dialog_externalstorage_title:I

    .line 351
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    sget v0, Linfo/flowersoft/theotown/theotown/R$string;->dialog_externalstorage_explanation:I

    .line 352
    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    sget v0, Linfo/flowersoft/theotown/theotown/R$string;->dialog_externalstorage_retry:I

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/android/AndroidLauncher;)V

    .line 353
    invoke-virtual {p3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    sget v0, Linfo/flowersoft/theotown/theotown/R$string;->dialog_externalstorage_proceedwithout:I

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda2;-><init>()V

    .line 354
    invoke-virtual {p3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 355
    invoke-virtual {p3, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 356
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_4e
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 315
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_10

    .line 317
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidLauncher;->hideVirtualButtons()V

    .line 318
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/resources/InternetTime;->update(Z)V

    :cond_10
    return-void
.end method

.method public final requestExternalStoragePermission()V
    .registers 3

    .line 331
    iget-boolean v0, p0, Linfo/flowersoft/theotown/android/AndroidLauncher;->useScopedStorage:Z

    if-nez v0, :cond_16

    .line 333
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_16

    .line 334
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 340
    :cond_16
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    check-cast v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->setGotPermissions()V

    return-void
.end method

.method public final setupImmersiveMode()V
    .registers 3

    .line 323
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/android/AndroidLauncher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidLauncher.AnonymousClass1 (info.flowersoft.theotown.android.AndroidLauncher$1)
.class public Linfo/flowersoft/theotown/android/AndroidLauncher$1;
.super Lcom/badlogic/gdx/backends/android/AndroidGraphics;
.source "AndroidLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidLauncher;->createGraphics(Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidGraphics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/android/AndroidLauncher;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidLauncher;Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 166
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidLauncher$1;->this$0:Linfo/flowersoft/theotown/android/AndroidLauncher;

    invoke-direct {p0, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    return-void
.end method


# virtual methods
.method public createGLSurfaceView(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
    .registers 11

    .line 169
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->checkGL20()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 171
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getEglConfigChooser()Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v0

    .line 172
    new-instance v1, Linfo/flowersoft/theotown/android/AndroidLauncher$1$1;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v2, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGL30:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x3

    goto :goto_19

    :cond_18
    const/4 v2, 0x2

    :goto_19
    invoke-direct {v1, p0, p1, p2, v2}, Linfo/flowersoft/theotown/android/AndroidLauncher$1$1;-><init>(Linfo/flowersoft/theotown/android/AndroidLauncher$1;Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;I)V

    if-eqz v0, :cond_22

    .line 191
    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    goto :goto_33

    .line 193
    :cond_22
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v2, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iget v3, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iget v4, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iget v5, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iget v6, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iget v7, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    invoke-virtual/range {v1 .. v7}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 195
    :goto_33
    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-object v1

    .line 169
    :cond_37
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "libGDX requires OpenGL ES 2.0"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.android.AndroidLauncher.AnonymousClass1.C10721 (info.flowersoft.theotown.android.AndroidLauncher$1$1)
.class public Linfo/flowersoft/theotown/android/AndroidLauncher$1$1;
.super Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
.source "AndroidLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidLauncher$1;->createGLSurfaceView(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/android/AndroidLauncher$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidLauncher$1;Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 172
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidLauncher$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidLauncher$1;

    invoke-direct {p0, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;I)V

    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4

    if-eqz p1, :cond_1c

    .line 176
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onscreenKeyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v1, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    if-ne v0, v1, :cond_15

    const v0, 0x80001

    .line 179
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1c

    :cond_15
    const/4 v1, 0x1

    .line 181
    invoke-static {v0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getAndroidInputType(Lcom/badlogic/gdx/Input$OnscreenKeyboardType;Z)I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    .line 186
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.android.AndroidLauncher.AnonymousClass2 (info.flowersoft.theotown.android.AndroidLauncher$2)
.class public Linfo/flowersoft/theotown/android/AndroidLauncher$2;
.super Ljava/lang/Object;
.source "AndroidLauncher.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidLauncher;->migrateToScopedStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/android/AndroidLauncher;

.field public final synthetic val$fileStructure:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final synthetic val$totalSize:[J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidLauncher;Linfo/flowersoft/theotown/util/json/JSONObject;[J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidLauncher$2;->this$0:Linfo/flowersoft/theotown/android/AndroidLauncher;

    iput-object p2, p0, Linfo/flowersoft/theotown/android/AndroidLauncher$2;->val$fileStructure:Linfo/flowersoft/theotown/util/json/JSONObject;

    iput-object p3, p0, Linfo/flowersoft/theotown/android/AndroidLauncher$2;->val$totalSize:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Ljava/io/File;)V
    .registers 8

    .line 273
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 275
    :try_start_6
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidLauncher$2;->val$fileStructure:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 276
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidLauncher$2;->val$totalSize:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    aput-wide v2, v0, v1
    :try_end_1f
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_6 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_24
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 270
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/android/AndroidLauncher$2;->set(Ljava/io/File;)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidLauncher$$ExternalSyntheticLambda0 (info.flowersoft.theotown.android.AndroidLauncher$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/util/ExceptionManager;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/util/ExceptionManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/util/ExceptionManager;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/util/ExceptionManager;

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/android/AndroidLauncher;->$r8$lambda$i_IppoMtdJE-lLyQp5ZsU47QMAc(Linfo/flowersoft/theotown/util/ExceptionManager;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidLauncher$$ExternalSyntheticLambda1 (info.flowersoft.theotown.android.AndroidLauncher$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/android/AndroidLauncher;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/android/AndroidLauncher;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/android/AndroidLauncher;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/android/AndroidLauncher;

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/android/AndroidLauncher;->$r8$lambda$WnW8ynXkZAVzdy_Fr9yAMQCTt1Y(Linfo/flowersoft/theotown/android/AndroidLauncher;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidLauncher$$ExternalSyntheticLambda2 (info.flowersoft.theotown.android.AndroidLauncher$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/android/AndroidLauncher;->$r8$lambda$2JWCvC6HezJbN-Mdv3OUD0F4hqw(Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidLauncher$$ExternalSyntheticLambda3 (info.flowersoft.theotown.android.AndroidLauncher$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/android/AndroidLauncher;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/android/AndroidLauncher;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/android/AndroidLauncher;

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidLauncher$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/android/AndroidLauncher;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/android/AndroidLauncher;->$r8$lambda$kfYl-XUt_9Xq7IdgoL_okXDxvq8(Linfo/flowersoft/theotown/android/AndroidLauncher;I)V

    return-void
.end method
