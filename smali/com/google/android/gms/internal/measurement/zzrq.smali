###### Class com.google.android.gms.internal.measurement.zzrq (com.google.android.gms.internal.measurement.zzrq)
.class final Lcom/google/android/gms/internal/measurement/zzrq;
.super Lcom/google/android/gms/internal/measurement/zzso;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# instance fields
.field private final zza:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;Ljava/util/List;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzso;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzrq;->zza:Ljava/util/List;

    return-void
.end method

.method public static zza(Ljava/util/List;Landroid/net/Uri;Ljava/io/OutputStream;)Lcom/google/android/gms/internal/measurement/zzrq;
    .registers 4

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zztb;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zztb;->zzb()Lcom/google/android/gms/internal/measurement/zzta;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 5
    :cond_1f
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2b

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzrq;

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzrq;-><init>(Ljava/io/OutputStream;Ljava/util/List;)V

    return-object p0

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrq;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzta;

    .line 2
    :try_start_12
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzta;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_6

    goto :goto_6

    .line 3
    :cond_16
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzrq;->zza:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzta;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzta;->zza()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public final write([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzrq;->zza:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzta;

    .line 6
    array-length v2, p1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzta;->zza()V

    goto :goto_b

    :cond_1c
    return-void
.end method

.method public final write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzrq;->zza:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzta;

    .line 9
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzta;->zza()V

    goto :goto_b

    :cond_1b
    return-void
.end method
