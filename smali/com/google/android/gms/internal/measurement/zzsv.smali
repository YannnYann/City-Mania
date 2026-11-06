###### Class com.google.android.gms.internal.measurement.zzsv (com.google.android.gms.internal.measurement.zzsv)
.class public final Lcom/google/android/gms/internal/measurement/zzsv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzrt;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzafc;

.field private zzb:[Lcom/google/android/gms/internal/measurement/zzro;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzafc;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzsv;->zza:Lcom/google/android/gms/internal/measurement/zzafc;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/measurement/zzafc;)Lcom/google/android/gms/internal/measurement/zzsv;
    .registers 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzsv;-><init>(Lcom/google/android/gms/internal/measurement/zzafc;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/measurement/zzrs;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrs;->zzb()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzsu;->zza(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrs;->zza()Lcom/google/android/gms/internal/measurement/zzsx;

    move-result-object v1

    .line 2
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzsx;->zzj(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzrs;->zzd(Ljava/io/OutputStream;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzsv;->zzb:[Lcom/google/android/gms/internal/measurement/zzro;

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    aget-object v2, v2, v3

    .line 4
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/zzro;->zza(Ljava/util/List;)V

    .line 5
    :cond_1e
    :try_start_1e
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_3b

    :try_start_24
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzsv;->zza:Lcom/google/android/gms/internal/measurement/zzafc;

    .line 6
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/zzafc;->zzce(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzsv;->zzb:[Lcom/google/android/gms/internal/measurement/zzro;

    if-eqz v2, :cond_35

    aget-object v2, v2, v3

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzro;->zzb()V
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_33

    goto :goto_35

    :catchall_33
    move-exception v2

    goto :goto_4a

    :cond_35
    :goto_35
    if-eqz v1, :cond_3d

    .line 8
    :try_start_37
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_3d

    :catch_3b
    move-exception v1

    goto :goto_55

    :cond_3d
    :goto_3d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrs;->zza()Lcom/google/android/gms/internal/measurement/zzsx;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrs;->zzb()Landroid/net/Uri;

    move-result-object p1

    .line 13
    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/zzsx;->zzl(Landroid/net/Uri;Landroid/net/Uri;)V

    const/4 p1, 0x0

    return-object p1

    :goto_4a
    if-eqz v1, :cond_54

    .line 5
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_54

    :catchall_50
    move-exception v1

    :try_start_51
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    throw v2
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_55} :catch_3b

    .line 13
    :goto_55
    :try_start_55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrs;->zza()Lcom/google/android/gms/internal/measurement/zzsx;

    move-result-object p1

    .line 9
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzsx;->zzk(Landroid/net/Uri;)V
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_5c} :catch_5c

    .line 10
    :catch_5c
    instance-of p1, v1, Ljava/io/IOException;

    if-eqz p1, :cond_63

    .line 11
    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 5
    :cond_63
    new-instance p1, Ljava/io/IOException;

    .line 12
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final varargs zzc([Lcom/google/android/gms/internal/measurement/zzro;)Lcom/google/android/gms/internal/measurement/zzsv;
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzsv;->zzb:[Lcom/google/android/gms/internal/measurement/zzro;

    return-object p0
.end method
