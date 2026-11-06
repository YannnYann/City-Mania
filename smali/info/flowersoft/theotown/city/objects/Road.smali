###### Class info.flowersoft.theotown.city.objects.Road (info.flowersoft.theotown.city.objects.Road)
.class public final Linfo/flowersoft/theotown/city/objects/Road;
.super Ljava/lang/Object;
.source "Road.java"


# static fields
.field public static connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;


# instance fields
.field public CarArray:[Linfo/flowersoft/theotown/city/objects/Car;

.field public absLevel:I

.field public animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

.field public animationSpotsFG:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

.field public bridgeType:I

.field public busStop:Linfo/flowersoft/theotown/city/objects/BusStop;

.field public carCounter:I

.field public chargeableCarCounter:I

.field public connectionDir:I

.field public dLevel:I

.field public decorations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/RoadDecorationDraft;",
            ">;"
        }
    .end annotation
.end field

.field public dirs:[I

.field public draft:Linfo/flowersoft/theotown/draft/RoadDraft;

.field public flags:J

.field public frame:I

.field public lastAppliedTrafficAmount:I

.field public lastTrafficLightsChange:I

.field public level:I

.field public luaStorage:Lvm2/LuaTable;

.field public luaStorageProxy:Lvm2/LuaTable;

.field public occupation:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public pedestrianCount:S

.field public pedestrianFlags:S

.field public pedestrians:[Linfo/flowersoft/theotown/city/objects/Pedestrian;

.field public pile:Z

.field public sidewalkOffset:F

.field public sidewalkSize:F

.field public slope:Z

.field public snow:B

.field public final tileHash:I

.field public trafficAmount:F

.field public trafficAmountLevel1:F

.field public trafficAmountLevel2:F

.field public trafficAmountLevel3:F

.field public trafficLightFrame:I

.field public trafficLights:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/RoadDraft;IIIII)V
    .registers 8

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 101
    new-array v0, v0, [Linfo/flowersoft/theotown/city/objects/Car;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->CarArray:[Linfo/flowersoft/theotown/city/objects/Car;

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    .line 119
    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpotsFG:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    .line 303
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 304
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    .line 305
    iput p3, p0, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    .line 306
    iput p4, p0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    .line 307
    iput p5, p0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    .line 308
    iput p6, p0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    const/4 p1, 0x0

    .line 309
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLights:Z

    .line 310
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->updateFlagsAndDirs()V

    .line 311
    invoke-static {p2, p3}, Linfo/flowersoft/theotown/util/Hashing;->hash(II)I

    move-result p1

    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result p2

    xor-int/2addr p1, p2

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->tileHash:I

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;Ljava/util/List;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/json/JsonReader;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Bridge;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 121
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x4

    .line 101
    new-array v4, v3, [Linfo/flowersoft/theotown/city/objects/Car;

    iput-object v4, v0, Linfo/flowersoft/theotown/city/objects/Road;->CarArray:[Linfo/flowersoft/theotown/city/objects/Car;

    const/4 v4, 0x0

    .line 118
    iput-object v4, v0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    .line 119
    iput-object v4, v0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpotsFG:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    const/4 v5, 0x0

    .line 122
    iput v5, v0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    .line 123
    iput v5, v0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLightFrame:I

    .line 124
    iput v5, v0, Linfo/flowersoft/theotown/city/objects/Road;->lastTrafficLightsChange:I

    const/4 v6, 0x0

    .line 125
    iput v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmount:F

    const/4 v6, 0x1

    move v7, v5

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v6

    .line 134
    :goto_24
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_341

    .line 135
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v15, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_3c4

    goto/16 :goto_1ba

    :sswitch_3d
    const-string v3, "last traffic lights change"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    goto/16 :goto_1ba

    :cond_47
    const/16 v15, 0x1c

    goto/16 :goto_1ba

    :sswitch_4b
    const-string v3, "connection dir"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    goto/16 :goto_1ba

    :cond_55
    const/16 v15, 0x1b

    goto/16 :goto_1ba

    :sswitch_59
    const-string v3, "frame"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    goto/16 :goto_1ba

    :cond_63
    const/16 v15, 0x1a

    goto/16 :goto_1ba

    :sswitch_67
    const-string v3, "decoN"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    goto/16 :goto_1ba

    :cond_71
    const/16 v15, 0x19

    goto/16 :goto_1ba

    :sswitch_75
    const-string v3, "deco0"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    goto/16 :goto_1ba

    :cond_7f
    const/16 v15, 0x18

    goto/16 :goto_1ba

    :sswitch_83
    const-string v3, "ascfg"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    goto/16 :goto_1ba

    :cond_8d
    const/16 v15, 0x17

    goto/16 :goto_1ba

    :sswitch_91
    const-string v3, "snow"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    goto/16 :goto_1ba

    :cond_9b
    const/16 v15, 0x16

    goto/16 :goto_1ba

    :sswitch_9f
    const-string v3, "pile"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    goto/16 :goto_1ba

    :cond_a9
    const/16 v15, 0x15

    goto/16 :goto_1ba

    :sswitch_ad
    const-string v3, "lata"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b7

    goto/16 :goto_1ba

    :cond_b7
    const/16 v15, 0x14

    goto/16 :goto_1ba

    :sswitch_bb
    const-string v3, "dlvl"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c5

    goto/16 :goto_1ba

    :cond_c5
    const/16 v15, 0x13

    goto/16 :goto_1ba

    :sswitch_c9
    const-string v3, "cctr"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d3

    goto/16 :goto_1ba

    :cond_d3
    const/16 v15, 0x12

    goto/16 :goto_1ba

    :sswitch_d7
    const-string v3, "asfg"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e1

    goto/16 :goto_1ba

    :cond_e1
    const/16 v15, 0x11

    goto/16 :goto_1ba

    :sswitch_e5
    const-string v3, "taa"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ef

    goto/16 :goto_1ba

    :cond_ef
    const/16 v15, 0x10

    goto/16 :goto_1ba

    :sswitch_f3
    const-string v3, "lvl"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fd

    goto/16 :goto_1ba

    :cond_fd
    const/16 v15, 0xf

    goto/16 :goto_1ba

    :sswitch_101
    const-string v3, "lua"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10b

    goto/16 :goto_1ba

    :cond_10b
    const/16 v15, 0xe

    goto/16 :goto_1ba

    :sswitch_10f
    const-string v3, "ctr"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_119

    goto/16 :goto_1ba

    :cond_119
    const/16 v15, 0xd

    goto/16 :goto_1ba

    :sswitch_11d
    const-string v3, "asc"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_127

    goto/16 :goto_1ba

    :cond_127
    const/16 v15, 0xc

    goto/16 :goto_1ba

    :sswitch_12b
    const-string v3, "tl"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_135

    goto/16 :goto_1ba

    :cond_135
    const/16 v15, 0xb

    goto/16 :goto_1ba

    :sswitch_139
    const-string v3, "ta"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_143

    goto/16 :goto_1ba

    :cond_143
    const/16 v15, 0xa

    goto/16 :goto_1ba

    :sswitch_147
    const-string v3, "oc"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_151

    goto/16 :goto_1ba

    :cond_151
    const/16 v15, 0x9

    goto/16 :goto_1ba

    :sswitch_155
    const-string v3, "id"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15f

    goto/16 :goto_1ba

    :cond_15f
    const/16 v15, 0x8

    goto/16 :goto_1ba

    :sswitch_163
    const-string v3, "bt"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16c

    goto :goto_1ba

    :cond_16c
    const/4 v15, 0x7

    goto :goto_1ba

    :sswitch_16e
    const-string v3, "as"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_177

    goto :goto_1ba

    :cond_177
    const/4 v15, 0x6

    goto :goto_1ba

    :sswitch_179
    const-string v3, "y"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_182

    goto :goto_1ba

    :cond_182
    const/4 v15, 0x5

    goto :goto_1ba

    :sswitch_184
    const-string v3, "x"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18d

    goto :goto_1ba

    :cond_18d
    const/4 v15, 0x4

    goto :goto_1ba

    :sswitch_18f
    const-string v3, "f"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_198

    goto :goto_1ba

    :cond_198
    const/4 v15, 0x3

    goto :goto_1ba

    :sswitch_19a
    const-string v3, "traffic light frame"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a3

    goto :goto_1ba

    :cond_1a3
    const/4 v15, 0x2

    goto :goto_1ba

    :sswitch_1a5
    const-string v3, "bridge"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ae

    goto :goto_1ba

    :cond_1ae
    move v15, v6

    goto :goto_1ba

    :sswitch_1b0
    const-string v3, "bridge new"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b9

    goto :goto_1ba

    :cond_1b9
    move v15, v5

    :goto_1ba
    packed-switch v15, :pswitch_data_43a

    .line 271
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_33e

    .line 180
    :pswitch_1c2
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    iput v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->lastTrafficLightsChange:I

    goto/16 :goto_33e

    .line 229
    :pswitch_1ca
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    iput v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->connectionDir:I

    goto/16 :goto_33e

    .line 245
    :pswitch_1d2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    .line 246
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 247
    :cond_1dc
    :goto_1dc
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f6

    .line 248
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 249
    const-class v13, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    invoke-static {v3, v13}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    if-eqz v3, :cond_1dc

    .line 250
    iget-object v13, v0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1dc

    .line 252
    :cond_1f6
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    .line 253
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33e

    iput-object v4, v0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    goto/16 :goto_33e

    .line 238
    :pswitch_205
    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    if-eqz v3, :cond_33e

    .line 240
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    .line 241
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_33e

    .line 169
    :pswitch_21f
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->initAnimationSpotsFG()V

    .line 170
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpotsFG:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz v3, :cond_22b

    .line 171
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->loadColors(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    goto/16 :goto_33e

    .line 173
    :cond_22b
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_33e

    .line 268
    :pswitch_230
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextByte()B

    move-result v3

    iput-byte v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->snow:B

    goto/16 :goto_33e

    .line 226
    :pswitch_238
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v3

    iput-boolean v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->pile:Z

    goto/16 :goto_33e

    .line 265
    :pswitch_240
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    iput v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->lastAppliedTrafficAmount:I

    goto/16 :goto_33e

    .line 223
    :pswitch_248
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v10

    goto/16 :goto_33e

    .line 262
    :pswitch_24e
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    iput v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->chargeableCarCounter:I

    goto/16 :goto_33e

    .line 161
    :pswitch_256
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->initAnimationSpotsFG()V

    .line 162
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpotsFG:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz v3, :cond_262

    .line 163
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->loadSpeeds(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    goto/16 :goto_33e

    .line 165
    :cond_262
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_33e

    .line 186
    :pswitch_267
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 187
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v14

    iput v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmountLevel1:F

    .line 188
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v14

    iput v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmountLevel2:F

    .line 189
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v14

    iput v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmountLevel3:F

    .line 190
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_33e

    .line 220
    :pswitch_287
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v9

    goto/16 :goto_33e

    .line 256
    :pswitch_28d
    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Lio/blueflower/stapel2d/util/json/JsonReader;)Lvm2/LuaTable;

    move-result-object v3

    iput-object v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->luaStorage:Lvm2/LuaTable;

    goto/16 :goto_33e

    .line 259
    :pswitch_295
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    iput v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->carCounter:I

    goto/16 :goto_33e

    .line 153
    :pswitch_29d
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->initAnimationSpots()V

    .line 154
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz v3, :cond_2a9

    .line 155
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->loadColors(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    goto/16 :goto_33e

    .line 157
    :cond_2a9
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_33e

    .line 217
    :pswitch_2ae
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v12

    move v11, v6

    goto/16 :goto_33e

    .line 183
    :pswitch_2b5
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v14

    iput v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmount:F

    goto/16 :goto_33e

    .line 235
    :pswitch_2bf
    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->occupation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    goto/16 :goto_33e

    .line 137
    :pswitch_2cf
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 138
    const-class v13, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-static {v3, v13}, Linfo/flowersoft/theotown/resources/Drafts;->getOrThrow(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/RoadDraft;

    iput-object v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    goto :goto_33e

    .line 232
    :pswitch_2de
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    iput v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->bridgeType:I

    goto :goto_33e

    .line 145
    :pswitch_2e5
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->initAnimationSpots()V

    .line 146
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz v3, :cond_2f0

    .line 147
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->loadSpeeds(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    goto :goto_33e

    .line 149
    :cond_2f0
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_33e

    .line 213
    :pswitch_2f4
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v8

    goto :goto_33e

    .line 210
    :pswitch_2f9
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v7

    goto :goto_33e

    .line 142
    :pswitch_2fe
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    iput v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    goto :goto_33e

    .line 177
    :pswitch_305
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    iput v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLightFrame:I

    goto :goto_33e

    .line 193
    :pswitch_30c
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/RoadDraft;->hasBridge()Z

    move-result v3

    if-eqz v3, :cond_325

    .line 194
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 195
    new-instance v3, Linfo/flowersoft/theotown/city/objects/Bridge;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/city/objects/Bridge;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 196
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    if-eqz v2, :cond_33e

    .line 197
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33e

    .line 199
    :cond_325
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_33e

    .line 203
    :pswitch_329
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 204
    new-instance v3, Linfo/flowersoft/theotown/city/objects/Bridge;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/city/objects/Bridge;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 205
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    if-eqz v2, :cond_339

    .line 206
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_339
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/RoadDraft;->hasBridge()Z

    :cond_33e
    :goto_33e
    const/4 v3, 0x4

    goto/16 :goto_24

    .line 276
    :cond_341
    iput v7, v0, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    .line 277
    iput v8, v0, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    .line 278
    iput v9, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    .line 279
    iput v10, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    .line 280
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    rem-int/lit8 v1, v1, 0x40

    iput v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    .line 282
    iget-object v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v2, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    if-nez v2, :cond_359

    if-lez v9, :cond_359

    .line 283
    iput v5, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    .line 286
    :cond_359
    iget v2, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    iget v3, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->minSupportedLevel:I

    if-lt v2, v3, :cond_39f

    iget v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->maxSupportedLevel:I

    if-gt v2, v1, :cond_39f

    if-eqz v11, :cond_368

    .line 291
    iput-boolean v12, v0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLights:Z

    goto :goto_36e

    .line 293
    :cond_368
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->shouldHaveTrafficLights()Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLights:Z

    .line 295
    :goto_36e
    iget-boolean v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLights:Z

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->mayHaveTrafficLights()Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLights:Z

    .line 297
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->bridgeType:I

    iget-object v2, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/RoadDraft;->countBridges()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->bridgeType:I

    .line 298
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->updateFlagsAndDirs()V

    .line 299
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    iget v2, v0, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/Hashing;->hash(II)I

    move-result v1

    iget-object v2, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iput v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->tileHash:I

    return-void

    .line 287
    :cond_39f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Road "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t support level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_3c4
    .sparse-switch
        -0x7abc1377 -> :sswitch_1b0
        -0x524d5c77 -> :sswitch_1a5
        -0x1eb6fbc0 -> :sswitch_19a
        0x66 -> :sswitch_18f
        0x78 -> :sswitch_184
        0x79 -> :sswitch_179
        0xc32 -> :sswitch_16e
        0xc52 -> :sswitch_163
        0xd1b -> :sswitch_155
        0xdd4 -> :sswitch_147
        0xe6d -> :sswitch_139
        0xe78 -> :sswitch_12b
        0x17a71 -> :sswitch_11d
        0x18221 -> :sswitch_10f
        0x1a3f8 -> :sswitch_101
        0x1a422 -> :sswitch_f3
        0x1bf94 -> :sswitch_e5
        0x2dd473 -> :sswitch_d7
        0x2e82de -> :sswitch_c9
        0x2f193e -> :sswitch_bb
        0x3292a2 -> :sswitch_ad
        0x348132 -> :sswitch_9f
        0x35f183 -> :sswitch_91
        0x58caef2 -> :sswitch_83
        0x5b09923 -> :sswitch_75
        0x5b09941 -> :sswitch_67
        0x5d2a96d -> :sswitch_59
        0x4b9df04b -> :sswitch_4b
        0x52cb2c26 -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_43a
    .packed-switch 0x0
        :pswitch_329
        :pswitch_30c
        :pswitch_305
        :pswitch_2fe
        :pswitch_2f9
        :pswitch_2f4
        :pswitch_2e5
        :pswitch_2de
        :pswitch_2cf
        :pswitch_2bf
        :pswitch_2b5
        :pswitch_2ae
        :pswitch_29d
        :pswitch_295
        :pswitch_28d
        :pswitch_287
        :pswitch_267
        :pswitch_256
        :pswitch_24e
        :pswitch_248
        :pswitch_240
        :pswitch_238
        :pswitch_230
        :pswitch_21f
        :pswitch_205
        :pswitch_1d2
        :pswitch_2fe
        :pswitch_1ca
        :pswitch_1c2
    .end packed-switch
.end method

.method public static deInit()V
    .registers 1

    const/4 v0, 0x0

    .line 40
    sput-object v0, Linfo/flowersoft/theotown/city/objects/Road;->connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-void
.end method

.method public static init()V
    .registers 2

    .line 37
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$anim_roadconnectionoverlay00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    sput-object v0, Linfo/flowersoft/theotown/city/objects/Road;->connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-void
.end method


# virtual methods
.method public activeAnimationSpotFrame(II)I
    .registers 5

    .line 1094
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->initAnimationSpots()V

    .line 1095
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-nez v0, :cond_9

    const/4 p1, 0x0

    return p1

    .line 1096
    :cond_9
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->animationSpots:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/AnimationSpot;

    invoke-virtual {v0, p1, v1, p2}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->activeAnimationSpotFrame(ILinfo/flowersoft/theotown/draft/AnimationSpot;I)I

    move-result p1

    return p1
.end method

.method public activeAnimationSpotFrameFG(II)I
    .registers 5

    .line 1132
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->initAnimationSpotsFG()V

    .line 1133
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpotsFG:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-nez v0, :cond_9

    const/4 p1, 0x0

    return p1

    .line 1134
    :cond_9
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpots:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/AnimationSpot;

    invoke-virtual {v0, p1, v1, p2}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->activeAnimationSpotFrame(ILinfo/flowersoft/theotown/draft/AnimationSpot;I)I

    move-result p1

    return p1
.end method

.method public addDecoration(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;)I
    .registers 3

    .line 338
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    .line 339
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->updateFlagsAndDirs()V

    .line 341
    iget-object p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public addDecoration(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;I)V
    .registers 4

    .line 345
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    .line 346
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 347
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->updateFlagsAndDirs()V

    return-void
.end method

.method public addPedestrian(Linfo/flowersoft/theotown/city/objects/Pedestrian;)Linfo/flowersoft/theotown/city/objects/Pedestrian;
    .registers 5

    .line 992
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrians:[Linfo/flowersoft/theotown/city/objects/Pedestrian;

    if-nez v0, :cond_a

    const/16 v0, 0x8

    new-array v0, v0, [Linfo/flowersoft/theotown/city/objects/Pedestrian;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrians:[Linfo/flowersoft/theotown/city/objects/Pedestrian;

    .line 993
    :cond_a
    iget-short v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrianCount:S

    .line 994
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrians:[Linfo/flowersoft/theotown/city/objects/Pedestrian;

    array-length v2, v1

    if-ge v0, v2, :cond_1a

    .line 995
    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-short p1, v0

    .line 997
    iput-short p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrianCount:S

    const/4 p1, 0x0

    return-object p1

    .line 1000
    :cond_1a
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 1001
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrians:[Linfo/flowersoft/theotown/city/objects/Pedestrian;

    aget-object v2, v1, v0

    .line 1002
    aput-object p1, v1, v0

    return-object v2
.end method

.method public alignTo(I)V
    .registers 4

    .line 907
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->connectionDir:I

    or-int/2addr p1, v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Road;->alignToRaw(I)V

    return-void
.end method

.method public alignToRaw(I)V
    .registers 6

    .line 911
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    .line 912
    iget-object p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    if-eqz p1, :cond_28

    .line 914
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_c
    if-ltz p1, :cond_28

    .line 915
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    .line 917
    iget-wide v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->flags:J

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->fitsRoad(JI)Z

    move-result v0

    if-nez v0, :cond_25

    .line 918
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Road;->removeDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    :cond_25
    add-int/lit8 p1, p1, -0x1

    goto :goto_c

    .line 922
    :cond_28
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->updateFlagsAndDirs()V

    return-void
.end method

.method public final allowRoadCrossing()Z
    .registers 2

    .line 1059
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->allowRoadCrossing:Z

    if-nez v0, :cond_f

    iget-short v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrianFlags:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public countDecorations()I
    .registers 2

    .line 379
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public countPedestrians()I
    .registers 2

    .line 980
    iget-short v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrianCount:S

    return v0
.end method

.method public draw(Linfo/flowersoft/theotown/city/Drawer;Z)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 522
    iget-object v1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v11, 0xd

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 523
    iget v12, v2, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    .line 525
    iget-object v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->framesPerBridge:I

    .line 526
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->bridgeType:I

    mul-int/2addr v3, v1

    .line 527
    iget v4, v2, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    neg-int v4, v4

    mul-int/lit8 v13, v4, 0xc

    .line 528
    iget v4, v2, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    invoke-static {v4, v12}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v14

    .line 530
    iget v4, v0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    const/16 v15, 0x10

    rem-int/2addr v4, v15

    .line 531
    invoke-static {v4, v12}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v4

    .line 534
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->getEffectiveBridgeFrames()[I

    move-result-object v5

    if-eqz v5, :cond_34

    add-int v7, v3, v1

    .line 535
    array-length v8, v5

    if-le v7, v8, :cond_34

    const/4 v3, 0x0

    .line 539
    :cond_34
    iget v7, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    const/4 v8, 0x4

    if-eqz v7, :cond_72

    iget-boolean v9, v0, Linfo/flowersoft/theotown/city/objects/Road;->slope:Z

    if-eqz v9, :cond_45

    iget-object v10, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v10, v10, Linfo/flowersoft/theotown/draft/RoadDraft;->slopeFrames:[I

    if-nez v10, :cond_45

    if-eqz v5, :cond_72

    :cond_45
    if-nez v9, :cond_4a

    if-nez v5, :cond_4a

    goto :goto_72

    :cond_4a
    if-eqz v9, :cond_61

    .line 544
    iget-object v4, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/RoadDraft;->slopeFrames:[I

    if-eqz v4, :cond_61

    .line 546
    invoke-static {v7, v12}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v4

    .line 547
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v7

    .line 548
    iget-object v9, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v9, v9, Linfo/flowersoft/theotown/draft/RoadDraft;->slopeFrames:[I

    aget v7, v9, v7

    goto :goto_82

    .line 551
    :cond_61
    invoke-static {v7, v12}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v4

    .line 552
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v7

    add-int/2addr v7, v3

    .line 553
    array-length v9, v5

    if-le v9, v7, :cond_70

    aget v7, v5, v7

    goto :goto_82

    :cond_70
    const/4 v7, 0x0

    goto :goto_82

    .line 542
    :cond_72
    :goto_72
    iget v7, v0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    div-int/2addr v7, v15

    add-int/2addr v7, v8

    sub-int/2addr v7, v12

    rem-int/2addr v7, v8

    mul-int/2addr v7, v15

    add-int/2addr v7, v4

    .line 543
    iget-object v9, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v9, v9, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v10, v9

    rem-int/2addr v7, v10

    aget v7, v9, v7

    .line 555
    :goto_82
    iget v9, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    mul-int/lit8 v10, v9, 0xc

    const/4 v11, 0x2

    const/16 v17, 0x1

    const/4 v15, 0x0

    const/16 v18, 0x0

    if-lez v9, :cond_cf

    .line 557
    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v6, :cond_cf

    .line 559
    invoke-static {v11, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v6

    if-nez v6, :cond_b0

    invoke-static {v11, v14}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v6

    if-nez v6, :cond_b0

    .line 560
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v9, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    add-int/lit8 v9, v9, -0x1

    neg-int v9, v9

    mul-int/lit8 v9, v9, 0xc

    add-int/2addr v9, v13

    int-to-float v9, v9

    add-int/lit8 v19, v3, 0x4

    aget v11, v5, v19

    invoke-virtual {v2, v6, v15, v9, v11}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 562
    :cond_b0
    invoke-static {v8, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v6

    if-nez v6, :cond_12d

    invoke-static {v8, v14}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v6

    if-nez v6, :cond_12d

    .line 563
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v9, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    add-int/lit8 v9, v9, -0x1

    neg-int v9, v9

    mul-int/lit8 v9, v9, 0xc

    add-int/2addr v9, v13

    int-to-float v9, v9

    add-int/lit8 v11, v3, 0x5

    aget v11, v5, v11

    invoke-virtual {v2, v6, v15, v9, v11}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_12d

    :cond_cf
    const/4 v6, -0x1

    if-ne v9, v6, :cond_12d

    .line 565
    iget-object v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    if-eqz v6, :cond_12d

    const/4 v6, 0x2

    .line 567
    invoke-static {v6, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v9

    if-nez v9, :cond_eb

    .line 568
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v9, v13

    iget-object v11, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v11, v11, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    aget v11, v11, v17

    invoke-virtual {v2, v6, v15, v9, v11}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 570
    :cond_eb
    invoke-static {v8, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v6

    if-nez v6, :cond_fd

    .line 571
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v9, v13

    iget-object v11, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v11, v11, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    aget v11, v11, v18

    invoke-virtual {v2, v6, v15, v9, v11}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 573
    :cond_fd
    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v6, :cond_12d

    const/16 v6, 0x8

    .line 574
    invoke-static {v6, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v6

    if-eqz v6, :cond_117

    .line 575
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v9, v13

    iget-object v11, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v11, v11, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    const/16 v19, 0x3

    aget v11, v11, v19

    invoke-virtual {v2, v6, v15, v9, v11}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_117
    move/from16 v6, v17

    .line 577
    invoke-static {v6, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v9

    if-eqz v9, :cond_12d

    .line 578
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v9, v13

    iget-object v11, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v11, v11, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    const/16 v20, 0x2

    aget v11, v11, v20

    invoke-virtual {v2, v6, v15, v9, v11}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 583
    :cond_12d
    :goto_12d
    iget-boolean v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->pile:Z

    if-eqz v6, :cond_196

    if-eqz v5, :cond_196

    move/from16 v6, v18

    .line 585
    :goto_135
    iget v9, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-ge v6, v9, :cond_196

    .line 586
    rem-int/lit8 v9, v4, 0x2

    div-int/lit8 v11, v4, 0x4

    const/16 v20, 0x2

    rem-int/lit8 v11, v11, 0x2

    add-int/2addr v9, v11

    const/4 v11, 0x1

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x9

    if-eqz p2, :cond_14f

    if-nez v6, :cond_14f

    const/4 v11, 0x2

    goto :goto_151

    :cond_14f
    move/from16 v11, v18

    :goto_151
    add-int/2addr v9, v11

    const/16 v11, 0x12

    move/from16 v19, v8

    const/16 v8, 0x14

    if-lt v1, v11, :cond_16d

    if-lez v6, :cond_16d

    add-int/lit8 v11, v9, 0x4

    if-lt v1, v8, :cond_16b

    .line 589
    iget v8, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    const/16 v17, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_16b

    :goto_168
    add-int/lit8 v9, v9, 0x6

    goto :goto_17a

    :cond_16b
    move v9, v11

    goto :goto_17a

    :cond_16d
    if-lt v1, v8, :cond_17a

    .line 592
    iget v8, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    const/16 v17, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_17a

    if-nez p2, :cond_17a

    goto :goto_168

    .line 596
    :cond_17a
    :goto_17a
    sget-object v8, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    if-eqz p2, :cond_183

    if-nez v6, :cond_183

    move/from16 v11, v19

    goto :goto_185

    :cond_183
    move/from16 v11, v18

    :goto_185
    mul-int/lit8 v21, v6, 0xc

    sub-int v11, v11, v21

    add-int/2addr v11, v13

    int-to-float v11, v11

    add-int/2addr v9, v3

    aget v9, v5, v9

    invoke-virtual {v2, v8, v15, v11, v9}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v19

    goto :goto_135

    :cond_196
    move/from16 v19, v8

    neg-int v6, v10

    int-to-float v6, v6

    .line 600
    invoke-virtual {v2, v15, v6}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 603
    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v6, :cond_1b2

    if-nez v5, :cond_1b2

    iget-object v8, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/RoadDraft;->slopeFrames:[I

    if-eqz v8, :cond_1aa

    goto :goto_1b2

    .line 616
    :cond_1aa
    iget-object v1, v2, Linfo/flowersoft/theotown/city/Drawer;->ground:Linfo/flowersoft/theotown/city/objects/Ground;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, v2, v3, v7}, Linfo/flowersoft/theotown/city/objects/Ground;->drawFrameOnSlope(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;I)V

    goto :goto_215

    :cond_1b2
    :goto_1b2
    if-eqz v6, :cond_1d2

    .line 604
    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-nez v6, :cond_1d2

    const/16 v6, 0x10

    if-lt v1, v6, :cond_1d2

    iget-boolean v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->slope:Z

    if-nez v6, :cond_1d2

    if-eqz v5, :cond_1d2

    .line 605
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v8, v13

    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v9

    add-int/2addr v9, v3

    add-int/2addr v9, v1

    add-int/lit8 v9, v9, -0x4

    aget v1, v5, v9

    invoke-virtual {v2, v6, v15, v8, v1}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 607
    :cond_1d2
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v1, :cond_20f

    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_20f

    iget v1, v2, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    if-eqz v1, :cond_20f

    const/4 v6, 0x2

    .line 608
    invoke-static {v6, v14}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v1

    if-eqz v1, :cond_1f7

    invoke-static {v6, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v1

    if-eqz v1, :cond_1f7

    .line 609
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v3, v13, -0x1

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v2, v1, v5, v3, v7}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_20f

    :cond_1f7
    move/from16 v1, v19

    .line 610
    invoke-static {v1, v14}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v3

    if-eqz v3, :cond_20f

    invoke-static {v1, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v3

    if-eqz v3, :cond_20f

    .line 611
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v3, v13, -0x1

    int-to-float v3, v3

    const/high16 v5, -0x40000000    # -2.0f

    invoke-virtual {v2, v1, v5, v3, v7}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 614
    :cond_20f
    :goto_20f
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, v13

    invoke-virtual {v2, v1, v15, v3, v7}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 619
    :goto_215
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v1, :cond_300

    .line 620
    iget-object v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWayFrames:[I

    if-eqz v1, :cond_234

    .line 622
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v5, v13

    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    const/16 v16, 0x10

    div-int/lit8 v6, v6, 0x10

    const/16 v19, 0x4

    add-int/lit8 v6, v6, 0x4

    sub-int/2addr v6, v12

    rem-int/lit8 v6, v6, 0x4

    aget v1, v1, v6

    invoke-virtual {v2, v3, v15, v5, v1}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_234
    int-to-float v11, v13

    .line 626
    invoke-virtual {v2, v15, v11}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 627
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/city/objects/Road;->lightsOn(Linfo/flowersoft/theotown/city/Drawer;)Z

    move-result v9

    .line 628
    iget-object v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->animationSpots:Ljava/util/List;

    const/high16 v21, 0x43480000    # 200.0f

    if-eqz v1, :cond_27c

    .line 629
    iget v1, v2, Linfo/flowersoft/theotown/city/Drawer;->time:I

    int-to-float v1, v1

    div-float v7, v1, v21

    .line 631
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    const/16 v16, 0x10

    div-int/lit8 v1, v1, 0x10

    const/16 v19, 0x4

    add-int/lit8 v1, v1, 0x4

    sub-int/2addr v1, v12

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x10

    add-int v6, v4, v1

    .line 632
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v5, v3, Linfo/flowersoft/theotown/draft/RoadDraft;->animationSpots:Ljava/util/List;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/RoadDraft;->animationSpotIndices:[[I

    move v8, v4

    move-object v4, v3

    move-object v3, v5

    iget v5, v0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    move/from16 v22, v8

    iget v8, v2, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    move/from16 v23, v10

    move v10, v9

    iget-object v9, v0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    move/from16 v15, v22

    move/from16 v22, v14

    move/from16 v14, v23

    invoke-virtual/range {v1 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFILinfo/flowersoft/theotown/city/objects/AnimationSpots;Z)V

    goto :goto_283

    :cond_27c
    move v15, v4

    move/from16 v22, v14

    const/16 v19, 0x4

    move v14, v10

    move v10, v9

    .line 639
    :goto_283
    iget-object v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    if-eqz v1, :cond_2dd

    .line 640
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v17, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_28f
    if-ltz v1, :cond_2d6

    .line 641
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v3

    .line 642
    iget-object v4, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    if-eqz v3, :cond_2ce

    .line 644
    iget-object v4, v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationSpots:Ljava/util/List;

    if-eqz v4, :cond_2ce

    .line 645
    iget v4, v2, Linfo/flowersoft/theotown/city/Drawer;->time:I

    int-to-float v4, v4

    div-float v7, v4, v21

    .line 647
    iget v4, v0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    const/16 v16, 0x10

    div-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x4

    sub-int/2addr v4, v12

    rem-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x10

    add-int v5, v15, v4

    move v4, v1

    .line 648
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    iget-object v6, v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationSpots:Ljava/util/List;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationSpotIndices:[[I

    iget v8, v2, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    move v9, v4

    move-object v4, v3

    move-object v3, v6

    move v6, v5

    move/from16 v24, v10

    move v10, v9

    move/from16 v9, v24

    invoke-virtual/range {v1 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFIZ)V

    goto :goto_2d2

    :cond_2ce
    move v9, v10

    const/16 v16, 0x10

    move v10, v1

    :goto_2d2
    add-int/lit8 v1, v10, -0x1

    move v10, v9

    goto :goto_28f

    .line 652
    :cond_2d6
    iget-object v1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    :cond_2dd
    neg-int v1, v13

    int-to-float v1, v1

    const/4 v3, 0x0

    .line 654
    invoke-virtual {v2, v3, v1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 657
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-nez v1, :cond_304

    iget v1, v2, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    if-eqz v1, :cond_304

    iget-object v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    if-eqz v1, :cond_304

    .line 658
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-static/range {v22 .. v22}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    aget v1, v1, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v11, v1}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_304

    :cond_300
    move v15, v4

    move v14, v10

    const/16 v19, 0x4

    .line 662
    :cond_304
    :goto_304
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->connectionDir:I

    if-eqz v1, :cond_31d

    .line 663
    invoke-static {v1, v12}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v1

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v1

    .line 664
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v4, v13

    sget-object v5, Linfo/flowersoft/theotown/city/objects/Road;->connectionOverlayDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v1, v5, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4, v1}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 667
    :cond_31d
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->mayHaveTrafficLights()Z

    move-result v1

    if-eqz v1, :cond_34f

    iget-boolean v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLights:Z

    if-eqz v1, :cond_34f

    .line 668
    iget-boolean v1, v2, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    const/4 v3, 0x0

    .line 669
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/Drawer;->setUseShading(Z)V

    .line 670
    iget v3, v2, Linfo/flowersoft/theotown/city/Drawer;->time:I

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/objects/Road;->getTrafficLightFrame(I)I

    move-result v3

    const/16 v20, 0x2

    .line 671
    rem-int/lit8 v12, v12, 0x2

    const/4 v6, 0x1

    if-ne v12, v6, :cond_33e

    add-int/lit8 v3, v3, 0x2

    .line 672
    rem-int/lit8 v3, v3, 0x4

    .line 674
    :cond_33e
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v5, v13

    iget-object v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/RoadDraft;->trafficLights:[I

    aget v3, v6, v3

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5, v3}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 675
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/Drawer;->setUseShading(Z)V

    goto :goto_350

    :cond_34f
    const/4 v6, 0x0

    .line 678
    :goto_350
    iget-object v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->busStop:Linfo/flowersoft/theotown/city/objects/BusStop;

    if-eqz v1, :cond_357

    .line 679
    invoke-virtual {v1, v2, v15}, Linfo/flowersoft/theotown/city/objects/BusStop;->drawBack(Linfo/flowersoft/theotown/city/Drawer;I)V

    :cond_357
    int-to-float v1, v14

    .line 688
    invoke-virtual {v2, v6, v1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    return-void
.end method

.method public drawForeground(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 715
    iget-object v1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v11, 0xd

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 716
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    mul-int/lit8 v12, v1, 0xc

    .line 717
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    const/16 v13, 0x10

    rem-int/2addr v1, v13

    .line 718
    iget v3, v2, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v1, v3}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v14

    .line 719
    iget v1, v2, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    neg-int v1, v1

    mul-int/lit8 v15, v1, 0xc

    neg-int v1, v12

    int-to-float v1, v1

    const/4 v3, 0x0

    .line 721
    invoke-virtual {v2, v3, v1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 723
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    const/4 v4, 0x0

    if-nez v1, :cond_103

    .line 724
    iget-object v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->busStop:Linfo/flowersoft/theotown/city/objects/BusStop;

    if-eqz v1, :cond_36

    .line 726
    invoke-virtual {v1, v2, v14}, Linfo/flowersoft/theotown/city/objects/BusStop;->drawFront(Linfo/flowersoft/theotown/city/Drawer;I)V

    .line 727
    iget-object v1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 730
    :cond_36
    iget-object v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->occupation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-eqz v1, :cond_62

    .line 731
    iget-object v1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v5, 0xf

    invoke-virtual {v1, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 732
    iget-object v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->occupation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 733
    iget v5, v2, Linfo/flowersoft/theotown/city/Drawer;->time:I

    div-int/lit16 v5, v5, 0xc8

    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    mul-int/lit8 v6, v6, 0x25

    add-int/2addr v5, v6

    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    mul-int/lit8 v6, v6, 0x3b

    add-int/2addr v5, v6

    array-length v6, v1

    rem-int/2addr v5, v6

    .line 734
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v7, v15

    aget v1, v1, v5

    invoke-virtual {v2, v6, v3, v7, v1}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 735
    iget-object v1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    :cond_62
    int-to-float v1, v15

    .line 738
    invoke-virtual {v2, v3, v1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 739
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/city/objects/Road;->lightsOn(Linfo/flowersoft/theotown/city/Drawer;)Z

    move-result v9

    .line 741
    iget-object v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpots:Ljava/util/List;

    const/high16 v16, 0x43480000    # 200.0f

    if-eqz v1, :cond_a4

    .line 742
    iget v1, v2, Linfo/flowersoft/theotown/city/Drawer;->time:I

    int-to-float v1, v1

    div-float v7, v1, v16

    .line 744
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    div-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x4

    iget v5, v2, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    sub-int/2addr v1, v5

    rem-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v13

    add-int v6, v14, v1

    .line 745
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    iget-object v5, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    move v8, v3

    iget-object v3, v5, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpots:Ljava/util/List;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpotIndices:[[I

    move v10, v4

    move-object v4, v5

    iget v5, v0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    move/from16 v17, v8

    iget v8, v2, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    move/from16 v18, v10

    move v10, v9

    iget-object v9, v0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpotsFG:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    move/from16 v19, v13

    move/from16 v13, v17

    invoke-virtual/range {v1 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFILinfo/flowersoft/theotown/city/objects/AnimationSpots;Z)V

    goto :goto_a8

    :cond_a4
    move v10, v9

    move/from16 v19, v13

    move v13, v3

    .line 751
    :goto_a8
    iget-object v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    if-eqz v1, :cond_fd

    const/4 v1, 0x0

    .line 752
    :goto_ad
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_f8

    .line 753
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v3

    .line 754
    iget-object v4, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    if-eqz v3, :cond_f2

    .line 756
    iget-object v4, v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationFGSpots:Ljava/util/List;

    if-eqz v4, :cond_f2

    .line 757
    iget v4, v2, Linfo/flowersoft/theotown/city/Drawer;->time:I

    int-to-float v4, v4

    div-float v7, v4, v16

    .line 759
    iget v4, v0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    div-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x4

    iget v5, v2, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    sub-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x10

    add-int v5, v14, v4

    move v4, v1

    .line 760
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    iget-object v6, v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationFGSpots:Ljava/util/List;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationFGSpotIndices:[[I

    iget v8, v2, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    move v9, v4

    move-object v4, v3

    move-object v3, v6

    move v6, v5

    move/from16 v20, v10

    move v10, v9

    move/from16 v9, v20

    invoke-virtual/range {v1 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFIZ)V

    goto :goto_f4

    :cond_f2
    move v9, v10

    move v10, v1

    :goto_f4
    add-int/lit8 v1, v10, 0x1

    move v10, v9

    goto :goto_ad

    .line 764
    :cond_f8
    iget-object v1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    :cond_fd
    neg-int v1, v15

    int-to-float v1, v1

    .line 766
    invoke-virtual {v2, v13, v1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    goto :goto_106

    :cond_103
    move/from16 v19, v13

    move v13, v3

    .line 769
    :goto_106
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    const/16 v3, 0x8

    if-nez v1, :cond_12d

    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-nez v1, :cond_12d

    iget v1, v2, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    if-eqz v1, :cond_12d

    iget-object v4, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    if-eqz v4, :cond_12d

    .line 770
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v6, v15

    iget v7, v2, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v1, v7}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v1

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v1

    add-int/2addr v1, v3

    aget v1, v4, v1

    invoke-virtual {v2, v5, v13, v6, v1}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 773
    :cond_12d
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->mayHaveTrafficLights()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_16b

    iget-boolean v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLights:Z

    if-eqz v1, :cond_16b

    .line 774
    iget-boolean v1, v2, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    const/4 v10, 0x0

    .line 775
    invoke-virtual {v2, v10}, Linfo/flowersoft/theotown/city/Drawer;->setUseShading(Z)V

    .line 776
    iget v5, v2, Linfo/flowersoft/theotown/city/Drawer;->time:I

    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/city/objects/Road;->getTrafficLightFrame(I)I

    move-result v5

    .line 777
    iget v6, v2, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    rem-int/lit8 v6, v6, 0x2

    if-ne v6, v4, :cond_14e

    add-int/lit8 v5, v5, 0x2

    .line 778
    rem-int/lit8 v5, v5, 0x4

    :cond_14e
    add-int/lit8 v6, v15, -0x6

    const/16 v7, 0x20

    move/from16 v8, v19

    const/4 v10, 0x0

    .line 780
    invoke-virtual {v2, v10, v6, v7, v8}, Linfo/flowersoft/theotown/city/Drawer;->setClipRect(IIII)V

    .line 781
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v7, v15

    iget-object v8, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/RoadDraft;->trafficLights:[I

    aget v5, v8, v5

    invoke-virtual {v2, v6, v13, v7, v5}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 782
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/Drawer;->resetClipping()V

    .line 783
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/Drawer;->setUseShading(Z)V

    goto :goto_16c

    :cond_16b
    const/4 v10, 0x0

    :goto_16c
    int-to-float v1, v12

    .line 786
    invoke-virtual {v2, v13, v1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 788
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-lez v1, :cond_1e2

    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v1, :cond_1e2

    .line 789
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->bridgeType:I

    iget-object v5, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v5, v5, Linfo/flowersoft/theotown/draft/RoadDraft;->framesPerBridge:I

    mul-int/2addr v1, v5

    .line 790
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->getEffectiveBridgeFrames()[I

    move-result-object v5

    if-eqz v5, :cond_18e

    .line 791
    iget-object v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v6, v6, Linfo/flowersoft/theotown/draft/RoadDraft;->framesPerBridge:I

    add-int/2addr v6, v1

    array-length v7, v5

    if-le v6, v7, :cond_18e

    move v1, v10

    :cond_18e
    if-eqz v5, :cond_1e2

    .line 796
    invoke-static {v4, v14}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v6

    if-nez v6, :cond_1b9

    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-gt v6, v4, :cond_1a8

    iget v6, v2, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    iget v7, v2, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v6, v7}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v6

    invoke-static {v4, v6}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v6

    if-nez v6, :cond_1b9

    .line 797
    :cond_1a8
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v7, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    sub-int/2addr v7, v4

    neg-int v7, v7

    mul-int/lit8 v7, v7, 0xc

    add-int/2addr v7, v15

    int-to-float v7, v7

    add-int/lit8 v8, v1, 0x7

    aget v8, v5, v8

    invoke-virtual {v2, v6, v13, v7, v8}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 799
    :cond_1b9
    invoke-static {v3, v14}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v6

    if-nez v6, :cond_1e2

    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-gt v6, v4, :cond_1d1

    iget v6, v2, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    iget v7, v2, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v6, v7}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v6

    invoke-static {v3, v6}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v3

    if-nez v3, :cond_1e2

    .line 800
    :cond_1d1
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    sub-int/2addr v6, v4

    neg-int v4, v6

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v4, v15

    int-to-float v4, v4

    add-int/lit8 v1, v1, 0x6

    aget v1, v5, v1

    invoke-virtual {v2, v3, v13, v4, v1}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_1e2
    return-void
.end method

.method public drawForegroundTrafficLights(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 10

    .line 813
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->mayHaveTrafficLights()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLights:Z

    if-eqz v0, :cond_56

    .line 814
    iget-boolean v0, p1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    const/4 v1, 0x0

    .line 815
    iput-boolean v1, p1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 816
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    mul-int/lit8 v1, v1, 0xc

    .line 817
    iget v2, p0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    const/16 v3, 0x10

    rem-int/2addr v2, v3

    .line 818
    iget v4, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v2, v4}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    .line 819
    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0xc

    .line 820
    iget v4, p1, Linfo/flowersoft/theotown/city/Drawer;->time:I

    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/city/objects/Road;->getTrafficLightFrame(I)I

    move-result v4

    .line 821
    iget v5, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    rem-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_33

    add-int/lit8 v4, v4, 0x2

    .line 822
    rem-int/lit8 v4, v4, 0x4

    :cond_33
    neg-int v5, v1

    int-to-float v5, v5

    const/4 v6, 0x0

    .line 825
    invoke-virtual {p1, v6, v5}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    add-int/lit8 v5, v2, -0x6

    const/16 v7, 0x8

    .line 826
    invoke-virtual {p1, v7, v5, v3, v3}, Linfo/flowersoft/theotown/city/Drawer;->setClipRect(IIII)V

    .line 827
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, v2

    iget-object v5, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/RoadDraft;->trafficLights:[I

    aget v4, v5, v4

    invoke-virtual {p1, v3, v6, v2, v4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 828
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/Drawer;->resetClipping()V

    int-to-float v1, v1

    .line 829
    invoke-virtual {p1, v6, v1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 830
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/Drawer;->setUseShading(Z)V

    :cond_56
    return-void
.end method

.method public getAlign()I
    .registers 2

    .line 926
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    rem-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getAnimationFrameColor(I)Lio/blueflower/stapel2d/drawing/Color;
    .registers 3

    .line 1100
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->getColor(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    return-object p1

    :cond_9
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getAnimationFrameColorFG(I)Lio/blueflower/stapel2d/drawing/Color;
    .registers 3

    .line 1138
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpotsFG:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->getColor(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    return-object p1

    :cond_9
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getAnimationFrameSpeed(I)F
    .registers 3

    .line 1104
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->getSpeed(I)F

    move-result p1

    return p1

    :cond_9
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getAnimationFrameSpeedFG(I)F
    .registers 3

    .line 1142
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpotsFG:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->getSpeed(I)F

    move-result p1

    return p1

    :cond_9
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;
    .registers 2

    .line 505
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->busStop:Linfo/flowersoft/theotown/city/objects/BusStop;

    return-object v0
.end method

.method public getConnectionDir()I
    .registers 2

    .line 976
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->connectionDir:I

    return v0
.end method

.method public getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;
    .registers 4

    .line 362
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    if-ltz p1, :cond_16

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 364
    :try_start_d
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    return-object p1

    :catch_16
    :cond_16
    return-object v1
.end method

.method public getDirs(II)I
    .registers 5

    .line 938
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->dirs:[I

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p1

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr v1, p2

    array-length p1, v0

    rem-int/2addr v1, p1

    aget p1, v0, v1

    return p1
.end method

.method public final getEffectiveBridgeFrames()[I
    .registers 3

    .line 514
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    if-eqz v1, :cond_1f

    .line 515
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalRoadOf:Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v0

    rem-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->isCorner(I)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalRoadOf:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    if-eqz v0, :cond_1f

    return-object v0

    :cond_1f
    return-object v1
.end method

.method public getFlags()J
    .registers 3

    .line 903
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->flags:J

    return-wide v0
.end method

.method public getFrame()I
    .registers 2

    .line 930
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    return v0
.end method

.method public getLevel()I
    .registers 2

    .line 471
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    return v0
.end method

.method public getLuaStorage()Lvm2/LuaTable;
    .registers 2

    .line 327
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->luaStorage:Lvm2/LuaTable;

    return-object v0
.end method

.method public getLuaStorageProxy()Lvm2/LuaTable;
    .registers 2

    .line 332
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->luaStorage:Lvm2/LuaTable;

    if-nez v0, :cond_a

    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->luaStorage:Lvm2/LuaTable;

    .line 333
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->luaStorageProxy:Lvm2/LuaTable;

    if-nez v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->luaStorage:Lvm2/LuaTable;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuaUtil;->getProxy(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->luaStorageProxy:Lvm2/LuaTable;

    .line 334
    :cond_16
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->luaStorageProxy:Lvm2/LuaTable;

    return-object v0
.end method

.method public getOccupation()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 2

    .line 449
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->occupation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-object v0
.end method

.method public getOccupationRemoveFlags()I
    .registers 4

    .line 464
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->occupation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 465
    :cond_6
    const-string v2, "road occupation"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_f

    return v1

    .line 467
    :cond_f
    const-string v2, "remove flags"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOccupationSpeed()F
    .registers 5

    .line 457
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->occupation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_7

    return v1

    .line 458
    :cond_7
    const-string v2, "road occupation"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_10

    return v1

    .line 460
    :cond_10
    const-string v1, "speed"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getOnewayDir()I
    .registers 2

    .line 934
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    div-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v0

    return v0
.end method

.method public getPedestrian(I)Linfo/flowersoft/theotown/city/objects/Pedestrian;
    .registers 3

    .line 1036
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrians:[Linfo/flowersoft/theotown/city/objects/Pedestrian;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPedestrianPaths(II)[B
    .registers 4

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 1049
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->allowRoadCrossing()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 1050
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean p2, p2, Linfo/flowersoft/theotown/draft/RoadDraft;->allowDiagonal:Z

    if-eqz p2, :cond_12

    sget-object p2, Linfo/flowersoft/theotown/draft/RoadDraft;->CONNECTED_DIAGONAL_PEDESTRIAN_MAP:[[B

    goto :goto_20

    :cond_12
    sget-object p2, Linfo/flowersoft/theotown/draft/RoadDraft;->CONNECTED_PEDESTRIAN_MAP:[[B

    goto :goto_20

    .line 1052
    :cond_15
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean p2, p2, Linfo/flowersoft/theotown/draft/RoadDraft;->allowDiagonal:Z

    if-eqz p2, :cond_1e

    sget-object p2, Linfo/flowersoft/theotown/draft/RoadDraft;->DIAGONAL_PEDESTRIAN_MAP:[[B

    goto :goto_20

    :cond_1e
    sget-object p2, Linfo/flowersoft/theotown/draft/RoadDraft;->SIMPLE_PEDESTRIAN_MAP:[[B

    .line 1055
    :goto_20
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    aget-object p1, p2, v0

    return-object p1
.end method

.method public getSidewalkOffset()F
    .registers 2

    .line 1064
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->sidewalkOffset:F

    return v0
.end method

.method public getSidewalkSize()F
    .registers 2

    .line 1068
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->sidewalkSize:F

    return v0
.end method

.method public getSnow()I
    .registers 2

    .line 953
    iget-byte v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->snow:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getTopDecoration()Linfo/flowersoft/theotown/draft/RoadDecorationDraft;
    .registers 2

    .line 374
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_16

    .line 375
    :cond_b
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v0

    return-object v0

    :cond_16
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrafficLightFrame(I)I
    .registers 10

    .line 836
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->lastTrafficLightsChange:I

    sub-int v0, p1, v0

    .line 837
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLightFrame:I

    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_e

    move v2, v4

    goto :goto_f

    :cond_e
    move v2, v3

    .line 839
    :goto_f
    iget-object v5, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v6, v5, Linfo/flowersoft/theotown/draft/RoadDraft;->greenPhase:I

    iget v5, v5, Linfo/flowersoft/theotown/draft/RoadDraft;->yellowPhase:I

    add-int v7, v6, v5

    mul-int/lit8 v7, v7, 0x2

    if-le v0, v7, :cond_26

    add-int v0, v6, v5

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    .line 840
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->lastTrafficLightsChange:I

    sub-int v0, p1, v0

    goto :goto_2b

    :cond_26
    if-gez v0, :cond_2b

    .line 843
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->lastTrafficLightsChange:I

    move v0, v3

    :cond_2b
    :goto_2b
    if-eqz v2, :cond_35

    if-lt v0, v6, :cond_35

    add-int/2addr v1, v4

    .line 848
    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLightFrame:I

    .line 849
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->lastTrafficLightsChange:I

    goto :goto_3e

    :cond_35
    if-nez v2, :cond_3e

    if-lt v0, v5, :cond_3e

    add-int/2addr v1, v4

    .line 851
    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLightFrame:I

    .line 852
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->lastTrafficLightsChange:I

    .line 854
    :cond_3e
    :goto_3e
    iget p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLightFrame:I

    rem-int/lit8 p1, p1, 0x4

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLightFrame:I

    return p1
.end method

.method public getX()I
    .registers 2

    .line 497
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 501
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    return v0
.end method

.method public hasConnection()Z
    .registers 2

    .line 945
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->connectionDir:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasTrafficLights()Z
    .registers 2

    .line 487
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLights:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->mayHaveTrafficLights()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1147
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->tileHash:I

    return v0
.end method

.method public haveSetupPedestrians()Z
    .registers 3

    .line 984
    iget-short v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrianFlags:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final initAnimationSpots()V
    .registers 3

    .line 315
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz v0, :cond_5

    goto :goto_21

    .line 316
    :cond_5
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->animationSpots:Ljava/util/List;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_21

    .line 317
    :cond_12
    new-instance v0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->animationSpots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;-><init>(I)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    :cond_21
    :goto_21
    return-void
.end method

.method public final initAnimationSpotsFG()V
    .registers 3

    .line 321
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpotsFG:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz v0, :cond_5

    goto :goto_21

    .line 322
    :cond_5
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpots:Ljava/util/List;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_21

    .line 323
    :cond_12
    new-instance v0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;-><init>(I)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpotsFG:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    :cond_21
    :goto_21
    return-void
.end method

.method public isLocked()Z
    .registers 3

    .line 492
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->occupation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-eqz v0, :cond_16

    const-string v1, "road occupation"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "locked"

    .line 493
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public isPile()Z
    .registers 2

    .line 387
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pile:Z

    return v0
.end method

.method public final lightsOn(Linfo/flowersoft/theotown/city/Drawer;)Z
    .registers 8

    .line 807
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->tileHash:I

    int-to-long v0, v0

    iget-wide v2, p1, Linfo/flowersoft/theotown/city/Drawer;->daytimeDay:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/16 v4, 0xbab

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 808
    iget p1, p1, Linfo/flowersoft/theotown/city/Drawer;->daytime:F

    const v2, 0x3d4ccccd    # 0.05f

    add-float/2addr p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x5

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    rem-float/2addr p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v0, p1

    const p1, 0x3ecccccd    # 0.4f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3c

    const/4 p1, 0x1

    return p1

    :cond_3c
    const/4 p1, 0x0

    return p1
.end method

.method public markSetupPedestrians()V
    .registers 2

    .line 988
    iget-short v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrianFlags:S

    or-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrianFlags:S

    return-void
.end method

.method public mayHaveTrafficLights()Z
    .registers 3

    .line 475
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->trafficLights:[I

    if-eqz v0, :cond_17

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    rem-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_17

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v0, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public removeDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;
    .registers 5

    .line 351
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    if-ltz p1, :cond_29

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_e

    goto :goto_29

    .line 354
    :cond_e
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    .line 355
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 356
    iget-object p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_25

    iput-object v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    .line 357
    :cond_25
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->updateFlagsAndDirs()V

    return-object v0

    :cond_29
    :goto_29
    return-object v1
.end method

.method public removePedestrian(Linfo/flowersoft/theotown/city/objects/Pedestrian;)Z
    .registers 7

    .line 1022
    iget-short v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrianCount:S

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_1d

    .line 1024
    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrians:[Linfo/flowersoft/theotown/city/objects/Pedestrian;

    aget-object v4, v3, v2

    if-ne v4, p1, :cond_1a

    add-int/lit8 v0, v0, -0x1

    .line 1026
    aget-object p1, v3, v0

    aput-object p1, v3, v2

    const/4 p1, 0x0

    .line 1027
    aput-object p1, v3, v0

    int-to-short p1, v0

    .line 1028
    iput-short p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrianCount:S

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1d
    return v1
.end method

.method public removePedestrianAt(I)Linfo/flowersoft/theotown/city/objects/Pedestrian;
    .registers 7

    .line 1008
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrians:[Linfo/flowersoft/theotown/city/objects/Pedestrian;

    aget-object v1, v0, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 1010
    iget-short v3, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrianCount:S

    add-int/lit8 v3, v3, -0x1

    .line 1012
    aget-object v4, v0, v3

    aput-object v4, v0, p1

    .line 1013
    aput-object v2, v0, v3

    int-to-short p1, v3

    .line 1014
    iput-short p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrianCount:S

    return-object v1

    :cond_15
    return-object v2
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 392
    const-string v0, "f"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    if-eqz p2, :cond_db

    .line 395
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz p2, :cond_2a

    .line 396
    const-string v0, "as"

    invoke-virtual {p2, p1, v0}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->saveSpeeds(Lio/blueflower/stapel2d/util/json/JsonWriter;Ljava/lang/String;)V

    .line 397
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    const-string v0, "asc"

    invoke-virtual {p2, p1, v0}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->saveColors(Lio/blueflower/stapel2d/util/json/JsonWriter;Ljava/lang/String;)V

    .line 399
    :cond_2a
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpotsFG:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz p2, :cond_3a

    .line 400
    const-string v0, "asfg"

    invoke-virtual {p2, p1, v0}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->saveSpeeds(Lio/blueflower/stapel2d/util/json/JsonWriter;Ljava/lang/String;)V

    .line 401
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpotsFG:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    const-string v0, "ascfg"

    invoke-virtual {p2, p1, v0}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->saveColors(Lio/blueflower/stapel2d/util/json/JsonWriter;Ljava/lang/String;)V

    .line 404
    :cond_3a
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLightFrame:I

    if-lez p2, :cond_49

    const-string p2, "traffic light frame"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLightFrame:I

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 405
    :cond_49
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->lastTrafficLightsChange:I

    if-lez p2, :cond_58

    .line 406
    const-string p2, "last traffic lights change"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->lastTrafficLightsChange:I

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 407
    :cond_58
    const-string p2, "ta"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmount:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 408
    const-string p2, "taa"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    .line 409
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmountLevel1:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 410
    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmountLevel2:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 411
    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmountLevel3:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 412
    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    .line 413
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 414
    const-string p2, "x"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 415
    const-string p2, "y"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 416
    const-string p2, "ctr"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->carCounter:I

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 417
    const-string p2, "cctr"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->chargeableCarCounter:I

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 418
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->lastAppliedTrafficAmount:I

    if-eqz p2, :cond_c7

    const-string p2, "lata"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->lastAppliedTrafficAmount:I

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 419
    :cond_c7
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->luaStorage:Lvm2/LuaTable;

    if-eqz p2, :cond_db

    invoke-virtual {p2}, Lvm2/LuaTable;->keyCount()I

    move-result p2

    if-lez p2, :cond_db

    .line 420
    const-string p2, "lua"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 421
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->luaStorage:Lvm2/LuaTable;

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->serialize(Lvm2/LuaTable;Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 425
    :cond_db
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->mayHaveTrafficLights()Z

    move-result p2

    if-nez p2, :cond_e5

    iget-boolean p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLights:Z

    if-eqz p2, :cond_f0

    :cond_e5
    const-string p2, "tl"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLights:Z

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 426
    :cond_f0
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-eqz p2, :cond_ff

    const-string p2, "lvl"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 427
    :cond_ff
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz p2, :cond_10e

    const-string p2, "dlvl"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 428
    :cond_10e
    iget-boolean p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->pile:Z

    if-eqz p2, :cond_11d

    const-string p2, "pile"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pile:Z

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 429
    :cond_11d
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->connectionDir:I

    if-eqz p2, :cond_12c

    const-string p2, "connection dir"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->connectionDir:I

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 430
    :cond_12c
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->bridgeType:I

    if-eqz p2, :cond_13b

    const-string p2, "bt"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->bridgeType:I

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 431
    :cond_13b
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->occupation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-eqz p2, :cond_14c

    const-string p2, "oc"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->occupation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 432
    :cond_14c
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    if-eqz p2, :cond_197

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_197

    .line 433
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_174

    .line 434
    const-string p2, "deco0"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_197

    .line 436
    :cond_174
    const-string p2, "decoN"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 437
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 438
    :goto_17c
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_194

    .line 439
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    .line 440
    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17c

    .line 442
    :cond_194
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 445
    :cond_197
    :goto_197
    iget-byte p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->snow:B

    if-eqz p2, :cond_1a6

    const-string p2, "snow"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-byte p2, p0, Linfo/flowersoft/theotown/city/objects/Road;->snow:B

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(B)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_1a6
    return-void
.end method

.method public setAnimationFrameColor(ILio/blueflower/stapel2d/drawing/Color;)V
    .registers 4

    .line 1080
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->initAnimationSpots()V

    .line 1081
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-nez v0, :cond_8

    return-void

    .line 1083
    :cond_8
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->setColor(ILio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public setAnimationFrameColorFG(ILio/blueflower/stapel2d/drawing/Color;)V
    .registers 4

    .line 1118
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->initAnimationSpotsFG()V

    .line 1119
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpotsFG:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-nez v0, :cond_8

    return-void

    .line 1121
    :cond_8
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->setColor(ILio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public setAnimationFrameOffset(III)V
    .registers 6

    .line 1087
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->initAnimationSpots()V

    .line 1088
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-nez v0, :cond_8

    return-void

    .line 1090
    :cond_8
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->animationSpots:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/AnimationSpot;

    invoke-virtual {v0, p3, v1, p1, p2}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->setFrame(ILinfo/flowersoft/theotown/draft/AnimationSpot;II)V

    return-void
.end method

.method public setAnimationFrameOffsetFG(III)V
    .registers 6

    .line 1125
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->initAnimationSpotsFG()V

    .line 1126
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpotsFG:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-nez v0, :cond_8

    return-void

    .line 1128
    :cond_8
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpots:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/AnimationSpot;

    invoke-virtual {v0, p3, v1, p1, p2}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->setFrame(ILinfo/flowersoft/theotown/draft/AnimationSpot;II)V

    return-void
.end method

.method public setAnimationFrameSpeed(IFI)V
    .registers 6

    .line 1072
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->initAnimationSpots()V

    .line 1073
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-nez v0, :cond_8

    return-void

    .line 1075
    :cond_8
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->animationSpots:Ljava/util/List;

    .line 1076
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 1075
    invoke-virtual {v0, p3, v1, p1, p2}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->setSpeedPreserveFrame(ILinfo/flowersoft/theotown/draft/AnimationSpot;IF)V

    return-void
.end method

.method public setAnimationFrameSpeedFG(IFI)V
    .registers 6

    .line 1110
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->initAnimationSpotsFG()V

    .line 1111
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->animationSpotsFG:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-nez v0, :cond_8

    return-void

    .line 1113
    :cond_8
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpots:Ljava/util/List;

    .line 1114
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 1113
    invoke-virtual {v0, p3, v1, p1, p2}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->setSpeedPreserveFrame(ILinfo/flowersoft/theotown/draft/AnimationSpot;IF)V

    return-void
.end method

.method public setBusStop(Linfo/flowersoft/theotown/city/objects/BusStop;)V
    .registers 2

    .line 509
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->busStop:Linfo/flowersoft/theotown/city/objects/BusStop;

    .line 510
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->updateFlagsAndDirs()V

    return-void
.end method

.method public setConnection(I)V
    .registers 2

    .line 971
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->connectionDir:I

    .line 972
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Road;->alignTo(I)V

    return-void
.end method

.method public setOccupation(Linfo/flowersoft/theotown/draft/AnimationDraft;)V
    .registers 2

    .line 453
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->occupation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-void
.end method

.method public setPile(Z)V
    .registers 2

    .line 383
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->pile:Z

    return-void
.end method

.method public setSnow(I)V
    .registers 3

    const/4 v0, 0x0

    .line 962
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0xff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->snow:B

    return-void
.end method

.method public setTrafficLights(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 483
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->mayHaveTrafficLights()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/objects/Road;->trafficLights:Z

    return-void
.end method

.method public shouldHaveTrafficLights()Z
    .registers 3

    .line 479
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->trafficLights:[I

    if-eqz v0, :cond_17

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->frame:I

    rem-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_17

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v0, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public swapPedestrians(II)V
    .registers 6

    .line 1040
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrians:[Linfo/flowersoft/theotown/city/objects/Pedestrian;

    aget-object v1, v0, p1

    .line 1041
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 1042
    aput-object v1, v0, p2

    return-void
.end method

.method public final updateFlagsAndDirs()V
    .registers 12

    .line 859
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-wide v2, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->xFlags:J

    goto :goto_11

    :cond_d
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-wide v2, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->flags:J

    :goto_11
    iput-wide v2, p0, Linfo/flowersoft/theotown/city/objects/Road;->flags:J

    .line 860
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->dirs:[I

    iput-object v2, p0, Linfo/flowersoft/theotown/city/objects/Road;->dirs:[I

    .line 861
    iget v2, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->sidewalkOffset:F

    iput v2, p0, Linfo/flowersoft/theotown/city/objects/Road;->sidewalkOffset:F

    .line 862
    iget v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->sidewalkSize:F

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->sidewalkSize:F

    .line 864
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 866
    :goto_2b
    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    if-eqz v3, :cond_73

    move v3, v2

    .line 867
    :goto_30
    iget-object v4, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_72

    .line 868
    iget-object v4, p0, Linfo/flowersoft/theotown/city/objects/Road;->decorations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    if-eqz v0, :cond_45

    .line 869
    iget-wide v5, v4, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->xFlags:J

    goto :goto_47

    :cond_45
    iget-wide v5, v4, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->flags:J

    :goto_47
    if-eqz v0, :cond_4c

    .line 870
    iget-wide v7, v4, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->removeXFlags:J

    goto :goto_4e

    :cond_4c
    iget-wide v7, v4, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->removeFlags:J

    .line 871
    :goto_4e
    iget-wide v9, p0, Linfo/flowersoft/theotown/city/objects/Road;->flags:J

    not-long v7, v7

    and-long/2addr v7, v9

    or-long/2addr v5, v7

    .line 872
    iput-wide v5, p0, Linfo/flowersoft/theotown/city/objects/Road;->flags:J

    .line 873
    iget-boolean v5, v4, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->allowRoadCrossing:Z

    or-int/2addr v3, v5

    .line 875
    iget v5, v4, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->sidewalkOffset:F

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-ltz v7, :cond_61

    .line 876
    iput v5, p0, Linfo/flowersoft/theotown/city/objects/Road;->sidewalkOffset:F

    .line 879
    :cond_61
    iget v5, v4, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->sidewalkSize:F

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_69

    .line 880
    iput v5, p0, Linfo/flowersoft/theotown/city/objects/Road;->sidewalkSize:F

    .line 883
    :cond_69
    iget-object v4, v4, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->dirs:[I

    if-eqz v4, :cond_6f

    .line 884
    iput-object v4, p0, Linfo/flowersoft/theotown/city/objects/Road;->dirs:[I

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_72
    move v2, v3

    .line 889
    :cond_73
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 891
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object v0

    .line 892
    iget-wide v3, p0, Linfo/flowersoft/theotown/city/objects/Road;->flags:J

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v5

    if-ne v5, v1, :cond_88

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->xFlags:J

    goto :goto_8a

    :cond_88
    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->flags:J

    :goto_8a
    or-long/2addr v0, v3

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->flags:J

    :cond_8d
    if-eqz v2, :cond_97

    .line 896
    iget-short v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrianFlags:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrianFlags:S

    return-void

    .line 898
    :cond_97
    iget-short v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrianFlags:S

    and-int/lit8 v0, v0, -0x3

    int-to-short v0, v0

    iput-short v0, p0, Linfo/flowersoft/theotown/city/objects/Road;->pedestrianFlags:S

    return-void
.end method
