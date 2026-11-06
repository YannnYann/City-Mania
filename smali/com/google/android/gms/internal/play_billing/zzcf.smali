###### Class com.google.android.gms.internal.play_billing.zzcf (com.google.android.gms.internal.play_billing.zzcf)
.class final Lcom/google/android/gms/internal/play_billing/zzcf;
.super Lcom/google/android/gms/internal/play_billing/zzbw;
.source "com.android.billingclient:billing@@8.0.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzbw;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:Ljava/lang/Object;

.field private final transient zzd:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcf;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzcf;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcf;->zza:Lcom/google/android/gms/internal/play_billing/zzbw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzbw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzc:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzb:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzd:I

    return-void
.end method

.method public static zzg(I[Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzbv;)Lcom/google/android/gms/internal/play_billing/zzcf;
    .registers 22

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v0, :cond_d

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcf;->zza:Lcom/google/android/gms/internal/play_billing/zzbw;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcf;

    return-object v0

    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_25

    .line 2
    aget-object v0, v1, v4

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcf;

    invoke-direct {v0, v3, v1, v5}, Lcom/google/android/gms/internal/play_billing/zzcf;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0

    .line 4
    :cond_25
    array-length v6, v1

    shr-int/2addr v6, v5

    const-string v7, "index"

    .line 5
    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzbg;->zzb(IILjava/lang/String;)I

    const/4 v6, 0x2

    .line 6
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    const v8, 0x2ccccccc

    if-ge v7, v8, :cond_4a

    add-int/lit8 v8, v7, -0x1

    .line 7
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    :goto_3c
    add-int/2addr v8, v8

    int-to-double v9, v8

    const-wide v11, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v9, v11

    int-to-double v11, v7

    cmpg-double v9, v9, v11

    if-gez v9, :cond_4e

    goto :goto_3c

    :cond_4a
    const/high16 v8, 0x40000000    # 2.0f

    if-ge v7, v8, :cond_1f9

    :cond_4e
    if-ne v0, v5, :cond_66

    .line 8
    aget-object v0, v1, v4

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v7, v1, v5

    .line 10
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    move/from16 v16, v4

    move v0, v5

    move/from16 v17, v0

    :goto_62
    move/from16 v18, v6

    goto/16 :goto_1cd

    :cond_66
    add-int/lit8 v7, v8, -0x1

    const/16 v9, 0x80

    const/4 v10, 0x3

    const/4 v11, -0x1

    if-gt v8, v9, :cond_ea

    .line 11
    new-array v8, v8, [B

    .line 12
    invoke-static {v8, v11}, Ljava/util/Arrays;->fill([BB)V

    move v9, v4

    move v11, v9

    :goto_75
    if-ge v9, v0, :cond_d0

    add-int v12, v11, v11

    add-int v13, v9, v9

    .line 13
    aget-object v14, v1, v13

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v13, v5

    .line 14
    aget-object v13, v1, v13

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v14, v13}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-static {v15}, Lcom/google/android/gms/internal/play_billing/zzbp;->zza(I)I

    move-result v15

    :goto_91
    and-int/2addr v15, v7

    move/from16 v16, v4

    .line 17
    aget-byte v4, v8, v15

    move/from16 v17, v5

    const/16 v5, 0xff

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_ab

    int-to-byte v4, v12

    .line 19
    aput-byte v4, v8, v15

    if-ge v11, v9, :cond_a8

    .line 20
    aput-object v14, v1, v12

    xor-int/lit8 v4, v12, 0x1

    .line 21
    aput-object v13, v1, v4

    :cond_a8
    add-int/lit8 v11, v11, 0x1

    goto :goto_c2

    .line 18
    :cond_ab
    aget-object v5, v1, v4

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c9

    xor-int/lit8 v3, v4, 0x1

    new-instance v4, Lcom/google/android/gms/internal/play_billing/zzbu;

    .line 22
    aget-object v5, v1, v3

    .line 23
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v14, v13, v5}, Lcom/google/android/gms/internal/play_billing/zzbu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    aput-object v13, v1, v3

    move-object v3, v4

    :goto_c2
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_75

    :cond_c9
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_91

    :cond_d0
    move/from16 v16, v4

    move/from16 v17, v5

    if-ne v11, v0, :cond_db

    move/from16 v18, v6

    move-object v3, v8

    goto/16 :goto_1cd

    :cond_db
    new-array v4, v10, [Ljava/lang/Object;

    aput-object v8, v4, v16

    .line 25
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v17

    aput-object v3, v4, v6

    :goto_e7
    move-object v3, v4

    goto/16 :goto_62

    :cond_ea
    move/from16 v16, v4

    move/from16 v17, v5

    const v4, 0x8000

    if-gt v8, v4, :cond_15e

    new-array v4, v8, [S

    .line 26
    invoke-static {v4, v11}, Ljava/util/Arrays;->fill([SS)V

    move/from16 v5, v16

    move v8, v5

    :goto_fb
    if-ge v5, v0, :cond_14c

    add-int v9, v8, v8

    add-int v11, v5, v5

    .line 27
    aget-object v12, v1, v11

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 v11, v11, 0x1

    .line 28
    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/zzbp;->zza(I)I

    move-result v13

    :goto_118
    and-int/2addr v13, v7

    .line 31
    aget-short v14, v4, v13

    int-to-char v14, v14

    const v15, 0xffff

    if-ne v14, v15, :cond_12f

    int-to-short v14, v9

    .line 33
    aput-short v14, v4, v13

    if-ge v8, v5, :cond_12c

    .line 34
    aput-object v12, v1, v9

    xor-int/lit8 v9, v9, 0x1

    .line 35
    aput-object v11, v1, v9

    :cond_12c
    add-int/lit8 v8, v8, 0x1

    goto :goto_146

    .line 32
    :cond_12f
    aget-object v15, v1, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_149

    xor-int/lit8 v3, v14, 0x1

    new-instance v9, Lcom/google/android/gms/internal/play_billing/zzbu;

    .line 36
    aget-object v13, v1, v3

    .line 37
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v9, v12, v11, v13}, Lcom/google/android/gms/internal/play_billing/zzbu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    aput-object v11, v1, v3

    move-object v3, v9

    :goto_146
    add-int/lit8 v5, v5, 0x1

    goto :goto_fb

    :cond_149
    add-int/lit8 v13, v13, 0x1

    goto :goto_118

    :cond_14c
    if-ne v8, v0, :cond_14f

    goto :goto_e7

    :cond_14f
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v4, v5, v16

    .line 39
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v17

    aput-object v3, v5, v6

    move-object v3, v5

    goto/16 :goto_62

    :cond_15e
    new-array v4, v8, [I

    .line 40
    invoke-static {v4, v11}, Ljava/util/Arrays;->fill([II)V

    move/from16 v5, v16

    move v8, v5

    :goto_166
    if-ge v5, v0, :cond_1ba

    add-int v9, v8, v8

    add-int v12, v5, v5

    .line 41
    aget-object v13, v1, v12

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 v12, v12, 0x1

    .line 42
    aget-object v12, v1, v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {v13, v12}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/zzbp;->zza(I)I

    move-result v14

    :goto_183
    and-int/2addr v14, v7

    .line 45
    aget v15, v4, v14

    if-ne v15, v11, :cond_197

    .line 47
    aput v9, v4, v14

    if-ge v8, v5, :cond_192

    .line 48
    aput-object v13, v1, v9

    xor-int/lit8 v9, v9, 0x1

    .line 49
    aput-object v12, v1, v9

    :cond_192
    add-int/lit8 v8, v8, 0x1

    move/from16 v18, v6

    goto :goto_1b0

    :cond_197
    move/from16 v18, v6

    .line 46
    aget-object v6, v1, v15

    invoke-virtual {v13, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b5

    xor-int/lit8 v3, v15, 0x1

    new-instance v6, Lcom/google/android/gms/internal/play_billing/zzbu;

    .line 50
    aget-object v9, v1, v3

    .line 51
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v6, v13, v12, v9}, Lcom/google/android/gms/internal/play_billing/zzbu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    aput-object v12, v1, v3

    move-object v3, v6

    :goto_1b0
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v18

    goto :goto_166

    :cond_1b5
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v18

    goto :goto_183

    :cond_1ba
    move/from16 v18, v6

    if-ne v8, v0, :cond_1c0

    move-object v3, v4

    goto :goto_1cd

    :cond_1c0
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v4, v5, v16

    .line 53
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v17

    aput-object v3, v5, v18

    move-object v3, v5

    .line 54
    :goto_1cd
    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_1f3

    .line 55
    check-cast v3, [Ljava/lang/Object;

    .line 56
    aget-object v0, v3, v18

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzbu;

    if-eqz v2, :cond_1ee

    .line 57
    iput-object v0, v2, Lcom/google/android/gms/internal/play_billing/zzbv;->zzc:Lcom/google/android/gms/internal/play_billing/zzbu;

    .line 58
    aget-object v0, v3, v16

    .line 59
    aget-object v2, v3, v17

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v3, v2, v2

    .line 60
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v0

    move v0, v2

    goto :goto_1f3

    .line 57
    :cond_1ee
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbu;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 60
    :cond_1f3
    :goto_1f3
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzcf;

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzcf;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v2

    .line 53
    :cond_1f9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "collection too large"

    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_6

    :cond_3
    :goto_3
    move-object p1, v0

    goto/16 :goto_9c

    .line 1
    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzd:I

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_20

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    aget-object p1, v2, v3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9c

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzc:Ljava/lang/Object;

    if-nez v1, :cond_25

    goto :goto_3

    .line 3
    :cond_25
    instance-of v4, v1, [B

    const/4 v5, -0x1

    if-eqz v4, :cond_51

    .line 4
    move-object v4, v1

    check-cast v4, [B

    array-length v1, v4

    add-int/lit8 v6, v1, -0x1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzbp;->zza(I)I

    move-result v1

    :goto_38
    and-int/2addr v1, v6

    .line 6
    aget-byte v5, v4, v1

    const/16 v7, 0xff

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_41

    goto :goto_3

    .line 7
    :cond_41
    aget-object v7, v2, v5

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    xor-int/lit8 p1, v5, 0x1

    .line 8
    aget-object p1, v2, p1

    goto :goto_9c

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 9
    :cond_51
    instance-of v4, v1, [S

    if-eqz v4, :cond_7d

    .line 10
    move-object v4, v1

    check-cast v4, [S

    array-length v1, v4

    add-int/lit8 v6, v1, -0x1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzbp;->zza(I)I

    move-result v1

    :goto_63
    and-int/2addr v1, v6

    .line 12
    aget-short v5, v4, v1

    int-to-char v5, v5

    const v7, 0xffff

    if-ne v5, v7, :cond_6d

    goto :goto_3

    .line 13
    :cond_6d
    aget-object v7, v2, v5

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    xor-int/lit8 p1, v5, 0x1

    .line 14
    aget-object p1, v2, p1

    goto :goto_9c

    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 15
    :cond_7d
    check-cast v1, [I

    array-length v4, v1

    add-int/2addr v4, v5

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzbp;->zza(I)I

    move-result v6

    :goto_89
    and-int/2addr v6, v4

    .line 17
    aget v7, v1, v6

    if-ne v7, v5, :cond_90

    goto/16 :goto_3

    .line 18
    :cond_90
    aget-object v8, v2, v7

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a0

    xor-int/lit8 p1, v7, 0x1

    .line 19
    aget-object p1, v2, p1

    :goto_9c
    if-nez p1, :cond_9f

    return-object v0

    :cond_9f
    return-object p1

    :cond_a0
    add-int/lit8 v6, v6, 0x1

    goto :goto_89
.end method

.method public final size()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzd:I

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/play_billing/zzbq;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzd:I

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzce;

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzce;-><init>([Ljava/lang/Object;II)V

    return-object v1
.end method

.method public final zzd()Lcom/google/android/gms/internal/play_billing/zzbx;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzb:[Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzcc;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzcc;-><init>(Lcom/google/android/gms/internal/play_billing/zzbw;[Ljava/lang/Object;II)V

    return-object v2
.end method

.method public final zze()Lcom/google/android/gms/internal/play_billing/zzbx;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzd:I

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzce;

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzce;-><init>([Ljava/lang/Object;II)V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcd;

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/play_billing/zzcd;-><init>(Lcom/google/android/gms/internal/play_billing/zzbw;Lcom/google/android/gms/internal/play_billing/zzbt;)V

    return-object v0
.end method
