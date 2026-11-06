###### Class com.google.android.gms.internal.games_v2.zzhb (com.google.android.gms.internal.games_v2.zzhb)
.class final Lcom/google/android/gms/internal/games_v2/zzhb;
.super Lcom/google/android/gms/internal/games_v2/zzgt;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/games_v2/zzgt;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:Ljava/lang/Object;

.field private final transient zzd:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzhb;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/games_v2/zzhb;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzhb;->zza:Lcom/google/android/gms/internal/games_v2/zzgt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzgt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zzc:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zzb:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zzd:I

    return-void
.end method

.method public static zzd(I[Ljava/lang/Object;Lcom/google/android/gms/internal/games_v2/zzgs;)Lcom/google/android/gms/internal/games_v2/zzhb;
    .registers 22

    move/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v0, :cond_b

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzhb;->zza:Lcom/google/android/gms/internal/games_v2/zzgt;

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzhb;

    return-object v0

    :cond_b
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_23

    .line 2
    aget-object v0, v1, v3

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v3, v1, v4

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/games_v2/zzgi;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzhb;

    invoke-direct {v0, v2, v1, v4}, Lcom/google/android/gms/internal/games_v2/zzhb;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0

    .line 4
    :cond_23
    array-length v5, v1

    shr-int/2addr v5, v4

    const-string v6, "index"

    .line 5
    invoke-static {v0, v5, v6}, Lcom/google/android/gms/internal/games_v2/zzgd;->zzb(IILjava/lang/String;)I

    const/4 v5, 0x2

    .line 6
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    const v7, 0x2ccccccc

    if-ge v6, v7, :cond_48

    add-int/lit8 v7, v6, -0x1

    .line 7
    invoke-static {v7}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v7

    :goto_3a
    add-int/2addr v7, v7

    int-to-double v8, v7

    const-wide v10, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v8, v10

    int-to-double v10, v6

    cmpg-double v8, v8, v10

    if-gez v8, :cond_4c

    goto :goto_3a

    :cond_48
    const/high16 v7, 0x40000000    # 2.0f

    if-ge v6, v7, :cond_1ea

    :cond_4c
    if-ne v0, v4, :cond_62

    .line 8
    aget-object v0, v1, v3

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v6, v1, v4

    .line 10
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/games_v2/zzgi;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    move/from16 v16, v3

    move v0, v4

    move/from16 v17, v0

    goto/16 :goto_1c1

    :cond_62
    add-int/lit8 v6, v7, -0x1

    const/16 v8, 0x80

    const/4 v9, 0x3

    const/4 v10, -0x1

    if-gt v7, v8, :cond_e0

    .line 11
    new-array v7, v7, [B

    .line 12
    invoke-static {v7, v10}, Ljava/util/Arrays;->fill([BB)V

    move v8, v3

    move v10, v8

    :goto_71
    if-ge v8, v0, :cond_c6

    add-int v11, v10, v10

    add-int v12, v8, v8

    .line 13
    aget-object v13, v1, v12

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v12, v4

    .line 14
    aget-object v12, v1, v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v13, v12}, Lcom/google/android/gms/internal/games_v2/zzgi;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lcom/google/android/gms/internal/games_v2/zzgj;->zza(I)I

    move-result v14

    :goto_8d
    and-int/2addr v14, v6

    .line 17
    aget-byte v15, v7, v14

    move/from16 v16, v3

    const/16 v3, 0xff

    and-int/2addr v15, v3

    if-ne v15, v3, :cond_a5

    int-to-byte v3, v11

    .line 19
    aput-byte v3, v7, v14

    if-ge v10, v8, :cond_a2

    .line 20
    aput-object v13, v1, v11

    xor-int/lit8 v3, v11, 0x1

    .line 21
    aput-object v12, v1, v3

    :cond_a2
    add-int/lit8 v10, v10, 0x1

    goto :goto_bc

    .line 18
    :cond_a5
    aget-object v3, v1, v15

    invoke-virtual {v13, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    xor-int/lit8 v2, v15, 0x1

    new-instance v3, Lcom/google/android/gms/internal/games_v2/zzgr;

    .line 22
    aget-object v11, v1, v2

    .line 23
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v3, v13, v12, v11}, Lcom/google/android/gms/internal/games_v2/zzgr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    aput-object v12, v1, v2

    move-object v2, v3

    :goto_bc
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v16

    goto :goto_71

    :cond_c1
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    goto :goto_8d

    :cond_c6
    move/from16 v16, v3

    if-ne v10, v0, :cond_cf

    move/from16 v17, v4

    move-object v2, v7

    goto/16 :goto_1c1

    :cond_cf
    new-array v3, v9, [Ljava/lang/Object;

    aput-object v7, v3, v16

    .line 25
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    aput-object v2, v3, v5

    :goto_db
    move-object v2, v3

    move/from16 v17, v4

    goto/16 :goto_1c1

    :cond_e0
    move/from16 v16, v3

    const v3, 0x8000

    if-gt v7, v3, :cond_153

    new-array v3, v7, [S

    .line 26
    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([SS)V

    move/from16 v7, v16

    move v8, v7

    :goto_ef
    if-ge v7, v0, :cond_13f

    add-int v10, v8, v8

    add-int v11, v7, v7

    .line 27
    aget-object v12, v1, v11

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v11, v4

    .line 28
    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/games_v2/zzgi;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Lcom/google/android/gms/internal/games_v2/zzgj;->zza(I)I

    move-result v13

    :goto_10b
    and-int/2addr v13, v6

    .line 31
    aget-short v14, v3, v13

    int-to-char v14, v14

    const v15, 0xffff

    if-ne v14, v15, :cond_122

    int-to-short v14, v10

    .line 33
    aput-short v14, v3, v13

    if-ge v8, v7, :cond_11f

    .line 34
    aput-object v12, v1, v10

    xor-int/lit8 v10, v10, 0x1

    .line 35
    aput-object v11, v1, v10

    :cond_11f
    add-int/lit8 v8, v8, 0x1

    goto :goto_139

    .line 32
    :cond_122
    aget-object v15, v1, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13c

    xor-int/lit8 v2, v14, 0x1

    new-instance v10, Lcom/google/android/gms/internal/games_v2/zzgr;

    .line 36
    aget-object v13, v1, v2

    .line 37
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v10, v12, v11, v13}, Lcom/google/android/gms/internal/games_v2/zzgr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    aput-object v11, v1, v2

    move-object v2, v10

    :goto_139
    add-int/lit8 v7, v7, 0x1

    goto :goto_ef

    :cond_13c
    add-int/lit8 v13, v13, 0x1

    goto :goto_10b

    :cond_13f
    if-ne v8, v0, :cond_142

    goto :goto_db

    :cond_142
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v16

    .line 39
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    aput-object v2, v6, v5

    move/from16 v17, v4

    move-object v2, v6

    goto/16 :goto_1c1

    :cond_153
    new-array v3, v7, [I

    .line 40
    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([II)V

    move/from16 v7, v16

    move v8, v7

    :goto_15b
    if-ge v7, v0, :cond_1ae

    add-int v11, v8, v8

    add-int v12, v7, v7

    .line 41
    aget-object v13, v1, v12

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v12, v4

    .line 42
    aget-object v12, v1, v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {v13, v12}, Lcom/google/android/gms/internal/games_v2/zzgi;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lcom/google/android/gms/internal/games_v2/zzgj;->zza(I)I

    move-result v14

    :goto_177
    and-int/2addr v14, v6

    .line 45
    aget v15, v3, v14

    if-ne v15, v10, :cond_18b

    .line 47
    aput v11, v3, v14

    if-ge v8, v7, :cond_186

    .line 48
    aput-object v13, v1, v11

    xor-int/lit8 v11, v11, 0x1

    .line 49
    aput-object v12, v1, v11

    :cond_186
    add-int/lit8 v8, v8, 0x1

    move/from16 v17, v4

    goto :goto_1a4

    :cond_18b
    move/from16 v17, v4

    .line 46
    aget-object v4, v1, v15

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a9

    xor-int/lit8 v2, v15, 0x1

    new-instance v4, Lcom/google/android/gms/internal/games_v2/zzgr;

    .line 50
    aget-object v11, v1, v2

    .line 51
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v13, v12, v11}, Lcom/google/android/gms/internal/games_v2/zzgr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    aput-object v12, v1, v2

    move-object v2, v4

    :goto_1a4
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v17

    goto :goto_15b

    :cond_1a9
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v17

    goto :goto_177

    :cond_1ae
    move/from16 v17, v4

    if-ne v8, v0, :cond_1b4

    move-object v2, v3

    goto :goto_1c1

    :cond_1b4
    new-array v4, v9, [Ljava/lang/Object;

    aput-object v3, v4, v16

    .line 53
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v17

    aput-object v2, v4, v5

    move-object v2, v4

    .line 54
    :goto_1c1
    instance-of v3, v2, [Ljava/lang/Object;

    if-eqz v3, :cond_1e4

    .line 55
    check-cast v2, [Ljava/lang/Object;

    .line 56
    aget-object v0, v2, v5

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzgr;

    move-object/from16 v3, p2

    iput-object v0, v3, Lcom/google/android/gms/internal/games_v2/zzgs;->zzc:Lcom/google/android/gms/internal/games_v2/zzgr;

    .line 57
    aget-object v0, v2, v16

    .line 58
    aget-object v2, v2, v17

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v3, v2, v2

    .line 59
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move/from16 v18, v2

    move-object v2, v0

    move/from16 v0, v18

    :cond_1e4
    new-instance v3, Lcom/google/android/gms/internal/games_v2/zzhb;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/games_v2/zzhb;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v3

    .line 53
    :cond_1ea
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "collection too large"

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzhb;->zza()Lcom/google/android/gms/internal/games_v2/zzgu;

    move-result-object v0

    return-object v0
.end method

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
    iget v1, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zzd:I

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zzb:[Ljava/lang/Object;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zzc:Ljava/lang/Object;

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

    invoke-static {v1}, Lcom/google/android/gms/internal/games_v2/zzgj;->zza(I)I

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

    invoke-static {v1}, Lcom/google/android/gms/internal/games_v2/zzgj;->zza(I)I

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

    invoke-static {v6}, Lcom/google/android/gms/internal/games_v2/zzgj;->zza(I)I

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

.method public final bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzhb;->zzb()Lcom/google/android/gms/internal/games_v2/zzgu;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zzd:I

    return v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzhb;->zzc()Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/games_v2/zzgu;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zzd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zzb:[Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzgy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/google/android/gms/internal/games_v2/zzgy;-><init>(Lcom/google/android/gms/internal/games_v2/zzgt;[Ljava/lang/Object;II)V

    return-object v2
.end method

.method public final zzb()Lcom/google/android/gms/internal/games_v2/zzgu;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zzd:I

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzha;

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/games_v2/zzha;-><init>([Ljava/lang/Object;II)V

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgz;

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/games_v2/zzgz;-><init>(Lcom/google/android/gms/internal/games_v2/zzgt;Lcom/google/android/gms/internal/games_v2/zzgq;)V

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/games_v2/zzgm;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zzd:I

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzha;

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/games_v2/zzha;-><init>([Ljava/lang/Object;II)V

    return-object v1
.end method
