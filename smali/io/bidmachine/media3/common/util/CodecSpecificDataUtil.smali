###### Class io.bidmachine.media3.common.util.CodecSpecificDataUtil (io.bidmachine.media3.common.util.CodecSpecificDataUtil)
.class public final Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;
.super Ljava/lang/Object;
.source "CodecSpecificDataUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

.field public static final NAL_START_CODE:[B

.field public static final PROFILE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x4

    .line 40
    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    .line 41
    const-string v0, "B"

    const-string v1, "C"

    const-string v2, ""

    const-string v3, "A"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

    .line 66
    const-string v0, "^\\D?(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public static av1LevelNumberToConst(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_4c

    const/4 p0, -0x1

    return p0

    :pswitch_5
    const/high16 p0, 0x800000

    return p0

    :pswitch_8
    const/high16 p0, 0x400000

    return p0

    :pswitch_b
    const/high16 p0, 0x200000

    return p0

    :pswitch_e
    const/high16 p0, 0x100000

    return p0

    :pswitch_11
    const/high16 p0, 0x80000

    return p0

    :pswitch_14
    const/high16 p0, 0x40000

    return p0

    :pswitch_17
    const/high16 p0, 0x20000

    return p0

    :pswitch_1a
    const/high16 p0, 0x10000

    return p0

    :pswitch_1d
    const p0, 0x8000

    return p0

    :pswitch_21
    const/16 p0, 0x4000

    return p0

    :pswitch_24
    const/16 p0, 0x2000

    return p0

    :pswitch_27
    const/16 p0, 0x1000

    return p0

    :pswitch_2a
    const/16 p0, 0x800

    return p0

    :pswitch_2d
    const/16 p0, 0x400

    return p0

    :pswitch_30
    const/16 p0, 0x200

    return p0

    :pswitch_33
    const/16 p0, 0x100

    return p0

    :pswitch_36
    const/16 p0, 0x80

    return p0

    :pswitch_39
    const/16 p0, 0x40

    return p0

    :pswitch_3c
    const/16 p0, 0x20

    return p0

    :pswitch_3f
    const/16 p0, 0x10

    return p0

    :pswitch_42
    const/16 p0, 0x8

    return p0

    :pswitch_45
    const/4 p0, 0x4

    return p0

    :pswitch_47
    const/4 p0, 0x2

    return p0

    :pswitch_49
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_49
        :pswitch_47
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static avcLevelNumberToConst(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_40

    packed-switch p0, :pswitch_data_4c

    packed-switch p0, :pswitch_data_56

    packed-switch p0, :pswitch_data_60

    packed-switch p0, :pswitch_data_6a

    const/4 p0, -0x1

    return p0

    :pswitch_11
    const/high16 p0, 0x10000

    return p0

    :pswitch_14
    const p0, 0x8000

    return p0

    :pswitch_18
    const/16 p0, 0x4000

    return p0

    :pswitch_1b
    const/16 p0, 0x2000

    return p0

    :pswitch_1e
    const/16 p0, 0x1000

    return p0

    :pswitch_21
    const/16 p0, 0x800

    return p0

    :pswitch_24
    const/16 p0, 0x400

    return p0

    :pswitch_27
    const/16 p0, 0x200

    return p0

    :pswitch_2a
    const/16 p0, 0x100

    return p0

    :pswitch_2d
    const/16 p0, 0x80

    return p0

    :pswitch_30
    const/16 p0, 0x40

    return p0

    :pswitch_33
    const/16 p0, 0x20

    return p0

    :pswitch_36
    const/16 p0, 0x10

    return p0

    :pswitch_39
    const/16 p0, 0x8

    return p0

    :pswitch_3c
    const/4 p0, 0x4

    return p0

    :pswitch_3e
    const/4 p0, 0x1

    return p0

    :pswitch_data_40
    .packed-switch 0xa
        :pswitch_3e
        :pswitch_3c
        :pswitch_39
        :pswitch_36
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x14
        :pswitch_33
        :pswitch_30
        :pswitch_2d
    .end packed-switch

    :pswitch_data_56
    .packed-switch 0x1e
        :pswitch_2a
        :pswitch_27
        :pswitch_24
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x28
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x32
        :pswitch_18
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public static avcProfileNumberToConst(I)I
    .registers 2

    .line 0
    const/16 v0, 0x42

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_2c

    const/16 v0, 0x58

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x64

    if-eq p0, v0, :cond_27

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_24

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_21

    const/16 v0, 0xf4

    if-eq p0, v0, :cond_1e

    const/4 p0, -0x1

    return p0

    :cond_1e
    const/16 p0, 0x40

    return p0

    :cond_21
    const/16 p0, 0x20

    return p0

    :cond_24
    const/16 p0, 0x10

    return p0

    :cond_27
    const/16 p0, 0x8

    return p0

    :cond_2a
    const/4 p0, 0x4

    return p0

    :cond_2c
    const/4 p0, 0x2

    return p0

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method

.method public static buildAvcCodecString(III)Ljava/lang/String;
    .registers 3

    .line 233
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 232
    const-string p1, "avc1.%02X%02X%02X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildCea708InitializationData(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_9

    .line 94
    new-array p0, v1, [B

    aput-byte v1, p0, v0

    goto :goto_d

    :cond_9
    new-array p0, v1, [B

    aput-byte v0, p0, v0

    :goto_d
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static buildHevcCodecString(IZII[II)Ljava/lang/String;
    .registers 8

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

    aget-object p0, v1, p0

    .line 249
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 250
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p1, :cond_13

    const/16 p1, 0x48

    goto :goto_15

    :cond_13
    const/16 p1, 0x4c

    .line 251
    :goto_15
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    .line 252
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p0, p2, p3, p1, p5}, [Ljava/lang/Object;

    move-result-object p0

    .line 246
    const-string p1, "hvc1.%s%d.%X.%c%d"

    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    array-length p0, p4

    :goto_2b
    if-lez p0, :cond_36

    add-int/lit8 p1, p0, -0x1

    .line 255
    aget p1, p4, p1

    if-nez p1, :cond_36

    add-int/lit8 p0, p0, -0x1

    goto :goto_2b

    :cond_36
    const/4 p1, 0x0

    :goto_37
    if-ge p1, p0, :cond_4f

    .line 259
    aget p2, p4, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, ".%02X"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_37

    .line 261
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildNalUnit([BII)[B
    .registers 7

    .line 370
    sget-object v0, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v0

    add-int/2addr v1, p2

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 371
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    array-length v0, v0

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static buildVp9CodecPrivateInitializationData(BBBB)Lcom/google/common/collect/ImmutableList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BBBB)",
            "Lcom/google/common/collect/ImmutableList<",
            "[B>;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 131
    new-array v0, v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    aput-byte v1, v0, v1

    const/4 v2, 0x2

    aput-byte p0, v0, v2

    const/4 p0, 0x3

    aput-byte v2, v0, p0

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/4 v3, 0x5

    aput-byte p1, v0, v3

    const/4 p1, 0x6

    aput-byte p0, v0, p1

    const/4 p0, 0x7

    aput-byte v1, v0, p0

    const/16 p0, 0x8

    aput-byte p2, v0, p0

    const/16 p0, 0x9

    aput-byte v2, v0, p0

    const/16 p0, 0xa

    aput-byte v1, v0, p0

    const/16 p0, 0xb

    aput-byte p3, v0, p0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static dolbyVisionStringToLevel(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_9

    return-object v4

    :cond_9
    const/4 v5, -0x1

    .line 849
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_106

    goto/16 :goto_af

    :sswitch_13
    const-string v6, "13"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_af

    :cond_1d
    const/16 v5, 0xc

    goto/16 :goto_af

    :sswitch_21
    const-string v6, "12"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_af

    :cond_2b
    const/16 v5, 0xb

    goto/16 :goto_af

    :sswitch_2f
    const-string v6, "11"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto/16 :goto_af

    :cond_39
    const/16 v5, 0xa

    goto/16 :goto_af

    :sswitch_3d
    const-string v6, "10"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    goto/16 :goto_af

    :cond_47
    const/16 v5, 0x9

    goto/16 :goto_af

    :sswitch_4b
    const-string v6, "09"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_55

    goto/16 :goto_af

    :cond_55
    move v5, v0

    goto/16 :goto_af

    :sswitch_58
    const-string v6, "08"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_61

    goto :goto_af

    :cond_61
    const/4 v5, 0x7

    goto :goto_af

    :sswitch_63
    const-string v6, "07"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6c

    goto :goto_af

    :cond_6c
    const/4 v5, 0x6

    goto :goto_af

    :sswitch_6e
    const-string v6, "06"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_77

    goto :goto_af

    :cond_77
    const/4 v5, 0x5

    goto :goto_af

    :sswitch_79
    const-string v6, "05"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_82

    goto :goto_af

    :cond_82
    move v5, v1

    goto :goto_af

    :sswitch_84
    const-string v6, "04"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8d

    goto :goto_af

    :cond_8d
    const/4 v5, 0x3

    goto :goto_af

    :sswitch_8f
    const-string v6, "03"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_98

    goto :goto_af

    :cond_98
    move v5, v2

    goto :goto_af

    :sswitch_9a
    const-string v6, "02"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a3

    goto :goto_af

    :cond_a3
    move v5, v3

    goto :goto_af

    :sswitch_a5
    const-string v6, "01"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ae

    goto :goto_af

    :cond_ae
    const/4 v5, 0x0

    :goto_af
    packed-switch v5, :pswitch_data_13c

    return-object v4

    :pswitch_b3
    const/16 p0, 0x1000

    .line 875
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_ba
    const/16 p0, 0x800

    .line 873
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c1
    const/16 p0, 0x400

    .line 871
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c8
    const/16 p0, 0x200

    .line 869
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_cf
    const/16 p0, 0x100

    .line 867
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d6
    const/16 p0, 0x80

    .line 865
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_dd
    const/16 p0, 0x40

    .line 863
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e4
    const/16 p0, 0x20

    .line 861
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_eb
    const/16 p0, 0x10

    .line 859
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 857
    :pswitch_f2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 855
    :pswitch_f7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 853
    :pswitch_fc
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 851
    :pswitch_101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :sswitch_data_106
    .sparse-switch
        0x601 -> :sswitch_a5
        0x602 -> :sswitch_9a
        0x603 -> :sswitch_8f
        0x604 -> :sswitch_84
        0x605 -> :sswitch_79
        0x606 -> :sswitch_6e
        0x607 -> :sswitch_63
        0x608 -> :sswitch_58
        0x609 -> :sswitch_4b
        0x61f -> :sswitch_3d
        0x620 -> :sswitch_2f
        0x621 -> :sswitch_21
        0x622 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_101
        :pswitch_fc
        :pswitch_f7
        :pswitch_f2
        :pswitch_eb
        :pswitch_e4
        :pswitch_dd
        :pswitch_d6
        :pswitch_cf
        :pswitch_c8
        :pswitch_c1
        :pswitch_ba
        :pswitch_b3
    .end packed-switch
.end method

.method public static dolbyVisionStringToProfile(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_9

    return-object v4

    :cond_9
    const/4 v5, -0x1

    .line 815
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_dc

    goto/16 :goto_93

    :sswitch_13
    const-string v6, "10"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_93

    :cond_1d
    const/16 v5, 0xa

    goto/16 :goto_93

    :sswitch_21
    const-string v6, "09"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_93

    :cond_2b
    const/16 v5, 0x9

    goto/16 :goto_93

    :sswitch_2f
    const-string v6, "08"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto/16 :goto_93

    :cond_39
    move v5, v0

    goto/16 :goto_93

    :sswitch_3c
    const-string v6, "07"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    goto :goto_93

    :cond_45
    const/4 v5, 0x7

    goto :goto_93

    :sswitch_47
    const-string v6, "06"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50

    goto :goto_93

    :cond_50
    const/4 v5, 0x6

    goto :goto_93

    :sswitch_52
    const-string v6, "05"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    goto :goto_93

    :cond_5b
    const/4 v5, 0x5

    goto :goto_93

    :sswitch_5d
    const-string v6, "04"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    goto :goto_93

    :cond_66
    move v5, v1

    goto :goto_93

    :sswitch_68
    const-string v6, "03"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_71

    goto :goto_93

    :cond_71
    const/4 v5, 0x3

    goto :goto_93

    :sswitch_73
    const-string v6, "02"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7c

    goto :goto_93

    :cond_7c
    move v5, v2

    goto :goto_93

    :sswitch_7e
    const-string v6, "01"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_87

    goto :goto_93

    :cond_87
    move v5, v3

    goto :goto_93

    :sswitch_89
    const-string v6, "00"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_92

    goto :goto_93

    :cond_92
    const/4 v5, 0x0

    :goto_93
    packed-switch v5, :pswitch_data_10a

    return-object v4

    :pswitch_97
    const/16 p0, 0x400

    .line 837
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_9e
    const/16 p0, 0x200

    .line 835
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a5
    const/16 p0, 0x100

    .line 833
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_ac
    const/16 p0, 0x80

    .line 831
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b3
    const/16 p0, 0x40

    .line 829
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_ba
    const/16 p0, 0x20

    .line 827
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c1
    const/16 p0, 0x10

    .line 825
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 823
    :pswitch_c8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 821
    :pswitch_cd
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 819
    :pswitch_d2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 817
    :pswitch_d7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :sswitch_data_dc
    .sparse-switch
        0x600 -> :sswitch_89
        0x601 -> :sswitch_7e
        0x602 -> :sswitch_73
        0x603 -> :sswitch_68
        0x604 -> :sswitch_5d
        0x605 -> :sswitch_52
        0x606 -> :sswitch_47
        0x607 -> :sswitch_3c
        0x608 -> :sswitch_2f
        0x609 -> :sswitch_21
        0x61f -> :sswitch_13
    .end sparse-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_d2
        :pswitch_cd
        :pswitch_c8
        :pswitch_c1
        :pswitch_ba
        :pswitch_b3
        :pswitch_ac
        :pswitch_a5
        :pswitch_9e
        :pswitch_97
    .end packed-switch
.end method

.method public static getAacCodecProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 615
    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "Ignoring malformed MP4A codec string: "

    const-string v4, "CodecSpecificDataUtil"

    if-eq v0, v1, :cond_1c

    .line 616
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1c
    const/4 v0, 0x1

    .line 621
    :try_start_1d
    aget-object v0, p1, v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 622
    invoke-static {v0}, Lio/bidmachine/media3/common/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0

    .line 623
    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const/4 v0, 0x2

    .line 625
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 626
    invoke-static {p1}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->mp4aAudioObjectTypeToProfile(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_60

    .line 629
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_4d} :catch_4e

    return-object v0

    .line 633
    :catch_4e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    return-object v2
.end method

.method public static getAv1ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Lio/bidmachine/media3/common/ColorInfo;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 569
    array-length v0, p1

    const/4 v1, 0x4

    const-string v2, "Ignoring malformed AV1 codec string: "

    const/4 v3, 0x0

    const-string v4, "CodecSpecificDataUtil"

    if-ge v0, v1, :cond_1c

    .line 570
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1c
    const/4 v0, 0x1

    .line 577
    :try_start_1d
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x2

    .line 578
    aget-object v6, p1, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    .line 579
    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_36} :catch_a9

    if-eqz v1, :cond_4d

    .line 586
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown AV1 profile: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_4d
    const/16 p1, 0x8

    if-eq p0, p1, :cond_6a

    const/16 v1, 0xa

    if-eq p0, v1, :cond_6a

    .line 590
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown AV1 bit depth: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_6a
    if-ne p0, p1, :cond_6d

    goto :goto_7f

    :cond_6d
    if-eqz p2, :cond_7e

    .line 596
    iget-object p0, p2, Lio/bidmachine/media3/common/ColorInfo;->hdrStaticInfo:[B

    if-nez p0, :cond_7b

    iget p0, p2, Lio/bidmachine/media3/common/ColorInfo;->colorTransfer:I

    const/4 p1, 0x7

    if-eq p0, p1, :cond_7b

    const/4 p1, 0x6

    if-ne p0, p1, :cond_7e

    :cond_7b
    const/16 v0, 0x1000

    goto :goto_7f

    :cond_7e
    move v0, v5

    .line 605
    :goto_7f
    invoke-static {v6}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->av1LevelNumberToConst(I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_9b

    .line 607
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown AV1 level: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 610
    :cond_9b
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 581
    :catch_a9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static getAvcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 498
    array-length v0, p1

    const-string v1, "Ignoring malformed AVC codec string: "

    const/4 v2, 0x0

    const-string v3, "CodecSpecificDataUtil"

    const/4 v4, 0x2

    if-ge v0, v4, :cond_1c

    .line 500
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1c
    const/4 v0, 0x1

    .line 506
    :try_start_1d
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3f

    .line 508
    aget-object v5, p1, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 509
    aget-object p1, p1, v0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_50

    .line 510
    :cond_3f
    array-length v5, p1

    const/4 v6, 0x3

    if-lt v5, v6, :cond_95

    .line 512
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 513
    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_4f} :catch_a8

    move v4, v0

    .line 524
    :goto_50
    invoke-static {v4}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->avcProfileNumberToConst(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6c

    .line 526
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown AVC profile: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 529
    :cond_6c
    invoke-static {p0}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->avcLevelNumberToConst(I)I

    move-result v1

    if-ne v1, v0, :cond_87

    .line 531
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown AVC level: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 534
    :cond_87
    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 516
    :cond_95
    :try_start_95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/NumberFormatException; {:try_start_95 .. :try_end_a7} :catch_a8

    return-object v2

    .line 520
    :catch_a8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getCodecProfileAndLevel(Lio/bidmachine/media3/common/Format;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/Format;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 279
    iget-object v1, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    return-object v2

    .line 282
    :cond_7
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 284
    const-string v3, "video/dolby-vision"

    iget-object v4, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 285
    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->getDolbyVisionProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 287
    :cond_1e
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_b6

    :goto_2b
    move v0, v4

    goto :goto_83

    :sswitch_2d
    const-string v0, "vp09"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_2b

    :cond_36
    const/4 v0, 0x7

    goto :goto_83

    :sswitch_38
    const-string v0, "s263"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_2b

    :cond_41
    const/4 v0, 0x6

    goto :goto_83

    :sswitch_43
    const-string v0, "mp4a"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_2b

    :cond_4c
    const/4 v0, 0x5

    goto :goto_83

    :sswitch_4e
    const-string v0, "hvc1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_2b

    :cond_57
    const/4 v0, 0x4

    goto :goto_83

    :sswitch_59
    const-string v0, "hev1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_2b

    :cond_62
    const/4 v0, 0x3

    goto :goto_83

    :sswitch_64
    const-string v0, "avc2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto :goto_2b

    :cond_6d
    const/4 v0, 0x2

    goto :goto_83

    :sswitch_6f
    const-string v0, "avc1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto :goto_2b

    :cond_78
    const/4 v0, 0x1

    goto :goto_83

    :sswitch_7a
    const-string v5, "av01"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    goto :goto_2b

    :cond_83
    :goto_83
    packed-switch v0, :pswitch_data_d8

    return-object v2

    .line 294
    :pswitch_87
    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->getVp9ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 289
    :pswitch_8e
    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->getH263ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 301
    :pswitch_95
    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->getAacCodecProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 297
    :pswitch_9c
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    invoke-static {v0, v1, p0}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Lio/bidmachine/media3/common/ColorInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 292
    :pswitch_a5
    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v1}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->getAvcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 299
    :pswitch_ac
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    invoke-static {v0, v1, p0}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->getAv1ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Lio/bidmachine/media3/common/ColorInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_b6
    .sparse-switch
        0x2dd8f6 -> :sswitch_7a
        0x2ddf23 -> :sswitch_6f
        0x2ddf24 -> :sswitch_64
        0x30d038 -> :sswitch_59
        0x310dbc -> :sswitch_4e
        0x333790 -> :sswitch_43
        0x35091c -> :sswitch_38
        0x374e43 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_a5
        :pswitch_a5
        :pswitch_9c
        :pswitch_9c
        :pswitch_95
        :pswitch_8e
        :pswitch_87
    .end packed-switch
.end method

.method public static getDolbyVisionProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 449
    array-length v0, p1

    const/4 v1, 0x3

    const-string v2, "Ignoring malformed Dolby Vision codec string: "

    const/4 v3, 0x0

    const-string v4, "CodecSpecificDataUtil"

    if-ge v0, v1, :cond_1c

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 455
    :cond_1c
    sget-object v0, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    aget-object v5, p1, v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 457
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 460
    :cond_3e
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 461
    invoke-static {p0}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->dolbyVisionStringToProfile(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_5d

    .line 463
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown Dolby Vision profile string: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_5d
    const/4 p0, 0x2

    .line 466
    aget-object p0, p1, p0

    .line 467
    invoke-static {p0}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->dolbyVisionStringToLevel(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_7b

    .line 469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown Dolby Vision level string: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 472
    :cond_7b
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getH263ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 477
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x1

    .line 479
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 480
    invoke-direct {v0, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 481
    array-length v2, p1

    const/4 v3, 0x3

    const-string v4, "Ignoring malformed H263 codec string: "

    const-string v5, "CodecSpecificDataUtil"

    if-ge v2, v3, :cond_25

    .line 482
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 487
    :cond_25
    :try_start_25
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 488
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 489
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_3f} :catch_40

    return-object v2

    .line 491
    :catch_40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Lio/bidmachine/media3/common/ColorInfo;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 320
    array-length v0, p1

    const/4 v1, 0x4

    const-string v2, "Ignoring malformed HEVC codec string: "

    const/4 v3, 0x0

    const-string v4, "CodecSpecificDataUtil"

    if-ge v0, v1, :cond_1c

    .line 322
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 326
    :cond_1c
    sget-object v0, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    aget-object v5, p1, v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 331
    :cond_3e
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 333
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_67

    .line 335
    :cond_4b
    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_5f

    if-eqz p2, :cond_5d

    .line 336
    iget p0, p2, Lio/bidmachine/media3/common/ColorInfo;->colorTransfer:I

    if-ne p0, v1, :cond_5d

    const/16 v1, 0x1000

    goto :goto_67

    :cond_5d
    const/4 v1, 0x2

    goto :goto_67

    .line 345
    :cond_5f
    const-string p2, "6"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8f

    :goto_67
    const/4 p0, 0x3

    .line 352
    aget-object p0, p1, p0

    .line 353
    invoke-static {p0}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->hevcCodecStringToProfileLevel(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_85

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown HEVC level string: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 358
    :cond_85
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 349
    :cond_8f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown HEVC profile string: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static getVp9ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 539
    array-length v0, p1

    const/4 v1, 0x3

    const-string v2, "Ignoring malformed VP9 codec string: "

    const/4 v3, 0x0

    const-string v4, "CodecSpecificDataUtil"

    if-ge v0, v1, :cond_1c

    .line 540
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1c
    const/4 v0, 0x1

    .line 546
    :try_start_1d
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    .line 547
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_2a} :catch_6f

    .line 553
    invoke-static {v0}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->vp9ProfileNumberToConst(I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_46

    .line 555
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown VP9 profile: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 558
    :cond_46
    invoke-static {p0}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->vp9LevelNumberToConst(I)I

    move-result v0

    if-ne v0, v1, :cond_61

    .line 560
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown VP9 level: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 563
    :cond_61
    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 549
    :catch_6f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static hevcCodecStringToProfileLevel(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_b

    return-object v5

    :cond_b
    const/4 v6, -0x1

    .line 752
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_218

    goto/16 :goto_166

    :sswitch_15
    const-string v7, "L186"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_166

    :cond_1f
    const/16 v6, 0x19

    goto/16 :goto_166

    :sswitch_23
    const-string v7, "L183"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto/16 :goto_166

    :cond_2d
    const/16 v6, 0x18

    goto/16 :goto_166

    :sswitch_31
    const-string v7, "L180"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto/16 :goto_166

    :cond_3b
    const/16 v6, 0x17

    goto/16 :goto_166

    :sswitch_3f
    const-string v7, "L156"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    goto/16 :goto_166

    :cond_49
    const/16 v6, 0x16

    goto/16 :goto_166

    :sswitch_4d
    const-string v7, "L153"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_57

    goto/16 :goto_166

    :cond_57
    const/16 v6, 0x15

    goto/16 :goto_166

    :sswitch_5b
    const-string v7, "L150"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    goto/16 :goto_166

    :cond_65
    const/16 v6, 0x14

    goto/16 :goto_166

    :sswitch_69
    const-string v7, "L123"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_73

    goto/16 :goto_166

    :cond_73
    const/16 v6, 0x13

    goto/16 :goto_166

    :sswitch_77
    const-string v7, "L120"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_81

    goto/16 :goto_166

    :cond_81
    const/16 v6, 0x12

    goto/16 :goto_166

    :sswitch_85
    const-string v7, "H186"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8f

    goto/16 :goto_166

    :cond_8f
    const/16 v6, 0x11

    goto/16 :goto_166

    :sswitch_93
    const-string v7, "H183"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9d

    goto/16 :goto_166

    :cond_9d
    move v6, v0

    goto/16 :goto_166

    :sswitch_a0
    const-string v7, "H180"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_aa

    goto/16 :goto_166

    :cond_aa
    const/16 v6, 0xf

    goto/16 :goto_166

    :sswitch_ae
    const-string v7, "H156"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b8

    goto/16 :goto_166

    :cond_b8
    const/16 v6, 0xe

    goto/16 :goto_166

    :sswitch_bc
    const-string v7, "H153"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c6

    goto/16 :goto_166

    :cond_c6
    const/16 v6, 0xd

    goto/16 :goto_166

    :sswitch_ca
    const-string v7, "H150"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d4

    goto/16 :goto_166

    :cond_d4
    const/16 v6, 0xc

    goto/16 :goto_166

    :sswitch_d8
    const-string v7, "H123"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e2

    goto/16 :goto_166

    :cond_e2
    const/16 v6, 0xb

    goto/16 :goto_166

    :sswitch_e6
    const-string v7, "H120"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f0

    goto/16 :goto_166

    :cond_f0
    const/16 v6, 0xa

    goto/16 :goto_166

    :sswitch_f4
    const-string v7, "L93"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_fe

    goto/16 :goto_166

    :cond_fe
    const/16 v6, 0x9

    goto/16 :goto_166

    :sswitch_102
    const-string v7, "L90"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10c

    goto/16 :goto_166

    :cond_10c
    move v6, v1

    goto/16 :goto_166

    :sswitch_10f
    const-string v7, "L63"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_118

    goto :goto_166

    :cond_118
    const/4 v6, 0x7

    goto :goto_166

    :sswitch_11a
    const-string v7, "L60"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_123

    goto :goto_166

    :cond_123
    const/4 v6, 0x6

    goto :goto_166

    :sswitch_125
    const-string v7, "L30"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12e

    goto :goto_166

    :cond_12e
    const/4 v6, 0x5

    goto :goto_166

    :sswitch_130
    const-string v7, "H93"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_139

    goto :goto_166

    :cond_139
    move v6, v2

    goto :goto_166

    :sswitch_13b
    const-string v7, "H90"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_144

    goto :goto_166

    :cond_144
    const/4 v6, 0x3

    goto :goto_166

    :sswitch_146
    const-string v7, "H63"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14f

    goto :goto_166

    :cond_14f
    move v6, v3

    goto :goto_166

    :sswitch_151
    const-string v7, "H60"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15a

    goto :goto_166

    :cond_15a
    move v6, v4

    goto :goto_166

    :sswitch_15c
    const-string v7, "H30"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_165

    goto :goto_166

    :cond_165
    const/4 v6, 0x0

    :goto_166
    packed-switch v6, :pswitch_data_282

    return-object v5

    :pswitch_16a
    const/high16 p0, 0x1000000

    .line 778
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_171
    const/high16 p0, 0x400000

    .line 776
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_178
    const/high16 p0, 0x100000

    .line 774
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_17f
    const/high16 p0, 0x40000

    .line 772
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_186
    const/high16 p0, 0x10000

    .line 770
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_18d
    const/16 p0, 0x4000

    .line 768
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_194
    const/16 p0, 0x1000

    .line 766
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_19b
    const/16 p0, 0x400

    .line 764
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1a2
    const/high16 p0, 0x2000000

    .line 804
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1a9
    const/high16 p0, 0x800000

    .line 802
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1b0
    const/high16 p0, 0x200000

    .line 800
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1b7
    const/high16 p0, 0x80000

    .line 798
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1be
    const/high16 p0, 0x20000

    .line 796
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1c5
    const p0, 0x8000

    .line 794
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1cd
    const/16 p0, 0x2000

    .line 792
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1d4
    const/16 p0, 0x800

    .line 790
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1db
    const/16 p0, 0x100

    .line 762
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1e2
    const/16 p0, 0x40

    .line 760
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 758
    :pswitch_1e9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 756
    :pswitch_1ee
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 754
    :pswitch_1f3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1f8
    const/16 p0, 0x200

    .line 788
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1ff
    const/16 p0, 0x80

    .line 786
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_206
    const/16 p0, 0x20

    .line 784
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 782
    :pswitch_20d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 780
    :pswitch_212
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_218
    .sparse-switch
        0x114a5 -> :sswitch_15c
        0x11502 -> :sswitch_151
        0x11505 -> :sswitch_146
        0x1155f -> :sswitch_13b
        0x11562 -> :sswitch_130
        0x123a9 -> :sswitch_125
        0x12406 -> :sswitch_11a
        0x12409 -> :sswitch_10f
        0x12463 -> :sswitch_102
        0x12466 -> :sswitch_f4
        0x2178e7 -> :sswitch_e6
        0x2178ea -> :sswitch_d8
        0x217944 -> :sswitch_ca
        0x217947 -> :sswitch_bc
        0x21794a -> :sswitch_ae
        0x2179a1 -> :sswitch_a0
        0x2179a4 -> :sswitch_93
        0x2179a7 -> :sswitch_85
        0x234a63 -> :sswitch_77
        0x234a66 -> :sswitch_69
        0x234ac0 -> :sswitch_5b
        0x234ac3 -> :sswitch_4d
        0x234ac6 -> :sswitch_3f
        0x234b1d -> :sswitch_31
        0x234b20 -> :sswitch_23
        0x234b23 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_282
    .packed-switch 0x0
        :pswitch_212
        :pswitch_20d
        :pswitch_206
        :pswitch_1ff
        :pswitch_1f8
        :pswitch_1f3
        :pswitch_1ee
        :pswitch_1e9
        :pswitch_1e2
        :pswitch_1db
        :pswitch_1d4
        :pswitch_1cd
        :pswitch_1c5
        :pswitch_1be
        :pswitch_1b7
        :pswitch_1b0
        :pswitch_1a9
        :pswitch_1a2
        :pswitch_19b
        :pswitch_194
        :pswitch_18d
        :pswitch_186
        :pswitch_17f
        :pswitch_178
        :pswitch_171
        :pswitch_16a
    .end packed-switch
.end method

.method public static mp4aAudioObjectTypeToProfile(I)I
    .registers 2

    .line 0
    const/16 v0, 0x11

    if-eq p0, v0, :cond_29

    const/16 v0, 0x14

    if-eq p0, v0, :cond_29

    const/16 v0, 0x17

    if-eq p0, v0, :cond_29

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_29

    const/16 v0, 0x27

    if-eq p0, v0, :cond_29

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_29

    packed-switch p0, :pswitch_data_2a

    const/4 p0, -0x1

    return p0

    :pswitch_1d
    const/4 p0, 0x6

    return p0

    :pswitch_1f
    const/4 p0, 0x5

    return p0

    :pswitch_21
    const/4 p0, 0x4

    return p0

    :pswitch_23
    const/4 p0, 0x3

    return p0

    :pswitch_25
    const/4 p0, 0x2

    return p0

    :pswitch_27
    const/4 p0, 0x1

    return p0

    :cond_29
    return v0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_25
        :pswitch_23
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
    .end packed-switch
.end method

.method public static parseAlacAudioSpecificConfig([B)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    const/16 p0, 0x9

    .line 79
    invoke-virtual {v0, p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 80
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v1, 0x14

    .line 81
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 82
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseCea708InitializationData(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 106
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    .line 107
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    if-ne v0, v2, :cond_1c

    .line 108
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    aget-byte p0, p0, v1

    if-ne p0, v2, :cond_1c

    return v2

    :cond_1c
    return v1
.end method

.method public static vp9LevelNumberToConst(I)I
    .registers 2

    .line 0
    const/16 v0, 0xa

    if-eq p0, v0, :cond_4f

    const/16 v0, 0xb

    if-eq p0, v0, :cond_4d

    const/16 v0, 0x14

    if-eq p0, v0, :cond_4b

    const/16 v0, 0x15

    if-eq p0, v0, :cond_48

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_45

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_42

    const/16 v0, 0x28

    if-eq p0, v0, :cond_3f

    const/16 v0, 0x29

    if-eq p0, v0, :cond_3c

    const/16 v0, 0x32

    if-eq p0, v0, :cond_39

    const/16 v0, 0x33

    if-eq p0, v0, :cond_36

    packed-switch p0, :pswitch_data_52

    const/4 p0, -0x1

    return p0

    :pswitch_2d
    const/16 p0, 0x2000

    return p0

    :pswitch_30
    const/16 p0, 0x1000

    return p0

    :pswitch_33
    const/16 p0, 0x800

    return p0

    :cond_36
    const/16 p0, 0x200

    return p0

    :cond_39
    const/16 p0, 0x100

    return p0

    :cond_3c
    const/16 p0, 0x80

    return p0

    :cond_3f
    const/16 p0, 0x40

    return p0

    :cond_42
    const/16 p0, 0x20

    return p0

    :cond_45
    const/16 p0, 0x10

    return p0

    :cond_48
    const/16 p0, 0x8

    return p0

    :cond_4b
    const/4 p0, 0x4

    return p0

    :cond_4d
    const/4 p0, 0x2

    return p0

    :cond_4f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_52
    .packed-switch 0x3c
        :pswitch_33
        :pswitch_30
        :pswitch_2d
    .end packed-switch
.end method

.method public static vp9ProfileNumberToConst(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_13

    const/4 v1, 0x2

    if-eq p0, v0, :cond_12

    if-eq p0, v1, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    const/16 p0, 0x8

    return p0

    :cond_10
    const/4 p0, 0x4

    return p0

    :cond_12
    return v1

    :cond_13
    return v0
.end method
