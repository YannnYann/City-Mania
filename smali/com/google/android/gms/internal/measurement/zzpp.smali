###### Class com.google.android.gms.internal.measurement.zzpp (com.google.android.gms.internal.measurement.zzpp)
.class public final Lcom/google/android/gms/internal/measurement/zzpp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static volatile zzb:Ljava/util/Map;


# instance fields
.field private final zzc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpp;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzpr;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzpr;->zzb()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzpr;->zza()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_17

    .line 4
    :cond_13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzpr;->zza()Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_17
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpp;->zzc:Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzpr;->zzc()Lcom/google/android/gms/internal/measurement/zzabz;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzpr;->zzf()Z

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzpr;->zzd()Z

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzpr;->zze()Z

    return-void
.end method

.method public static zza(Landroid/content/Context;)Ljava/util/Map;
    .registers 13

    .line 1
    const-string v0, "Unable to read Phenotype PackageMetadata for "

    const-string v1, "phenotype/"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzpp;->zzb:Ljava/util/Map;

    if-nez v2, :cond_a3

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzpp;->zza:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzpp;->zzb:Ljava/util/Map;

    if-nez v2, :cond_9f

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_63

    .line 2
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "phenotype"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_99

    array-length v5, v4

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v5, :cond_99

    .line 3
    aget-object v7, v4, v6

    const-string v8, "_package_metadata.binarypb"

    .line 4
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2b} :catch_65
    .catchall {:try_start_13 .. :try_end_2b} :catchall_63

    if-nez v8, :cond_2e

    goto :goto_8f

    .line 5
    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0xa

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_4b
    .catch Lcom/google/android/gms/internal/measurement/zzaeh; {:try_start_2e .. :try_end_4b} :catch_67
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_4b} :catch_65
    .catchall {:try_start_2e .. :try_end_4b} :catchall_63

    :try_start_4b
    new-instance v9, Lcom/google/android/gms/internal/measurement/zzpp;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzadf;->zza()Lcom/google/android/gms/internal/measurement/zzadf;

    move-result-object v10

    .line 7
    invoke-static {v8, v10}, Lcom/google/android/gms/internal/measurement/zzpr;->zzh(Ljava/io/InputStream;Lcom/google/android/gms/internal/measurement/zzadf;)Lcom/google/android/gms/internal/measurement/zzpr;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/google/android/gms/internal/measurement/zzpp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzpr;)V

    iget-object v10, v9, Lcom/google/android/gms/internal/measurement/zzpp;->zzc:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v10, v9}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    :try_end_5d
    .catchall {:try_start_4b .. :try_end_5d} :catchall_69

    if-eqz v8, :cond_8f

    .line 10
    :try_start_5f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Lcom/google/android/gms/internal/measurement/zzaeh; {:try_start_5f .. :try_end_62} :catch_67
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_65
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_8f

    :catchall_63
    move-exception p0

    goto :goto_a1

    :catch_65
    move-exception p0

    goto :goto_92

    :catch_67
    move-exception v8

    goto :goto_75

    :catchall_69
    move-exception v9

    if-eqz v8, :cond_74

    .line 9
    :try_start_6c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_74

    :catchall_70
    move-exception v8

    :try_start_71
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_74
    :goto_74
    throw v9
    :try_end_75
    .catch Lcom/google/android/gms/internal/measurement/zzaeh; {:try_start_71 .. :try_end_75} :catch_67
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_75} :catch_65
    .catchall {:try_start_71 .. :try_end_75} :catchall_63

    .line 12
    :goto_75
    :try_start_75
    const-string v9, "PackageInfo"

    .line 11
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x2d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_8f} :catch_65
    .catchall {:try_start_75 .. :try_end_8f} :catchall_63

    :cond_8f
    :goto_8f
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 14
    :goto_92
    :try_start_92
    const-string v0, "PackageInfo"

    const-string v1, "Unable to read Phenotype PackageMetadata from assets."

    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :cond_99
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzpp;->zzb:Ljava/util/Map;

    .line 14
    :cond_9f
    monitor-exit v3

    return-object v2

    :goto_a1
    monitor-exit v3
    :try_end_a2
    .catchall {:try_start_92 .. :try_end_a2} :catchall_63

    throw p0

    :cond_a3
    return-object v2
.end method
