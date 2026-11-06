###### Class com.google.android.gms.internal.measurement.zzrn (com.google.android.gms.internal.measurement.zzrn)
.class public final Lcom/google/android/gms/internal/measurement/zzrn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Ljava/lang/Thread;

.field private static volatile zzc:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzrn;->zza:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Ljava/lang/Thread;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrn;->zzb:Ljava/lang/Thread;

    if-nez v0, :cond_e

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzrn;->zzb:Ljava/lang/Thread;

    :cond_e
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrn;->zzb:Ljava/lang/Thread;

    if-ne p0, v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static zzb()Landroid/os/Handler;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrn;->zzc:Landroid/os/Handler;

    if-nez v0, :cond_1d

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrn;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzrn;->zzc:Landroid/os/Handler;

    if-nez v1, :cond_19

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzrn;->zzc:Landroid/os/Handler;

    goto :goto_19

    :catchall_17
    move-exception v1

    goto :goto_1b

    .line 2
    :cond_19
    :goto_19
    monitor-exit v0

    goto :goto_1d

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_17

    throw v1

    :cond_1d
    :goto_1d
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzrn;->zzc:Landroid/os/Handler;

    return-object v0
.end method
