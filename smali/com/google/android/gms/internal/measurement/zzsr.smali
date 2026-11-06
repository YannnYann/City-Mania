###### Class com.google.android.gms.internal.measurement.zzsr (com.google.android.gms.internal.measurement.zzsr)
.class public final Lcom/google/android/gms/internal/measurement/zzsr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzrt;


# instance fields
.field private zza:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzsr;->zza:Z

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzsr;
    .registers 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzsr;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/measurement/zzrs;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzsr;->zza:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrs;->zze()Z

    move-result v0

    if-nez v0, :cond_17

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrs;->zza()Lcom/google/android/gms/internal/measurement/zzsx;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrs;->zzb()Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzsx;->zzg(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 1
    :cond_17
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzsk;

    const-string v0, "Short circuit would skip transforms."

    .line 2
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzsk;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1f
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzst;->zzc(Lcom/google/android/gms/internal/measurement/zzrs;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzsj;->zza(Ljava/io/Closeable;)Lcom/google/android/gms/internal/measurement/zzsj;

    move-result-object p1

    :try_start_27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzsj;->zzb()Ljava/io/Closeable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/measurement/zzsf;

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzsj;->zzb()Ljava/io/Closeable;

    move-result-object v0

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzsf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzsf;->zza()Ljava/io/File;

    move-result-object v0
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_3d

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzsj;->close()V

    return-object v0

    :catchall_3d
    move-exception v0

    goto :goto_47

    .line 7
    :cond_3f
    :try_start_3f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not convertible and fallback to pipe is disabled."

    .line 5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_3d

    .line 7
    :goto_47
    :try_start_47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzsj;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4f
    throw v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzsr;
    .registers 2

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzsr;->zza:Z

    return-object p0
.end method
