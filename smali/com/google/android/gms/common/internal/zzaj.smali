###### Class com.google.android.gms.common.internal.zzaj (com.google.android.gms.common.internal.zzaj)
.class public final Lcom/google/android/gms/common/internal/zzaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.12.0"


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Z

.field private static zzc:Ljava/lang/String;

.field private static zzd:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzaj;->zza:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaj;->zzc(Landroid/content/Context;)V

    sget-object p0, Lcom/google/android/gms/common/internal/zzaj;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public static zzb(Landroid/content/Context;)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaj;->zzc(Landroid/content/Context;)V

    sget p0, Lcom/google/android/gms/common/internal/zzaj;->zzd:I

    return p0
.end method

.method private static zzc(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/zzaj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/common/internal/zzaj;->zzb:Z

    if-eqz v1, :cond_b

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_3d

    :cond_b
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/gms/common/internal/zzaj;->zzb:Z

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_9

    const/16 v2, 0x80

    .line 4
    :try_start_18
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 5
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_1e} :catch_33
    .catchall {:try_start_18 .. :try_end_1e} :catchall_9

    if-nez p0, :cond_22

    .line 6
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_9

    return-void

    :cond_22
    :try_start_22
    const-string v1, "com.google.app.id"

    .line 7
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/internal/zzaj;->zzc:Ljava/lang/String;

    const-string v1, "com.google.android.gms.version"

    .line 8
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/google/android/gms/common/internal/zzaj;->zzd:I
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_32} :catch_33
    .catchall {:try_start_22 .. :try_end_32} :catchall_9

    goto :goto_3b

    :catch_33
    move-exception p0

    .line 10
    :try_start_34
    const-string v1, "MetadataValueReader"

    const-string v2, "This should never happen."

    .line 9
    invoke-static {v1, v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :goto_3b
    monitor-exit v0

    return-void

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_9

    throw p0
.end method
