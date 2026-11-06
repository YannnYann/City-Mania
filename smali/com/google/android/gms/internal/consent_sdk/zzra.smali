###### Class com.google.android.gms.internal.consent_sdk.zzra (com.google.android.gms.internal.consent_sdk.zzra)
.class public Lcom/google/android/gms/internal/consent_sdk/zzra;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field protected volatile zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

.field private volatile zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

.field private volatile zzc:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/consent_sdk/zzra;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzra;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/consent_sdk/zzra;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

    if-nez v0, :cond_22

    if-eqz v1, :cond_15

    goto :goto_22

    .line 8
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzpm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzb()Lcom/google/android/gms/internal/consent_sdk/zzpm;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_22
    :goto_22
    if-eqz v0, :cond_2c

    if-nez v1, :cond_27

    goto :goto_2c

    .line 7
    :cond_27
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2c
    :goto_2c
    if-eqz v0, :cond_3c

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzrr;->zzl()Lcom/google/android/gms/internal/consent_sdk/zzrq;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzd(Lcom/google/android/gms/internal/consent_sdk/zzrq;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/consent_sdk/zzra;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5
    :cond_3c
    invoke-interface {v1}, Lcom/google/android/gms/internal/consent_sdk/zzrr;->zzl()Lcom/google/android/gms/internal/consent_sdk/zzrq;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzd(Lcom/google/android/gms/internal/consent_sdk/zzrq;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final zza()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzpk;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzpk;->zza:[B

    array-length v0, v0

    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzrq;->zzn()I

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/consent_sdk/zzpm;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    return-object v0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    goto :goto_27

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

    if-nez v0, :cond_1b

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    goto :goto_23

    .line 4
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzrq;->zzk()Lcom/google/android/gms/internal/consent_sdk/zzpm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    .line 2
    :goto_23
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    .line 4
    monitor-exit p0

    return-object v0

    .line 5
    :goto_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_10

    throw v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/consent_sdk/zzrq;)Lcom/google/android/gms/internal/consent_sdk/zzrq;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/consent_sdk/zzrq;)V
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

    if-eqz v0, :cond_5

    goto :goto_1f

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

    if-eqz v0, :cond_e

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception p1

    goto :goto_20

    :cond_e
    :try_start_e
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;
    :try_end_14
    .catch Lcom/google/android/gms/internal/consent_sdk/zzqu; {:try_start_e .. :try_end_14} :catch_15
    .catchall {:try_start_e .. :try_end_14} :catchall_c

    goto :goto_1e

    :catch_15
    const/4 v0, 0x1

    .line 3
    :try_start_16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzra;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    .line 3
    :goto_1e
    monitor-exit p0

    :goto_1f
    return-void

    :goto_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_c

    throw p1
.end method
