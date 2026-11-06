###### Class com.google.android.gms.internal.measurement.zzagl (com.google.android.gms.internal.measurement.zzagl)
.class final Lcom/google/android/gms/internal/measurement/zzagl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@23.2.0"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/measurement/zzacf;->zza:I

    return-void
.end method

.method public static zza([BII)Z
    .registers 11

    :goto_0
    if-ge p1, p2, :cond_9

    .line 1
    aget-byte v0, p0, p1

    if-ltz v0, :cond_9

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    if-lt p1, p2, :cond_d

    return v0

    :cond_d
    :goto_d
    if-lt p1, p2, :cond_10

    return v0

    :cond_10
    add-int/lit8 v1, p1, 0x1

    .line 2
    aget-byte v2, p0, p1

    if-gez v2, :cond_72

    const/16 v3, -0x20

    const/16 v4, -0x41

    const/4 v5, 0x0

    if-ge v2, v3, :cond_2b

    if-lt v1, p2, :cond_20

    return v5

    :cond_20
    const/16 v3, -0x3e

    if-lt v2, v3, :cond_2a

    add-int/lit8 p1, p1, 0x2

    .line 3
    aget-byte v1, p0, v1

    if-le v1, v4, :cond_d

    :cond_2a
    return v5

    :cond_2b
    const/16 v6, -0x10

    if-ge v2, v6, :cond_51

    add-int/lit8 v6, p2, -0x1

    if-lt v1, v6, :cond_34

    return v5

    :cond_34
    add-int/lit8 v6, p1, 0x2

    .line 4
    aget-byte v1, p0, v1

    if-gt v1, v4, :cond_50

    const/16 v7, -0x60

    if-ne v2, v3, :cond_42

    if-lt v1, v7, :cond_41

    goto :goto_42

    :cond_41
    return v5

    :cond_42
    :goto_42
    const/16 v3, -0x13

    if-ne v2, v3, :cond_4a

    if-ge v1, v7, :cond_49

    goto :goto_4a

    :cond_49
    return v5

    :cond_4a
    :goto_4a
    add-int/lit8 p1, p1, 0x3

    aget-byte v1, p0, v6

    if-le v1, v4, :cond_d

    :cond_50
    return v5

    :cond_51
    add-int/lit8 v3, p2, -0x2

    if-lt v1, v3, :cond_56

    return v5

    :cond_56
    add-int/lit8 v3, p1, 0x2

    .line 5
    aget-byte v1, p0, v1

    if-gt v1, v4, :cond_71

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x1e

    if-nez v1, :cond_71

    add-int/lit8 v1, p1, 0x3

    aget-byte v2, p0, v3

    if-gt v2, v4, :cond_71

    add-int/lit8 p1, p1, 0x4

    aget-byte v1, p0, v1

    if-le v1, v4, :cond_d

    :cond_71
    return v5

    :cond_72
    move p1, v1

    goto :goto_d
.end method

.method public static zzb(Ljava/lang/String;)I
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_13

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_13

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    move v3, v0

    :goto_14
    if-ge v2, v0, :cond_62

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_26

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 4
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :goto_2a
    if-ge v2, v4, :cond_58

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ge v6, v5, :cond_38

    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_55

    :cond_38
    add-int/lit8 v1, v1, 0x2

    const v7, 0xd800

    if-lt v6, v7, :cond_55

    const v7, 0xdfff

    if-gt v6, v7, :cond_55

    .line 6
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_4f

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_4f
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzagk;

    .line 8
    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/internal/measurement/zzagk;-><init>(II)V

    throw v0
    :try_end_55
    .catch Lcom/google/android/gms/internal/measurement/zzagk; {:try_start_26 .. :try_end_55} :catch_5a

    :cond_55
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_58
    add-int/2addr v3, v1

    goto :goto_62

    .line 9
    :catch_5a
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    return p0

    :cond_62
    :goto_62
    if-lt v3, v0, :cond_65

    return v3

    :cond_65
    int-to-long v0, v3

    .line 8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x22

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "UTF-8 length does not fit in int: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzc(Ljava/lang/String;[BII)I
    .registers 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    add-int v2, p2, p3

    const/16 v3, 0x80

    if-ge v1, v0, :cond_1b

    add-int v4, v1, p2

    if-ge v4, v2, :cond_1b

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v3, :cond_1b

    int-to-byte v2, v5

    .line 3
    aput-byte v2, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    if-ne v1, v0, :cond_1f

    add-int/2addr p2, v0

    return p2

    :cond_1f
    add-int v4, p2, v1

    :goto_21
    if-ge v1, v0, :cond_e5

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v3, :cond_33

    if-ge v4, v2, :cond_33

    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    .line 16
    aput-byte v5, p1, v4

    move v4, v6

    goto/16 :goto_b9

    :cond_33
    const/16 v6, 0x800

    if-ge v5, v6, :cond_4e

    add-int/lit8 v6, v2, -0x2

    if-gt v4, v6, :cond_4e

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v4, 0x2

    ushr-int/lit8 v8, v5, 0x6

    or-int/lit16 v8, v8, 0x3c0

    int-to-byte v8, v8

    .line 14
    aput-byte v8, p1, v4

    and-int/lit8 v4, v5, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 15
    aput-byte v4, p1, v6

    move v4, v7

    goto :goto_b9

    :cond_4e
    const v6, 0xdfff

    const v7, 0xd800

    if-lt v5, v7, :cond_58

    if-le v5, v6, :cond_79

    :cond_58
    add-int/lit8 v8, v2, -0x3

    if-gt v4, v8, :cond_79

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v4, 0x2

    add-int/lit8 v8, v4, 0x3

    ushr-int/lit8 v9, v5, 0xc

    or-int/lit16 v9, v9, 0x1e0

    int-to-byte v9, v9

    .line 11
    aput-byte v9, p1, v4

    ushr-int/lit8 v4, v5, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 12
    aput-byte v4, p1, v6

    and-int/lit8 v4, v5, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 13
    aput-byte v4, p1, v7

    move v4, v8

    goto :goto_b9

    :cond_79
    add-int/lit8 v8, v2, -0x4

    if-gt v4, v8, :cond_c2

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v1, v6, :cond_bd

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v7

    if-nez v7, :cond_90

    goto :goto_bd

    :cond_90
    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v9, v4, 0x3

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    ushr-int/lit8 v6, v5, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    .line 7
    aput-byte v6, p1, v4

    ushr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 8
    aput-byte v6, p1, v7

    ushr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 9
    aput-byte v6, p1, v8

    add-int/lit8 v4, v4, 0x4

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 10
    aput-byte v5, p1, v9

    :goto_b9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_21

    .line 17
    :cond_bd
    :goto_bd
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzagi;->zza(Ljava/lang/String;[BII)I

    move-result p0

    return p0

    :cond_c2
    if-lt v5, v7, :cond_dd

    if-gt v5, v6, :cond_dd

    add-int/lit8 v1, v1, 0x1

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_dd

    .line 19
    :cond_d8
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzagi;->zza(Ljava/lang/String;[BII)I

    move-result p0

    return p0

    :cond_dd
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Not enough space in output buffer to encode UTF-8 string"

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e5
    return v4
.end method

.method public static zzd([BII)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzaeh;
        }
    .end annotation

    if-eqz p2, :cond_bf

    .line 1
    array-length v0, p0

    sub-int v1, v0, p1

    or-int v2, p1, p2

    sub-int/2addr v1, p2

    or-int/2addr v1, v2

    if-ltz v1, :cond_a3

    add-int v0, p1, p2

    .line 3
    new-array v5, p2, [C

    const/4 p2, 0x0

    move v1, p2

    :goto_11
    if-ge p1, v0, :cond_24

    .line 4
    aget-byte v2, p0, p1

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzagh;->zza(B)Z

    move-result v3

    if-eqz v3, :cond_24

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v1, 0x1

    int-to-char v2, v2

    .line 5
    aput-char v2, v5, v1

    move v1, v3

    goto :goto_11

    :cond_24
    move v6, v1

    :cond_25
    :goto_25
    if-ge p1, v0, :cond_9d

    add-int/lit8 v1, p1, 0x1

    move v2, v1

    .line 6
    aget-byte v1, p0, p1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzagh;->zza(B)Z

    move-result v3

    if-eqz v3, :cond_4c

    add-int/lit8 p1, v6, 0x1

    int-to-char v1, v1

    .line 10
    aput-char v1, v5, v6

    move v6, p1

    move p1, v2

    :goto_39
    if-ge p1, v0, :cond_25

    .line 11
    aget-byte v1, p0, p1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzagh;->zza(B)Z

    move-result v2

    if-eqz v2, :cond_25

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v6, 0x1

    int-to-char v1, v1

    .line 12
    aput-char v1, v5, v6

    move v6, v2

    goto :goto_39

    :cond_4c
    const/16 v3, -0x20

    const-string v4, "Protocol message had invalid UTF-8."

    if-ge v1, v3, :cond_65

    if-ge v2, v0, :cond_5f

    add-int/lit8 v3, v6, 0x1

    add-int/lit8 p1, p1, 0x2

    .line 9
    aget-byte v2, p0, v2

    invoke-static {v1, v2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzagh;->zzb(BB[CI)V

    :goto_5d
    move v6, v3

    goto :goto_25

    .line 12
    :cond_5f
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 17
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0

    :cond_65
    const/16 v3, -0x10

    if-ge v1, v3, :cond_81

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_7b

    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v4, p1, 0x2

    .line 8
    aget-byte v2, p0, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte v4, p0, v4

    invoke-static {v1, v2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzagh;->zzc(BBB[CI)V

    goto :goto_5d

    .line 9
    :cond_7b
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 15
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 16
    throw p0

    :cond_81
    add-int/lit8 v3, v0, -0x2

    if-ge v2, v3, :cond_97

    add-int/lit8 v3, p1, 0x2

    .line 7
    aget-byte v2, p0, v2

    add-int/lit8 v4, p1, 0x3

    aget-byte v3, p0, v3

    add-int/lit8 p1, p1, 0x4

    aget-byte v4, p0, v4

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzagh;->zzd(BBBB[CI)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_25

    .line 8
    :cond_97
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 13
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    .line 14
    throw p0

    .line 7
    :cond_9d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v5, p2, v6}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 1
    :cond_a3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_bf
    const-string p0, ""

    return-object p0
.end method
