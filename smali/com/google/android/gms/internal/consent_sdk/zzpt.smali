###### Class com.google.android.gms.internal.consent_sdk.zzpt (com.google.android.gms.internal.consent_sdk.zzpt)
.class final Lcom/google/android/gms/internal/consent_sdk/zzpt;
.super Lcom/google/android/gms/internal/consent_sdk/zzpq;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field private final zzg:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpq;-><init>(I)V

    if-eqz p1, :cond_8

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzg:Ljava/io/OutputStream;

    return-void

    .line 1
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzG()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzg:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zza:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    return-void
.end method

.method private final zzH(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzG()V

    :cond_a
    return-void
.end method


# virtual methods
.method public final zzI()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    if-lez v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzG()V

    :cond_7
    return-void
.end method

.method public final zzJ(B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzb:I

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzG()V

    .line 2
    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc(B)V

    return-void
.end method

.method public final zzK(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzH(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzf(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc(B)V

    return-void
.end method

.method public final zzL([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzw(I)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzz([BII)V

    return-void
.end method

.method public final zza([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzz([BII)V

    return-void
.end method

.method public final zzh(ILcom/google/android/gms/internal/consent_sdk/zzpm;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzw(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzi(Lcom/google/android/gms/internal/consent_sdk/zzpm;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/consent_sdk/zzpm;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzw(I)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzg(Lcom/google/android/gms/internal/consent_sdk/zzpe;)V

    return-void
.end method

.method public final zzj(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzH(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzf(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzd(I)V

    return-void
.end method

.method public final zzk(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzH(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzd(I)V

    return-void
.end method

.method public final zzl(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzH(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzf(I)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zze(J)V

    return-void
.end method

.method public final zzm(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzH(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zze(J)V

    return-void
.end method

.method public final zzn(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzH(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzf(I)V

    if-ltz p2, :cond_10

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzf(I)V

    return-void

    :cond_10
    int-to-long p1, p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzg(J)V

    return-void
.end method

.method public final zzo(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzw(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzy(J)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/consent_sdk/zzrq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/consent_sdk/zzrq;->zzn()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzw(I)V

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/consent_sdk/zzrq;->zzB(Lcom/google/android/gms/internal/consent_sdk/zzpv;)V

    return-void
.end method

.method public final zzq(ILcom/google/android/gms/internal/consent_sdk/zzrq;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzw(I)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzv(II)V

    const/16 p1, 0x1a

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzw(I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzp(Lcom/google/android/gms/internal/consent_sdk/zzrq;)V

    const/16 p1, 0xc

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzw(I)V

    return-void
.end method

.method public final zzr(ILcom/google/android/gms/internal/consent_sdk/zzpm;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzw(I)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzv(II)V

    const/4 p1, 0x3

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzh(ILcom/google/android/gms/internal/consent_sdk/zzpm;)V

    const/16 p1, 0xc

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzw(I)V

    return-void
.end method

.method public final zzs(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzw(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzt(Ljava/lang/String;)V

    return-void
.end method

.method public final zzt(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzb:I

    if-le v2, v3, :cond_20

    .line 12
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 13
    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzsy;->zza(Ljava/lang/String;[BII)I

    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzw(I)V

    .line 15
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzz([BII)V

    return-void

    :catch_1e
    move-exception v0

    goto :goto_77

    :cond_20
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    sub-int v0, v3, v0

    if-le v2, v0, :cond_29

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzG()V

    .line 4
    :cond_29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I
    :try_end_33
    .catch Lcom/google/android/gms/internal/consent_sdk/zzsx; {:try_start_0 .. :try_end_33} :catch_1e

    if-ne v0, v1, :cond_4f

    add-int v1, v2, v0

    :try_start_37
    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    iget-object v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zza:[B

    sub-int/2addr v3, v1

    .line 5
    invoke-static {p1, v4, v1, v3}, Lcom/google/android/gms/internal/consent_sdk/zzsy;->zza(Ljava/lang/String;[BII)I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    .line 6
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzf(I)V

    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    goto :goto_60

    :catch_4b
    move-exception v0

    goto :goto_66

    :catch_4d
    move-exception v0

    goto :goto_6c

    .line 7
    :cond_4f
    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzsy;->zzb(Ljava/lang/String;)I

    move-result v3

    .line 8
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zza:[B

    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    .line 9
    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/internal/consent_sdk/zzsy;->zza(Ljava/lang/String;[BII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    .line 6
    :goto_60
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzd:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzd:I
    :try_end_65
    .catch Lcom/google/android/gms/internal/consent_sdk/zzsx; {:try_start_37 .. :try_end_65} :catch_4d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_37 .. :try_end_65} :catch_4b

    return-void

    .line 11
    :goto_66
    :try_start_66
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzps;

    .line 10
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 16
    :goto_6c
    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzd:I

    iget v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzd:I

    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    .line 11
    throw v0
    :try_end_77
    .catch Lcom/google/android/gms/internal/consent_sdk/zzsx; {:try_start_66 .. :try_end_77} :catch_1e

    .line 16
    :goto_77
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzE(Ljava/lang/String;Lcom/google/android/gms/internal/consent_sdk/zzsx;)V

    return-void
.end method

.method public final zzu(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzw(I)V

    return-void
.end method

.method public final zzv(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzH(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzf(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzf(I)V

    return-void
.end method

.method public final zzw(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzH(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzf(I)V

    return-void
.end method

.method public final zzx(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzH(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzf(I)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzg(J)V

    return-void
.end method

.method public final zzy(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzH(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzg(J)V

    return-void
.end method

.method public final zzz([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzb:I

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    sub-int v1, p2, v0

    const/4 v2, 0x0

    if-lt v1, p3, :cond_19

    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zza:[B

    invoke-static {p1, v2, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzd:I

    return-void

    :cond_19
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zza:[B

    .line 2
    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzd:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzd:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzG()V

    sub-int/2addr p3, v1

    if-gt p3, p2, :cond_31

    .line 4
    invoke-static {p1, v1, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzc:I

    goto :goto_36

    :cond_31
    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpt;->zzg:Ljava/io/OutputStream;

    .line 5
    invoke-virtual {p2, p1, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    :goto_36
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpq;->zzd:I

    return-void
.end method
