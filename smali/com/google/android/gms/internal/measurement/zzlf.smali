###### Class com.google.android.gms.internal.measurement.zzlf (com.google.android.gms.internal.measurement.zzlf)
.class public final Lcom/google/android/gms/internal/measurement/zzlf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field private static volatile zza:Lcom/google/common/base/Optional;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/common/base/Optional;
    .registers 17

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlf;->zza:Lcom/google/common/base/Optional;

    if-nez v0, :cond_18a

    const-class v1, Lcom/google/android/gms/internal/measurement/zzlf;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlf;->zza:Lcom/google/common/base/Optional;

    if-nez v0, :cond_186

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    sget v3, Lcom/google/android/gms/internal/measurement/zzlg;->zza:I

    const-string v3, "eng"

    .line 2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "userdebug"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_25

    :catchall_22
    move-exception v0

    goto/16 :goto_188

    :cond_25
    :goto_25
    const-string v0, "dev-keys"

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "test-keys"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_3c

    .line 4
    :cond_36
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    goto/16 :goto_17f

    .line 5
    :cond_3c
    :goto_3c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzky;->zza()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    move-object v2, v0

    goto :goto_50

    :cond_4e
    move-object/from16 v2, p0

    .line 8
    :goto_50
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3
    :try_end_54
    .catchall {:try_start_7 .. :try_end_54} :catchall_22

    .line 9
    :try_start_54
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_70

    const/4 v4, 0x0

    :try_start_58
    new-instance v0, Ljava/io/File;

    const-string v5, "phenotype_hermetic"

    .line 10
    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    const-string v6, "overrides.txt"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_65} :catch_78
    .catchall {:try_start_58 .. :try_end_65} :catchall_70

    .line 13
    :try_start_65
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_84

    :catchall_70
    move-exception v0

    goto/16 :goto_182

    :cond_73
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_84

    :catch_78
    move-exception v0

    .line 39
    const-string v5, "HermeticFileOverrides"

    const-string v6, "no data dir"

    .line 11
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 14
    :goto_84
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_178

    .line 15
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const-string v5, "Parsed "

    const-string v6, " for Android package "

    const-string v7, "Invalid: "
    :try_end_96
    .catchall {:try_start_65 .. :try_end_96} :catchall_70

    :try_start_96
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    .line 16
    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a5} :catch_167
    .catchall {:try_start_96 .. :try_end_a5} :catchall_70

    .line 17
    :try_start_a5
    new-instance v9, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v9}, Landroidx/collection/SimpleArrayMap;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    .line 18
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 19
    :goto_af
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_129

    const-string v12, " "

    const/4 v13, 0x3

    .line 20
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    .line 21
    array-length v14, v12

    if-eq v14, v13, :cond_de

    const-string v12, "HermeticFileOverrides"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x9

    new-instance v14, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    :catchall_da
    move-exception v0

    move-object v2, v0

    goto/16 :goto_169

    .line 23
    :cond_de
    aget-object v11, v12, v4

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    .line 24
    aget-object v11, v12, v11

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x2

    .line 25
    aget-object v15, v12, v14

    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-nez v15, :cond_114

    .line 26
    aget-object v12, v12, v14

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {v14}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 28
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v4, 0x400

    if-lt v12, v4, :cond_111

    if-ne v15, v14, :cond_114

    .line 29
    :cond_111
    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_114
    invoke-virtual {v9, v13}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/collection/SimpleArrayMap;

    if-nez v4, :cond_124

    new-instance v4, Landroidx/collection/SimpleArrayMap;

    .line 31
    invoke-direct {v4}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 32
    invoke-virtual {v9, v13, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_124
    invoke-virtual {v4, v11, v15}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    goto :goto_af

    :cond_129
    const-string v4, "HermeticFileOverrides"

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1c

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v7, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzle;

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/measurement/zzle;-><init>(Landroidx/collection/SimpleArrayMap;)V
    :try_end_15f
    .catchall {:try_start_a5 .. :try_end_15f} :catchall_da

    .line 35
    :try_start_15f
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_162} :catch_167
    .catchall {:try_start_15f .. :try_end_162} :catchall_70

    .line 15
    :try_start_162
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0
    :try_end_166
    .catchall {:try_start_162 .. :try_end_166} :catchall_70

    goto :goto_17c

    :catch_167
    move-exception v0

    goto :goto_172

    .line 16
    :goto_169
    :try_start_169
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_16c
    .catchall {:try_start_169 .. :try_end_16c} :catchall_16d

    goto :goto_171

    :catchall_16d
    move-exception v0

    :try_start_16e
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_171
    throw v2
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_172} :catch_167
    .catchall {:try_start_16e .. :try_end_172} :catchall_70

    .line 12
    :goto_172
    :try_start_172
    new-instance v2, Ljava/lang/RuntimeException;

    .line 36
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 37
    :cond_178
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0
    :try_end_17c
    .catchall {:try_start_172 .. :try_end_17c} :catchall_70

    .line 38
    :goto_17c
    :try_start_17c
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_17f
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlf;->zza:Lcom/google/common/base/Optional;

    goto :goto_186

    :goto_182
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 39
    throw v0

    .line 40
    :cond_186
    :goto_186
    monitor-exit v1

    return-object v0

    :goto_188
    monitor-exit v1
    :try_end_189
    .catchall {:try_start_17c .. :try_end_189} :catchall_22

    throw v0

    :cond_18a
    return-object v0
.end method
