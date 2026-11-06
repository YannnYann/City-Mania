###### Class ads_mobile_sdk.w93 (ads_mobile_sdk.w93)
.class public abstract Lads_mobile_sdk/w93;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 339
    const-string v5, "com.waze"

    const-string v6, "com.waze."

    const-string v0, "com.android."

    const-string v1, "com.google."

    const-string v2, "com.chrome."

    const-string v3, "com.nest."

    const-string v4, "com.waymo."

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/w93;->a:[Ljava/lang/String;

    .line 357
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "goldfish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_2b

    const-string v1, "ranchu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    move-object v0, v2

    goto :goto_2d

    .line 359
    :cond_2b
    :goto_2b
    const-string v0, "androidx.test.services.storage.runfiles"

    :goto_2d
    const-string v1, "media"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/w93;->b:[Ljava/lang/String;

    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_3e

    const-string v3, "com.google.android.inputmethod.latin.inputcontent"

    goto :goto_3f

    :cond_3e
    move-object v3, v2

    :goto_3f
    if-gt v0, v1, :cond_43

    .line 371
    const-string v2, "com.google.android.inputmethod.latin.dev.inputcontent"

    :cond_43
    const-string v0, "com.google.android.apps.docs.storage.legacy"

    filled-new-array {v3, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/w93;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Lads_mobile_sdk/v93;)Ljava/io/FileOutputStream;
    .registers 16

    .line 3159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_12

    .line 3165
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3166
    :cond_12
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 3168
    const-string v2, "android.resource"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "w"

    if-eqz v2, :cond_26

    .line 3169
    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    goto/16 :goto_13c

    .line 3172
    :cond_26
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "Content resolver returned null value."

    if-eqz v2, :cond_126

    .line 3173
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 3174
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    const/4 v6, -0x1

    const/16 v7, 0x40

    const/4 v8, 0x1

    if-nez v2, :cond_5c

    .line 3182
    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-le v9, v6, :cond_56

    add-int/2addr v9, v8

    .line 3184
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3185
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    :cond_56
    if-nez v2, :cond_5c

    .line 3194
    iget-boolean p0, p2, Lads_mobile_sdk/v93;->a:Z

    xor-int/2addr p0, v8

    goto :goto_aa

    .line 3195
    :cond_5c
    iget-object v9, p2, Lads_mobile_sdk/v93;->b:Lcom/google/common/collect/ImmutableList;

    .line 3196
    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v9

    :goto_62
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v10, :cond_94

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lads_mobile_sdk/sw3;

    .line 3197
    check-cast v10, Lads_mobile_sdk/u93;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3198
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    if-le v10, v6, :cond_88

    .line 3199
    const-string v10, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {p0, v10}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_88

    move v11, v12

    .line 3200
    :cond_88
    invoke-static {v11}, Lads_mobile_sdk/yv2;->a(I)I

    move-result v10

    if-eqz v10, :cond_93

    if-eq v10, v8, :cond_91

    goto :goto_62

    :cond_91
    move v11, v12

    goto :goto_94

    :cond_93
    move v11, v8

    .line 3201
    :cond_94
    :goto_94
    invoke-static {v11}, Lads_mobile_sdk/yv2;->a(I)I

    move-result v6

    if-eqz v6, :cond_119

    if-eq v6, v8, :cond_111

    .line 3211
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 3214
    iget-boolean p0, p2, Lads_mobile_sdk/v93;->a:Z

    :goto_aa
    if-eqz p0, :cond_111

    goto/16 :goto_119

    .line 3215
    :cond_ae
    iget-boolean p2, p2, Lads_mobile_sdk/v93;->a:Z

    if-nez p2, :cond_111

    .line 3220
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    .line 3221
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 3222
    invoke-virtual {p0, p1, p2, v6, v12}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result p0

    if-nez p0, :cond_c1

    goto :goto_119

    .line 3247
    :cond_c1
    iget-boolean p0, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz p0, :cond_119

    .line 3248
    sget-object p0, Lads_mobile_sdk/w93;->b:[Ljava/lang/String;

    array-length p2, p0

    move v6, v5

    :goto_c9
    if-ge v6, p2, :cond_d7

    aget-object v7, p0, v6

    .line 3249
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d4

    goto :goto_119

    :cond_d4
    add-int/lit8 v6, v6, 0x1

    goto :goto_c9

    .line 3254
    :cond_d7
    sget-object p0, Lads_mobile_sdk/w93;->c:[Ljava/lang/String;

    array-length p2, p0

    move v6, v5

    :goto_db
    if-ge v6, p2, :cond_e9

    aget-object v7, p0, v6

    .line 3255
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e6

    goto :goto_119

    :cond_e6
    add-int/lit8 v6, v6, 0x1

    goto :goto_db

    .line 3260
    :cond_e9
    sget-object p0, Lads_mobile_sdk/w93;->a:[Ljava/lang/String;

    :goto_eb
    const/4 p2, 0x7

    if-ge v5, p2, :cond_119

    aget-object p2, p0, v5

    .line 3261
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x2e

    if-ne v1, v6, :cond_106

    .line 3262
    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_111

    goto :goto_10e

    .line 3266
    :cond_106
    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_111

    :goto_10e
    add-int/lit8 v5, v5, 0x1

    goto :goto_eb

    .line 3267
    :cond_111
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Can\'t open content uri."

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3269
    :cond_119
    :goto_119
    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_120

    goto :goto_13c

    .line 3270
    :cond_120
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3271
    :cond_126
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17f

    .line 3272
    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_179

    .line 3274
    :try_start_134
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Lads_mobile_sdk/w93;->a(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Lads_mobile_sdk/v93;)V
    :try_end_13b
    .catch Ljava/io/FileNotFoundException; {:try_start_134 .. :try_end_13b} :catch_15b
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_13b} :catch_159

    move-object p0, v0

    :goto_13c
    if-eqz p0, :cond_157

    .line 3275
    :try_start_13e
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_142} :catch_143

    return-object p0

    :catch_143
    move-exception p1

    .line 3277
    new-instance p2, Ljava/io/FileNotFoundException;

    const-string v0, "Unable to create stream"

    invoke-direct {p2, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 3278
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3279
    :try_start_14e
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_151} :catch_152

    goto :goto_156

    :catch_152
    move-exception p0

    .line 3281
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 3282
    :goto_156
    throw p2

    :cond_157
    const/4 p0, 0x0

    return-object p0

    :catch_159
    move-exception p0

    goto :goto_15d

    :catch_15b
    move-exception p0

    goto :goto_170

    .line 3283
    :goto_15d
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Validation failed."

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 3284
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3285
    :try_start_167
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_16a
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16a} :catch_16b

    goto :goto_16f

    :catch_16b
    move-exception p0

    .line 3287
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 3288
    :goto_16f
    throw p1

    .line 3289
    :goto_170
    :try_start_170
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_173} :catch_174

    goto :goto_178

    :catch_174
    move-exception p1

    .line 3291
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 3292
    :goto_178
    throw p0

    .line 3293
    :cond_179
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3294
    :cond_17f
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Unsupported scheme"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Lads_mobile_sdk/v93;)V
    .registers 6

    .line 3295
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    .line 3299
    invoke-static {p1, p2}, Lads_mobile_sdk/w93;->a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 3300
    const-string p1, "/proc/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9d

    .line 3305
    const-string p1, "/data/misc/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9d

    .line 3309
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3310
    iget-object p1, p3, Lads_mobile_sdk/v93;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_90

    .line 3311
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v0, "/"

    if-eqz p1, :cond_4c

    .line 3312
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 3313
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 3314
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3315
    :cond_45
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_65

    goto :goto_85

    .line 3323
    :cond_4c
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    .line 3324
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 3325
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 3326
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3327
    :cond_5e
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_65

    goto :goto_85

    .line 3332
    :cond_65
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_87

    .line 3335
    invoke-static {p1}, Landroidx/core/content/ContextCompat;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_87

    .line 3336
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 3337
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 3338
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3339
    :cond_7f
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_87

    :goto_85
    const/4 p0, 0x1

    goto :goto_8b

    .line 3340
    :cond_87
    invoke-static {p0, p2}, Lads_mobile_sdk/w93;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    .line 3341
    :goto_8b
    iget-boolean p1, p3, Lads_mobile_sdk/v93;->a:Z

    if-ne p0, p1, :cond_9d

    return-void

    .line 3342
    :cond_90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 3343
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3344
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    .line 3345
    :cond_9d
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Can\'t open file: "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 9

    .line 932
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object p0
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_8} :catch_52

    .line 943
    :try_start_8
    invoke-static {p1}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_c} :catch_4b

    .line 949
    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    move-result v1

    const-string v2, "Can\'t open file: "

    if-nez v1, :cond_39

    .line 957
    iget-wide v3, p0, Landroid/system/StructStat;->st_dev:J

    iget-wide v5, v0, Landroid/system/StructStat;->st_dev:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_27

    iget-wide v3, p0, Landroid/system/StructStat;->st_ino:J

    iget-wide v0, v0, Landroid/system/StructStat;->st_ino:J

    cmp-long p0, v3, v0

    if-nez p0, :cond_27

    return-void

    .line 961
    :cond_27
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 962
    :cond_39
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_4b
    move-exception p0

    .line 963
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_52
    move-exception p0

    .line 964
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    .line 2038
    new-instance v0, Lads_mobile_sdk/w93$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lads_mobile_sdk/w93$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .line 2039
    :try_start_5
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_b} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_64

    .line 2053
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    const/4 v4, 0x1

    const-string v5, "/"

    if-ge v3, v1, :cond_2f

    aget-object v6, v0, v3

    if-eqz v6, :cond_2c

    .line 2054
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 2055
    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 2056
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2057
    :cond_25
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    return v4

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 2061
    :cond_2f
    new-instance v0, Lads_mobile_sdk/w93$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lads_mobile_sdk/w93$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .line 2062
    :try_start_34
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;
    :try_end_3a
    .catch Ljava/lang/NullPointerException; {:try_start_34 .. :try_end_3a} :catch_62
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3a} :catch_5b

    .line 2076
    array-length v0, p0

    move v1, v2

    :goto_3c
    if-ge v1, v0, :cond_5a

    aget-object v3, p0, v1

    if-eqz v3, :cond_57

    .line 2077
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 2078
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 2079
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2080
    :cond_50
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    return v4

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_5a
    return v2

    :catch_5b
    move-exception p0

    .line 2070
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_62
    move-exception p0

    .line 2081
    throw p0

    :catch_64
    move-exception p0

    .line 2047
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_6b
    move-exception p0

    .line 2082
    throw p0
.end method

.method public static synthetic a(Landroid/content/Context;)[Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    .line 3156
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;)[Ljava/io/File;
    .registers 1

    .line 1079
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

###### Class ads_mobile_sdk.w93$$ExternalSyntheticLambda0 (ads_mobile_sdk.w93$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/w93$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/w93$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/w93$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lads_mobile_sdk/w93;->a(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.w93$$ExternalSyntheticLambda1 (ads_mobile_sdk.w93$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/w93$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/w93$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/w93$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lads_mobile_sdk/w93;->b(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
