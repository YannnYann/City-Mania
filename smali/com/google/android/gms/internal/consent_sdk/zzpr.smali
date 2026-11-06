###### Class com.google.android.gms.internal.consent_sdk.zzpr (com.google.android.gms.internal.consent_sdk.zzpr)
.class final Lcom/google/android/gms/internal/consent_sdk/zzpr;
.super Lcom/google/android/gms/internal/consent_sdk/zzpv;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field private final zza:[B

.field private final zzb:I

.field private zzc:I


# direct methods
.method public constructor <init>([BII)V
    .registers 6

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpv;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzpu;)V

    array-length p2, p1

    sub-int v0, p2, p3

    or-int/2addr v0, p3

    const/4 v1, 0x0

    if-ltz v0, :cond_12

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B

    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    iput p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

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
.method public final zzI()V
    .registers 1

    .line 0
    return-void
.end method

.method public final zzJ(B)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_4} :catch_10

    add-int/lit8 v2, v1, 0x1

    :try_start_6
    aput-byte p1, v0, v1
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_8} :catch_b

    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

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
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzps;

    int-to-long v3, v1

    int-to-long v5, p1

    const/4 v7, 0x1

    .line 2
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(JJILjava/lang/Throwable;)V

    .line 3
    throw v2
.end method

.method public final zzK(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzJ(B)V

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
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zze([BII)V

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zze([BII)V

    return-void
.end method

.method public final zzb()I
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zze([BII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_e

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    return-void

    :catch_e
    move-exception v0

    move-object p1, v0

    move-object v6, p1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzps;

    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    iget p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    int-to-long v1, p1

    int-to-long v3, p2

    move v5, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(JJILjava/lang/Throwable;)V

    .line 3
    throw v0
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzi(Lcom/google/android/gms/internal/consent_sdk/zzpm;)V

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/consent_sdk/zzpm;->zzg(Lcom/google/android/gms/internal/consent_sdk/zzpe;)V

    return-void
.end method

.method public final zzj(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzk(I)V

    return-void
.end method

.method public final zzk(I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B

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
    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    return-void

    :catch_21
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    int-to-long v3, v1

    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzps;

    int-to-long v5, p1

    const/4 v7, 0x4

    .line 5
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(JJILjava/lang/Throwable;)V

    .line 6
    throw v2
.end method

.method public final zzl(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzm(J)V

    return-void
.end method

.method public final zzm(J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B

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
    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    return-void

    :catch_51
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    int-to-long v3, v1

    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzps;

    int-to-long v5, p1

    const/16 v7, 0x8

    .line 9
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(JJILjava/lang/Throwable;)V

    .line 10
    throw v2
.end method

.method public final zzn(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzo(I)V

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzy(J)V

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzv(II)V

    const/16 p1, 0x1a

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzp(Lcom/google/android/gms/internal/consent_sdk/zzrq;)V

    const/16 p1, 0xc

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzv(II)V

    const/4 p1, 0x3

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzh(ILcom/google/android/gms/internal/consent_sdk/zzpm;)V

    const/16 p1, 0xc

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzt(Ljava/lang/String;)V

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
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzC(I)I

    move-result v2

    if-ne v2, v1, :cond_32

    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B

    iget v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    sub-int/2addr v4, v1

    .line 4
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/consent_sdk/zzsy;->zza(Ljava/lang/String;[BII)I

    move-result v1

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 5
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    return-void

    :catch_2e
    move-exception p1

    goto :goto_47

    :catch_30
    move-exception v1

    goto :goto_4d

    .line 6
    :cond_32
    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/zzsy;->zzb(Ljava/lang/String;)I

    move-result v1

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B

    iget v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    iget v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    sub-int/2addr v3, v2

    .line 8
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/consent_sdk/zzsy;->zza(Ljava/lang/String;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I
    :try_end_46
    .catch Lcom/google/android/gms/internal/consent_sdk/zzsx; {:try_start_2 .. :try_end_46} :catch_30
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_46} :catch_2e

    return-void

    :goto_47
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzps;

    .line 9
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_4d
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzE(Ljava/lang/String;Lcom/google/android/gms/internal/consent_sdk/zzsx;)V

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    return-void
.end method

.method public final zzv(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    return-void
.end method

.method public final zzw(I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    move v1, v0

    :goto_3
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_19

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_9} :catch_16

    add-int/lit8 v2, v1, 0x1

    int-to-byte p1, p1

    :try_start_c
    aput-byte p1, v0, v1
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_e} :catch_11

    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B
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
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzps;

    int-to-long v3, v1

    int-to-long v5, p1

    const/4 v7, 0x1

    .line 3
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(JJILjava/lang/Throwable;)V

    .line 4
    throw v2
.end method

.method public final zzx(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzw(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzy(J)V

    return-void
.end method

.method public final zzy(J)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzF()Z

    move-result v1

    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x80

    if-eqz v1, :cond_34

    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    sub-int/2addr v1, v0

    const/16 v7, 0xa

    if-lt v1, v7, :cond_34

    :goto_14
    and-long v7, p1, v5

    cmp-long v1, v7, v3

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B

    add-int/lit8 v2, v0, 0x1

    int-to-long v3, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v1, v3, v4, p1}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzn([BJB)V

    goto :goto_43

    :cond_25
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B

    add-int/lit8 v7, v0, 0x1

    int-to-long v8, v0

    long-to-int v0, p1

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 5
    invoke-static {v1, v8, v9, v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzn([BJB)V

    ushr-long/2addr p1, v2

    move v0, v7

    goto :goto_14

    :cond_34
    move v1, v0

    :goto_35
    and-long v7, p1, v5

    cmp-long v0, v7, v3

    if-nez v0, :cond_4e

    :try_start_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B
    :try_end_3d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3b .. :try_end_3d} :catch_4b

    add-int/lit8 v2, v1, 0x1

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 2
    :try_start_41
    aput-byte p1, v0, v1
    :try_end_43
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_41 .. :try_end_43} :catch_46

    .line 6
    :goto_43
    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzc:I

    return-void

    :catch_46
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    move v1, v2

    goto :goto_61

    :catch_4b
    move-exception v0

    move-object p1, v0

    goto :goto_60

    .line 2
    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zza:[B
    :try_end_50
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4e .. :try_end_50} :catch_4b

    add-int/lit8 v7, v1, 0x1

    long-to-int v8, p1

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 1
    :try_start_56
    aput-byte v8, v0, v1
    :try_end_58
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_56 .. :try_end_58} :catch_5b

    ushr-long/2addr p1, v2

    move v1, v7

    goto :goto_35

    :catch_5b
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    move v1, v7

    goto :goto_61

    :goto_60
    move-object v8, p1

    :goto_61
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzpr;->zzb:I

    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzps;

    int-to-long v3, v1

    int-to-long v5, p1

    const/4 v7, 0x1

    .line 3
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/consent_sdk/zzps;-><init>(JJILjava/lang/Throwable;)V

    .line 4
    throw v2
.end method
