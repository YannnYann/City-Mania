###### Class com.google.android.gms.internal.measurement.zzwr (com.google.android.gms.internal.measurement.zzwr)
.class final Lcom/google/android/gms/internal/measurement/zzwr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/measurement/zzws;Lcom/google/android/gms/internal/measurement/zzws;)V
    .registers 3

    if-eqz p0, :cond_27

    if-eqz p1, :cond_24

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    if-ne v0, p1, :cond_14

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzwr;->zzd(Lcom/google/android/gms/internal/measurement/zzws;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_14
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    if-ne p0, v0, :cond_24

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzwr;->zzd(Lcom/google/android/gms/internal/measurement/zzws;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzwr;->zze(Lcom/google/android/gms/internal/measurement/zzws;)V

    return-void

    .line 5
    :cond_24
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzwr;->zzc(Lcom/google/android/gms/internal/measurement/zzws;)V

    :cond_27
    if-eqz p1, :cond_2c

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzwr;->zzb(Lcom/google/android/gms/internal/measurement/zzws;)V

    :cond_2c
    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/measurement/zzws;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzwr;->zzd(Lcom/google/android/gms/internal/measurement/zzws;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_18

    .line 2
    :cond_d
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwr;->zzb(Lcom/google/android/gms/internal/measurement/zzws;)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzwr;->zze(Lcom/google/android/gms/internal/measurement/zzws;)V

    return-void

    .line 4
    :cond_18
    :goto_18
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzwr;->zze(Lcom/google/android/gms/internal/measurement/zzws;)V

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/measurement/zzws;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzwr;->zzd(Lcom/google/android/gms/internal/measurement/zzws;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_18

    .line 2
    :cond_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzwr;->zzc(Lcom/google/android/gms/internal/measurement/zzws;)V

    return-void

    .line 4
    :cond_18
    :goto_18
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private static zzd(Lcom/google/android/gms/internal/measurement/zzws;)Z
    .registers 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zza()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private static zze(Lcom/google/android/gms/internal/measurement/zzws;)V
    .registers 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->zze()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/google/android/gms/internal/measurement/zzvy;->zzb:I

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_13

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1
    :cond_13
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method
