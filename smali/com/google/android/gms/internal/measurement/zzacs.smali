###### Class com.google.android.gms.internal.measurement.zzacs (com.google.android.gms.internal.measurement.zzacs)
.class abstract Lcom/google/android/gms/internal/measurement/zzacs;
.super Lcom/google/android/gms/internal/measurement/zzacv;
.source "com.google.android.gms:play-services-measurement-base@@23.2.0"


# instance fields
.field private final zze:[B

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I


# direct methods
.method public synthetic constructor <init>([BIIZ[B)V
    .registers 6

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzacv;-><init>([B)V

    const p2, 0x7fffffff

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzj:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zze:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    return-void
.end method

.method private final zzU()V
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzg:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzj:I

    if-le v0, v1, :cond_13

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzg:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    return-void

    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzg:I

    return-void
.end method


# virtual methods
.method public final zzA()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v0, v3, :cond_18

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzI()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v1

    :cond_15
    add-int/lit8 v0, v0, 0x7

    goto :goto_3

    :cond_18
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v1, "CodedInputStream encountered a malformed varint."

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 3
    throw v0
.end method

.method public final zzB()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2e

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zze:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    .line 3
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    shl-int/lit8 v2, v4, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0

    .line 1
    :cond_2e
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 2
    throw v0
.end method

.method public final zzC()J
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    iget v2, v0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    sub-int/2addr v2, v1

    const/16 v3, 0x8

    if-lt v2, v3, :cond_67

    .line 2
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzacs;->zze:[B

    add-int/lit8 v4, v1, 0x8

    iput v4, v0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    .line 3
    aget-byte v4, v2, v1

    int-to-long v4, v4

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    and-long/2addr v4, v8

    shl-long/2addr v6, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v2, v3

    int-to-long v10, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v2, v3

    int-to-long v12, v3

    add-int/lit8 v3, v1, 0x4

    aget-byte v3, v2, v3

    int-to-long v14, v3

    add-int/lit8 v3, v1, 0x5

    aget-byte v3, v2, v3

    move-wide/from16 v16, v8

    int-to-long v8, v3

    add-int/lit8 v3, v1, 0x6

    aget-byte v3, v2, v3

    move/from16 v18, v1

    int-to-long v0, v3

    add-int/lit8 v3, v18, 0x7

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long v10, v10, v16

    or-long/2addr v4, v6

    and-long v6, v12, v16

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    or-long/2addr v4, v10

    and-long v10, v14, v16

    const/16 v12, 0x18

    shl-long/2addr v6, v12

    or-long/2addr v4, v6

    and-long v6, v8, v16

    const/16 v8, 0x20

    shl-long v8, v10, v8

    or-long/2addr v4, v8

    and-long v0, v0, v16

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    and-long v2, v2, v16

    const/16 v6, 0x30

    shl-long/2addr v0, v6

    or-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 1
    :cond_67
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 2
    throw v0
.end method

.method public final zzD(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzaeh;
        }
    .end annotation

    if-ltz p1, :cond_21

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    add-int/2addr p1, v0

    if-ltz p1, :cond_19

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzj:I

    if-gt p1, v0, :cond_11

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzj:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzU()V

    return v0

    .line 4
    :cond_11
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 5
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 6
    throw p1

    .line 2
    :cond_19
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v0, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter()."

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 4
    throw p1

    .line 1
    :cond_21
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 2
    throw p1
.end method

.method public final zzE(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzj:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzU()V

    return-void
.end method

.method public final zzF()I
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzj:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzG()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzH()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    return v0
.end method

.method public final zzI()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    if-eq v0, v1, :cond_f

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zze:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    .line 3
    aget-byte v0, v1, v0

    return v0

    .line 1
    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 2
    throw v0
.end method

.method public final zzJ(I)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_14

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_a

    goto :goto_14

    :cond_a
    add-int/2addr p1, v1

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zze:[B

    .line 6
    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_14
    :goto_14
    if-gtz p1, :cond_23

    if-nez p1, :cond_1b

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzaed;->zza:[B

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 4
    throw p1

    :cond_23
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 1
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 2
    throw p1
.end method

.method public final zzK([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzacv;->zzT([BII)V

    if-nez p3, :cond_7

    const/4 p1, 0x0

    return p1

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    sub-int/2addr v0, v1

    .line 2
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-nez p3, :cond_14

    const/4 p1, -0x1

    return p1

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zze:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    .line 3
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    return p3
.end method

.method public final zzL(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_e

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_a

    goto :goto_e

    :cond_a
    add-int/2addr v1, p1

    .line 2
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    return-void

    :cond_e
    :goto_e
    if-gez p1, :cond_18

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 4
    throw p1

    :cond_18
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 1
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 2
    throw p1
.end method

.method public final zza()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzG()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzi:I

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzv()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzi:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_15

    return v0

    :cond_15
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 3
    throw v0
.end method

.method public final zzb(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzaeh;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzi:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 2
    throw p1
.end method

.method public final zzc(I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3c

    if-eq v0, v2, :cond_36

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2e

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_24

    if-eq v0, v3, :cond_20

    const/4 p1, 0x5

    if-ne v0, p1, :cond_18

    .line 9
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzacs;->zzL(I)V

    return v2

    .line 1
    :cond_18
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaeg;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaeg;-><init>(Ljava/lang/String;)V

    .line 2
    throw p1

    .line 10
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzP()V

    return v1

    .line 11
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzQ()V

    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacs;->zzb(I)V

    return v2

    .line 13
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzv()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacs;->zzL(I)V

    return v2

    :cond_36
    const/16 p1, 0x8

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacs;->zzL(I)V

    return v2

    .line 2
    :cond_3c
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    sub-int/2addr p1, v0

    const-string v0, "CodedInputStream encountered a malformed varint."

    const/16 v3, 0xa

    if-lt p1, v3, :cond_5f

    :goto_47
    if-ge v1, v3, :cond_59

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zze:[B

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    .line 3
    aget-byte p1, p1, v4

    if-ltz p1, :cond_56

    goto :goto_6a

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 8
    :cond_59
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 4
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 5
    throw p1

    :cond_5f
    :goto_5f
    if-ge v1, v3, :cond_6b

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzI()B

    move-result p1

    if-gez p1, :cond_6a

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_6a
    :goto_6a
    return v2

    .line 13
    :cond_6b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 7
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public final zzd()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzC()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final zze()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzB()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final zzf()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzz()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzz()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzw()I

    move-result v0

    return v0
.end method

.method public final zzi()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzC()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzj()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzB()I

    move-result v0

    return v0
.end method

.method public final zzk()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzz()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzv()I

    move-result v0

    if-lez v0, :cond_1d

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_e

    goto :goto_1d

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zze:[B

    new-instance v3, Ljava/lang/String;

    .line 6
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    return-object v3

    :cond_1d
    :goto_1d
    if-nez v0, :cond_22

    .line 1
    const-string v0, ""

    return-object v0

    :cond_22
    if-gez v0, :cond_2c

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 5
    throw v0

    .line 6
    :cond_2c
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 3
    throw v0
.end method

.method public final zzm()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzv()I

    move-result v0

    if-lez v0, :cond_1a

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_e

    goto :goto_1a

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zze:[B

    .line 6
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzagl;->zzd([BII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    return-object v1

    :cond_1a
    :goto_1a
    if-nez v0, :cond_1f

    .line 1
    const-string v0, ""

    return-object v0

    :cond_1f
    if-gtz v0, :cond_29

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 5
    throw v0

    .line 6
    :cond_29
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 3
    throw v0
.end method

.method public final zzn()Lcom/google/android/gms/internal/measurement/zzacr;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzv()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1a

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zze:[B

    .line 4
    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/internal/measurement/zzacr;->zzk([BIIZ)Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    return-object v1

    :cond_1a
    if-nez v0, :cond_1f

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzacr;->zza:Lcom/google/android/gms/internal/measurement/zzacr;

    return-object v0

    .line 3
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzJ(I)[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzacr;->zzl([BZ)Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v0

    return-object v0
.end method

.method public final zzo()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzv()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzJ(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final zzp()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzv()I

    move-result v0

    return v0
.end method

.method public final zzq()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzw()I

    move-result v0

    return v0
.end method

.method public final zzr()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzB()I

    move-result v0

    return v0
.end method

.method public final zzs()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzC()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzv()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzR(I)I

    move-result v0

    return v0
.end method

.method public final zzu()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzz()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzacv;->zzS(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract zzv()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzw()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzx()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzw()I

    move-result v0

    return v0
.end method

.method public final zzy()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_77

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zze:[B

    add-int/lit8 v3, v0, 0x1

    .line 1
    aget-byte v4, v2, v0

    if-ltz v4, :cond_13

    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    return v4

    :cond_13
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-lt v1, v5, :cond_77

    add-int/lit8 v1, v0, 0x2

    .line 2
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_24

    xor-int/lit8 v0, v3, -0x80

    goto :goto_74

    :cond_24
    add-int/lit8 v4, v0, 0x3

    .line 3
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_31

    xor-int/lit16 v0, v1, 0x3f80

    :goto_2f
    move v1, v4

    goto :goto_74

    :cond_31
    add-int/lit8 v3, v0, 0x4

    .line 4
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_40

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    :goto_3e
    move v1, v3

    goto :goto_74

    :cond_40
    add-int/lit8 v4, v0, 0x5

    .line 5
    aget-byte v3, v2, v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v3, :cond_70

    add-int/lit8 v3, v0, 0x6

    .line 6
    aget-byte v4, v2, v4

    if-gez v4, :cond_72

    add-int/lit8 v4, v0, 0x7

    aget-byte v3, v2, v3

    if-gez v3, :cond_70

    add-int/lit8 v3, v0, 0x8

    aget-byte v4, v2, v4

    if-gez v4, :cond_72

    add-int/lit8 v4, v0, 0x9

    aget-byte v3, v2, v3

    if-gez v3, :cond_70

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v2, v4

    if-gez v2, :cond_6c

    goto :goto_77

    :cond_6c
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_74

    :cond_70
    move v0, v1

    goto :goto_2f

    :cond_72
    move v0, v1

    goto :goto_3e

    .line 2
    :goto_74
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    return v0

    .line 7
    :cond_77
    :goto_77
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzA()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final zzz()J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzf:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_c7

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zze:[B

    add-int/lit8 v3, v0, 0x1

    .line 1
    aget-byte v4, v2, v0

    if-ltz v4, :cond_14

    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    int-to-long v0, v4

    return-wide v0

    :cond_14
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-lt v1, v5, :cond_c7

    add-int/lit8 v1, v0, 0x2

    .line 2
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_27

    xor-int/lit8 v0, v3, -0x80

    int-to-long v2, v0

    goto/16 :goto_c4

    :cond_27
    add-int/lit8 v4, v0, 0x3

    .line 3
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_36

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    :goto_33
    move v1, v4

    goto/16 :goto_c4

    :cond_36
    add-int/lit8 v3, v0, 0x4

    .line 4
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_49

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    move-wide v11, v0

    move v1, v3

    move-wide v2, v11

    goto/16 :goto_c4

    :cond_49
    add-int/lit8 v4, v0, 0x5

    .line 5
    aget-byte v3, v2, v3

    int-to-long v5, v3

    int-to-long v7, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_5f

    const-wide/32 v0, 0xfe03f80

    xor-long v2, v5, v0

    goto :goto_33

    :cond_5f
    add-int/lit8 v1, v0, 0x6

    .line 6
    aget-byte v3, v2, v4

    int-to-long v3, v3

    const/16 v9, 0x23

    shl-long/2addr v3, v9

    xor-long/2addr v3, v5

    cmp-long v5, v3, v7

    if-gez v5, :cond_74

    const-wide v5, -0x7f01fc080L

    :goto_71
    xor-long v2, v3, v5

    goto :goto_c4

    :cond_74
    add-int/lit8 v5, v0, 0x7

    .line 7
    aget-byte v1, v2, v1

    int-to-long v9, v1

    const/16 v1, 0x2a

    shl-long/2addr v9, v1

    xor-long/2addr v3, v9

    cmp-long v1, v3, v7

    if-ltz v1, :cond_8a

    const-wide v0, 0x3f80fe03f80L

    :goto_86
    xor-long v2, v3, v0

    move v1, v5

    goto :goto_c4

    :cond_8a
    add-int/lit8 v1, v0, 0x8

    .line 8
    aget-byte v5, v2, v5

    int-to-long v5, v5

    const/16 v9, 0x31

    shl-long/2addr v5, v9

    xor-long/2addr v3, v5

    cmp-long v5, v3, v7

    if-gez v5, :cond_9d

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_71

    :cond_9d
    add-int/lit8 v5, v0, 0x9

    .line 9
    aget-byte v1, v2, v1

    int-to-long v9, v1

    const/16 v1, 0x38

    shl-long/2addr v9, v1

    xor-long/2addr v3, v9

    cmp-long v1, v3, v7

    if-ltz v1, :cond_b0

    const-wide v0, 0xfe03f80fe03f80L

    goto :goto_86

    :cond_b0
    add-int/lit8 v1, v0, 0xa

    .line 10
    aget-byte v0, v2, v5

    int-to-long v5, v0

    const/16 v0, 0x3f

    shl-long/2addr v5, v0

    xor-long v2, v3, v5

    cmp-long v0, v2, v7

    if-ltz v0, :cond_c7

    const-wide v4, -0x7f01fc07f01fc080L    # -6.838959413692434E-304

    xor-long/2addr v2, v4

    .line 2
    :goto_c4
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzacs;->zzh:I

    return-wide v2

    .line 11
    :cond_c7
    :goto_c7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacs;->zzA()J

    move-result-wide v0

    return-wide v0
.end method
