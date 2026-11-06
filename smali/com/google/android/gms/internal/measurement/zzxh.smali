###### Class com.google.android.gms.internal.measurement.zzxh (com.google.android.gms.internal.measurement.zzxh)
.class public final Lcom/google/android/gms/internal/measurement/zzxh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field private static final zza:Lcom/google/common/base/Ticker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzxf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzxf;-><init>()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_11

    .line 3
    :catchall_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzxg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzxg;-><init>()V

    .line 2
    :goto_11
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxh;->zza:Lcom/google/common/base/Ticker;

    return-void
.end method

.method public static zza()Lcom/google/common/base/Ticker;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxh;->zza:Lcom/google/common/base/Ticker;

    return-object v0
.end method
