###### Class com.google.android.gms.internal.measurement.zzacx (com.google.android.gms.internal.measurement.zzacx)
.class final Lcom/google/android/gms/internal/measurement/zzacx;
.super Lcom/google/android/gms/internal/measurement/zzada;
.source "com.google.android.gms:play-services-measurement-base@@23.2.0"


# instance fields
.field private final zzc:[B

.field private final zzd:I

.field private zze:I


# direct methods
.method public constructor <init>([BII)V
    .registers 6

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzada;-><init>([B)V

    array-length p2, p1

    sub-int v0, p2, p3

    or-int/2addr v0, p3

    const/4 v1, 0x0

    if-ltz v0, :cond_12

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzc:[B

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzd:I

    return-void

    .line 1
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, v1, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 4
    invoke-static {v0, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzacx;->zzv([BII)V

    return-void
.end method

.method public final zzb(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    return-void
.end method

.method public final zzc(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzacx;->zzq(I)V

    return-void
.end method

.method public final zzd(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    return-void
.end method

.method public final zze(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzacx;->zzs(I)V

    return-void
.end method

.method public final zzf(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzacx;->zzt(J)V

    return-void
.end method

.method public final zzg(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzacx;->zzu(J)V

    return-void
.end method

.method public final zzh(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzacx;->zzp(B)V

    return-void
.end method

.method public final zzi(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzacx;->zzw(Ljava/lang/String;)V

    return-void
.end method

.method public final zzj(ILcom/google/android/gms/internal/measurement/zzacr;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzacx;->zzk(Lcom/google/android/gms/internal/measurement/zzacr;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/measurement/zzacr;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzacr;->zze(Lcom/google/android/gms/internal/measurement/zzacj;)V

    return-void
.end method

.method public final zzl([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzacx;->zzv([BII)V

    return-void
.end method

.method public final zzm(ILcom/google/android/gms/internal/measurement/zzafc;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzacx;->zzd(II)V

    const/16 p1, 0x1a

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzacx;->zzo(Lcom/google/android/gms/internal/measurement/zzafc;)V

    const/16 p1, 0xc

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    return-void
.end method

.method public final zzn(ILcom/google/android/gms/internal/measurement/zzacr;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzacx;->zzd(II)V

    const/4 p1, 0x3

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzacx;->zzj(ILcom/google/android/gms/internal/measurement/zzacr;)V

    const/16 p1, 0xc

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/measurement/zzafc;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzafc;->zzcq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzafc;->zzcH(Lcom/google/android/gms/internal/measurement/zzada;)V

    return-void
.end method

.method public final zzp(B)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzc:[B
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_4} :catch_10

    add-int/lit8 v2, v1, 0x1

    :try_start_6
    aput-byte p1, v0, v1
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_8} :catch_b

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    return-void

    :catch_b
    move-exception v0

    move-object p1, v0

    move v1, v2

    :goto_e
    move-object v8, p1

    goto :goto_13

    :catch_10
    move-exception v0

    move-object p1, v0

    goto :goto_e

    :goto_13
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzd:I

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzacy;

    int-to-long v3, v1

    int-to-long v5, p1

    const/4 v7, 0x1

    .line 2
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzacy;-><init>(JJILjava/lang/Throwable;)V

    .line 3
    throw v2
.end method

.method public final zzq(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzacx;->zzt(J)V

    return-void
.end method

.method public final zzr(I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    move v1, v0

    :goto_3
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_19

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzc:[B
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_9} :catch_16

    add-int/lit8 v2, v1, 0x1

    int-to-byte p1, p1

    :try_start_c
    aput-byte p1, v0, v1
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_e} :catch_11

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    return-void

    :catch_11
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    move v1, v2

    goto :goto_27

    :catch_16
    move-exception v0

    move-object p1, v0

    goto :goto_26

    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzc:[B
    :try_end_1b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_1b} :catch_16

    add-int/lit8 v2, v1, 0x1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    .line 1
    :try_start_20
    aput-byte v3, v0, v1
    :try_end_22
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_22} :catch_11

    ushr-int/lit8 p1, p1, 0x7

    move v1, v2

    goto :goto_3

    :goto_26
    move-object v8, p1

    :goto_27
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzd:I

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzacy;

    int-to-long v3, v1

    int-to-long v5, p1

    const/4 v7, 0x1

    .line 3
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzacy;-><init>(JJILjava/lang/Throwable;)V

    .line 4
    throw v2
.end method

.method public final zzs(I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzc:[B

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 2
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    .line 3
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 4
    aput-byte p1, v0, v2
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_1c} :catch_21

    add-int/lit8 v1, v1, 0x4

    .line 6
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    return-void

    :catch_21
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzd:I

    int-to-long v3, v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzacy;

    int-to-long v5, p1

    const/4 v7, 0x4

    .line 5
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzacy;-><init>(JJILjava/lang/Throwable;)V

    .line 6
    throw v2
.end method

.method public final zzt(J)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzada;->zzI()Z

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x80

    if-eqz v0, :cond_34

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzd:I

    sub-int/2addr v0, v1

    const/16 v7, 0xa

    if-lt v0, v7, :cond_34

    :goto_14
    and-long v7, p1, v5

    cmp-long v0, v7, v3

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzc:[B

    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v3, v4, p1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzo([BJB)V

    goto :goto_42

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzc:[B

    add-int/lit8 v7, v1, 0x1

    int-to-long v8, v1

    long-to-int v1, p1

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 1
    invoke-static {v0, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/zzagg;->zzo([BJB)V

    ushr-long/2addr p1, v2

    move v1, v7

    goto :goto_14

    :cond_34
    :goto_34
    and-long v7, p1, v5

    cmp-long v0, v7, v3

    if-nez v0, :cond_4d

    :try_start_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzc:[B
    :try_end_3c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3a .. :try_end_3c} :catch_4a

    add-int/lit8 v2, v1, 0x1

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 4
    :try_start_40
    aput-byte p1, v0, v1
    :try_end_42
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_40 .. :try_end_42} :catch_45

    .line 2
    :goto_42
    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    return-void

    :catch_45
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    move v1, v2

    goto :goto_60

    :catch_4a
    move-exception v0

    move-object p1, v0

    goto :goto_5f

    .line 4
    :cond_4d
    :try_start_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzc:[B
    :try_end_4f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4d .. :try_end_4f} :catch_4a

    add-int/lit8 v7, v1, 0x1

    long-to-int v8, p1

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 3
    :try_start_55
    aput-byte v8, v0, v1
    :try_end_57
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_55 .. :try_end_57} :catch_5a

    ushr-long/2addr p1, v2

    move v1, v7

    goto :goto_34

    :catch_5a
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    move v1, v7

    goto :goto_60

    :goto_5f
    move-object v8, p1

    :goto_60
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzd:I

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzacy;

    int-to-long v3, v1

    int-to-long v5, p1

    const/4 v7, 0x1

    .line 5
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzacy;-><init>(JJILjava/lang/Throwable;)V

    .line 6
    throw v2
.end method

.method public final zzu(J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzc:[B

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x8

    shr-long v4, p1, v3

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 2
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x2

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 3
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x4

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x5

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x6

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 7
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x7

    const/16 v4, 0x38

    shr-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 8
    aput-byte p1, v0, v2
    :try_end_4d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_4d} :catch_51

    add-int/2addr v1, v3

    .line 10
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    return-void

    :catch_51
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzd:I

    int-to-long v3, v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzacy;

    int-to-long v5, p1

    const/16 v7, 0x8

    .line 9
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzacy;-><init>(JJILjava/lang/Throwable;)V

    .line 10
    throw v2
.end method

.method public final zzv([BII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzc:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_7} :catch_d

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    return-void

    :catch_d
    move-exception v0

    move-object p1, v0

    move-object v6, p1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzacy;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzd:I

    int-to-long v1, p1

    int-to-long v3, p2

    move v5, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzacy;-><init>(JJILjava/lang/Throwable;)V

    .line 3
    throw v0
.end method

.method public final zzw(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v2

    if-ne v2, v1, :cond_2f

    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzc:[B

    array-length v4, v3

    sub-int/2addr v4, v1

    .line 4
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzagl;->zzc(Ljava/lang/String;[BII)I

    move-result p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    sub-int v0, p1, v0

    sub-int/2addr v0, v2

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    return-void

    :catch_2d
    move-exception p1

    goto :goto_43

    .line 6
    :cond_2f
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzagl;->zzb(Ljava/lang/String;)I

    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzacx;->zzr(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzc:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    array-length v2, v0

    sub-int/2addr v2, v1

    .line 8
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzagl;->zzc(Ljava/lang/String;[BII)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I
    :try_end_42
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_42} :catch_2d

    return-void

    .line 7
    :goto_43
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzacy;

    .line 9
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzacy;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzx()V
    .registers 1

    .line 0
    return-void
.end method

.method public final zzy()I
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacx;->zze:I

    sub-int/2addr v0, v1

    return v0
.end method
