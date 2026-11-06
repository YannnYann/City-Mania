###### Class com.google.android.gms.internal.measurement.zzacq (com.google.android.gms.internal.measurement.zzacq)
.class final Lcom/google/android/gms/internal/measurement/zzacq;
.super Lcom/google/android/gms/internal/measurement/zzacp;
.source "com.google.android.gms:play-services-measurement-base@@23.2.0"


# instance fields
.field private final zzb:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzacp;-><init>([B)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzacq;->zzb:[B

    return-void
.end method


# virtual methods
.method public final zza(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacq;->zzb:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final zzb()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacq;->zzb:[B

    array-length v0, v0

    return v0
.end method

.method public final zzc(II)Lcom/google/android/gms/internal/measurement/zzacr;
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzacq;->zzb:[B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {v1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzacr;->zzn(III)I

    move-result p2

    if-nez p2, :cond_d

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzacr;->zza:Lcom/google/android/gms/internal/measurement/zzacr;

    return-object p1

    .line 2
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzacm;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/gms/internal/measurement/zzacm;-><init>([BII)V

    return-object v0
.end method

.method public final zzd([BIII)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzacq;->zzb:[B

    const/4 p3, 0x0

    invoke-static {p2, p3, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/measurement/zzacj;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacq;->zzb:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzacj;->zza([BII)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/measurement/zzacr;)Z
    .registers 7

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzacq;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacq;->zzb:[B

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzacq;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzacq;->zzb:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_f
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzacm;

    if-eqz v1, :cond_af

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzacq;->zzb:[B

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v3

    array-length v4, v2

    if-gt v4, v3, :cond_82

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v3

    if-gt v4, v3, :cond_4c

    const/4 v3, 0x0

    if-eqz v0, :cond_2e

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzacq;

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzacq;->zzb:[B

    invoke-static {v2, v3, p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzacr;->zzo([BI[BII)Z

    move-result p1

    return p1

    :cond_2e
    if-eqz v1, :cond_3f

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzacm;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzacm;->zzh()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzacm;->zzi()I

    move-result p1

    invoke-static {v2, v3, v0, p1, v4}, Lcom/google/android/gms/internal/measurement/zzacr;->zzo([BI[BII)Z

    move-result p1

    return p1

    .line 10
    :cond_3f
    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzacr;->zzc(II)Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object p1

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzacq;->zzc(II)Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzacr;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ran off end of other: 0, "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_82
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Length too large: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_af
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzacr;->zzf(Lcom/google/android/gms/internal/measurement/zzacr;)Z

    move-result p1

    return p1
.end method

.method public final zzg(III)I
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzacq;->zzb:[B

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/measurement/zzaed;->zzb(I[BII)I

    move-result p1

    return p1
.end method

.method public final synthetic zzh()[B
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacq;->zzb:[B

    return-object v0
.end method
