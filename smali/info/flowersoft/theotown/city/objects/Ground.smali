###### Class info.flowersoft.theotown.city.objects.Ground (info.flowersoft.theotown.city.objects.Ground)
.class public final Linfo/flowersoft/theotown/city/objects/Ground;
.super Ljava/lang/Object;
.source "Ground.java"


# static fields
.field public static final COLOR_BUF:Lio/blueflower/stapel2d/drawing/Color;

.field public static DEFAULT_WATER_DRAFT:Linfo/flowersoft/theotown/draft/GroundDraft;

.field public static final EDGE_LEFT_BOTTOM_UVS:[F

.field public static final EDGE_LEFT_TOP_UVS:[F

.field public static final EDGE_LEFT_UVS:[F

.field public static final EDGE_LEFT_WATER_TOP_UVS:[F

.field public static final EDGE_RIGHT_BOTTOM_UVS:[F

.field public static final EDGE_RIGHT_TOP_UVS:[F

.field public static final EDGE_RIGHT_UVS:[F

.field public static final EDGE_RIGHT_WATER_TOP_UVS:[F

.field public static final RECT_UVS:[F

.field public static final TILE_UVS:[F

.field public static final TILE_UVS_INNER:[F

.field public static final TILE_UVS_INNER_HANDLE:[F


# instance fields
.field public baseTerrainHeight:B

.field public borderFrame:B

.field public draft:Linfo/flowersoft/theotown/draft/GroundDraft;

.field public frame:B

.field public height:S

.field public heightDX:B

.field public heightDY:B

.field public terrainHeights:B


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 36
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Linfo/flowersoft/theotown/city/objects/Ground;->COLOR_BUF:Lio/blueflower/stapel2d/drawing/Color;

    const/16 v0, 0x8

    .line 37
    new-array v2, v0, [F

    fill-array-data v2, :array_ce

    sput-object v2, Linfo/flowersoft/theotown/city/objects/Ground;->RECT_UVS:[F

    .line 38
    new-array v2, v0, [F

    fill-array-data v2, :array_e2

    sput-object v2, Linfo/flowersoft/theotown/city/objects/Ground;->TILE_UVS:[F

    .line 39
    new-array v2, v0, [F

    fill-array-data v2, :array_f6

    sput-object v2, Linfo/flowersoft/theotown/city/objects/Ground;->TILE_UVS_INNER:[F

    .line 41
    new-array v3, v0, [F

    fill-array-data v3, :array_10a

    sput-object v3, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_LEFT_UVS:[F

    .line 42
    new-array v4, v0, [F

    fill-array-data v4, :array_11e

    sput-object v4, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_RIGHT_UVS:[F

    .line 43
    new-array v5, v0, [F

    fill-array-data v5, :array_132

    sput-object v5, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_LEFT_TOP_UVS:[F

    .line 44
    new-array v6, v0, [F

    fill-array-data v6, :array_146

    sput-object v6, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_RIGHT_TOP_UVS:[F

    .line 45
    new-array v7, v0, [F

    fill-array-data v7, :array_15a

    sput-object v7, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_LEFT_BOTTOM_UVS:[F

    .line 46
    new-array v8, v0, [F

    fill-array-data v8, :array_16e

    sput-object v8, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_RIGHT_BOTTOM_UVS:[F

    const/4 v9, 0x3

    .line 54
    aget v10, v3, v9

    const v11, 0x3e6aaaab

    sub-float/2addr v10, v11

    const/4 v12, 0x1

    aput v10, v7, v12

    const/4 v10, 0x5

    .line 55
    aget v13, v3, v10

    sub-float/2addr v13, v11

    const/4 v14, 0x7

    aput v13, v7, v14

    .line 56
    aget v7, v3, v12

    add-float/2addr v7, v11

    aput v7, v5, v9

    .line 57
    aget v7, v3, v14

    add-float/2addr v7, v11

    aput v7, v5, v10

    .line 58
    aget v5, v4, v9

    sub-float/2addr v5, v11

    aput v5, v8, v12

    .line 59
    aget v5, v4, v10

    sub-float/2addr v5, v11

    aput v5, v8, v14

    .line 60
    aget v5, v4, v12

    add-float/2addr v5, v11

    aput v5, v6, v9

    .line 61
    aget v5, v4, v14

    add-float/2addr v5, v11

    aput v5, v6, v10

    .line 62
    aget v5, v3, v12

    add-float/2addr v5, v11

    aput v5, v3, v12

    .line 63
    aget v5, v3, v14

    add-float/2addr v5, v11

    aput v5, v3, v14

    .line 64
    aget v5, v3, v9

    sub-float/2addr v5, v11

    aput v5, v3, v9

    .line 65
    aget v5, v3, v10

    sub-float/2addr v5, v11

    aput v5, v3, v10

    .line 66
    aget v3, v4, v12

    add-float/2addr v3, v11

    aput v3, v4, v12

    .line 67
    aget v3, v4, v14

    add-float/2addr v3, v11

    aput v3, v4, v14

    .line 68
    aget v3, v4, v9

    sub-float/2addr v3, v11

    aput v3, v4, v9

    .line 69
    aget v3, v4, v10

    sub-float/2addr v3, v11

    aput v3, v4, v10

    .line 72
    new-array v3, v0, [F

    fill-array-data v3, :array_182

    sput-object v3, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_LEFT_WATER_TOP_UVS:[F

    .line 73
    new-array v0, v0, [F

    fill-array-data v0, :array_196

    sput-object v0, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_RIGHT_WATER_TOP_UVS:[F

    .line 76
    array-length v0, v2

    new-array v0, v0, [F

    sput-object v0, Linfo/flowersoft/theotown/city/objects/Ground;->TILE_UVS_INNER_HANDLE:[F

    .line 77
    :goto_b3
    sget-object v0, Linfo/flowersoft/theotown/city/objects/Ground;->TILE_UVS_INNER:[F

    array-length v2, v0

    if-ge v1, v2, :cond_cd

    .line 78
    sget-object v2, Linfo/flowersoft/theotown/city/objects/Ground;->TILE_UVS_INNER_HANDLE:[F

    aget v3, v0, v1

    aput v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    .line 79
    aget v0, v0, v3

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v0, v4

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v0, v4

    aput v0, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_b3

    :cond_cd
    return-void

    :array_ce
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_e2
    .array-data 4
        0x3f000000    # 0.5f
        0x3d800000    # 0.0625f
        0x0
        0x3f080000    # 0.53125f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f080000    # 0.53125f
    .end array-data

    :array_f6
    .array-data 4
        0x3f000000    # 0.5f
        0x3dc00000    # 0.09375f
        0x3d000000    # 0.03125f
        0x3f080000    # 0.53125f
        0x3f000000    # 0.5f
        0x3f780000    # 0.96875f
        0x3f780000    # 0.96875f
        0x3f080000    # 0.53125f
    .end array-data

    :array_10a
    .array-data 4
        0x0
        0x3e555555
        0x0
        0x3f555555
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3ec00000    # 0.375f
    .end array-data

    :array_11e
    .array-data 4
        0x0
        0x3ec00000    # 0.375f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f555555
        0x3f800000    # 1.0f
        0x3e555555
    .end array-data

    :array_132
    .array-data 4
        0x0
        0x3e555555
        0x0
        0x3f555555
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3ec00000    # 0.375f
    .end array-data

    :array_146
    .array-data 4
        0x0
        0x3ec00000    # 0.375f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f555555
        0x3f800000    # 1.0f
        0x3e555555
    .end array-data

    :array_15a
    .array-data 4
        0x0
        0x3e555555
        0x0
        0x3f555555
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3ec00000    # 0.375f
    .end array-data

    :array_16e
    .array-data 4
        0x0
        0x3ec00000    # 0.375f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f555555
        0x3f800000    # 1.0f
        0x3e555555
    .end array-data

    :array_182
    .array-data 4
        0x0
        0x3e555555
        0x0
        0x3ee00000    # 0.4375f
        0x3f800000    # 1.0f
        0x3f1aaaab
        0x3f800000    # 1.0f
        0x3ec00000    # 0.375f
    .end array-data

    :array_196
    .array-data 4
        0x0
        0x3ec00000    # 0.375f
        0x0
        0x3f1aaaab
        0x3f800000    # 1.0f
        0x3ee00000    # 0.4375f
        0x3f800000    # 1.0f
        0x3e555555
    .end array-data
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/draft/GroundDraft;I)V
    .registers 4

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 94
    iput-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->borderFrame:B

    .line 169
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    int-to-byte p1, p2

    .line 170
    iput-byte p1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->frame:B

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;Ljava/util/List;IILinfo/flowersoft/theotown/city/Tiles;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/json/JsonReader;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/GroundDraft;",
            ">;II",
            "Linfo/flowersoft/theotown/city/Tiles;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, -0x1

    .line 94
    iput-byte v4, p0, Linfo/flowersoft/theotown/city/objects/Ground;->borderFrame:B

    const/4 v5, 0x0

    .line 103
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/GroundDraft;

    iput-object v6, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 105
    :cond_14
    :goto_14
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1bc

    .line 106
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    .line 107
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1d0

    :goto_28
    move v6, v4

    goto/16 :goto_ef

    :sswitch_2b
    const-string v7, "frame"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    goto :goto_28

    :cond_34
    const/16 v6, 0xf

    goto/16 :goto_ef

    :sswitch_38
    const-string v7, "ths"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    goto :goto_28

    :cond_41
    const/16 v6, 0xe

    goto/16 :goto_ef

    :sswitch_45
    const-string v7, "tbh"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e

    goto :goto_28

    :cond_4e
    const/16 v6, 0xd

    goto/16 :goto_ef

    :sswitch_52
    const-string v7, "hxy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5b

    goto :goto_28

    :cond_5b
    const/16 v6, 0xc

    goto/16 :goto_ef

    :sswitch_5f
    const-string v7, "f2:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68

    goto :goto_28

    :cond_68
    const/16 v6, 0xb

    goto/16 :goto_ef

    :sswitch_6c
    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_75

    goto :goto_28

    :cond_75
    const/16 v6, 0xa

    goto/16 :goto_ef

    :sswitch_79
    const-string v7, "j2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_82

    goto :goto_28

    :cond_82
    const/16 v6, 0x9

    goto/16 :goto_ef

    :sswitch_86
    const-string v7, "dy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8f

    goto :goto_28

    :cond_8f
    move v6, v2

    goto/16 :goto_ef

    :sswitch_92
    const-string v7, "dx"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    goto :goto_28

    :cond_9b
    const/4 v6, 0x7

    goto :goto_ef

    :sswitch_9d
    const-string v7, "j"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a6

    goto :goto_28

    :cond_a6
    const/4 v6, 0x6

    goto :goto_ef

    :sswitch_a8
    const-string v7, "i"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b2

    goto/16 :goto_28

    :cond_b2
    const/4 v6, 0x5

    goto :goto_ef

    :sswitch_b4
    const-string v7, "h"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_be

    goto/16 :goto_28

    :cond_be
    move v6, v0

    goto :goto_ef

    :sswitch_c0
    const-string v7, "f"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ca

    goto/16 :goto_28

    :cond_ca
    move v6, v1

    goto :goto_ef

    :sswitch_cc
    const-string v7, "heightDY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d6

    goto/16 :goto_28

    :cond_d6
    const/4 v6, 0x2

    goto :goto_ef

    :sswitch_d8
    const-string v7, "heightDX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e2

    goto/16 :goto_28

    :cond_e2
    move v6, v3

    goto :goto_ef

    :sswitch_e4
    const-string v7, "height"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ee

    goto/16 :goto_28

    :cond_ee
    move v6, v5

    :goto_ef
    packed-switch v6, :pswitch_data_212

    .line 160
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_14

    .line 156
    :pswitch_f7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextByte()B

    move-result v6

    and-int/lit8 v7, v6, 0x3

    shr-int/lit8 v8, v6, 0x1

    and-int/2addr v8, v0

    or-int/2addr v7, v8

    shl-int/2addr v6, v3

    and-int/2addr v6, v2

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .line 157
    iput-byte v6, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    goto/16 :goto_14

    .line 153
    :pswitch_109
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextByte()B

    move-result v6

    iput-byte v6, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    goto/16 :goto_14

    .line 139
    :pswitch_111
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    shr-int/lit8 v7, v6, 0x10

    int-to-short v7, v7

    .line 140
    iput-short v7, p0, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    .line 141
    iput-byte v7, p0, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    int-to-byte v6, v6

    .line 142
    iput-byte v6, p0, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    goto/16 :goto_14

    .line 132
    :pswitch_124
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextByte()B

    move-result v6

    invoke-virtual {p5, p3, p4, v6}, Linfo/flowersoft/theotown/city/Tiles;->setGroundFrame2(III)V

    goto/16 :goto_14

    .line 125
    :pswitch_12d
    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/GroundDraft;

    iput-object v6, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    goto/16 :goto_14

    .line 112
    :pswitch_13d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-virtual {p5, p3, p4, v6}, Linfo/flowersoft/theotown/city/Tiles;->setGroundDraft2(IILinfo/flowersoft/theotown/draft/GroundDraft;)V

    goto/16 :goto_14

    .line 109
    :pswitch_14c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/GroundDraft;

    iput-object v6, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    goto/16 :goto_14

    .line 115
    :pswitch_15a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    if-gez v6, :cond_17f

    .line 117
    sget-object v7, Linfo/flowersoft/theotown/resources/Drafts;->WATER_TILES:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    neg-int v6, v6

    sub-int/2addr v6, v3

    if-le v7, v6, :cond_14

    .line 118
    sget-object v7, Linfo/flowersoft/theotown/resources/Drafts;->WATER_TILES:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/GroundDraft;

    iput-object v6, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    goto/16 :goto_14

    .line 120
    :cond_17f
    sget-object v7, Linfo/flowersoft/theotown/resources/Drafts;->LAND_TILES:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v6, :cond_14

    .line 121
    sget-object v7, Linfo/flowersoft/theotown/resources/Drafts;->LAND_TILES:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/GroundDraft;

    iput-object v6, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    goto/16 :goto_14

    .line 129
    :pswitch_19c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextByte()B

    move-result v6

    iput-byte v6, p0, Linfo/flowersoft/theotown/city/objects/Ground;->frame:B

    goto/16 :goto_14

    .line 150
    :pswitch_1a4
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextByte()B

    move-result v6

    iput-byte v6, p0, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    goto/16 :goto_14

    .line 146
    :pswitch_1ac
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextByte()B

    move-result v6

    iput-byte v6, p0, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    goto/16 :goto_14

    .line 136
    :pswitch_1b4
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextShort()S

    move-result v6

    iput-short v6, p0, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    goto/16 :goto_14

    .line 165
    :cond_1bc
    iget-byte p1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->frame:B

    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length p2, p2

    sub-int/2addr p2, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->frame:B

    return-void

    :sswitch_data_1d0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_e4
        -0x34a71405 -> :sswitch_d8
        -0x34a71404 -> :sswitch_cc
        0x66 -> :sswitch_c0
        0x68 -> :sswitch_b4
        0x69 -> :sswitch_a8
        0x6a -> :sswitch_9d
        0xc94 -> :sswitch_92
        0xc95 -> :sswitch_86
        0xd08 -> :sswitch_79
        0xd1b -> :sswitch_6c
        0x1852e -> :sswitch_5f
        0x19569 -> :sswitch_52
        0x1bfba -> :sswitch_45
        0x1c07f -> :sswitch_38
        0x5d2a96d -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_212
    .packed-switch 0x0
        :pswitch_1b4
        :pswitch_1ac
        :pswitch_1a4
        :pswitch_19c
        :pswitch_1b4
        :pswitch_15a
        :pswitch_14c
        :pswitch_1ac
        :pswitch_1a4
        :pswitch_13d
        :pswitch_12d
        :pswitch_124
        :pswitch_111
        :pswitch_109
        :pswitch_f7
        :pswitch_19c
    .end packed-switch
.end method

.method public static drawFrameOnCustomSlope(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;III)V
    .registers 16

    neg-int p2, p2

    mul-int/lit8 v2, p2, 0xc

    .line 490
    invoke-static {p1, p4}, Linfo/flowersoft/theotown/city/objects/Ground;->selectUVs(Lio/blueflower/stapel2d/drawing/Image;I)[F

    move-result-object v4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v10}, Linfo/flowersoft/theotown/city/objects/Ground;->drawRawSlope(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;II[FIZZZII)V

    return-void
.end method

.method public static drawRawSlope(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;II[FIZZZII)V
    .registers 39

    move-object/from16 v0, p0

    .line 505
    iget v1, v0, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    move/from16 v2, p3

    invoke-static {v2, v1}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    and-int/2addr v3, v4

    shr-int/lit8 v5, v1, 0x2

    and-int/2addr v5, v4

    const/16 v16, 0x3

    shr-int/lit8 v1, v1, 0x3

    and-int/2addr v1, v4

    add-int/lit8 v6, p2, -0x8

    mul-int/lit8 v7, v1, 0xc

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-int/lit8 v7, v2, 0xc

    sub-int v7, p2, v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    add-int/lit8 v9, p2, 0x8

    mul-int/lit8 v10, v3, 0xc

    sub-int/2addr v9, v10

    add-int/2addr v9, v4

    int-to-float v9, v9

    mul-int/lit8 v10, v5, 0xc

    sub-int v10, p2, v10

    int-to-float v10, v10

    add-float v17, v10, v8

    const/16 v18, 0x7

    const/16 v19, 0x6

    const/16 v20, 0x5

    const/16 v21, 0x4

    const/4 v8, 0x0

    const/16 v22, 0x2

    const/high16 v10, 0x41800000    # 16.0f

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v23, 0x42040000    # 33.0f

    if-ne v1, v3, :cond_4c

    if-ne v2, v1, :cond_5d

    if-eq v5, v1, :cond_4c

    goto :goto_5d

    :cond_4c
    move/from16 p2, v4

    move v15, v5

    move v4, v6

    move v6, v7

    move/from16 v26, v8

    move v7, v10

    move v5, v11

    move/from16 v8, v17

    move/from16 v17, v9

    move/from16 v9, v23

    goto/16 :goto_ee

    :cond_5d
    :goto_5d
    const/16 v24, -0x15e

    if-eqz p6, :cond_7a

    if-ge v2, v1, :cond_67

    .line 532
    invoke-static {v0, v8}, Linfo/flowersoft/theotown/city/objects/Ground;->setLight(Linfo/flowersoft/theotown/city/Drawer;I)V

    goto :goto_7a

    :cond_67
    if-le v2, v1, :cond_73

    const/16 v3, -0x2ee

    .line 534
    div-int v3, v3, p9

    add-int v3, v3, p10

    invoke-static {v0, v3}, Linfo/flowersoft/theotown/city/objects/Ground;->setLight(Linfo/flowersoft/theotown/city/Drawer;I)V

    goto :goto_7a

    .line 536
    :cond_73
    div-int v3, v24, p9

    add-int v3, v3, p10

    invoke-static {v0, v3}, Linfo/flowersoft/theotown/city/objects/Ground;->setLight(Linfo/flowersoft/theotown/city/Drawer;I)V

    :cond_7a
    :goto_7a
    if-nez p8, :cond_7e

    if-eq v1, v2, :cond_81

    :cond_7e
    move v2, v8

    move v8, v9

    goto :goto_8a

    :cond_81
    move/from16 v25, v1

    move/from16 p2, v4

    move v15, v5

    move v4, v6

    move v6, v9

    move v3, v10

    goto :goto_b0

    .line 540
    :goto_8a
    aget v9, p4, v2

    move v3, v10

    aget v10, p4, v4

    move v12, v5

    move v5, v11

    aget v11, p4, v22

    move v13, v12

    aget v12, p4, v16

    move v14, v13

    aget v13, p4, v21

    move/from16 v16, v14

    aget v14, p4, v20

    move/from16 v22, v4

    move v4, v6

    move v6, v7

    move v7, v3

    move/from16 v2, p5

    move/from16 v25, v1

    move/from16 v15, v16

    move/from16 p2, v22

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v14}, Linfo/flowersoft/theotown/city/Drawer;->drawTriangle(Lio/blueflower/stapel2d/drawing/Image;IFFFFFFFFFFFF)V

    move v6, v8

    :goto_b0
    move/from16 v1, v25

    if-eqz p6, :cond_d0

    if-le v15, v1, :cond_bb

    const/4 v5, 0x0

    .line 550
    invoke-static {v0, v5}, Linfo/flowersoft/theotown/city/objects/Ground;->setLight(Linfo/flowersoft/theotown/city/Drawer;I)V

    goto :goto_d1

    :cond_bb
    const/4 v5, 0x0

    if-ge v15, v1, :cond_c8

    const/16 v2, -0x2bc

    .line 552
    div-int v2, v2, p9

    add-int v2, v2, p10

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/city/objects/Ground;->setLight(Linfo/flowersoft/theotown/city/Drawer;I)V

    goto :goto_d1

    .line 554
    :cond_c8
    div-int v24, v24, p9

    add-int v2, v24, p10

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/city/objects/Ground;->setLight(Linfo/flowersoft/theotown/city/Drawer;I)V

    goto :goto_d1

    :cond_d0
    const/4 v5, 0x0

    :goto_d1
    if-nez p8, :cond_d5

    if-eq v15, v1, :cond_19b

    .line 558
    :cond_d5
    aget v9, p4, v5

    aget v10, p4, p2

    aget v11, p4, v21

    aget v12, p4, v20

    aget v13, p4, v19

    aget v14, p4, v18

    move v5, v3

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v8, v17

    move/from16 v7, v23

    invoke-virtual/range {v0 .. v14}, Linfo/flowersoft/theotown/city/Drawer;->drawTriangle(Lio/blueflower/stapel2d/drawing/Image;IFFFFFFFFFFFF)V

    return-void

    :goto_ee
    if-eqz p6, :cond_f9

    cmpl-float v10, v6, v8

    if-lez v10, :cond_fc

    move/from16 v10, p10

    .line 568
    invoke-static {v0, v10}, Linfo/flowersoft/theotown/city/objects/Ground;->setLight(Linfo/flowersoft/theotown/city/Drawer;I)V

    :cond_f9
    :goto_f9
    move/from16 v10, p2

    goto :goto_114

    :cond_fc
    move/from16 v10, p10

    cmpg-float v11, v6, v8

    if-gez v11, :cond_10b

    const/16 v11, -0x1f4

    .line 570
    div-int v11, v11, p9

    add-int/2addr v11, v10

    invoke-static {v0, v11}, Linfo/flowersoft/theotown/city/objects/Ground;->setLight(Linfo/flowersoft/theotown/city/Drawer;I)V

    goto :goto_f9

    :cond_10b
    const/16 v11, -0x64

    .line 572
    div-int v11, v11, p9

    add-int/2addr v11, v10

    invoke-static {v0, v11}, Linfo/flowersoft/theotown/city/objects/Ground;->setLight(Linfo/flowersoft/theotown/city/Drawer;I)V

    goto :goto_f9

    :goto_114
    if-ne v2, v10, :cond_118

    if-eq v1, v10, :cond_11c

    :cond_118
    if-ne v3, v10, :cond_15b

    if-ne v15, v10, :cond_15b

    :cond_11c
    if-eqz p7, :cond_15b

    if-nez p8, :cond_122

    if-eq v15, v1, :cond_125

    :cond_122
    move v3, v7

    move v7, v9

    goto :goto_12a

    :cond_125
    move v3, v7

    move v7, v9

    const/16 v22, 0x1

    goto :goto_13f

    .line 577
    :goto_12a
    aget v9, p4, v22

    aget v10, p4, v16

    aget v11, p4, v21

    aget v12, p4, v20

    aget v13, p4, v26

    const/16 v22, 0x1

    aget v14, p4, v22

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-virtual/range {v0 .. v14}, Linfo/flowersoft/theotown/city/Drawer;->drawTriangle(Lio/blueflower/stapel2d/drawing/Image;IFFFFFFFFFFFF)V

    .line 583
    :goto_13f
    aget v9, p4, v21

    aget v10, p4, v20

    aget v11, p4, v19

    aget v12, p4, v18

    aget v13, p4, v26

    aget v14, p4, v22

    move v0, v5

    move v5, v3

    move v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move v4, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v14}, Linfo/flowersoft/theotown/city/Drawer;->drawTriangle(Lio/blueflower/stapel2d/drawing/Image;IFFFFFFFFFFFF)V

    return-void

    :cond_15b
    move v0, v5

    move v5, v7

    move v7, v9

    if-nez p8, :cond_164

    if-ne v1, v2, :cond_164

    if-eq v1, v15, :cond_166

    :cond_164
    const/4 v10, 0x1

    goto :goto_16e

    :cond_166
    move/from16 v27, v3

    move v3, v5

    move/from16 v23, v15

    move v5, v0

    move v15, v2

    goto :goto_190

    :goto_16e
    if-eq v1, v10, :cond_174

    if-eqz v2, :cond_174

    if-nez v15, :cond_166

    .line 590
    :cond_174
    aget v9, p4, v26

    aget v10, p4, v10

    aget v11, p4, v22

    aget v12, p4, v16

    aget v13, p4, v19

    aget v14, p4, v18

    move-object/from16 v1, p1

    move/from16 v27, v3

    move v3, v5

    move/from16 v23, v15

    move v5, v0

    move v15, v2

    move-object/from16 v0, p0

    move/from16 v2, p5

    invoke-virtual/range {v0 .. v14}, Linfo/flowersoft/theotown/city/Drawer;->drawTriangle(Lio/blueflower/stapel2d/drawing/Image;IFFFFFFFFFFFF)V

    :goto_190
    if-nez p8, :cond_19c

    move/from16 v0, v27

    if-ne v0, v15, :cond_19c

    move/from16 v12, v23

    if-eq v0, v12, :cond_19b

    goto :goto_19c

    :cond_19b
    return-void

    .line 597
    :cond_19c
    :goto_19c
    aget v9, p4, v22

    aget v10, p4, v16

    aget v11, p4, v21

    aget v12, p4, v20

    aget v13, p4, v19

    aget v14, p4, v18

    move v0, v5

    move v5, v3

    move v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move v4, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v14}, Linfo/flowersoft/theotown/city/Drawer;->drawTriangle(Lio/blueflower/stapel2d/drawing/Image;IFFFFFFFFFFFF)V

    return-void
.end method

.method public static resetDefaultWater()V
    .registers 1

    const/4 v0, 0x0

    .line 33
    sput-object v0, Linfo/flowersoft/theotown/city/objects/Ground;->DEFAULT_WATER_DRAFT:Linfo/flowersoft/theotown/draft/GroundDraft;

    return-void
.end method

.method public static resolveDefaultWater()V
    .registers 2

    .line 30
    const-string v0, "$water00"

    const-class v1, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/GroundDraft;

    sput-object v0, Linfo/flowersoft/theotown/city/objects/Ground;->DEFAULT_WATER_DRAFT:Linfo/flowersoft/theotown/draft/GroundDraft;

    return-void
.end method

.method public static selectUVs(Lio/blueflower/stapel2d/drawing/Image;I)[F
    .registers 2

    .line 494
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result p0

    const/high16 p1, 0x41a00000    # 20.0f

    cmpl-float p0, p0, p1

    if-nez p0, :cond_d

    .line 495
    sget-object p0, Linfo/flowersoft/theotown/city/objects/Ground;->TILE_UVS_INNER_HANDLE:[F

    return-object p0

    .line 497
    :cond_d
    sget-object p0, Linfo/flowersoft/theotown/city/objects/Ground;->TILE_UVS_INNER:[F

    return-object p0
.end method

.method public static setLight(Linfo/flowersoft/theotown/city/Drawer;I)V
    .registers 5

    .line 677
    iget-object p0, p0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 678
    sget-object v0, Linfo/flowersoft/theotown/city/objects/Ground;->COLOR_BUF:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v1, v2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    return-void
.end method


# virtual methods
.method public final addLight(Linfo/flowersoft/theotown/city/Drawer;I)V
    .registers 6

    .line 672
    iget-object p1, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 673
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getRed()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getGreen()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getBlue()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1, v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    return-void
.end method

.method public copyFrom(Linfo/flowersoft/theotown/city/objects/Ground;)V
    .registers 3

    .line 838
    iget-short v0, p1, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    iput-short v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    .line 839
    iget-byte v0, p1, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    iput-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    .line 840
    iget-byte v0, p1, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    iput-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    .line 841
    iget-byte v0, p1, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    iput-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    .line 842
    iget-byte p1, p1, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    iput-byte p1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    return-void
.end method

.method public draw(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;Linfo/flowersoft/theotown/draft/GroundDraft;I)V
    .registers 21

    move-object/from16 v8, p5

    .line 351
    iget-object v9, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 352
    sget-object v2, Linfo/flowersoft/theotown/city/objects/Ground;->COLOR_BUF:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9}, Lio/blueflower/stapel2d/drawing/Engine;->getRed()I

    move-result v3

    invoke-virtual {v9}, Lio/blueflower/stapel2d/drawing/Engine;->getGreen()I

    move-result v4

    invoke-virtual {v9}, Lio/blueflower/stapel2d/drawing/Engine;->getBlue()I

    move-result v5

    const/16 v10, 0xff

    invoke-virtual {v2, v3, v4, v5, v10}, Lio/blueflower/stapel2d/drawing/Color;->setTo(IIII)Lio/blueflower/stapel2d/drawing/Color;

    .line 353
    iget-boolean v11, p1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 355
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 356
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-virtual {p0, p1, v2}, Linfo/flowersoft/theotown/city/objects/Ground;->drawWater(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;)V

    goto :goto_7f

    .line 358
    :cond_25
    iget-byte v2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    neg-int v2, v2

    mul-int/lit8 v4, v2, 0xc

    .line 359
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget-byte v3, p0, Linfo/flowersoft/theotown/city/objects/Ground;->frame:B

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/city/objects/Ground;->drawGroundDraft(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;IILinfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;)V

    if-eqz v8, :cond_71

    .line 361
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result v0

    if-nez v0, :cond_71

    const/4 v0, 0x0

    move v12, v0

    .line 362
    :goto_42
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->getSize()I

    move-result v0

    if-ge v12, v0, :cond_6c

    .line 363
    invoke-virtual {v8, v12}, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->getGround(I)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    .line 364
    invoke-virtual {v8, v12}, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->getWeight(I)F

    move-result v2

    const v3, 0x3df5c28f    # 0.12f

    mul-float/2addr v2, v3

    .line 365
    iget-object v3, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 367
    iget-object v2, v0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget-byte v3, v0, Linfo/flowersoft/theotown/city/objects/Ground;->frame:B

    const/4 v7, 0x0

    move-object v5, v2

    move-object v6, v2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/city/objects/Ground;->drawGroundDraft(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;IILinfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_42

    .line 371
    :cond_6c
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :cond_71
    if-eqz p6, :cond_7f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p6

    move/from16 v3, p7

    .line 374
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/city/objects/Ground;->drawGroundDraft(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;IILinfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;)V

    .line 377
    :cond_7f
    :goto_7f
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 378
    iput-boolean v11, p1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    return-void
.end method

.method public drawEdge(Linfo/flowersoft/theotown/city/Drawer;I)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v12, p2

    .line 683
    iget-byte v2, v0, Linfo/flowersoft/theotown/city/objects/Ground;->borderFrame:B

    iget v3, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v13

    .line 684
    iget-byte v2, v0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    iget v3, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v14

    .line 686
    iget-object v2, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v15, 0x6

    invoke-virtual {v2, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    const/16 v2, 0x8

    .line 688
    invoke-static {v2, v12}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/16 v11, 0xc

    if-eqz v3, :cond_da

    and-int/lit8 v3, v14, 0x1

    .line 689
    iget-byte v6, v0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    add-int/2addr v3, v6

    shr-int/lit8 v7, v14, 0x1

    and-int/2addr v7, v5

    add-int/2addr v7, v6

    neg-int v6, v3

    mul-int/lit8 v16, v6, 0xc

    sub-int/2addr v7, v3

    mul-int/lit8 v7, v7, 0xc

    rsub-int/lit8 v7, v7, 0x8

    .line 696
    iget-object v2, v0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->edgeFrames:[I

    iget-byte v6, v0, Linfo/flowersoft/theotown/city/objects/Ground;->frame:B

    array-length v8, v2

    div-int/lit8 v8, v8, 0x2

    rem-int/2addr v6, v8

    mul-int/lit8 v6, v6, 0x2

    aget v9, v2, v6

    .line 698
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v2

    move v6, v3

    const/4 v3, 0x0

    move v8, v5

    const/16 v5, 0x10

    move v10, v8

    const/16 v8, 0x8

    if-eqz v2, :cond_93

    .line 699
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move/from16 v17, v4

    add-int/lit8 v4, v16, 0xb

    mul-int/lit8 v6, v6, 0xc

    add-int/lit8 v6, v6, 0xa

    move/from16 v18, v10

    sget-object v10, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_LEFT_UVS:[F

    move/from16 v15, v17

    invoke-virtual/range {v0 .. v11}, Linfo/flowersoft/theotown/city/objects/Ground;->drawObliqueFilled(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;IIIIIII[FI)V

    .line 704
    iget-object v0, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 705
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/16 v18, 0x1

    add-int/lit8 v4, v16, 0x1

    const/16 v6, 0xb

    sget-object v10, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_LEFT_WATER_TOP_UVS:[F

    move-object/from16 v0, p0

    move/from16 v15, v18

    invoke-virtual/range {v0 .. v10}, Linfo/flowersoft/theotown/city/objects/Ground;->drawOblique(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;IIIIIII[F)V

    .line 710
    iget-object v0, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 711
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget-object v10, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_LEFT_BOTTOM_UVS:[F

    const/16 v4, 0x15

    move v7, v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Linfo/flowersoft/theotown/city/objects/Ground;->drawOblique(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;IIIIIII[F)V

    move-object/from16 v1, p1

    goto :goto_db

    :cond_93
    move v15, v10

    .line 717
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v4, v16, 0xb

    mul-int/lit8 v0, v6, 0xc

    add-int/lit8 v6, v0, 0xa

    sget-object v10, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_LEFT_UVS:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v11}, Linfo/flowersoft/theotown/city/objects/Ground;->drawObliqueFilled(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;IIIIIII[FI)V

    move/from16 v18, v8

    .line 722
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/16 v6, 0xb

    sget-object v10, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_LEFT_TOP_UVS:[F

    move v8, v7

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v10}, Linfo/flowersoft/theotown/city/objects/Ground;->drawOblique(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;IIIIIII[F)V

    .line 727
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget-object v10, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_LEFT_BOTTOM_UVS:[F

    move v0, v4

    const/16 v4, 0x15

    move/from16 v8, v18

    move v11, v0

    move/from16 v7, v18

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Linfo/flowersoft/theotown/city/objects/Ground;->drawOblique(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;IIIIIII[F)V

    .line 733
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result v2

    if-eqz v2, :cond_db

    .line 734
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, v3

    int-to-float v4, v11

    iget-object v5, v0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/GroundDraft;->edgeBorderFrames:[I

    mul-int/lit8 v6, v13, 0x2

    aget v5, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_db

    :cond_da
    move v15, v5

    .line 739
    :cond_db
    :goto_db
    invoke-static {v15, v12}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v2

    if-eqz v2, :cond_18e

    shr-int/lit8 v2, v14, 0x1

    and-int/2addr v2, v15

    .line 740
    iget-byte v3, v0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    add-int/2addr v2, v3

    shr-int/lit8 v4, v14, 0x2

    and-int/2addr v4, v15

    add-int v12, v4, v3

    neg-int v3, v2

    mul-int/lit8 v14, v3, 0xc

    add-int/lit8 v18, v14, 0x8

    sub-int v3, v12, v2

    mul-int/lit8 v3, v3, 0xc

    rsub-int/lit8 v7, v3, -0x8

    .line 747
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/GroundDraft;->edgeFrames:[I

    iget-byte v4, v0, Linfo/flowersoft/theotown/city/objects/Ground;->frame:B

    array-length v5, v3

    div-int/lit8 v5, v5, 0x2

    rem-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v15

    aget v9, v3, v4

    .line 749
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v3

    move v4, v3

    const/16 v3, 0x10

    const/16 v5, 0x10

    const/4 v8, -0x8

    if-eqz v4, :cond_149

    move v4, v2

    .line 750
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move v6, v4

    add-int/lit8 v4, v14, 0x13

    mul-int/lit8 v6, v6, 0xc

    add-int/lit8 v6, v6, 0xa

    sget-object v10, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_RIGHT_UVS:[F

    const/16 v11, 0xc

    invoke-virtual/range {v0 .. v11}, Linfo/flowersoft/theotown/city/objects/Ground;->drawObliqueFilled(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;IIIIIII[FI)V

    .line 755
    iget-object v0, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v15, 0x4

    invoke-virtual {v0, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 756
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v4, v14, 0x9

    const/16 v6, 0xb

    sget-object v10, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_RIGHT_WATER_TOP_UVS:[F

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Linfo/flowersoft/theotown/city/objects/Ground;->drawOblique(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;IIIIIII[F)V

    .line 761
    iget-object v0, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 762
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget-object v10, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_RIGHT_BOTTOM_UVS:[F

    const/16 v4, 0x1d

    move v7, v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Linfo/flowersoft/theotown/city/objects/Ground;->drawOblique(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;IIIIIII[F)V

    return-void

    :cond_149
    move v6, v2

    const/16 v11, 0xc

    .line 768
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v4, v14, 0x13

    mul-int/lit8 v0, v6, 0xc

    add-int/lit8 v6, v0, 0xa

    sget-object v10, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_RIGHT_UVS:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v11}, Linfo/flowersoft/theotown/city/objects/Ground;->drawObliqueFilled(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;IIIIIII[FI)V

    move v11, v8

    .line 773
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/16 v6, 0xb

    sget-object v10, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_RIGHT_TOP_UVS:[F

    move v8, v7

    move/from16 v4, v18

    invoke-virtual/range {v0 .. v10}, Linfo/flowersoft/theotown/city/objects/Ground;->drawOblique(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;IIIIIII[F)V

    .line 778
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget-object v10, Linfo/flowersoft/theotown/city/objects/Ground;->EDGE_RIGHT_BOTTOM_UVS:[F

    const/16 v4, 0x1d

    move v8, v11

    move v7, v11

    invoke-virtual/range {v0 .. v10}, Linfo/flowersoft/theotown/city/objects/Ground;->drawOblique(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;IIIIIII[F)V

    .line 784
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result v2

    if-eqz v2, :cond_18e

    .line 785
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, v3

    neg-int v4, v12

    mul-int/lit8 v4, v4, 0xc

    int-to-float v4, v4

    iget-object v5, v0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/GroundDraft;->edgeBorderFrames:[I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v15

    aget v5, v5, v13

    invoke-virtual {v1, v2, v3, v4, v5}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_18e
    return-void
.end method

.method public drawFlat(Linfo/flowersoft/theotown/city/Drawer;I)V
    .registers 7

    .line 332
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 333
    sget-object v1, Linfo/flowersoft/theotown/city/objects/Ground;->COLOR_BUF:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 334
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/GroundDraft;->shading:Z

    if-eqz v1, :cond_27

    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->terrainShading:Z

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result v1

    if-nez v1, :cond_27

    .line 335
    iget-byte v1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    iget-byte v2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    add-int/2addr v1, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget v3, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->shadingFactor:I

    div-int/2addr v1, v3

    iget v2, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->shadingOffset:I

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Linfo/flowersoft/theotown/city/objects/Ground;->addLight(Linfo/flowersoft/theotown/city/Drawer;I)V

    :cond_27
    neg-int p2, p2

    mul-int/lit8 p2, p2, 0xc

    .line 338
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget-byte v2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->frame:B

    aget v1, v1, v2

    .line 339
    iget-object v2, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 340
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v3, 0x0

    int-to-float p2, p2

    invoke-virtual {p1, v2, v3, p2, v1}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 341
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public drawFrameOnSlope(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;I)V
    .registers 16

    .line 478
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 479
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0, p3}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void

    .line 481
    :cond_11
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    neg-int v0, v0

    mul-int/lit8 v3, v0, 0xc

    iget-byte v4, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    .line 484
    invoke-static {p2, p3}, Linfo/flowersoft/theotown/city/objects/Ground;->selectUVs(Lio/blueflower/stapel2d/drawing/Image;I)[F

    move-result-object v5

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    .line 481
    invoke-static/range {v1 .. v11}, Linfo/flowersoft/theotown/city/objects/Ground;->drawRawSlope(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;II[FIZZZII)V

    return-void
.end method

.method public final drawGroundDraft(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;IILinfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 383
    iget-object v10, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 385
    iget-boolean v3, v1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    iget-boolean v4, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->light:Z

    const/4 v11, 0x1

    xor-int/2addr v4, v11

    and-int/2addr v3, v4

    iput-boolean v3, v1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 386
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 388
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->borderFrames:[I

    if-eqz v3, :cond_3b

    if-eqz v9, :cond_28

    .line 389
    invoke-virtual {v0, v1, v9}, Linfo/flowersoft/theotown/city/objects/Ground;->drawWater(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;)V

    .line 390
    :cond_28
    sget-object v3, Linfo/flowersoft/theotown/city/objects/Ground;->COLOR_BUF:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v10, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 391
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->borderFrames:[I

    iget-byte v4, v0, Linfo/flowersoft/theotown/city/objects/Ground;->borderFrame:B

    iget v5, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v4

    aget v3, v3, v4

    :goto_39
    move v13, v3

    goto :goto_40

    .line 393
    :cond_3b
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v3, v3, p3

    goto :goto_39

    .line 396
    :goto_40
    iget-byte v3, v0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    if-eqz v3, :cond_4d

    .line 397
    iget v4, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->slopeShadingFactor:I

    iget v5, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->slopeShadingOffset:I

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/objects/Ground;->drawSlope(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;III)V

    .line 400
    :cond_4d
    sget-object v3, Linfo/flowersoft/theotown/city/objects/Ground;->COLOR_BUF:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v10, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 401
    iget-boolean v4, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->shading:Z

    if-eqz v4, :cond_70

    sget-boolean v4, Linfo/flowersoft/theotown/resources/Settings;->terrainShading:Z

    if-eqz v4, :cond_70

    if-nez v12, :cond_6b

    .line 403
    iget-byte v4, v0, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    iget-byte v5, v0, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    add-int/2addr v4, v5

    iget v5, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->shadingFactor:I

    div-int/2addr v4, v5

    iget v5, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->shadingOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v4}, Linfo/flowersoft/theotown/city/objects/Ground;->addLight(Linfo/flowersoft/theotown/city/Drawer;I)V

    goto :goto_70

    .line 405
    :cond_6b
    iget v4, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->shadingOffset:I

    invoke-virtual {v0, v1, v4}, Linfo/flowersoft/theotown/city/objects/Ground;->addLight(Linfo/flowersoft/theotown/city/Drawer;I)V

    .line 409
    :cond_70
    :goto_70
    iget-byte v4, v0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    const/4 v5, 0x0

    const/4 v14, 0x3

    if-nez v4, :cond_82

    .line 410
    iget-object v2, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 411
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, v6

    invoke-virtual {v1, v2, v5, v3, v13}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void

    .line 412
    :cond_82
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->hasLowPartialFlatPart()Z

    move-result v4

    const/4 v15, 0x0

    if-eqz v4, :cond_c4

    .line 413
    iget-byte v4, v0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    iget v8, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v4, v8}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v4

    .line 414
    invoke-virtual {v0, v1, v4, v6, v15}, Linfo/flowersoft/theotown/city/objects/Ground;->setClipRect(Linfo/flowersoft/theotown/city/Drawer;III)V

    if-eqz v7, :cond_b5

    if-eq v7, v2, :cond_b5

    if-eqz v12, :cond_b1

    .line 416
    iget-object v2, v7, Linfo/flowersoft/theotown/draft/GroundDraft;->borderFrames:[I

    if-eqz v2, :cond_b1

    .line 417
    invoke-virtual {v0, v1, v9}, Linfo/flowersoft/theotown/city/objects/Ground;->drawWater(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;)V

    .line 418
    invoke-virtual {v10, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 419
    iget-object v2, v7, Linfo/flowersoft/theotown/draft/GroundDraft;->borderFrames:[I

    iget-byte v3, v0, Linfo/flowersoft/theotown/city/objects/Ground;->borderFrame:B

    iget v4, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v3

    aget v13, v2, v3

    goto :goto_b5

    .line 421
    :cond_b1
    iget-object v2, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v13, v2, v15

    .line 424
    :cond_b5
    :goto_b5
    iget-object v2, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 425
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, v6

    invoke-virtual {v1, v2, v5, v3, v13}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 426
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/Drawer;->resetClipping()V

    return-void

    .line 427
    :cond_c4
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->hasHighPartialFlatPart()Z

    move-result v4

    if-eqz v4, :cond_109

    add-int/lit8 v4, v6, -0xc

    .line 429
    iget-byte v6, v0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    iget v7, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v6, v7}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v6

    not-int v6, v6

    and-int/lit8 v6, v6, 0xf

    .line 430
    invoke-virtual {v0, v1, v6, v4, v11}, Linfo/flowersoft/theotown/city/objects/Ground;->setClipRect(Linfo/flowersoft/theotown/city/Drawer;III)V

    if-eqz v8, :cond_fb

    if-eq v8, v2, :cond_fb

    if-eqz v12, :cond_f7

    .line 432
    iget-object v2, v8, Linfo/flowersoft/theotown/draft/GroundDraft;->borderFrames:[I

    if-eqz v2, :cond_f7

    .line 433
    invoke-virtual {v0, v1, v9}, Linfo/flowersoft/theotown/city/objects/Ground;->drawWater(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;)V

    .line 434
    invoke-virtual {v10, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 435
    iget-object v2, v8, Linfo/flowersoft/theotown/draft/GroundDraft;->borderFrames:[I

    iget-byte v3, v0, Linfo/flowersoft/theotown/city/objects/Ground;->borderFrame:B

    iget v6, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v3, v6}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v3

    aget v13, v2, v3

    goto :goto_fb

    .line 437
    :cond_f7
    iget-object v2, v8, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v13, v2, v15

    .line 440
    :cond_fb
    :goto_fb
    iget-object v2, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 441
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, v4

    invoke-virtual {v1, v2, v5, v3, v13}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 442
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/Drawer;->resetClipping()V

    :cond_109
    return-void
.end method

.method public final drawOblique(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;IIIIIII[F)V
    .registers 31

    move/from16 v0, p3

    move/from16 v1, p4

    int-to-float v3, v0

    int-to-float v4, v1

    add-int v15, v1, p6

    int-to-float v6, v15

    add-int v0, v0, p5

    int-to-float v5, v0

    add-int v0, v1, p7

    int-to-float v8, v0

    const/4 v0, 0x0

    .line 805
    aget v9, p10, v0

    const/4 v0, 0x1

    aget v10, p10, v0

    const/16 v16, 0x2

    aget v11, p10, v16

    const/16 v17, 0x3

    aget v12, p10, v17

    const/16 v18, 0x6

    aget v13, p10, v18

    const/16 v19, 0x7

    aget v14, p10, v19

    move v7, v5

    move v5, v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p9

    invoke-virtual/range {v0 .. v14}, Linfo/flowersoft/theotown/city/Drawer;->drawTriangle(Lio/blueflower/stapel2d/drawing/Image;IFFFFFFFFFFFF)V

    add-int v15, v15, p8

    int-to-float v0, v15

    .line 806
    aget v9, p10, v16

    aget v10, p10, v17

    const/4 v1, 0x4

    aget v11, p10, v1

    const/4 v1, 0x5

    aget v12, p10, v1

    aget v13, p10, v18

    aget v14, p10, v19

    move v5, v7

    move-object/from16 v1, p2

    move v4, v6

    move v6, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v14}, Linfo/flowersoft/theotown/city/Drawer;->drawTriangle(Lio/blueflower/stapel2d/drawing/Image;IFFFFFFFFFFFF)V

    return-void
.end method

.method public final drawObliqueFilled(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;IIIIIII[FI)V
    .registers 31

    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v1, p11

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 792
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v0, v2

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_49

    int-to-float v4, v3

    div-float v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    int-to-float v6, v3

    div-float v7, v6, v2

    mul-float/2addr v4, v0

    float-to-int v4, v4

    add-int v12, p4, v4

    mul-float/2addr v6, v0

    float-to-int v6, v6

    sub-int v14, v6, v4

    move/from16 v4, p8

    int-to-float v6, v4

    mul-float v8, v5, v6

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v5, v9, v5

    move/from16 v10, p7

    int-to-float v11, v10

    mul-float/2addr v5, v11

    add-float/2addr v8, v5

    float-to-int v15, v8

    mul-float/2addr v6, v7

    sub-float/2addr v9, v7

    mul-float/2addr v9, v11

    add-float/2addr v6, v9

    float-to-int v5, v6

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v13, p5

    move/from16 v17, p9

    move-object/from16 v18, p10

    move/from16 v16, v5

    .line 797
    invoke-virtual/range {v8 .. v18}, Linfo/flowersoft/theotown/city/objects/Ground;->drawOblique(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;IIIIIII[F)V

    goto :goto_f

    :cond_49
    return-void
.end method

.method public final drawSlope(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;III)V
    .registers 17

    .line 465
    iget-object v2, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 466
    iget-byte v2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0xc

    .line 467
    iget-object v3, p2, Linfo/flowersoft/theotown/draft/GroundDraft;->texture:[I

    if-eqz v3, :cond_25

    .line 468
    array-length v0, v3

    rem-int v0, p3, v0

    aget v5, v3, v0

    .line 469
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-byte v3, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    sget-object v4, Linfo/flowersoft/theotown/city/objects/Ground;->RECT_UVS:[F

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move v9, p4

    move/from16 v10, p5

    invoke-static/range {v0 .. v10}, Linfo/flowersoft/theotown/city/objects/Ground;->drawRawSlope(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;II[FIZZZII)V

    return-void

    .line 471
    :cond_25
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 472
    iget-object v0, p2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v5, v0, p3

    .line 473
    iget-byte v3, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    invoke-static {v1, v5}, Linfo/flowersoft/theotown/city/objects/Ground;->selectUVs(Lio/blueflower/stapel2d/drawing/Image;I)[F

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move v9, p4

    move/from16 v10, p5

    invoke-static/range {v0 .. v10}, Linfo/flowersoft/theotown/city/objects/Ground;->drawRawSlope(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;II[FIZZZII)V

    return-void
.end method

.method public drawWater(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;)V
    .registers 22

    move-object/from16 v0, p1

    if-nez p2, :cond_7

    .line 609
    sget-object v1, Linfo/flowersoft/theotown/city/objects/Ground;->DEFAULT_WATER_DRAFT:Linfo/flowersoft/theotown/draft/GroundDraft;

    goto :goto_9

    :cond_7
    move-object/from16 v1, p2

    .line 612
    :goto_9
    iget-boolean v2, v0, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 613
    iget-object v3, v0, Linfo/flowersoft/theotown/city/Drawer;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/LODController;->drawFancyWater()Z

    move-result v3

    .line 615
    iget-boolean v4, v1, Linfo/flowersoft/theotown/draft/GroundDraft;->light:Z

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v0, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 616
    iget-object v4, v0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v5, 0x4

    .line 617
    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 618
    iget v6, v0, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    neg-int v6, v6

    mul-int/lit8 v6, v6, 0xc

    move-object/from16 v7, p0

    .line 620
    iget-short v8, v7, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x50

    const/16 v10, 0xff

    if-gez v8, :cond_74

    const/16 v11, -0x1f4

    .line 623
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    neg-int v11, v8

    .line 624
    div-int/lit8 v11, v11, 0x5

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    rsub-int v12, v11, 0xff

    .line 626
    iget-object v13, v1, Linfo/flowersoft/theotown/draft/GroundDraft;->darkWaterColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 627
    invoke-virtual {v13}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v13

    mul-int/2addr v13, v11

    sget-object v14, Linfo/flowersoft/theotown/city/objects/Ground;->COLOR_BUF:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v14}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v15

    mul-int/2addr v15, v12

    add-int/2addr v13, v15

    div-int/2addr v13, v10

    iget-object v15, v1, Linfo/flowersoft/theotown/draft/GroundDraft;->darkWaterColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 628
    invoke-virtual {v15}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v15

    mul-int/2addr v15, v11

    invoke-virtual {v14}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v16

    mul-int v16, v16, v12

    add-int v15, v15, v16

    div-int/2addr v15, v10

    move/from16 p2, v5

    iget-object v5, v1, Linfo/flowersoft/theotown/draft/GroundDraft;->darkWaterColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 629
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v5

    mul-int/2addr v11, v5

    invoke-virtual {v14}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v5

    mul-int/2addr v12, v5

    add-int/2addr v11, v12

    div-int/2addr v11, v10

    .line 626
    invoke-virtual {v4, v13, v15, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    goto :goto_76

    :cond_74
    move/from16 p2, v5

    .line 632
    :goto_76
    iget v5, v1, Linfo/flowersoft/theotown/draft/GroundDraft;->waterAnimMS:I

    .line 633
    iget v11, v1, Linfo/flowersoft/theotown/draft/GroundDraft;->waterSparkleAnimMS:I

    .line 635
    iget-object v12, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v12, v12

    .line 636
    iget v13, v0, Linfo/flowersoft/theotown/city/Drawer;->tileX:I

    iget v14, v0, Linfo/flowersoft/theotown/city/Drawer;->tileY:I

    invoke-static {v13, v14}, Linfo/flowersoft/theotown/util/Hashing;->hash(II)I

    move-result v13

    .line 637
    iget v14, v0, Linfo/flowersoft/theotown/city/Drawer;->time:I

    add-int/2addr v14, v13

    mul-int v15, v5, v12

    rem-int/2addr v14, v15

    int-to-float v14, v14

    int-to-float v5, v5

    div-float/2addr v14, v5

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 638
    rem-int v14, v13, v12

    float-to-int v15, v5

    add-int/2addr v14, v15

    .line 639
    sget-object v15, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v9, v6

    iget-object v10, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    rem-int v17, v14, v12

    aget v10, v10, v17

    move/from16 v17, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v15, v3, v9, v10}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    const/high16 v15, 0x437f0000    # 255.0f

    const/high16 v18, 0x3f800000    # 1.0f

    if-eqz v17, :cond_c0

    .line 642
    iget-object v10, v0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    rem-float v5, v5, v18

    mul-float/2addr v5, v15

    float-to-int v5, v5

    invoke-virtual {v10, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 643
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v10, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    add-int/lit8 v14, v14, 0x1

    rem-int/2addr v14, v12

    aget v10, v10, v14

    invoke-virtual {v0, v5, v3, v9, v10}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 646
    :cond_c0
    iget-object v5, v1, Linfo/flowersoft/theotown/draft/GroundDraft;->sparkleFrames:[I

    if-eqz v5, :cond_104

    sget-boolean v10, Linfo/flowersoft/theotown/resources/Settings;->drawWaterSparkle:Z

    if-eqz v10, :cond_104

    if-eqz v17, :cond_104

    .line 647
    array-length v5, v5

    .line 648
    iget v10, v0, Linfo/flowersoft/theotown/city/Drawer;->time:I

    add-int/2addr v10, v13

    mul-int v12, v11, v5

    rem-int/2addr v10, v12

    int-to-float v10, v10

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 649
    rem-int/2addr v13, v5

    float-to-int v11, v10

    add-int/2addr v13, v11

    .line 650
    iget-object v11, v0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    rem-float v10, v10, v18

    sub-float v12, v18, v10

    mul-float/2addr v12, v15

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 651
    sget-object v11, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v12, v1, Linfo/flowersoft/theotown/draft/GroundDraft;->sparkleFrames:[I

    rem-int v14, v13, v5

    aget v12, v12, v14

    invoke-virtual {v0, v11, v3, v9, v12}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 652
    iget-object v11, v0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    mul-float/2addr v10, v15

    float-to-int v10, v10

    invoke-virtual {v11, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 653
    sget-object v10, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v11, v1, Linfo/flowersoft/theotown/draft/GroundDraft;->sparkleFrames:[I

    add-int/lit8 v13, v13, 0x1

    rem-int/2addr v13, v5

    aget v5, v11, v13

    invoke-virtual {v0, v10, v3, v9, v5}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 656
    :cond_104
    iget-object v5, v0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v9, 0xff

    invoke-virtual {v5, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    if-lez v8, :cond_12d

    if-eqz v17, :cond_12d

    .line 659
    iget-object v1, v1, Linfo/flowersoft/theotown/draft/GroundDraft;->lightWaterColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 660
    div-int/lit8 v8, v8, 0x7

    invoke-virtual {v4, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 661
    invoke-virtual {v4, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 662
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v6, v6, 0x4

    int-to-float v5, v6

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_WHITE_TILE:I

    invoke-virtual {v0, v1, v3, v5, v6}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 663
    invoke-virtual {v4, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/4 v1, 0x0

    .line 664
    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 667
    :cond_12d
    sget-object v1, Linfo/flowersoft/theotown/city/objects/Ground;->COLOR_BUF:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 668
    iput-boolean v2, v0, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    return-void
.end method

.method public getBaseTerrainHeight()I
    .registers 2

    .line 235
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    return v0
.end method

.method public getBorderFrame()B
    .registers 2

    .line 822
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->borderFrame:B

    return v0
.end method

.method public getCeilingTerrainheight()I
    .registers 2

    .line 239
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    if-nez v0, :cond_7

    .line 240
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    return v0

    .line 242
    :cond_7
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getDerivativeSq()F
    .registers 3

    .line 328
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    mul-int/2addr v0, v0

    iget-byte v1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3951b717    # 2.0E-4f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;
    .registers 2

    .line 180
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    return-object v0
.end method

.method public getFrame()I
    .registers 2

    .line 830
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->frame:B

    return v0
.end method

.method public getPotentialUpDirs()I
    .registers 6

    .line 301
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    and-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v0, 0x1

    and-int/lit8 v2, v2, 0x1

    shr-int/lit8 v3, v0, 0x2

    and-int/lit8 v3, v3, 0x1

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x1

    or-int v4, v2, v3

    or-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v4

    or-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v3

    or-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public getTerrainAverageHeight()F
    .registers 5

    .line 227
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    if-nez v0, :cond_8

    .line 228
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    int-to-float v0, v0

    return v0

    .line 230
    :cond_8
    iget-byte v1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    int-to-float v1, v1

    and-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v0, 0x1

    and-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    shr-int/lit8 v3, v0, 0x2

    and-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public getTerrainHeight(I)B
    .registers 4

    .line 219
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    iget-byte v1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    add-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, 0x3

    shr-int p1, v1, p1

    and-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    int-to-byte p1, v0

    return p1
.end method

.method public getTerrainHeight(II)B
    .registers 6

    .line 223
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    iget-byte v1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    mul-int/lit8 v2, p2, 0x3

    add-int/2addr v2, p1

    mul-int/lit8 p1, p1, 0x2

    mul-int/2addr p1, p2

    sub-int/2addr v2, p1

    shr-int p1, v1, v2

    and-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    int-to-byte p1, v0

    return p1
.end method

.method public getTerrainHeights()B
    .registers 2

    .line 251
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    return v0
.end method

.method public getUpDirs()I
    .registers 7

    .line 286
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    and-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v0, 0x1

    and-int/lit8 v2, v2, 0x1

    shr-int/lit8 v3, v0, 0x2

    and-int/lit8 v3, v3, 0x1

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x1

    mul-int v4, v2, v3

    mul-int/lit8 v5, v0, 0x2

    mul-int/2addr v5, v3

    or-int v3, v4, v5

    mul-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, v1

    or-int/2addr v0, v3

    mul-int/lit8 v2, v2, 0x8

    mul-int/2addr v2, v1

    or-int/2addr v0, v2

    return v0
.end method

.method public hasHighPartialFlatPart()Z
    .registers 4

    .line 324
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const v2, 0x977f

    and-int/2addr v0, v2

    if-nez v0, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public hasLowPartialFlatPart()Z
    .registers 4

    .line 320
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const v2, 0xfee9

    and-int/2addr v0, v2

    if-nez v0, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isBorder()Z
    .registers 2

    .line 818
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->borderFrame:B

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isFlat()Z
    .registers 2

    .line 247
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isRift()Z
    .registers 3

    .line 316
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    :goto_c
    const/4 v0, 0x1

    return v0
.end method

.method public isWater()Z
    .registers 2

    .line 826
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    return v0
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;IILinfo/flowersoft/theotown/city/Tiles;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->index:I

    if-lez v0, :cond_13

    .line 185
    const-string v0, "j"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/GroundDraft;->index:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 188
    :cond_13
    invoke-virtual {p4, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getGroundDraft2(II)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 190
    const-string v1, "j2"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    iget v0, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->index:I

    invoke-interface {v1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 193
    :cond_24
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->frame:B

    if-eqz v0, :cond_33

    .line 194
    const-string v0, "f"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-byte v1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->frame:B

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(B)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 197
    :cond_33
    invoke-virtual {p4, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getGroundFrame2(II)I

    move-result p2

    if-eqz p2, :cond_42

    .line 199
    const-string p3, "f2"

    invoke-interface {p1, p3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p3

    invoke-interface {p3, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 208
    :cond_42
    iget-byte p2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    if-eqz p2, :cond_51

    .line 209
    const-string p2, "tbh"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget-byte p3, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    invoke-interface {p2, p3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(B)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 211
    :cond_51
    iget-byte p2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    if-eqz p2, :cond_6b

    and-int/lit8 p3, p2, 0x3

    shr-int/lit8 p4, p2, 0x1

    and-int/lit8 p4, p4, 0x4

    or-int/2addr p3, p4

    shl-int/lit8 p2, p2, 0x1

    and-int/lit8 p2, p2, 0x8

    or-int/2addr p2, p3

    .line 214
    const-string p3, "ths"

    invoke-interface {p1, p3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    int-to-byte p2, p2

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(B)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_6b
    return-void
.end method

.method public setBorder(I)V
    .registers 2

    if-ltz p1, :cond_6

    int-to-byte p1, p1

    .line 811
    iput-byte p1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->borderFrame:B

    return-void

    :cond_6
    const/4 p1, -0x1

    .line 813
    iput-byte p1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->borderFrame:B

    return-void
.end method

.method public final setClipRect(Linfo/flowersoft/theotown/city/Drawer;III)V
    .registers 13

    const/16 v0, 0x40

    const/16 v1, 0x12

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-eq p2, v2, :cond_29

    const/16 v4, 0x22

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-eq p2, v5, :cond_23

    const/4 v7, 0x4

    if-eq p2, v7, :cond_1e

    const/16 v0, 0x8

    if-eq p2, v0, :cond_17

    return-void

    :cond_17
    sub-int/2addr p3, v2

    mul-int/2addr p4, v5

    add-int/2addr p3, p4

    .line 458
    invoke-virtual {p1, v6, p3, v4, v3}, Linfo/flowersoft/theotown/city/Drawer;->setClipRect(IIII)V

    return-void

    :cond_1e
    sub-int/2addr p3, v3

    .line 455
    invoke-virtual {p1, v6, p3, v1, v0}, Linfo/flowersoft/theotown/city/Drawer;->setClipRect(IIII)V

    return-void

    :cond_23
    sub-int/2addr p3, v3

    add-int/2addr p4, v3

    .line 452
    invoke-virtual {p1, v6, p3, v4, p4}, Linfo/flowersoft/theotown/city/Drawer;->setClipRect(IIII)V

    return-void

    :cond_29
    const/16 p2, 0xf

    sub-int/2addr p3, v3

    .line 449
    invoke-virtual {p1, p2, p3, v1, v0}, Linfo/flowersoft/theotown/city/Drawer;->setClipRect(IIII)V

    return-void
.end method

.method public setDraft(Linfo/flowersoft/theotown/draft/GroundDraft;)V
    .registers 3

    .line 174
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 176
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->frame:B

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->frame:B

    return-void
.end method

.method public setFrame(I)V
    .registers 2

    int-to-byte p1, p1

    .line 834
    iput-byte p1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->frame:B

    return-void
.end method

.method public setTerrainHeight(B)V
    .registers 2

    .line 281
    iput-byte p1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    const/4 p1, 0x0

    .line 282
    iput-byte p1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    return-void
.end method

.method public setTerrainHeight(IIB)Z
    .registers 8

    mul-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p1

    mul-int/lit8 p1, p1, 0x2

    mul-int/2addr p1, p2

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    shl-int p2, p1, v0

    .line 260
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    .line 261
    iget-byte v1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    const/16 v2, 0xf

    if-ge p3, v0, :cond_1a

    not-int p2, p2

    and-int/2addr p2, v2

    int-to-byte p2, p2

    .line 263
    iput-byte p2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    .line 264
    iput-byte p3, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    goto :goto_36

    :cond_1a
    add-int/lit8 v3, v0, 0x1

    if-le p3, v3, :cond_26

    int-to-byte p2, p2

    .line 266
    iput-byte p2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    sub-int/2addr p3, p1

    int-to-byte p2, p3

    .line 267
    iput-byte p2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    goto :goto_36

    :cond_26
    if-ne p3, v0, :cond_2e

    not-int p2, p2

    and-int/2addr p2, v1

    int-to-byte p2, p2

    .line 269
    iput-byte p2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    goto :goto_36

    :cond_2e
    add-int/lit8 v3, v0, 0x1

    if-ne p3, v3, :cond_36

    or-int/2addr p2, v1

    int-to-byte p2, p2

    .line 271
    iput-byte p2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    .line 273
    :cond_36
    :goto_36
    iget-byte p2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    const/4 p3, 0x0

    if-ne p2, v2, :cond_43

    .line 274
    iget-byte p2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    add-int/2addr p2, p1

    int-to-byte p2, p2

    iput-byte p2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    .line 275
    iput-byte p3, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    .line 277
    :cond_43
    iget-byte p2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->baseTerrainHeight:B

    if-ne v0, p2, :cond_4d

    iget-byte p2, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    if-eq v1, p2, :cond_4c

    goto :goto_4d

    :cond_4c
    return p3

    :cond_4d
    :goto_4d
    return p1
.end method

.method public setTerrainHeights(B)V
    .registers 2

    .line 255
    iput-byte p1, p0, Linfo/flowersoft/theotown/city/objects/Ground;->terrainHeights:B

    return-void
.end method
