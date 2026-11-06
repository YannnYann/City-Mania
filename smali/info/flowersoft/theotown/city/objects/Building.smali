###### Class info.flowersoft.theotown.city.objects.Building (info.flowersoft.theotown.city.objects.Building)
.class public final Linfo/flowersoft/theotown/city/objects/Building;
.super Ljava/lang/Object;
.source "Building.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/objects/Renameable;


# instance fields
.field public _BUILDING_CONTROLLERS:[I

.field public _IDLE_ID:I

.field public animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

.field public final aspects:[I

.field public attributeContainer:Linfo/flowersoft/theotown/city/objects/AttributeContainer;

.field public buildDay:J

.field public buildTimeMS:J

.field public childrenXY:Lio/blueflower/stapel2d/util/IntList;

.field public crime:Linfo/flowersoft/theotown/city/objects/CrimeType;

.field public customBuildingIcon:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public decoFrame:I

.field public draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public emptyCause:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

.field public flags:S

.field public frame:I

.field public groundTileFrame:I

.field public lastDrawn:I

.field public lastDrawnN:[I

.field public lastIllness:J

.field public luaStorage:Lvm2/LuaTable;

.field public luaStorageProxy:Lvm2/LuaTable;

.field public maxTerrainLevel:I

.field public minTerrainLevel:I

.field public name:Ljava/lang/String;

.field public ownTimeShift:I

.field public parentX:S

.field public parentY:S

.field public pendingPedestrians:I

.field public pendingUpgrades:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Linfo/flowersoft/theotown/draft/UpgradeDraft;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public performance:F

.field public reachability:F

.field public spentMoney:I

.field public final tempUsedAspectAmount:[I

.field public text:Ljava/lang/String;

.field public tileHash:I

.field public totalTransferred:I

.field public upgrades:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/UpgradeDraft;",
            ">;"
        }
    .end annotation
.end field

.field public usage:F

.field public final usedAspectAmount:[I

.field public waiting:I

.field public waterWaste:F

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 143
    new-array v0, v0, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->aspects:[I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 147
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->performance:F

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    const/4 v0, -0x1

    .line 159
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->groundTileFrame:I

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->spentMoney:I

    const/4 v1, 0x1

    .line 206
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->setHasPowerFlag(Z)V

    .line 207
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->setHasWaterFlag(Z)V

    .line 208
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setUntouchableFlag(Z)V

    .line 209
    sget-object v0, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->values:[I

    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->usedAspectAmount:[I

    .line 210
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->tempUsedAspectAmount:[I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 211
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->reachability:F

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/draft/BuildingDraft;IIIIJZ)V
    .registers 9

    .line 528
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/objects/Building;-><init>()V

    .line 530
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 531
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->x:I

    .line 532
    iput p3, p0, Linfo/flowersoft/theotown/city/objects/Building;->y:I

    .line 533
    iput p4, p0, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    .line 534
    iput p5, p0, Linfo/flowersoft/theotown/city/objects/Building;->decoFrame:I

    .line 535
    iput-wide p6, p0, Linfo/flowersoft/theotown/city/objects/Building;->buildDay:J

    .line 536
    invoke-virtual {p0, p8}, Linfo/flowersoft/theotown/city/objects/Building;->setBuiltFlag(Z)V

    const/4 p1, 0x1

    .line 537
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setHasRoadFlag(Z)V

    .line 538
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/16 p4, 0xc8

    invoke-virtual {p1, p4}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->ownTimeShift:I

    .line 539
    invoke-static {p2, p3}, Linfo/flowersoft/theotown/util/Hashing;->hash(II)I

    move-result p1

    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result p2

    xor-int/2addr p1, p2

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->tileHash:I

    .line 541
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->initAnimationSpots()V

    .line 542
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->pickGroundTileFrame()V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 303
    const-string v0, "id"

    const/4 v1, 0x6

    const/4 v2, 0x2

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/objects/Building;-><init>()V

    const/4 v3, 0x1

    .line 305
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/city/objects/Building;->setHasRoadFlag(Z)V

    const/4 v4, 0x0

    .line 306
    iput v4, p0, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    const/4 v5, -0x1

    .line 307
    iput v5, p0, Linfo/flowersoft/theotown/city/objects/Building;->decoFrame:I

    .line 308
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/city/objects/Building;->setIsEmptyFlag(Z)V

    .line 309
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/city/objects/Building;->setBuiltFlag(Z)V

    const v6, 0x7fffffff

    .line 310
    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->spentMoney:I

    .line 312
    :goto_1c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_426

    .line 313
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v7, 0x447a0000    # 1000.0f

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_46e

    :goto_33
    move v6, v5

    goto/16 :goto_1da

    :sswitch_36
    const-string v9, "children"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    goto :goto_33

    :cond_3f
    const/16 v6, 0x1f

    goto/16 :goto_1da

    :sswitch_43
    const-string v9, "upgrades"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4c

    goto :goto_33

    :cond_4c
    const/16 v6, 0x1e

    goto/16 :goto_1da

    :sswitch_50
    const-string v9, "deco frame"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_59

    goto :goto_33

    :cond_59
    const/16 v6, 0x1d

    goto/16 :goto_1da

    :sswitch_5d
    const-string v9, "waiting"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66

    goto :goto_33

    :cond_66
    const/16 v6, 0x1c

    goto/16 :goto_1da

    :sswitch_6a
    const-string v9, "is working"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_73

    goto :goto_33

    :cond_73
    const/16 v6, 0x1b

    goto/16 :goto_1da

    :sswitch_77
    const-string v9, "animation spots"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_80

    goto :goto_33

    :cond_80
    const/16 v6, 0x1a

    goto/16 :goto_1da

    :sswitch_84
    const-string v9, "untouchable"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8d

    goto :goto_33

    :cond_8d
    const/16 v6, 0x19

    goto/16 :goto_1da

    :sswitch_91
    const-string v9, "frame"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9a

    goto :goto_33

    :cond_9a
    const/16 v6, 0x18

    goto/16 :goto_1da

    :sswitch_9e
    const-string v9, "empty"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a7

    goto :goto_33

    :cond_a7
    const/16 v6, 0x17

    goto/16 :goto_1da

    :sswitch_ab
    const-string v9, "aspcs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b5

    goto/16 :goto_33

    :cond_b5
    const/16 v6, 0x16

    goto/16 :goto_1da

    :sswitch_b9
    const-string v9, "has road"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c3

    goto/16 :goto_33

    :cond_c3
    const/16 v6, 0x15

    goto/16 :goto_1da

    :sswitch_c7
    const-string v9, "text"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d1

    goto/16 :goto_33

    :cond_d1
    const/16 v6, 0x14

    goto/16 :goto_1da

    :sswitch_d5
    const-string v9, "name"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_df

    goto/16 :goto_33

    :cond_df
    const/16 v6, 0x13

    goto/16 :goto_1da

    :sswitch_e3
    const-string v9, "lill"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ed

    goto/16 :goto_33

    :cond_ed
    const/16 v6, 0x12

    goto/16 :goto_1da

    :sswitch_f1
    const-string v9, "rbt"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_fb

    goto/16 :goto_33

    :cond_fb
    const/16 v6, 0x11

    goto/16 :goto_1da

    :sswitch_ff
    const-string v9, "lua"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_109

    goto/16 :goto_33

    :cond_109
    const/16 v6, 0x10

    goto/16 :goto_1da

    :sswitch_10d
    const-string v9, "gtf"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_117

    goto/16 :goto_33

    :cond_117
    const/16 v6, 0xf

    goto/16 :goto_1da

    :sswitch_11b
    const-string v9, "asc"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_125

    goto/16 :goto_33

    :cond_125
    const/16 v6, 0xe

    goto/16 :goto_1da

    :sswitch_129
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_131

    goto/16 :goto_33

    :cond_131
    const/16 v6, 0xd

    goto/16 :goto_1da

    :sswitch_135
    const-string v9, "as"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13f

    goto/16 :goto_33

    :cond_13f
    const/16 v6, 0xc

    goto/16 :goto_1da

    :sswitch_143
    const-string v9, "y"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14d

    goto/16 :goto_33

    :cond_14d
    const/16 v6, 0xb

    goto/16 :goto_1da

    :sswitch_151
    const-string v9, "x"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15b

    goto/16 :goto_33

    :cond_15b
    const/16 v6, 0xa

    goto/16 :goto_1da

    :sswitch_15f
    const-string v9, "w"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_169

    goto/16 :goto_33

    :cond_169
    const/16 v6, 0x9

    goto/16 :goto_1da

    :sswitch_16d
    const-string v9, "u"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_177

    goto/16 :goto_33

    :cond_177
    const/16 v6, 0x8

    goto/16 :goto_1da

    :sswitch_17b
    const-string v9, "spent diamonds"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_185

    goto/16 :goto_33

    :cond_185
    const/4 v6, 0x7

    goto :goto_1da

    :sswitch_187
    const-string v9, "smoney"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_191

    goto/16 :goto_33

    :cond_191
    move v6, v1

    goto :goto_1da

    :sswitch_193
    const-string v9, "total transferred"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19d

    goto/16 :goto_33

    :cond_19d
    const/4 v6, 0x5

    goto :goto_1da

    :sswitch_19f
    const-string v9, "parent"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a9

    goto/16 :goto_33

    :cond_1a9
    const/4 v6, 0x4

    goto :goto_1da

    :sswitch_1ab
    const-string v9, "ecause"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b5

    goto/16 :goto_33

    :cond_1b5
    const/4 v6, 0x3

    goto :goto_1da

    :sswitch_1b7
    const-string v9, "build day"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c1

    goto/16 :goto_33

    :cond_1c1
    move v6, v2

    goto :goto_1da

    :sswitch_1c3
    const-string v9, "performance"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1cd

    goto/16 :goto_33

    :cond_1cd
    move v6, v3

    goto :goto_1da

    :sswitch_1cf
    const-string v9, "pending upgrades"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d9

    goto/16 :goto_33

    :cond_1d9
    move v6, v4

    :goto_1da
    packed-switch v6, :pswitch_data_4f0

    .line 498
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_1c

    .line 486
    :pswitch_1e2
    new-instance v6, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v6}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    .line 487
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 488
    :goto_1ec
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1fc

    .line 489
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    .line 490
    iget-object v7, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v7, v6}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_1ec

    .line 492
    :cond_1fc
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_1c

    .line 386
    :pswitch_201
    iget-object v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/draft/BuildingDraft;->hasUpgrades()Z

    move-result v6

    if-eqz v6, :cond_248

    .line 387
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    .line 388
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 389
    :cond_213
    :goto_213
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_243

    .line 390
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 393
    iget-object v7, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->upgrades:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_225
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_23a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 394
    iget-object v10, v9, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_225

    goto :goto_23b

    :cond_23a
    move-object v9, v8

    :goto_23b
    if-eqz v9, :cond_213

    .line 401
    iget-object v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_213

    .line 404
    :cond_243
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_1c

    .line 406
    :cond_248
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_1c

    .line 350
    :pswitch_24d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->decoFrame:I

    goto/16 :goto_1c

    .line 374
    :pswitch_255
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->waiting:I

    goto/16 :goto_1c

    .line 356
    :pswitch_25d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/city/objects/Building;->setBuiltFlag(Z)V

    goto/16 :goto_1c

    .line 365
    :pswitch_266
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/city/objects/Building;->setUntouchableFlag(Z)V

    goto/16 :goto_1c

    .line 343
    :pswitch_26f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->peek()I

    move-result v6

    if-ne v6, v1, :cond_27a

    .line 344
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_1c

    .line 346
    :cond_27a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iget-object v7, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v7, v7

    sub-int/2addr v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    goto/16 :goto_1c

    .line 359
    :pswitch_28c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/city/objects/Building;->setIsEmptyFlag(Z)V

    goto/16 :goto_1c

    .line 451
    :pswitch_295
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    move v6, v4

    :goto_299
    if-ge v6, v2, :cond_2ab

    .line 452
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2ab

    .line 453
    iget-object v7, p0, Linfo/flowersoft/theotown/city/objects/Building;->aspects:[I

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v8

    aput v8, v7, v6

    add-int/2addr v6, v3

    goto :goto_299

    .line 455
    :cond_2ab
    :goto_2ab
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b5

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_2ab

    .line 456
    :cond_2b5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_1c

    .line 362
    :pswitch_2ba
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/city/objects/Building;->setHasRoadFlag(Z)V

    goto/16 :goto_1c

    .line 478
    :pswitch_2c3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->text:Ljava/lang/String;

    goto/16 :goto_1c

    .line 383
    :pswitch_2cb
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->name:Ljava/lang/String;

    goto/16 :goto_1c

    .line 472
    :pswitch_2d3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->lastIllness:J

    goto/16 :goto_1c

    .line 368
    :pswitch_2db
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->reachability:F

    goto/16 :goto_1c

    .line 469
    :pswitch_2e7
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Lio/blueflower/stapel2d/util/json/JsonReader;)Lvm2/LuaTable;

    move-result-object v6

    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/city/objects/Building;->setLuaStorage(Lvm2/LuaTable;)V

    goto/16 :goto_1c

    .line 475
    :pswitch_2f0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->groundTileFrame:I

    goto/16 :goto_1c

    .line 329
    :pswitch_2f8
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->initAnimationSpots()V

    .line 330
    iget-object v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz v6, :cond_304

    .line 331
    invoke-virtual {v6, p1}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->loadColors(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    goto/16 :goto_1c

    .line 333
    :cond_304
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_1c

    .line 315
    :pswitch_309
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 316
    const-class v7, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {v6, v7}, Linfo/flowersoft/theotown/resources/Drafts;->getOrThrow(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput-object v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 317
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->initAnimationSpots()V

    goto/16 :goto_1c

    .line 321
    :pswitch_31c
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->initAnimationSpots()V

    .line 322
    iget-object v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz v6, :cond_328

    .line 323
    invoke-virtual {v6, p1}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->loadSpeeds(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    goto/16 :goto_1c

    .line 325
    :cond_328
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_1c

    .line 340
    :pswitch_32d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->y:I

    goto/16 :goto_1c

    .line 337
    :pswitch_335
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->x:I

    goto/16 :goto_1c

    .line 380
    :pswitch_33d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->waterWaste:F

    goto/16 :goto_1c

    .line 371
    :pswitch_347
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->usage:F

    goto/16 :goto_1c

    .line 466
    :pswitch_351
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/city/objects/Building;->setSpentDiamondsOnFlag(Z)V

    goto/16 :goto_1c

    .line 463
    :pswitch_35a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->spentMoney:I

    goto/16 :goto_1c

    .line 377
    :pswitch_362
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->totalTransferred:I

    goto/16 :goto_1c

    .line 481
    :pswitch_36a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    .line 482
    invoke-static {v6}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v7

    int-to-short v7, v7

    iput-short v7, p0, Linfo/flowersoft/theotown/city/objects/Building;->parentX:S

    .line 483
    invoke-static {v6}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->parentY:S

    goto/16 :goto_1c

    .line 495
    :pswitch_37e
    invoke-static {p1}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object v6

    iput-object v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->emptyCause:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    goto/16 :goto_1c

    .line 353
    :pswitch_386
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->buildDay:J

    goto/16 :goto_1c

    .line 459
    :pswitch_38e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x461c4000    # 10000.0f

    div-float/2addr v6, v7

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->performance:F

    goto/16 :goto_1c

    .line 410
    :pswitch_39b
    iget-object v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/draft/BuildingDraft;->hasUpgrades()Z

    move-result v6

    if-eqz v6, :cond_421

    .line 411
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    .line 412
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 413
    :cond_3ad
    :goto_3ad
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41c

    .line 414
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    const-wide/16 v6, -0x1

    move-object v9, v8

    .line 417
    :goto_3b9
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3e2

    .line 418
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3dd

    const-string v11, "day"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3d8

    .line 426
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3b9

    .line 423
    :cond_3d8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v6

    goto :goto_3b9

    .line 420
    :cond_3dd
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3b9

    .line 429
    :cond_3e2
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    if-eqz v9, :cond_3ad

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_3ad

    .line 433
    iget-object v10, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v10, v10, Linfo/flowersoft/theotown/draft/BuildingDraft;->upgrades:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3f5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_40a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 434
    iget-object v12, v11, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3f5

    goto :goto_40b

    :cond_40a
    move-object v11, v8

    :goto_40b
    if-eqz v11, :cond_3ad

    .line 441
    iget-object v9, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    new-instance v10, Lio/blueflower/stapel2d/util/Tuple;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v10, v11, v6}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3ad

    .line 445
    :cond_41c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_1c

    .line 447
    :cond_421
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_1c

    .line 503
    :cond_426
    iget-object p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result p1

    if-nez p1, :cond_433

    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/city/objects/Building;->setIsEmptyFlag(Z)V

    .line 504
    :cond_433
    iget-object p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->groundTileFrames:[I

    if-eqz p1, :cond_44e

    .line 505
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->groundTileFrame:I

    if-ne v0, v5, :cond_441

    .line 506
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->pickGroundTileFrame()V

    goto :goto_450

    .line 508
    :cond_441
    array-length p1, p1

    sub-int/2addr p1, v3

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->groundTileFrame:I

    goto :goto_450

    .line 511
    :cond_44e
    iput v5, p0, Linfo/flowersoft/theotown/city/objects/Building;->groundTileFrame:I

    .line 514
    :goto_450
    iget-object p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->decoFrames:[I

    if-eqz p1, :cond_459

    array-length p1, p1

    if-nez p1, :cond_45b

    :cond_459
    iput v5, p0, Linfo/flowersoft/theotown/city/objects/Building;->decoFrame:I

    .line 516
    :cond_45b
    iget p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->x:I

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->y:I

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/Hashing;->hash(II)I

    move-result p1

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v0

    xor-int/2addr p1, v0

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->tileHash:I

    return-void

    nop

    :sswitch_data_46e
    .sparse-switch
        -0x5b0c25c0 -> :sswitch_1cf
        -0x583cefd0 -> :sswitch_1c3
        -0x53991116 -> :sswitch_1b7
        -0x4e0594dc -> :sswitch_1ab
        -0x3b54f756 -> :sswitch_19f
        -0x3a92ca16 -> :sswitch_193
        -0x358e8fd3 -> :sswitch_187
        -0xbd5bef -> :sswitch_17b
        0x75 -> :sswitch_16d
        0x77 -> :sswitch_15f
        0x78 -> :sswitch_151
        0x79 -> :sswitch_143
        0xc32 -> :sswitch_135
        0xd1b -> :sswitch_129
        0x17a71 -> :sswitch_11b
        0x19119 -> :sswitch_10d
        0x1a3f8 -> :sswitch_ff
        0x1b844 -> :sswitch_f1
        0x32afbd -> :sswitch_e3
        0x337a8b -> :sswitch_d5
        0x36452d -> :sswitch_c7
        0x4ec6ce6 -> :sswitch_b9
        0x58cdf6e -> :sswitch_ab
        0x5c2854d -> :sswitch_9e
        0x5d2a96d -> :sswitch_91
        0x19c90aa0 -> :sswitch_84
        0x2285a415 -> :sswitch_77
        0x23eb0a3b -> :sswitch_6a
        0x4289964d -> :sswitch_5d
        0x4405c43a -> :sswitch_50
        0x54daa9d7 -> :sswitch_43
        0x62ea5dff -> :sswitch_36
    .end sparse-switch

    :pswitch_data_4f0
    .packed-switch 0x0
        :pswitch_39b
        :pswitch_38e
        :pswitch_386
        :pswitch_37e
        :pswitch_36a
        :pswitch_362
        :pswitch_35a
        :pswitch_351
        :pswitch_347
        :pswitch_33d
        :pswitch_335
        :pswitch_32d
        :pswitch_31c
        :pswitch_309
        :pswitch_2f8
        :pswitch_2f0
        :pswitch_2e7
        :pswitch_2db
        :pswitch_2d3
        :pswitch_2cb
        :pswitch_2c3
        :pswitch_2ba
        :pswitch_295
        :pswitch_28c
        :pswitch_26f
        :pswitch_266
        :pswitch_31c
        :pswitch_25d
        :pswitch_255
        :pswitch_24d
        :pswitch_201
        :pswitch_1e2
    .end packed-switch
.end method

.method public static getPivotX(IIIII)I
    .registers 7

    .line 0
    if-eqz p2, :cond_17

    const/4 v0, 0x1

    if-eq p2, v0, :cond_13

    const/4 v1, 0x2

    if-eq p2, v1, :cond_f

    const/4 p1, 0x3

    if-eq p2, p1, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    add-int/2addr p0, p4

    return p0

    :cond_f
    add-int/2addr p0, p1

    sub-int/2addr p0, v0

    sub-int/2addr p0, p3

    return p0

    :cond_13
    add-int/2addr p0, p1

    sub-int/2addr p0, v0

    sub-int/2addr p0, p4

    return p0

    :cond_17
    add-int/2addr p0, p3

    return p0
.end method

.method public static getPivotY(IIIII)I
    .registers 7

    .line 0
    if-eqz p2, :cond_17

    const/4 v0, 0x1

    if-eq p2, v0, :cond_15

    const/4 v1, 0x2

    if-eq p2, v1, :cond_11

    const/4 p4, 0x3

    if-eq p2, p4, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    add-int/2addr p0, p1

    sub-int/2addr p0, v0

    sub-int/2addr p0, p3

    return p0

    :cond_11
    add-int/2addr p0, p1

    sub-int/2addr p0, v0

    sub-int/2addr p0, p4

    return p0

    :cond_15
    add-int/2addr p0, p3

    return p0

    :cond_17
    add-int/2addr p0, p4

    return p0
.end method

.method public static isPivot(IIILinfo/flowersoft/theotown/draft/BuildingDraft;IIIII)Z
    .registers 10

    .line 1514
    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v0

    .line 1515
    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result p3

    .line 1517
    invoke-static {p5, v0, p2, p7, p8}, Linfo/flowersoft/theotown/city/objects/Building;->getPivotX(IIIII)I

    move-result p4

    if-ne p0, p4, :cond_16

    .line 1518
    invoke-static {p6, p3, p2, p7, p8}, Linfo/flowersoft/theotown/city/objects/Building;->getPivotY(IIIII)I

    move-result p0

    if-ne p1, p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public activeAnimationSpotFrame(II)I
    .registers 5

    .line 1950
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->initAnimationSpots()V

    .line 1951
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-nez v0, :cond_9

    const/4 p1, 0x0

    return p1

    .line 1952
    :cond_9
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->ownTimeShift:I

    add-int/2addr p1, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    .line 1953
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 1952
    invoke-virtual {v0, p1, v1, p2}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->activeAnimationSpotFrame(ILinfo/flowersoft/theotown/draft/AnimationSpot;I)I

    move-result p1

    return p1
.end method

.method public addChild(II)V
    .registers 4

    .line 236
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    if-nez v0, :cond_b

    .line 237
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    .line 239
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    return-void
.end method

.method public addFinishedUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)V
    .registers 3

    .line 1814
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    .line 1815
    :cond_b
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 1816
    :cond_12
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addReachability(F)V
    .registers 3

    .line 644
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->reachability:F

    add-float/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->reachability:F

    return-void
.end method

.method public addWaiter()Z
    .registers 2

    const/4 v0, 0x1

    .line 844
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->addWaiters(I)Z

    move-result v0

    return v0
.end method

.method public addWaiters(I)Z
    .registers 3

    .line 848
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->waiting:I

    add-int/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->waiting:I

    .line 849
    iget-object p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->capacity:I

    if-gt v0, p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public appendUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;J)V
    .registers 6

    .line 1774
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    .line 1777
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    new-instance v1, Lio/blueflower/stapel2d/util/Tuple;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyDayTimeShift(J)V
    .registers 5

    .line 1615
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->buildDay:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->buildDay:J

    return-void
.end method

.method public childCount()I
    .registers 2

    .line 243
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    return v0
.end method

.method public containsChild(II)Z
    .registers 3

    .line 270
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/objects/Building;->getChildIndex(II)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public containsTile(II)Z
    .registers 5

    .line 1505
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->x:I

    if-gt v0, p1, :cond_18

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_18

    iget p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->y:I

    if-gt p1, p2, :cond_18

    .line 1506
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    if-ge p2, p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public countCurrentHabitants()I
    .registers 2

    .line 1603
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isBuiltFlag()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 6

    .line 1009
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 1010
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->maxTerrainLevel:I

    int-to-float v0, v0

    .line 1011
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsSlope:Z

    if-eqz v1, :cond_12

    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    :cond_12
    neg-float v1, v0

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v1, v2

    const/4 v3, 0x0

    .line 1012
    invoke-virtual {p1, v3, v1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 1013
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isBuiltFlag()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1014
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->drawFinished(Linfo/flowersoft/theotown/city/Drawer;)V

    goto :goto_27

    .line 1016
    :cond_24
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->drawInConstruction(Linfo/flowersoft/theotown/city/Drawer;)V

    .line 1018
    :goto_27
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->drawNewlyBuiltAnimation(Linfo/flowersoft/theotown/city/Drawer;)V

    mul-float/2addr v0, v2

    .line 1019
    invoke-virtual {p1, v3, v0}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    return-void
.end method

.method public final drawFinished(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1031
    iget v2, v0, Linfo/flowersoft/theotown/city/objects/Building;->groundTileFrame:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_12

    .line 1032
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->groundTileFrames:[I

    aget v2, v3, v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/objects/Building;->drawGroundFrames(Linfo/flowersoft/theotown/city/Drawer;I)V

    .line 1035
    :cond_12
    iget v2, v1, Linfo/flowersoft/theotown/city/Drawer;->time:I

    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Building;->ownTimeShift:I

    add-int/2addr v2, v3

    if-gez v2, :cond_1c

    const/high16 v3, -0x80000000

    add-int/2addr v2, v3

    :cond_1c
    move v10, v2

    .line 1040
    iget-object v2, v0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomizeAnimation:Z

    const/4 v11, 0x0

    if-eqz v2, :cond_30

    iget v2, v0, Linfo/flowersoft/theotown/city/objects/Building;->x:I

    mul-int/lit16 v2, v2, 0x5d85

    const v3, 0x9a5d

    iget v4, v0, Linfo/flowersoft/theotown/city/objects/Building;->y:I

    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    goto :goto_31

    :cond_30
    move v2, v11

    :goto_31
    add-int/2addr v2, v10

    int-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    div-float v7, v2, v3

    .line 1042
    iget v2, v1, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    .line 1043
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->isBurning()Z

    move-result v3

    if-eqz v3, :cond_41

    or-int/lit8 v2, v2, 0x4

    :cond_41
    move v8, v2

    .line 1047
    iget-object v2, v0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->animation:Z

    if-eqz v2, :cond_54

    .line 1048
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, v0, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    .line 1051
    :cond_54
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v2

    const/high16 v14, 0x40000000    # 2.0f

    const/4 v15, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v2, :cond_c2

    .line 1052
    iget-object v2, v0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 1053
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v2, Linfo/flowersoft/theotown/draft/UpgradeDraft;->buildTime:J

    add-long/2addr v3, v5

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    long-to-double v12, v3

    move-wide/from16 v19, v12

    .line 1054
    iget-wide v11, v1, Linfo/flowersoft/theotown/city/Drawer;->day:D

    sub-double v12, v19, v11

    long-to-double v5, v5

    div-double/2addr v12, v5

    sub-double v12, v16, v12

    double-to-float v2, v12

    .line 1055
    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1056
    sget-object v5, Linfo/flowersoft/theotown/resources/Drafts;->SITES:Ljava/util/List;

    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Building;->ownTimeShift:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    rem-int/2addr v6, v11

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/SiteDraft;

    sub-float v6, v9, v2

    mul-float/2addr v6, v14

    sub-float/2addr v6, v9

    .line 1057
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v9, v6

    move/from16 v34, v2

    move-object v2, v1

    move-object v1, v5

    move-wide/from16 v35, v3

    move/from16 v3, v34

    move v4, v6

    move-wide/from16 v5, v35

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/objects/Building;->drawSiteBackground(Linfo/flowersoft/theotown/draft/SiteDraft;Linfo/flowersoft/theotown/city/Drawer;FFJ)V

    move-object v1, v2

    :goto_c0
    move-object v11, v0

    goto :goto_c5

    :cond_c2
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    goto :goto_c0

    .line 1060
    :goto_c5
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 1061
    iget-object v0, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1064
    :cond_d2
    iget v0, v11, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    const/4 v12, 0x1

    if-ltz v0, :cond_10e

    .line 1066
    iget-object v2, v11, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v3, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    if-eqz v3, :cond_f9

    .line 1067
    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->extRotationAware:Z

    if-eqz v2, :cond_ed

    and-int/lit8 v2, v0, -0x10

    and-int/lit8 v0, v0, 0xf

    .line 1068
    iget v3, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v0, v3}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v0

    :goto_eb
    add-int/2addr v0, v2

    goto :goto_f9

    :cond_ed
    add-int/lit8 v2, v0, 0x4

    .line 1070
    iget v3, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    sub-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    goto :goto_eb

    .line 1073
    :cond_f9
    :goto_f9
    iget-object v2, v11, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v2

    sub-int/2addr v2, v12

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1074
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v3, v11, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v15, v15, v3}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_10e
    move v5, v0

    .line 1077
    iget v0, v11, Linfo/flowersoft/theotown/city/objects/Building;->decoFrame:I

    if-ltz v0, :cond_12a

    .line 1078
    iget-object v2, v11, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->decoFrames:[I

    array-length v2, v2

    sub-int/2addr v2, v12

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v11, Linfo/flowersoft/theotown/city/objects/Building;->decoFrame:I

    .line 1079
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v3, v11, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->decoFrames:[I

    aget v0, v3, v0

    invoke-virtual {v1, v2, v15, v15, v0}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 1083
    :cond_12a
    iget v0, v11, Linfo/flowersoft/theotown/city/objects/Building;->tileHash:I

    int-to-long v2, v0

    move v0, v9

    move v13, v10

    iget-wide v9, v1, Linfo/flowersoft/theotown/city/Drawer;->daytimeDay:D

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    add-double v9, v9, v19

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-long v9, v9

    const-wide/16 v21, 0xbab

    mul-long v9, v9, v21

    add-long/2addr v2, v9

    .line 1084
    iget v4, v1, Linfo/flowersoft/theotown/city/Drawer;->daytime:F

    const v6, 0x3d4ccccd    # 0.05f

    add-float/2addr v4, v6

    iget-object v6, v11, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v6, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomizeLights:Z

    if-eqz v6, :cond_158

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v21, 0xa

    rem-long v9, v9, v21

    const-wide/16 v21, 0x5

    sub-long v9, v9, v21

    goto :goto_15a

    :cond_158
    const-wide/16 v9, 0x0

    :goto_15a
    long-to-float v6, v9

    const/high16 v9, 0x42480000    # 50.0f

    div-float/2addr v6, v9

    add-float/2addr v4, v6

    rem-float/2addr v4, v0

    mul-float/2addr v4, v14

    sub-float v9, v0, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v9, v0, v4

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v4, v9, v4

    if-gez v4, :cond_193

    .line 1085
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->hasPower()Z

    move-result v4

    if-eqz v4, :cond_193

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v4

    if-nez v4, :cond_193

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_193

    const-wide/16 v9, 0x64

    rem-long/2addr v2, v9

    long-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget-object v3, v11, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->nightLightProbability:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_193

    move v9, v12

    goto :goto_194

    :cond_193
    const/4 v9, 0x0

    .line 1087
    :goto_194
    iget-object v2, v11, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    if-eqz v2, :cond_1b2

    move v2, v0

    .line 1088
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    iget-object v3, v11, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    move v4, v2

    iget-object v2, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpotIndices:[[I

    move v6, v4

    iget v4, v11, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    move v10, v6

    move v6, v7

    move v7, v8

    iget-object v8, v11, Linfo/flowersoft/theotown/city/objects/Building;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFILinfo/flowersoft/theotown/city/objects/AnimationSpots;Z)V

    goto :goto_1b5

    :cond_1b2
    move v10, v0

    move v6, v7

    move v7, v8

    .line 1094
    :goto_1b5
    iget-object v0, v11, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;->hasUpgrades()Z

    move-result v0

    if-eqz v0, :cond_31e

    iget-object v0, v11, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    if-eqz v0, :cond_31e

    const/4 v0, 0x0

    :goto_1c2
    const/4 v2, 0x2

    if-ge v0, v2, :cond_31e

    const/4 v2, 0x0

    .line 1096
    :goto_1c6
    iget-object v3, v11, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_212

    .line 1097
    iget-object v3, v11, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 1098
    iget-object v4, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v8, v4

    if-le v8, v0, :cond_1e2

    .line 1099
    sget-object v8, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    aget v4, v4, v0

    invoke-virtual {v1, v8, v15, v15, v4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 1101
    :cond_1e2
    iget-object v4, v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;->animationSpots:Ljava/util/List;

    if-eqz v4, :cond_203

    if-ne v0, v12, :cond_203

    move v4, v0

    .line 1102
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    move v8, v2

    iget-object v2, v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;->animationSpots:Ljava/util/List;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;->animationSpotIndices:[[I

    move/from16 v21, v4

    iget v4, v11, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    move/from16 v22, v8

    const/4 v8, 0x0

    move/from16 v23, v14

    move/from16 v14, v21

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFILinfo/flowersoft/theotown/city/objects/AnimationSpots;Z)V

    move/from16 v21, v9

    goto :goto_20a

    :cond_203
    move/from16 v22, v2

    move/from16 v21, v9

    move/from16 v23, v14

    move v14, v0

    :goto_20a
    add-int/lit8 v2, v22, 0x1

    move v0, v14

    move/from16 v9, v21

    move/from16 v14, v23

    goto :goto_1c6

    :cond_212
    move/from16 v21, v9

    move/from16 v23, v14

    move v14, v0

    .line 1107
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v0

    if-eqz v0, :cond_307

    .line 1108
    iget-object v0, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 1109
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result v2

    .line 1110
    iget-object v3, v11, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 1111
    iget-object v8, v11, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {v8}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move/from16 v18, v5

    iget-wide v4, v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;->buildTime:J

    add-long/2addr v8, v4

    move/from16 v24, v13

    long-to-double v12, v8

    .line 1112
    iget-wide v10, v1, Linfo/flowersoft/theotown/city/Drawer;->day:D

    sub-double/2addr v12, v10

    long-to-double v4, v4

    div-double/2addr v12, v4

    sub-double v12, v16, v12

    double-to-float v4, v12

    .line 1113
    invoke-static {v4, v15}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v11

    int-to-double v4, v2

    float-to-double v12, v11

    move/from16 v25, v10

    sub-float v10, v25, v11

    move-wide/from16 v26, v4

    float-to-double v4, v10

    move-wide/from16 v28, v8

    move/from16 v8, v24

    .line 1114
    rem-int/lit16 v9, v8, 0x3e8

    move-wide/from16 v30, v4

    int-to-double v4, v9

    const-wide v32, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v4, v32

    const-wide v32, 0x408f400000000000L    # 1000.0

    div-double v4, v4, v32

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v19

    add-double v4, v4, v19

    mul-double v4, v4, v30

    add-double/2addr v12, v4

    mul-double v4, v26, v12

    double-to-int v4, v4

    invoke-virtual {v0, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 1115
    iget-object v4, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v5, v4

    if-le v5, v14, :cond_29b

    .line 1116
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    aget v4, v4, v14

    invoke-virtual {v1, v5, v15, v15, v4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 1118
    :cond_29b
    iget-object v4, v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;->animationSpots:Ljava/util/List;

    if-eqz v4, :cond_2c7

    const/4 v4, 0x1

    if-ne v14, v4, :cond_2c7

    move-object v4, v0

    .line 1119
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    move v5, v2

    iget-object v2, v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;->animationSpots:Ljava/util/List;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;->animationSpotIndices:[[I

    move-object/from16 v12, p0

    move-object v9, v4

    iget v4, v12, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    move/from16 v24, v8

    const/4 v8, 0x0

    move-object v13, v9

    const/4 v9, 0x0

    move-object v15, v13

    move/from16 v13, v24

    move/from16 v24, v10

    move v10, v5

    move/from16 v5, v18

    const/16 v18, 0x0

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFILinfo/flowersoft/theotown/city/objects/AnimationSpots;Z)V

    move v9, v5

    :goto_2c4
    move v8, v7

    move v7, v6

    goto :goto_2d3

    :cond_2c7
    move-object/from16 v12, p0

    move-object v15, v0

    move v13, v8

    move/from16 v24, v10

    move/from16 v9, v18

    const/16 v18, 0x0

    move v10, v2

    goto :goto_2c4

    .line 1123
    :goto_2d3
    invoke-virtual {v15, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/4 v10, 0x1

    if-ne v14, v10, :cond_301

    .line 1125
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->SITES:Ljava/util/List;

    iget v1, v12, Linfo/flowersoft/theotown/city/objects/Building;->ownTimeShift:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Linfo/flowersoft/theotown/draft/SiteDraft;

    mul-float v0, v24, v23

    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v0, v0, v25

    .line 1126
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v4, v25, v0

    move-object/from16 v2, p1

    move v3, v11

    move-object v0, v12

    move-wide/from16 v5, v28

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/objects/Building;->drawSiteForeground(Linfo/flowersoft/theotown/draft/SiteDraft;Linfo/flowersoft/theotown/city/Drawer;FFJ)V

    move-object v11, v0

    move-object v1, v2

    goto :goto_30f

    :cond_301
    move-object/from16 v1, p1

    move-object v11, v12

    const/high16 v25, 0x3f800000    # 1.0f

    goto :goto_30f

    :cond_307
    move v9, v5

    move v8, v7

    move/from16 v25, v10

    move v10, v12

    const/16 v18, 0x0

    move v7, v6

    :goto_30f
    add-int/lit8 v0, v14, 0x1

    move v6, v7

    move v7, v8

    move v5, v9

    move v12, v10

    move/from16 v9, v21

    move/from16 v14, v23

    move/from16 v10, v25

    const/4 v15, 0x0

    goto/16 :goto_1c2

    :cond_31e
    move v9, v5

    move v7, v6

    const/16 v18, 0x0

    .line 1132
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_35c

    .line 1133
    iget-object v0, v11, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->smokeSpots:Ljava/util/List;

    if-eqz v0, :cond_35c

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->isEmptyFlag()Z

    move-result v0

    if-nez v0, :cond_35c

    iget-object v0, v1, Linfo/flowersoft/theotown/city/Drawer;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/LODController;->drawSmoke()Z

    move-result v0

    if-eqz v0, :cond_35c

    move/from16 v0, v18

    .line 1134
    :goto_33e
    iget-object v2, v11, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->smokeSpots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_35c

    .line 1135
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    iget-object v3, v11, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->smokeSpots:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/SmokeSpot;

    invoke-virtual {v2, v1, v9, v3, v13}, Linfo/flowersoft/theotown/drawing/Drawing;->drawSmoke(Linfo/flowersoft/theotown/city/Drawer;ILinfo/flowersoft/theotown/draft/SmokeSpot;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_33e

    .line 1140
    :cond_35c
    iget-object v0, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1142
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->isBurningFlag()Z

    move-result v0

    if-eqz v0, :cond_386

    iget-object v0, v11, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->useFireFrames:Z

    if-eqz v0, :cond_386

    .line 1143
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    iget v2, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v11, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v2

    iget v3, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v11, v3}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v3

    iget v5, v11, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    move v6, v7

    move v4, v13

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/drawing/Drawing;->drawFires(Linfo/flowersoft/theotown/city/Drawer;IIIIF)V

    .line 1145
    :cond_386
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->isIll()Z

    move-result v0

    if-eqz v0, :cond_3a3

    iget-object v0, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getAdditive()I

    move-result v0

    if-nez v0, :cond_3a3

    .line 1146
    iget v0, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v11, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v0

    iget v2, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v11, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v2

    invoke-virtual {v11, v1, v0, v2, v13}, Linfo/flowersoft/theotown/city/objects/Building;->drawSick(Linfo/flowersoft/theotown/city/Drawer;III)V

    .line 1149
    :cond_3a3
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v0

    if-nez v0, :cond_3ac

    .line 1150
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/city/objects/Building;->drawIcon(Linfo/flowersoft/theotown/city/Drawer;)V

    :cond_3ac
    return-void
.end method

.method public final drawGroundFrames(Linfo/flowersoft/theotown/city/Drawer;I)V
    .registers 8

    .line 1278
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2c

    const/4 v1, 0x0

    .line 1279
    :goto_b
    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v2

    if-ge v1, v2, :cond_29

    add-int v2, v1, v0

    mul-int/lit8 v2, v2, 0x20

    .line 1280
    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v0

    mul-int/lit8 v3, v3, 0x10

    .line 1281
    div-int/lit8 v3, v3, 0x2

    .line 1282
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {p1, v4, v2, v3, p2}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2c
    return-void
.end method

.method public final drawIcon(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 4

    .line 1251
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingIcon()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1253
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v0

    if-lez v1, :cond_11

    const/4 v1, 0x0

    .line 1254
    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->drawIcon(Linfo/flowersoft/theotown/city/Drawer;I)V

    :cond_11
    return-void
.end method

.method public final drawIcon(Linfo/flowersoft/theotown/city/Drawer;I)V
    .registers 6

    .line 1271
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    .line 1272
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, -0x10

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 1274
    invoke-virtual {p1, v0, v1, p2}, Linfo/flowersoft/theotown/city/Drawer;->drawSign(FFI)V

    return-void
.end method

.method public final drawInConstruction(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1288
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_CONSTRUCTION_TILE:I

    .line 1289
    iget-object v12, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 1291
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 v7, 0x1

    if-eqz v3, :cond_1c

    .line 1292
    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/ZoneDraft;->oldId:I

    if-ne v3, v7, :cond_17

    add-int/2addr v1, v7

    goto :goto_1e

    :cond_17
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    add-int/2addr v1, v4

    goto :goto_1e

    :cond_1c
    add-int/lit8 v1, v1, 0x3

    .line 1303
    :goto_1e
    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/city/objects/Building;->drawGroundFrames(Linfo/flowersoft/theotown/city/Drawer;I)V

    .line 1305
    iget-object v1, v0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    iget v3, v2, Linfo/flowersoft/theotown/city/Drawer;->shortBuildTimeFactor:I

    div-int v3, v1, v3

    sub-int/2addr v1, v3

    .line 1306
    iget-wide v3, v0, Linfo/flowersoft/theotown/city/objects/Building;->buildDay:J

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 1307
    iget-wide v3, v2, Linfo/flowersoft/theotown/city/Drawer;->day:D

    iget-wide v8, v0, Linfo/flowersoft/theotown/city/objects/Building;->buildDay:J

    long-to-double v8, v8

    sub-double/2addr v3, v8

    double-to-float v3, v3

    iget-object v4, v0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    sub-int/2addr v4, v1

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    const/high16 v1, 0x3f400000    # 0.75f

    cmpg-float v4, v3, v1

    const/high16 v8, 0x3f800000    # 1.0f

    if-gez v4, :cond_4e

    div-float v1, v3, v1

    :goto_4c
    move v4, v1

    goto :goto_56

    :cond_4e
    sub-float v1, v3, v1

    const/high16 v4, 0x3e800000    # 0.25f

    div-float/2addr v1, v4

    sub-float v1, v8, v1

    goto :goto_4c

    .line 1309
    :goto_56
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->SITES:Ljava/util/List;

    iget v9, v0, Linfo/flowersoft/theotown/city/objects/Building;->ownTimeShift:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    rem-int/2addr v9, v10

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/SiteDraft;

    .line 1311
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/objects/Building;->drawSiteBackground(Linfo/flowersoft/theotown/draft/SiteDraft;Linfo/flowersoft/theotown/city/Drawer;FFJ)V

    move-object v13, v0

    move-object/from16 v17, v1

    move v0, v3

    move/from16 v16, v4

    move-wide v14, v5

    .line 1313
    iget v1, v13, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    .line 1314
    iget-object v3, v13, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v4, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    if-eqz v4, :cond_83

    add-int/lit8 v4, v1, 0x4

    .line 1315
    iget v5, v2, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    sub-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v4

    .line 1317
    :cond_83
    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    sub-int/2addr v3, v7

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1319
    invoke-virtual {v12}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result v1

    int-to-float v3, v1

    .line 1320
    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v12, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 1321
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v4, v13, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v4, v4, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v6, v4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 1322
    iget-object v3, v13, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    if-eqz v3, :cond_d7

    move v3, v0

    .line 1323
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    iget-object v4, v13, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v2, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpotIndices:[[I

    move v6, v3

    move-object v3, v4

    iget v4, v13, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    .line 1326
    iget-object v7, v13, Linfo/flowersoft/theotown/city/objects/Building;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz v7, :cond_c4

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->getColors()[Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v7

    :goto_c2
    move-object v10, v7

    goto :goto_c6

    :cond_c4
    const/4 v7, 0x0

    goto :goto_c2

    :goto_c6
    const/4 v11, 0x0

    move v7, v6

    const/4 v6, 0x0

    move v8, v7

    const/4 v7, 0x0

    move v9, v8

    const/4 v8, 0x0

    move/from16 v18, v9

    const/4 v9, 0x0

    move v13, v1

    move-object/from16 v1, p1

    .line 1323
    invoke-virtual/range {v0 .. v11}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFI[F[I[Lio/blueflower/stapel2d/drawing/Color;Z)V

    goto :goto_da

    :cond_d7
    move/from16 v18, v0

    move v13, v1

    .line 1329
    :goto_da
    invoke-virtual {v12, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide v5, v14

    move/from16 v4, v16

    move-object/from16 v1, v17

    move/from16 v3, v18

    .line 1331
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/objects/Building;->drawSiteForeground(Linfo/flowersoft/theotown/draft/SiteDraft;Linfo/flowersoft/theotown/city/Drawer;FFJ)V

    return-void
.end method

.method public final drawNewlyBuiltAnimation(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1448
    iget-wide v2, v0, Linfo/flowersoft/theotown/city/objects/Building;->buildTimeMS:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    return-void

    .line 1452
    :cond_d
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    iget-wide v6, v0, Linfo/flowersoft/theotown/city/objects/Building;->buildTimeMS:J

    sub-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_dd

    const-wide/16 v6, 0x320

    cmp-long v6, v2, v6

    if-ltz v6, :cond_20

    goto/16 :goto_dd

    :cond_20
    long-to-float v2, v2

    const/high16 v3, 0x44480000    # 800.0f

    div-float/2addr v2, v3

    .line 1460
    iget v3, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v3

    .line 1461
    iget v4, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v4

    .line 1465
    const-string v5, "$watervapor00"

    const-class v6, Linfo/flowersoft/theotown/draft/SmokeDraft;

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/SmokeDraft;

    .line 1466
    iget-object v5, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v6, v2, v6

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v7, v6

    mul-float/2addr v7, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v6, v7

    .line 1471
    iget-object v8, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v8}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result v8

    .line 1472
    iget-object v9, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    int-to-float v10, v8

    const v11, 0x3dcccccd    # 0.1f

    mul-float/2addr v10, v11

    mul-float/2addr v10, v7

    float-to-int v7, v10

    invoke-virtual {v9, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 1474
    iget-object v7, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v7

    .line 1475
    iget-object v9, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v9}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v9

    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v10, v2

    const v11, 0x3f19999a    # 0.6f

    add-float/2addr v10, v11

    .line 1477
    iget-object v11, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    mul-float v12, v7, v10

    mul-float/2addr v10, v9

    invoke-virtual {v11, v12, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/high16 v10, -0x3f000000    # -8.0f

    mul-float/2addr v2, v10

    add-int/lit8 v4, v4, -0x1

    :goto_7e
    const v10, 0x7fffffff

    const/high16 v11, 0x42000000    # 32.0f

    const/high16 v12, 0x40000000    # 2.0f

    if-lez v4, :cond_a9

    add-int/lit8 v13, v3, -0x1

    add-int v14, v13, v4

    int-to-float v14, v14

    add-float/2addr v14, v6

    mul-float/2addr v14, v11

    div-float/2addr v14, v12

    sub-int v11, v13, v4

    mul-int/lit8 v11, v11, 0x10

    int-to-float v11, v11

    div-float/2addr v11, v12

    add-float/2addr v11, v2

    .line 1485
    invoke-static {v13, v4}, Linfo/flowersoft/theotown/util/Hashing;->hash(II)I

    move-result v12

    and-int/2addr v10, v12

    rem-int/lit8 v10, v10, 0x5

    add-int/lit8 v10, v10, -0x2

    int-to-float v10, v10

    add-float/2addr v11, v10

    .line 1487
    sget-object v10, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, v10, v14, v11, v5}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_7e

    :cond_a9
    const/4 v4, 0x0

    move v13, v4

    :goto_ab
    if-ge v13, v3, :cond_cb

    int-to-float v14, v13

    add-float/2addr v14, v6

    mul-float/2addr v14, v11

    div-float/2addr v14, v12

    mul-int/lit8 v15, v13, 0x10

    int-to-float v15, v15

    div-float/2addr v15, v12

    add-float/2addr v15, v2

    .line 1494
    invoke-static {v13, v4}, Linfo/flowersoft/theotown/util/Hashing;->hash(II)I

    move-result v16

    and-int v16, v16, v10

    rem-int/lit8 v16, v16, 0x5

    add-int/lit8 v4, v16, -0x2

    int-to-float v4, v4

    add-float/2addr v15, v4

    .line 1496
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, v4, v14, v15, v5}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_ab

    .line 1499
    :cond_cb
    iget-object v2, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1500
    iget-object v2, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 1501
    iget-object v1, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v7, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void

    .line 1454
    :cond_dd
    :goto_dd
    iput-wide v4, v0, Linfo/flowersoft/theotown/city/objects/Building;->buildTimeMS:J

    return-void
.end method

.method public final drawSick(Linfo/flowersoft/theotown/city/Drawer;III)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1155
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->FRAME_CIRCLE:I

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v3

    .line 1156
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_CIRCLE:I

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v4

    const/4 v5, 0x0

    .line 1157
    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/city/Drawer;->setUseShading(Z)V

    .line 1158
    iget-object v6, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 1159
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getRed()I

    move-result v7

    .line 1160
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getGreen()I

    move-result v8

    .line 1161
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getBlue()I

    move-result v9

    .line 1162
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result v10

    const/16 v11, 0xff

    const/16 v12, 0x3c

    .line 1163
    invoke-virtual {v6, v11, v12, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    add-int v11, v2, p3

    add-int/lit8 v12, v11, -0x2

    mul-int/lit8 v12, v12, 0x20

    .line 1166
    div-int/lit8 v12, v12, 0x4

    add-int/lit8 v12, v12, 0x10

    int-to-float v12, v12

    sub-int v13, v2, p3

    mul-int/lit8 v13, v13, 0x10

    .line 1167
    div-int/lit8 v13, v13, 0x4

    add-int/lit8 v13, v13, 0x4

    int-to-float v13, v13

    .line 1168
    iget-object v14, v0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v14, v14, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int/lit8 v15, v14, 0x4

    int-to-float v15, v15

    sub-float/2addr v13, v15

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v12

    mul-int/lit8 v14, v14, 0x8

    int-to-float v14, v14

    .line 1169
    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    const v15, 0x3f4ccccd    # 0.8f

    mul-float/2addr v14, v15

    div-float/2addr v14, v3

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v3, v15

    mul-float v16, v3, v14

    sub-float v12, v12, v16

    mul-float/2addr v4, v15

    mul-float v15, v4, v14

    sub-float/2addr v13, v15

    const/16 v15, 0x50

    .line 1172
    invoke-virtual {v6, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 1173
    iget-object v15, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget v5, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float/2addr v5, v14

    move/from16 p3, v3

    iget v3, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr v14, v3

    invoke-virtual {v15, v5, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 1174
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_CIRCLE:I

    invoke-virtual {v1, v3, v12, v13, v5}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    const/16 v3, 0xc8

    .line 1177
    invoke-virtual {v6, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/4 v3, 0x0

    :goto_88
    const/4 v5, 0x1

    add-int/lit8 v12, v11, -0x1

    if-ge v3, v12, :cond_120

    if-ge v3, v2, :cond_92

    move v12, v3

    const/4 v13, 0x0

    goto :goto_97

    :cond_92
    add-int/lit8 v12, v2, -0x1

    sub-int v13, v3, v2

    add-int/2addr v13, v5

    .line 1189
    :goto_97
    iget v5, v0, Linfo/flowersoft/theotown/city/objects/Building;->x:I

    add-int/2addr v5, v12

    iget v14, v0, Linfo/flowersoft/theotown/city/objects/Building;->y:I

    add-int/2addr v14, v13

    invoke-static {v5, v14}, Linfo/flowersoft/theotown/util/Hashing;->hash(II)I

    move-result v5

    and-int/lit16 v14, v5, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float/2addr v14, v15

    const v15, 0xffff

    and-int/2addr v15, v5

    int-to-float v15, v15

    const v17, 0x477fff00    # 65535.0f

    div-float v15, v15, v17

    const v17, 0xffffff

    and-int v2, v5, v17

    int-to-float v2, v2

    const v17, 0x4b7fffff    # 1.6777215E7f

    div-float v2, v2, v17

    add-int v5, p4, v5

    .line 1193
    rem-int/lit16 v5, v5, 0x1f40

    move/from16 v18, v2

    move/from16 v17, v3

    int-to-double v2, v5

    const-wide v19, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, v19

    const-wide v19, 0x40bf400000000000L    # 8000.0

    div-double v2, v2, v19

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    add-int v3, v12, v13

    mul-int/lit8 v3, v3, 0x20

    .line 1195
    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v5, 0x42000000    # 32.0f

    mul-float/2addr v14, v5

    add-float/2addr v3, v14

    sub-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x10

    .line 1196
    div-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, -0x4

    int-to-float v5, v12

    const/high16 v12, 0x41000000    # 8.0f

    mul-float/2addr v15, v12

    .line 1197
    iget-object v12, v0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v12, v12, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    int-to-float v12, v12

    mul-float/2addr v15, v12

    sub-float/2addr v5, v15

    const v12, 0x3e99999a    # 0.3f

    add-float v12, v18, v12

    mul-float/2addr v12, v2

    mul-float v2, p3, v12

    sub-float/2addr v3, v2

    mul-float v2, v4, v12

    sub-float/2addr v5, v2

    .line 1202
    iget-object v2, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget v13, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float/2addr v13, v12

    iget v14, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr v12, v14

    invoke-virtual {v2, v13, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 1203
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v12, Linfo/flowersoft/theotown/resources/Resources;->FRAME_CIRCLE:I

    invoke-virtual {v1, v2, v3, v5, v12}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/lit8 v3, v17, 0x1

    move/from16 v2, p2

    goto/16 :goto_88

    .line 1205
    :cond_120
    iget-object v2, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget v3, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    iget v4, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    invoke-virtual {v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 1206
    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/city/Drawer;->setUseShading(Z)V

    .line 1208
    invoke-virtual {v6, v7, v8, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 1209
    invoke-virtual {v6, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public final drawSiteBackground(Linfo/flowersoft/theotown/draft/SiteDraft;Linfo/flowersoft/theotown/city/Drawer;FFJ)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v1, p2

    .line 1356
    iget v2, v4, Linfo/flowersoft/theotown/draft/SiteDraft;->framesPerProgress:I

    iget v3, v4, Linfo/flowersoft/theotown/draft/SiteDraft;->framesPerFloor:I

    mul-int/2addr v2, v3

    .line 1357
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Building;->ownTimeShift:I

    int-to-long v5, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iget-object v3, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    div-int/2addr v3, v2

    int-to-long v7, v3

    rem-long/2addr v5, v7

    long-to-int v3, v5

    mul-int v5, v2, v3

    .line 1358
    iget-object v2, v0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-float v2, v2, p4

    iget v3, v4, Linfo/flowersoft/theotown/draft/SiteDraft;->heightPerFloor:I

    int-to-float v3, v3

    div-float v8, v2, v3

    .line 1360
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->CRANES:Ljava/util/List;

    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Building;->ownTimeShift:I

    mul-int/lit8 v3, v3, 0x3

    int-to-long v6, v3

    add-long v6, v6, p5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v9, v3

    rem-long/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    long-to-int v3, v6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/CraneDraft;

    .line 1361
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Building;->ownTimeShift:I

    int-to-long v6, v3

    const-wide/16 v9, 0x3

    mul-long v9, v9, p5

    add-long/2addr v6, v9

    iget-object v9, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v9, v9

    int-to-long v9, v9

    rem-long/2addr v6, v9

    const-wide/16 v9, 0x4

    div-long/2addr v6, v9

    long-to-int v6, v6

    mul-int/lit8 v6, v6, 0x4

    .line 1362
    iget-object v7, v0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v7, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    int-to-float v7, v7

    mul-float v7, v7, p4

    const/high16 v9, 0x40400000    # 3.0f

    add-float/2addr v7, v9

    .line 1363
    iget-wide v9, v1, Linfo/flowersoft/theotown/city/Drawer;->day:D

    double-to-long v9, v9

    const-wide/16 v11, 0x25

    mul-long/2addr v9, v11

    int-to-long v11, v3

    add-long/2addr v9, v11

    const-wide/16 v11, 0x5

    div-long/2addr v9, v11

    const-wide/16 v11, 0x2

    rem-long/2addr v9, v11

    long-to-int v3, v9

    .line 1365
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v9

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-le v9, v12, :cond_a4

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v9

    if-le v9, v12, :cond_a4

    const/high16 v9, 0x3f400000    # 0.75f

    cmpg-float v9, p3, v9

    if-gez v9, :cond_a4

    move v9, v11

    :goto_87
    int-to-float v13, v9

    cmpg-float v13, v13, v7

    if-gez v13, :cond_a4

    mul-int/lit8 v13, v9, 0x8

    rsub-int/lit8 v13, v13, -0x8

    .line 1371
    sget-object v14, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v15, v10

    int-to-float v13, v13

    move/from16 p4, v10

    iget-object v10, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    add-int v16, v6, v3

    aget v10, v10, v16

    invoke-virtual {v1, v14, v15, v13, v10}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v10, p4

    goto :goto_87

    :cond_a4
    move/from16 p4, v10

    move v9, v11

    :goto_a7
    int-to-float v10, v9

    cmpg-float v2, v10, v8

    if-gez v2, :cond_124

    .line 1377
    iget v2, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v2

    sub-int/2addr v2, v12

    move v13, v2

    :goto_b4
    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3dcccccd    # 0.1f

    if-ltz v13, :cond_dd

    mul-int/lit8 v2, v13, 0x20

    .line 1379
    div-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v3, v13, 0x0

    mul-int/lit8 v3, v3, 0x10

    .line 1380
    div-int/lit8 v3, v3, 0x2

    iget v6, v4, Linfo/flowersoft/theotown/draft/SiteDraft;->heightPerFloor:I

    mul-int/2addr v6, v9

    sub-int/2addr v3, v6

    .line 1381
    invoke-virtual {v0, v11, v13}, Linfo/flowersoft/theotown/city/objects/Building;->getSiteShift(II)I

    move-result v6

    sub-float v7, v8, v10

    int-to-float v6, v6

    mul-float/2addr v6, v15

    add-float/2addr v7, v6

    .line 1382
    invoke-static {v7, v14}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/4 v7, 0x2

    .line 1384
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/city/objects/Building;->drawSitePart(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/draft/SiteDraft;IFI)V

    add-int/lit8 v13, v13, -0x1

    goto :goto_b4

    .line 1387
    :cond_dd
    iget v2, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    move v2, v11

    .line 1388
    :goto_e6
    iget v3, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v3

    sub-int/2addr v3, v12

    if-gt v2, v3, :cond_11d

    add-int v3, v2, v13

    mul-int/lit8 v3, v3, 0x20

    .line 1389
    div-int/lit8 v3, v3, 0x2

    sub-int v6, v2, v13

    mul-int/lit8 v6, v6, 0x10

    .line 1390
    div-int/lit8 v6, v6, 0x2

    iget v7, v4, Linfo/flowersoft/theotown/draft/SiteDraft;->heightPerFloor:I

    mul-int/2addr v7, v9

    sub-int/2addr v6, v7

    .line 1391
    invoke-virtual {v0, v2, v13}, Linfo/flowersoft/theotown/city/objects/Building;->getSiteShift(II)I

    move-result v7

    sub-float v16, v8, v10

    int-to-float v7, v7

    mul-float/2addr v7, v15

    add-float v7, v16, v7

    .line 1392
    invoke-static {v7, v14}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move/from16 v16, v2

    move v2, v3

    move v3, v6

    move v6, v7

    const/4 v7, 0x1

    .line 1394
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/city/objects/Building;->drawSitePart(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/draft/SiteDraft;IFI)V

    add-int/lit8 v2, v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    goto :goto_e6

    :cond_11d
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    goto :goto_a7

    .line 1398
    :cond_124
    iget-object v0, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public final drawSiteForeground(Linfo/flowersoft/theotown/draft/SiteDraft;Linfo/flowersoft/theotown/city/Drawer;FFJ)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v1, p2

    .line 1402
    iget v2, v4, Linfo/flowersoft/theotown/draft/SiteDraft;->framesPerProgress:I

    iget v3, v4, Linfo/flowersoft/theotown/draft/SiteDraft;->framesPerFloor:I

    mul-int/2addr v2, v3

    .line 1403
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Building;->ownTimeShift:I

    int-to-long v5, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iget-object v3, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    div-int/2addr v3, v2

    int-to-long v7, v3

    rem-long/2addr v5, v7

    long-to-int v3, v5

    mul-int v5, v2, v3

    .line 1404
    iget-object v2, v0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-float v2, v2, p4

    iget v3, v4, Linfo/flowersoft/theotown/draft/SiteDraft;->heightPerFloor:I

    int-to-float v3, v3

    div-float v8, v2, v3

    .line 1406
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->CRANES:Ljava/util/List;

    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Building;->ownTimeShift:I

    mul-int/lit8 v3, v3, 0x3

    int-to-long v6, v3

    add-long v6, v6, p5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v9, v3

    rem-long/2addr v6, v9

    long-to-int v3, v6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Linfo/flowersoft/theotown/draft/CraneDraft;

    .line 1407
    iget v2, v0, Linfo/flowersoft/theotown/city/objects/Building;->ownTimeShift:I

    int-to-long v6, v2

    const-wide/16 v10, 0x3

    mul-long v10, v10, p5

    add-long/2addr v6, v10

    iget-object v3, v9, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    int-to-long v10, v3

    rem-long/2addr v6, v10

    const-wide/16 v10, 0x4

    div-long/2addr v6, v10

    long-to-int v3, v6

    mul-int/lit8 v10, v3, 0x4

    .line 1408
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    int-to-float v3, v3

    mul-float v3, v3, p4

    const/high16 v6, 0x40400000    # 3.0f

    add-float v11, v3, v6

    .line 1409
    iget-wide v6, v1, Linfo/flowersoft/theotown/city/Drawer;->day:D

    double-to-long v6, v6

    const-wide/16 v12, 0x25

    mul-long/2addr v6, v12

    int-to-long v2, v2

    add-long/2addr v6, v2

    const-wide/16 v2, 0x5

    div-long/2addr v6, v2

    const-wide/16 v2, 0x2

    rem-long/2addr v6, v2

    long-to-int v12, v6

    .line 1410
    iget v2, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v13

    .line 1411
    iget v2, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v14

    const/4 v2, 0x0

    :goto_7b
    int-to-float v3, v2

    cmpg-float v6, v3, v8

    if-gez v6, :cond_111

    add-int/lit8 v6, v14, -0x1

    const/16 p4, 0x10

    :goto_84
    const v16, 0x3dcccccd    # 0.1f

    if-ltz v6, :cond_c9

    add-int/lit8 v15, v13, -0x1

    add-int v17, v15, v6

    mul-int/lit8 v17, v17, 0x20

    .line 1416
    div-int/lit8 v17, v17, 0x2

    sub-int v18, v15, v6

    mul-int/lit8 v18, v18, 0x10

    .line 1417
    div-int/lit8 v18, v18, 0x2

    iget v7, v4, Linfo/flowersoft/theotown/draft/SiteDraft;->heightPerFloor:I

    mul-int/2addr v7, v2

    sub-int v18, v18, v7

    .line 1418
    invoke-virtual {v0, v15, v6}, Linfo/flowersoft/theotown/city/objects/Building;->getSiteShift(II)I

    move-result v7

    sub-float v15, v8, v3

    int-to-float v7, v7

    mul-float v7, v7, v16

    add-float/2addr v15, v7

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1419
    invoke-static {v15, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move v15, v6

    move v6, v7

    const/4 v7, 0x0

    move/from16 v16, v15

    move v15, v2

    move/from16 v2, v17

    move/from16 v17, v3

    move/from16 v3, v18

    move/from16 v18, v8

    move/from16 v8, p4

    .line 1421
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/city/objects/Building;->drawSitePart(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/draft/SiteDraft;IFI)V

    add-int/lit8 v6, v16, -0x1

    move-object/from16 v1, p2

    move v2, v15

    move/from16 v3, v17

    move/from16 v8, v18

    goto :goto_84

    :cond_c9
    move v15, v2

    move/from16 v17, v3

    move/from16 v18, v8

    const/4 v8, 0x0

    :goto_cf
    if-ge v8, v13, :cond_103

    mul-int/lit8 v1, v8, 0x20

    .line 1425
    div-int/lit8 v2, v1, 0x2

    mul-int/lit8 v1, v8, 0x10

    .line 1426
    div-int/lit8 v1, v1, 0x2

    iget v3, v4, Linfo/flowersoft/theotown/draft/SiteDraft;->heightPerFloor:I

    mul-int/2addr v3, v15

    sub-int v3, v1, v3

    const/4 v1, 0x0

    .line 1427
    invoke-virtual {v0, v8, v1}, Linfo/flowersoft/theotown/city/objects/Building;->getSiteShift(II)I

    move-result v6

    sub-float v7, v18, v17

    int-to-float v6, v6

    mul-float v6, v6, v16

    add-float/2addr v7, v6

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1428
    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move/from16 v19, v6

    move v6, v7

    const/4 v7, 0x3

    move/from16 v20, v19

    move/from16 v19, v1

    move-object/from16 v1, p2

    .line 1430
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/city/objects/Building;->drawSitePart(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/draft/SiteDraft;IFI)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    goto :goto_cf

    :cond_103
    move-object/from16 v1, p2

    const/16 v19, 0x0

    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v8, v18

    goto/16 :goto_7b

    :cond_111
    const/16 v8, 0x10

    .line 1433
    iget-object v0, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/4 v0, 0x1

    if-le v13, v0, :cond_139

    if-le v14, v0, :cond_139

    const/high16 v0, 0x3f400000    # 0.75f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_139

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v11, v0

    float-to-int v0, v11

    rsub-int/lit8 v0, v0, -0x8

    .line 1440
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, v8

    int-to-float v0, v0

    iget-object v4, v9, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    add-int/2addr v10, v12

    add-int/lit8 v10, v10, 0x2

    aget v4, v4, v10

    invoke-virtual {v1, v2, v3, v0, v4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_139
    return-void
.end method

.method public final drawSitePart(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/draft/SiteDraft;IFI)V
    .registers 10

    .line 1336
    iget v0, p4, Linfo/flowersoft/theotown/draft/SiteDraft;->framesPerProgress:I

    int-to-float v1, v0

    mul-float/2addr v1, p6

    float-to-int p6, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p6, v0}, Ljava/lang/Math;->min(II)I

    move-result p6

    iget v0, p4, Linfo/flowersoft/theotown/draft/SiteDraft;->framesPerFloor:I

    mul-int/2addr p6, v0

    add-int/2addr p5, p6

    const/4 p6, 0x4

    if-ne v0, p6, :cond_13

    add-int/2addr p5, p7

    .line 1342
    :cond_13
    iget-object p6, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object p7, p4, Linfo/flowersoft/theotown/draft/SiteDraft;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p6, p7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1343
    sget-object p6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float p2, p2

    int-to-float p3, p3

    iget-object p7, p4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p7, p7, p5

    invoke-virtual {p1, p6, p2, p3, p7}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 1345
    iget-object p6, p4, Linfo/flowersoft/theotown/draft/SiteDraft;->framesFG:[I

    if-eqz p6, :cond_3d

    aget p6, p6, p5

    if-eqz p6, :cond_3d

    .line 1346
    iget-object p6, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object p7, p4, Linfo/flowersoft/theotown/draft/SiteDraft;->colorFG:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p6, p7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1347
    sget-object p6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object p4, p4, Linfo/flowersoft/theotown/draft/SiteDraft;->framesFG:[I

    aget p4, p4, p5

    invoke-virtual {p1, p6, p2, p3, p4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_3d
    return-void
.end method

.method public finalizeUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)V
    .registers 6

    .line 1820
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 1821
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1822
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1823
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_8

    .line 1824
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1830
    :cond_1d
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;->hasUpgrades()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1831
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/UpgradeDraft;->onlyOne:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    if-eqz v0, :cond_30

    .line 1832
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1835
    :cond_30
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getUpgrades()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1837
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->upgrades:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_47
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 1838
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/city/objects/Building;->hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result v3

    if-nez v3, :cond_5b

    if-ne v2, p1, :cond_47

    .line 1839
    :cond_5b
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 1843
    :cond_5f
    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    :cond_61
    return-void
.end method

.method public getAnimationFrameColor(I)Lio/blueflower/stapel2d/drawing/Color;
    .registers 3

    .line 1957
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

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

    .line 1961
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->getSpeed(I)F

    move-result p1

    return p1

    :cond_9
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getAnimationTimeShift(I)I
    .registers 3

    .line 1027
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->ownTimeShift:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getAspectCapacity(I)I
    .registers 5

    .line 1917
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->aspectCapacity:[I

    aget v0, v0, p1

    .line 1918
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    if-eqz v1, :cond_23

    const/4 v1, 0x0

    .line 1919
    :goto_b
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 1920
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/UpgradeDraft;->aspectCapacity:[I

    aget v2, v2, p1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_23
    return v0
.end method

.method public getAspects()[I
    .registers 2

    .line 916
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->aspects:[I

    return-object v0
.end method

.method public getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;
    .registers 2

    .line 1864
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->attributeContainer:Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    return-object v0
.end method

.method public getBuildDay()J
    .registers 3

    .line 1607
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->buildDay:J

    return-wide v0
.end method

.method public getBuildingIcon()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 3

    .line 1213
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->customBuildingIcon:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 1215
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isEmptyFlag()Z

    move-result v1

    if-nez v1, :cond_91

    .line 1216
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isIllFlag()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1217
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->getIllness()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    goto/16 :goto_91

    .line 1218
    :cond_16
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->hasNeededRoad()Z

    move-result v1

    if-nez v1, :cond_24

    .line 1219
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->getNoRoad()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    goto/16 :goto_91

    .line 1220
    :cond_24
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isHasPowerFlag()Z

    move-result v1

    if-nez v1, :cond_31

    .line 1221
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->getNoEnergy()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    goto :goto_91

    .line 1222
    :cond_31
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isHasWaterFlag()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1223
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->getNoWater()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    goto :goto_91

    .line 1224
    :cond_3e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isOverloadedFlag()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1225
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->getOverloaded()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    goto :goto_91

    .line 1226
    :cond_4b
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isFullOfWaste()Z

    move-result v1

    if-eqz v1, :cond_66

    const/4 v0, 0x3

    .line 1227
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getProvidedAmount(I)I

    move-result v0

    if-lez v0, :cond_5f

    .line 1228
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->getWasteOverloaded()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    goto :goto_91

    .line 1230
    :cond_5f
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->getWaste()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    goto :goto_91

    .line 1232
    :cond_66
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isFullOfDeadPeople()Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v0, 0x4

    .line 1233
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getProvidedAmount(I)I

    move-result v0

    if-lez v0, :cond_7a

    .line 1234
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->getDeadBodiesOverloaded()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    goto :goto_91

    .line 1236
    :cond_7a
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->getDeadBodies()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    goto :goto_91

    .line 1238
    :cond_81
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->attributeContainer:Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    if-eqz v1, :cond_91

    invoke-interface {v1}, Linfo/flowersoft/theotown/city/objects/AttributeContainer;->isUnhappy()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 1239
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->getUnhappy()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    .line 1243
    :cond_91
    :goto_91
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->crime:Linfo/flowersoft/theotown/city/objects/CrimeType;

    if-eqz v1, :cond_99

    .line 1244
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/CrimeType;->getBuildingIcon()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    :cond_99
    return-object v0
.end method

.method public getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;
    .registers 2

    .line 949
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    return-object v0
.end method

.method public getChildIndex(II)I
    .registers 7

    .line 274
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    .line 276
    :goto_7
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 277
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    .line 278
    invoke-static {v2}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v3

    if-ne v3, p1, :cond_22

    invoke-static {v2}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v2

    if-ne v2, p2, :cond_22

    return v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_25
    return v1
.end method

.method public getChildX(I)I
    .registers 3

    .line 247
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result p1

    return p1
.end method

.method public getChildY(I)I
    .registers 3

    .line 251
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result p1

    return p1
.end method

.method public getCrime()Linfo/flowersoft/theotown/city/objects/CrimeType;
    .registers 2

    .line 663
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->crime:Linfo/flowersoft/theotown/city/objects/CrimeType;

    return-object v0
.end method

.method public getCurrentCommercialJobs()I
    .registers 2

    .line 1707
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isBuiltFlag()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallCommercialJobs()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentHabitants()I
    .registers 2

    .line 1703
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isBuiltFlag()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallHabitants()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentIndustrialJobs()I
    .registers 2

    .line 1711
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isBuiltFlag()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallIndustrialJobs()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentJobs()I
    .registers 3

    .line 1687
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getCurrentCommercialJobs()I

    move-result v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getCurrentIndustrialJobs()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentPeople()I
    .registers 2

    .line 1699
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isBuiltFlag()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallPeople()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomBuildingIcon()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 2

    .line 671
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->customBuildingIcon:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-object v0
.end method

.method public getDaysBuilt(D)D
    .registers 5

    .line 1619
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->buildDay:J

    long-to-double v0, v0

    sub-double/2addr p1, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    int-to-double v0, v0

    sub-double/2addr p1, v0

    return-wide p1
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;
    .registers 2

    .line 912
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    return-object v0
.end method

.method public getDraftId()Ljava/lang/String;
    .registers 2

    .line 953
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getEmptyCause()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;
    .registers 2

    .line 812
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 813
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->emptyCause:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    if-eqz v0, :cond_b

    return-object v0

    .line 816
    :cond_b
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->getUnknown()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFlag(I)Z
    .registers 3

    .line 73
    iget-short v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->flags:S

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public getFrame()I
    .registers 2

    .line 648
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    return v0
.end method

.method public getHeight()I
    .registers 3

    .line 892
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v0

    return v0
.end method

.method public getInfluenceInduceVector()[I
    .registers 8

    .line 964
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3c

    .line 967
    :cond_c
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->influenceInduceVector:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v2, v1

    .line 970
    :goto_17
    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 971
    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    move v4, v1

    .line 972
    :goto_28
    array-length v5, v0

    if-ge v4, v5, :cond_37

    .line 973
    aget v5, v0, v4

    iget-object v6, v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;->influenceInduceVector:[I

    aget v6, v6, v4

    add-int/2addr v5, v6

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_3a
    const/4 v2, 0x1

    goto :goto_41

    .line 965
    :cond_3c
    :goto_3c
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->influenceInduceVector:[I

    move v2, v1

    .line 978
    :goto_41
    iget v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->performance:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_72

    if-nez v2, :cond_51

    .line 980
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 982
    :cond_51
    :goto_51
    array-length v2, v0

    if-ge v1, v2, :cond_72

    .line 983
    aget v2, v0, v1

    if-lez v2, :cond_63

    int-to-float v2, v2

    .line 985
    iget v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->performance:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    :goto_61
    double-to-int v2, v2

    goto :goto_6d

    :cond_63
    int-to-float v2, v2

    .line 987
    iget v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->performance:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    goto :goto_61

    .line 989
    :goto_6d
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_72
    return-object v0
.end method

.method public getLastIllness()J
    .registers 3

    .line 824
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->lastIllness:J

    return-wide v0
.end method

.method public getLevel()I
    .registers 2

    .line 1718
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLuaStorage()Lvm2/LuaTable;
    .registers 2

    .line 287
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->luaStorage:Lvm2/LuaTable;

    return-object v0
.end method

.method public getLuaStorageProxy()Lvm2/LuaTable;
    .registers 2

    .line 292
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->luaStorage:Lvm2/LuaTable;

    if-nez v0, :cond_a

    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->luaStorage:Lvm2/LuaTable;

    .line 293
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->luaStorageProxy:Lvm2/LuaTable;

    if-nez v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->luaStorage:Lvm2/LuaTable;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuaUtil;->getProxy(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->luaStorageProxy:Lvm2/LuaTable;

    .line 294
    :cond_16
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->luaStorageProxy:Lvm2/LuaTable;

    return-object v0
.end method

.method public getMaxTerrainLevel()I
    .registers 2

    .line 1969
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->maxTerrainLevel:I

    return v0
.end method

.method public getMinTerrainLevel()I
    .registers 2

    .line 1965
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->minTerrainLevel:I

    return v0
.end method

.method public getMonthlyPrice()J
    .registers 6

    .line 932
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->monthlyPrice:J

    .line 934
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    if-eqz v2, :cond_1f

    const/4 v2, 0x0

    .line 935
    :goto_9
    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 936
    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-wide v3, v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;->monthlyPrice:J

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 940
    :cond_1f
    iget v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->performance:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v2

    mul-float/2addr v3, v2

    mul-float/2addr v3, v2

    const v2, 0x3e4ccccd    # 0.2f

    add-float/2addr v3, v2

    long-to-float v0, v0

    mul-float/2addr v0, v3

    .line 941
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1873
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNeededAmount(I)I
    .registers 6

    .line 1897
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->neededAspectAmount:[I

    aget v0, v0, p1

    .line 1898
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    move v1, v2

    .line 1899
    :goto_c
    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_24

    .line 1900
    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;->neededAspectAmount:[I

    aget v3, v3, p1

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1903
    :cond_24
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->performance:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public getOverallCommercialJobs()I
    .registers 3

    .line 1679
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isEmptyFlag()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public getOverallHabitants()I
    .registers 2

    .line 1675
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isEmptyFlag()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    return v0
.end method

.method public getOverallIndustrialJobs()I
    .registers 3

    .line 1683
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eq v0, v1, :cond_19

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isEmptyFlag()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public getOverallJobs()I
    .registers 3

    .line 1691
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallCommercialJobs()I

    move-result v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallIndustrialJobs()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOverallPeople()I
    .registers 3

    .line 1695
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallHabitants()I

    move-result v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallCommercialJobs()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallIndustrialJobs()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOverallUsage()F
    .registers 4

    .line 832
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->usage:F

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->waiting:I

    int-to-float v1, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->capacity:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getPendingPedestrians()I
    .registers 2

    .line 1982
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingPedestrians:I

    return v0
.end method

.method public getPendingUpgrade()Linfo/flowersoft/theotown/draft/UpgradeDraft;
    .registers 3

    .line 1785
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1786
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPendingUpgradeDaysLeft(D)D
    .registers 7

    .line 1793
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1794
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;->buildTime:J

    add-long/2addr v2, v0

    long-to-double v0, v2

    sub-double/2addr v0, p1

    return-wide v0

    :cond_31
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    return-wide p1
.end method

.method public getPerformance()F
    .registers 2

    .line 836
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->performance:F

    return v0
.end method

.method public getPivotX(I)I
    .registers 5

    .line 1552
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->x:I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getPivotX(IIIII)I

    move-result p1

    return p1
.end method

.method public getPivotXN(II)I
    .registers 7

    .line 1563
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v0

    .line 1564
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_14

    add-int/lit8 v3, v0, -0x1

    neg-int v3, v3

    .line 1565
    div-int/2addr v3, v1

    add-int/2addr v3, p2

    sub-int/2addr v3, v2

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    if-eqz p1, :cond_31

    if-eq p1, v2, :cond_2b

    const/4 p2, 0x2

    if-eq p1, p2, :cond_25

    const/4 p2, 0x3

    if-eq p1, p2, :cond_21

    const/4 p1, -0x1

    return p1

    .line 1574
    :cond_21
    iget p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->x:I

    add-int/2addr p1, v3

    return p1

    .line 1572
    :cond_25
    iget p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->x:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    return p1

    .line 1570
    :cond_2b
    iget p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->x:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    return p1

    .line 1568
    :cond_31
    iget p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->x:I

    add-int/2addr p1, v3

    return p1
.end method

.method public getPivotY(I)I
    .registers 5

    .line 1556
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->y:I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getPivotY(IIIII)I

    move-result p1

    return p1
.end method

.method public getPivotYN(II)I
    .registers 7

    .line 1584
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v0

    .line 1585
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_14

    add-int/lit8 v3, v1, -0x1

    neg-int v3, v3

    .line 1586
    div-int/2addr v3, v0

    add-int/2addr v3, p2

    sub-int/2addr v3, v2

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    if-eqz p1, :cond_31

    if-eq p1, v2, :cond_2d

    const/4 p2, 0x2

    if-eq p1, p2, :cond_27

    const/4 p2, 0x3

    if-eq p1, p2, :cond_21

    const/4 p1, -0x1

    return p1

    .line 1595
    :cond_21
    iget p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->y:I

    add-int/2addr p1, v1

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    return p1

    .line 1593
    :cond_27
    iget p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->y:I

    add-int/2addr p1, v1

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    return p1

    .line 1591
    :cond_2d
    iget p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->y:I

    add-int/2addr p1, v3

    return p1

    .line 1589
    :cond_31
    iget p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->y:I

    add-int/2addr p1, v3

    return p1
.end method

.method public getPower()J
    .registers 7

    .line 1722
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->power:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const-wide/16 v2, -0x1

    .line 1723
    :cond_c
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->hasNeededRoad()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1724
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-wide v2, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->power:J

    .line 1725
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    .line 1726
    :goto_27
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 1727
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-wide v4, v1, Linfo/flowersoft/theotown/draft/UpgradeDraft;->power:J

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3d
    long-to-float v0, v2

    .line 1731
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->performance:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPrice()J
    .registers 6

    .line 920
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->price:J

    .line 922
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    if-eqz v2, :cond_1f

    const/4 v2, 0x0

    .line 923
    :goto_9
    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 924
    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-wide v3, v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;->price:J

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1f
    return-wide v0
.end method

.method public getProvidedAmount(I)I
    .registers 6

    .line 1907
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->neededAspectAmount:[I

    aget v0, v0, p1

    neg-int v0, v0

    .line 1908
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    move v1, v2

    .line 1909
    :goto_d
    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 1910
    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;->neededAspectAmount:[I

    aget v3, v3, p1

    sub-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1913
    :cond_25
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->performance:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public getReachability()F
    .registers 2

    .line 640
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->reachability:F

    return v0
.end method

.method public final getSiteShift(II)I
    .registers 4

    .line 1352
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->x:I

    add-int/2addr p1, v0

    const v0, 0x15f4b

    mul-int/2addr p1, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->y:I

    add-int/2addr p2, v0

    mul-int/lit16 p2, p2, 0x2db

    add-int/2addr p1, p2

    add-int/lit16 p1, p1, 0x2545

    and-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public getSpentMoney()I
    .registers 2

    .line 2007
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->spentMoney:I

    return v0
.end method

.method public getTempUsedAspectAmount(I)I
    .registers 3

    .line 1856
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->tempUsedAspectAmount:[I

    aget p1, v0, p1

    return p1
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 624
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTransferred()I
    .registers 2

    .line 868
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->totalTransferred:I

    return v0
.end method

.method public getUnifiedDraftId()Ljava/lang/String;
    .registers 2

    .line 957
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->getUnifiedId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpgrades()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/UpgradeDraft;",
            ">;"
        }
    .end annotation

    .line 1001
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    if-nez v0, :cond_6

    .line 1002
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_6
    return-object v0
.end method

.method public getUsedAspectAmount(I)I
    .registers 3

    .line 1848
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->usedAspectAmount:[I

    aget p1, v0, p1

    return p1
.end method

.method public getVisualHeight(I)I
    .registers 2

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_9

    .line 905
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    return p1

    .line 907
    :cond_9
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result p1

    return p1
.end method

.method public getVisualWidth(I)I
    .registers 2

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_9

    .line 897
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result p1

    return p1

    .line 899
    :cond_9
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    return p1
.end method

.method public getWaiting()I
    .registers 2

    .line 864
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->waiting:I

    return v0
.end method

.method public getWater()J
    .registers 10

    .line 1739
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->water:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v4, -0x1

    if-eqz v0, :cond_e

    move-wide v0, v4

    goto :goto_f

    :cond_e
    move-wide v0, v2

    .line 1740
    :goto_f
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v6

    if-nez v6, :cond_40

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_40

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->hasNeededRoad()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 1741
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->water:J

    .line 1742
    iget-object v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    if-eqz v6, :cond_40

    const/4 v6, 0x0

    .line 1743
    :goto_2a
    iget-object v7, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_40

    .line 1744
    iget-object v7, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-wide v7, v7, Linfo/flowersoft/theotown/draft/UpgradeDraft;->water:J

    add-long/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_40
    cmp-long v2, v0, v2

    if-ltz v2, :cond_4b

    .line 1748
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->hasPower()Z

    move-result v2

    if-nez v2, :cond_4b

    goto :goto_4c

    :cond_4b
    move-wide v4, v0

    :goto_4c
    long-to-float v0, v4

    .line 1749
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->performance:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getWaterWaste()F
    .registers 2

    .line 1757
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->waterWaste:F

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 888
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v0

    return v0
.end method

.method public getX()I
    .registers 2

    .line 880
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 884
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->y:I

    return v0
.end method

.method public getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;
    .registers 2

    .line 945
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-object v0
.end method

.method public hasNeededRoad()Z
    .registers 3

    .line 1654
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsRoad:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->hasRoadFlag()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public hasParent()Z
    .registers 2

    .line 232
    iget-short v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->parentX:S

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasPendingUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z
    .registers 5

    .line 1666
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    move v0, v1

    .line 1667
    :goto_6
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 1668
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_21
    return v1
.end method

.method public hasPendingUpgrades()Z
    .registers 2

    .line 1781
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public hasPower()Z
    .registers 2

    .line 1642
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isHasPowerFlag()Z

    move-result v0

    return v0
.end method

.method public hasRoad()Z
    .registers 2

    .line 1658
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->hasRoadFlag()Z

    move-result v0

    return v0
.end method

.method public final hasRoadFlag()Z
    .registers 2

    const/4 v0, 0x4

    .line 567
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z
    .registers 3

    .line 1662
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public hasWater()Z
    .registers 2

    .line 1753
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isHasWaterFlag()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1887
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->tileHash:I

    return v0
.end method

.method public inConstruction()Z
    .registers 2

    .line 1646
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isBuiltFlag()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final initAnimationSpots()V
    .registers 3

    .line 546
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz v0, :cond_5

    goto :goto_21

    .line 547
    :cond_5
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_21

    .line 548
    :cond_12
    new-instance v0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;-><init>(I)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    :cond_21
    :goto_21
    return-void
.end method

.method public final isBuiltFlag()Z
    .registers 2

    const/4 v0, 0x1

    .line 553
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public isBurning()Z
    .registers 2

    .line 1766
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isBurningFlag()Z

    move-result v0

    return v0
.end method

.method public final isBurningFlag()Z
    .registers 2

    const/16 v0, 0x20

    .line 588
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .registers 3

    .line 1631
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->DESTROYED:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1627
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isEmptyFlag()Z

    move-result v0

    return v0
.end method

.method public final isEmptyFlag()Z
    .registers 2

    const/4 v0, 0x2

    .line 560
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public isFullOfDeadPeople()Z
    .registers 4

    .line 1265
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->aspects:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_11

    const/4 v2, 0x4

    .line 1267
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getAspectCapacity(I)I

    move-result v2

    if-lez v2, :cond_11

    if-lt v0, v2, :cond_11

    return v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public isFullOfWaste()Z
    .registers 4

    .line 1259
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->aspects:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_12

    const/4 v2, 0x3

    .line 1261
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getAspectCapacity(I)I

    move-result v2

    if-lez v2, :cond_12

    if-lt v0, v2, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    return v1
.end method

.method public final isHasPowerFlag()Z
    .registers 2

    const/16 v0, 0x8

    .line 574
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public final isHasWaterFlag()Z
    .registers 2

    const/16 v0, 0x10

    .line 581
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public isIll()Z
    .registers 2

    .line 695
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isIllFlag()Z

    move-result v0

    return v0
.end method

.method public final isIllFlag()Z
    .registers 2

    const/16 v0, 0x80

    .line 602
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .registers 2

    .line 683
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isLockedAndNotRemoveable()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->removable:Z

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public isLockedAndNotRemoveable()Z
    .registers 5

    .line 687
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->aspects:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 689
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isBurning()Z

    move-result v2

    if-nez v2, :cond_24

    .line 690
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isIll()Z

    move-result v2

    if-nez v2, :cond_24

    if-lez v0, :cond_23

    const/4 v2, 0x3

    .line 691
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getProvidedAmount(I)I

    move-result v3

    if-lez v3, :cond_23

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getAspectCapacity(I)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    if-le v0, v2, :cond_23

    goto :goto_24

    :cond_23
    return v1

    :cond_24
    :goto_24
    const/4 v0, 0x1

    return v0
.end method

.method public isOverloaded()Z
    .registers 2

    .line 703
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isOverloadedFlag()Z

    move-result v0

    return v0
.end method

.method public final isOverloadedFlag()Z
    .registers 2

    const/16 v0, 0x40

    .line 595
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public isPivot(III)Z
    .registers 13

    .line 1510
    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v4, p0, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    iget v5, p0, Linfo/flowersoft/theotown/city/objects/Building;->x:I

    iget v6, p0, Linfo/flowersoft/theotown/city/objects/Building;->y:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v8}, Linfo/flowersoft/theotown/city/objects/Building;->isPivot(IIILinfo/flowersoft/theotown/draft/BuildingDraft;IIIII)Z

    move-result p1

    return p1
.end method

.method public isSpentDiamondsOn()Z
    .registers 2

    .line 632
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isSpentDiamondsOnFlag()Z

    move-result v0

    return v0
.end method

.method public final isSpentDiamondsOnFlag()Z
    .registers 2

    const/16 v0, 0x100

    .line 609
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public isSpentMoneyUnknown()Z
    .registers 3

    .line 1999
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->spentMoney:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isUntouchable()Z
    .registers 2

    .line 872
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isUntouchableFlag()Z

    move-result v0

    return v0
.end method

.method public final isUntouchableFlag()Z
    .registers 2

    const/16 v0, 0x200

    .line 616
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public isWorking()Z
    .registers 2

    .line 1623
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isBuiltFlag()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->hasNeededRoad()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->hasPower()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->hasWater()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isBurning()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    return v0

    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method public markAsNewlyBuilt()V
    .registers 3

    .line 218
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->buildTimeMS:J

    return-void
.end method

.method public needsRoad()Z
    .registers 2

    .line 997
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsRoad:Z

    return v0
.end method

.method public final pickGroundTileFrame()V
    .registers 3

    .line 520
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->groundTileFrames:[I

    if-eqz v0, :cond_10

    .line 521
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->groundTileFrame:I

    return-void

    :cond_10
    const/4 v0, -0x1

    .line 523
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->groundTileFrame:I

    return-void
.end method

.method public removeChild(I)V
    .registers 3

    .line 255
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    if-nez v0, :cond_5

    return-void

    .line 256
    :cond_5
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    return-void
.end method

.method public removeChild(II)V
    .registers 6

    .line 260
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    if-nez v0, :cond_5

    goto :goto_2b

    :cond_5
    const/4 v0, 0x0

    .line 261
    :goto_6
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 262
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    .line 263
    invoke-static {v1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v2

    if-ne v2, p1, :cond_28

    invoke-static {v1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v1

    if-ne v1, p2, :cond_28

    .line 264
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    move v0, v2

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2b
    :goto_2b
    return-void
.end method

.method public removeParent()V
    .registers 2

    const/4 v0, -0x1

    .line 227
    iput-short v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->parentX:S

    .line 228
    iput-short v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->parentY:S

    return-void
.end method

.method public removeUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)V
    .registers 3

    .line 1808
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1809
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public removeWaiters(I)V
    .registers 5

    .line 853
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->totalTransferred:I

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->waiting:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->totalTransferred:I

    .line 854
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->waiting:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->capacity:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 855
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->usage:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2b

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 856
    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->usage:F

    goto :goto_36

    :cond_2b
    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 858
    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->usage:F

    .line 860
    :goto_36
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->waiting:I

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->waiting:I

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 712
    const-string v1, "x"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    iget v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->x:I

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 713
    const-string v1, "y"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    iget v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->y:I

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 714
    const-string v1, "build day"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    iget-wide v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->buildDay:J

    invoke-interface {v1, v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 715
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->name:Ljava/lang/String;

    if-eqz v1, :cond_3d

    .line 716
    const-string v1, "name"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 719
    :cond_3d
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isUntouchableFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4d

    const-string v1, "untouchable"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 721
    :cond_4d
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->performance:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_68

    .line 722
    const-string v1, "performance"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    const v3, 0x461c4000    # 10000.0f

    iget v4, p0, Linfo/flowersoft/theotown/city/objects/Building;->performance:F

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 725
    :cond_68
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isSpentDiamondsOnFlag()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 726
    const-string v1, "spent diamonds"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 729
    :cond_77
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->spentMoney:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_89

    .line 730
    const-string v1, "smoney"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    iget v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->spentMoney:I

    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 733
    :cond_89
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->groundTileFrame:I

    const/4 v3, -0x1

    if-le v1, v3, :cond_99

    const-string v1, "gtf"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    iget v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->groundTileFrame:I

    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_99
    if-eqz p2, :cond_282

    .line 737
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    if-lez p2, :cond_aa

    const-string p2, "frame"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    invoke-interface {p2, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 738
    :cond_aa
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->decoFrame:I

    if-lez p2, :cond_b9

    const-string p2, "deco frame"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->decoFrame:I

    invoke-interface {p2, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 739
    :cond_b9
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isBuiltFlag()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_c9

    const-string p2, "is working"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    invoke-interface {p2, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 740
    :cond_c9
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isEmptyFlag()Z

    move-result p2

    if-eqz p2, :cond_d8

    const-string p2, "empty"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    invoke-interface {p2, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 741
    :cond_d8
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->hasRoadFlag()Z

    move-result p2

    if-nez p2, :cond_e7

    const-string p2, "has road"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    invoke-interface {p2, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 742
    :cond_e7
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->reachability:F

    const/4 v3, 0x0

    cmpl-float p2, p2, v3

    if-lez p2, :cond_fd

    const-string p2, "rbt"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    const/high16 v4, 0x42c80000    # 100.0f

    iget v5, p0, Linfo/flowersoft/theotown/city/objects/Building;->reachability:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-interface {p2, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 743
    :cond_fd
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->usage:F

    cmpl-float p2, p2, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    if-lez p2, :cond_112

    const-string p2, "u"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v5, p0, Linfo/flowersoft/theotown/city/objects/Building;->usage:F

    mul-float/2addr v5, v4

    float-to-int v5, v5

    invoke-interface {p2, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 744
    :cond_112
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->waiting:I

    if-lez p2, :cond_121

    const-string p2, "waiting"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v5, p0, Linfo/flowersoft/theotown/city/objects/Building;->waiting:I

    invoke-interface {p2, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 745
    :cond_121
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->totalTransferred:I

    if-lez p2, :cond_130

    const-string p2, "total transferred"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v5, p0, Linfo/flowersoft/theotown/city/objects/Building;->totalTransferred:I

    invoke-interface {p2, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 746
    :cond_130
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->waterWaste:F

    cmpl-float p2, p2, v3

    if-lez p2, :cond_143

    const-string p2, "w"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget v3, p0, Linfo/flowersoft/theotown/city/objects/Building;->waterWaste:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-interface {p2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 748
    :cond_143
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    if-eqz p2, :cond_171

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_171

    .line 749
    const-string p2, "upgrades"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 750
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->upgrades:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_15c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 751
    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_15c

    .line 753
    :cond_16e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 756
    :cond_171
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result p2

    if-eqz p2, :cond_1be

    .line 757
    const-string p2, "pending upgrades"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 758
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_186
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1bb

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/util/Tuple;

    .line 759
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 760
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v4

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 761
    const-string v4, "day"

    invoke-interface {p1, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v4

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 762
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_186

    .line 764
    :cond_1bb
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_1be
    move p2, v1

    move v0, p2

    :goto_1c0
    const/4 v3, 0x2

    if-ge p2, v3, :cond_1d1

    if-nez v0, :cond_1d1

    .line 768
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->aspects:[I

    aget v0, v0, p2

    if-eqz v0, :cond_1cd

    move v0, v2

    goto :goto_1ce

    :cond_1cd
    move v0, v1

    :goto_1ce
    add-int/lit8 p2, p2, 0x1

    goto :goto_1c0

    :cond_1d1
    if-eqz v0, :cond_1eb

    .line 770
    const-string p2, "aspcs"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 771
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move p2, v1

    :goto_1dc
    if-ge p2, v3, :cond_1e8

    .line 772
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->aspects:[I

    aget v0, v0, p2

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1dc

    .line 773
    :cond_1e8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 776
    :cond_1eb
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-eqz p2, :cond_1fb

    .line 777
    const-string v0, "as"

    invoke-virtual {p2, p1, v0}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->saveSpeeds(Lio/blueflower/stapel2d/util/json/JsonWriter;Ljava/lang/String;)V

    .line 778
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    const-string v0, "asc"

    invoke-virtual {p2, p1, v0}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->saveColors(Lio/blueflower/stapel2d/util/json/JsonWriter;Ljava/lang/String;)V

    .line 781
    :cond_1fb
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->luaStorage:Lvm2/LuaTable;

    if-eqz p2, :cond_20f

    invoke-virtual {p2}, Lvm2/LuaTable;->keyCount()I

    move-result p2

    if-lez p2, :cond_20f

    .line 782
    const-string p2, "lua"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 783
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->luaStorage:Lvm2/LuaTable;

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->serialize(Lvm2/LuaTable;Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 786
    :cond_20f
    iget-wide v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->lastIllness:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_222

    .line 787
    const-string p2, "lill"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget-wide v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->lastIllness:J

    invoke-interface {p2, v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 790
    :cond_222
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->text:Ljava/lang/String;

    if-eqz p2, :cond_231

    const-string p2, "text"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->text:Ljava/lang/String;

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 792
    :cond_231
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->hasParent()Z

    move-result p2

    if-eqz p2, :cond_248

    .line 793
    const-string p2, "parent"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    iget-short v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->parentX:S

    iget-short v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->parentY:S

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v0

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 796
    :cond_248
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->childCount()I

    move-result p2

    if-lez p2, :cond_26e

    .line 797
    const-string p2, "children"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 798
    :goto_257
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p2

    if-ge v1, p2, :cond_26b

    .line 799
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->childrenXY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p2

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_257

    .line 801
    :cond_26b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 804
    :cond_26e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_282

    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->emptyCause:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    if-eqz p2, :cond_282

    .line 805
    const-string p2, "ecause"

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 806
    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->emptyCause:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    :cond_282
    return-void
.end method

.method public setAnimationFrameColor(ILio/blueflower/stapel2d/drawing/Color;)V
    .registers 4

    .line 1935
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->initAnimationSpots()V

    .line 1936
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-nez v0, :cond_8

    return-void

    .line 1938
    :cond_8
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->setColor(ILio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public setAnimationFrameOffset(III)V
    .registers 6

    .line 1942
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->initAnimationSpots()V

    .line 1943
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-nez v0, :cond_8

    return-void

    .line 1945
    :cond_8
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->ownTimeShift:I

    add-int/2addr p3, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    .line 1946
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 1945
    invoke-virtual {v0, p3, v1, p1, p2}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->setFrame(ILinfo/flowersoft/theotown/draft/AnimationSpot;II)V

    return-void
.end method

.method public setAnimationFrameSpeed(IFI)V
    .registers 6

    .line 1927
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->initAnimationSpots()V

    .line 1928
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->animationSpots:Linfo/flowersoft/theotown/city/objects/AnimationSpots;

    if-nez v0, :cond_8

    return-void

    .line 1930
    :cond_8
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->ownTimeShift:I

    add-int/2addr p3, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    .line 1931
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 1930
    invoke-virtual {v0, p3, v1, p1, p2}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->setSpeedPreserveFrame(ILinfo/flowersoft/theotown/draft/AnimationSpot;IF)V

    return-void
.end method

.method public setAnimationTimeShift(II)V
    .registers 3

    sub-int/2addr p2, p1

    .line 1023
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->ownTimeShift:I

    return-void
.end method

.method public setAttributeContainer(Linfo/flowersoft/theotown/city/objects/AttributeContainer;)V
    .registers 2

    .line 1868
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->attributeContainer:Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    return-void
.end method

.method public setBuildDay(J)V
    .registers 3

    .line 1611
    iput-wide p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->buildDay:J

    return-void
.end method

.method public setBuilt()V
    .registers 2

    const/4 v0, 0x1

    .line 656
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setBuiltFlag(Z)V

    .line 657
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setHasWaterFlag(Z)V

    .line 658
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setHasPowerFlag(Z)V

    .line 659
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setHasRoadFlag(Z)V

    return-void
.end method

.method public final setBuiltFlag(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 556
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setFlag(IZ)V

    return-void
.end method

.method public setBurning(Z)V
    .registers 2

    .line 1770
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setBurningFlag(Z)V

    return-void
.end method

.method public final setBurningFlag(Z)V
    .registers 3

    const/16 v0, 0x20

    .line 591
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setFlag(IZ)V

    return-void
.end method

.method public setCrime(Linfo/flowersoft/theotown/city/objects/CrimeType;)V
    .registers 2

    .line 667
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->crime:Linfo/flowersoft/theotown/city/objects/CrimeType;

    return-void
.end method

.method public setCustomBuildingIcon(Linfo/flowersoft/theotown/draft/AnimationDraft;)V
    .registers 2

    .line 675
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->customBuildingIcon:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-void
.end method

.method public setEmpty(ZLinfo/flowersoft/theotown/city/objects/EmptyBuildingCause;)V
    .registers 4

    .line 1635
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1636
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setIsEmptyFlag(Z)V

    .line 1637
    iput-object p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->emptyCause:Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    :cond_f
    return-void
.end method

.method public final setFlag(IZ)V
    .registers 3

    if-eqz p2, :cond_a

    .line 78
    iget-short p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->flags:S

    int-to-short p1, p1

    or-int/2addr p1, p2

    int-to-short p1, p1

    iput-short p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->flags:S

    return-void

    .line 80
    :cond_a
    iget-short p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->flags:S

    not-int p1, p1

    int-to-short p1, p1

    and-int/2addr p1, p2

    int-to-short p1, p1

    iput-short p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->flags:S

    return-void
.end method

.method public setFrame(I)V
    .registers 2

    .line 652
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->frame:I

    return-void
.end method

.method public setHasPower(Z)V
    .registers 6

    if-nez p1, :cond_f

    .line 1735
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getPower()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setHasPowerFlag(Z)V

    return-void
.end method

.method public final setHasPowerFlag(Z)V
    .registers 3

    const/16 v0, 0x8

    .line 577
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setFlag(IZ)V

    return-void
.end method

.method public setHasRoad(Z)V
    .registers 2

    .line 1650
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setHasRoadFlag(Z)V

    return-void
.end method

.method public final setHasRoadFlag(Z)V
    .registers 3

    const/4 v0, 0x4

    .line 570
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setFlag(IZ)V

    return-void
.end method

.method public setHasWater(ZF)V
    .registers 7

    if-nez p1, :cond_f

    .line 1761
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getWater()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setHasWaterFlag(Z)V

    .line 1762
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->waterWaste:F

    return-void
.end method

.method public final setHasWaterFlag(Z)V
    .registers 3

    const/16 v0, 0x10

    .line 584
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setFlag(IZ)V

    return-void
.end method

.method public setIll(Z)V
    .registers 2

    .line 699
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setIllFlag(Z)V

    return-void
.end method

.method public final setIllFlag(Z)V
    .registers 3

    const/16 v0, 0x80

    .line 605
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setFlag(IZ)V

    return-void
.end method

.method public final setIsEmptyFlag(Z)V
    .registers 3

    const/4 v0, 0x2

    .line 563
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setFlag(IZ)V

    return-void
.end method

.method public setLastIllness(J)V
    .registers 3

    .line 828
    iput-wide p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->lastIllness:J

    return-void
.end method

.method public setLuaStorage(Lvm2/LuaTable;)V
    .registers 2

    .line 298
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->luaStorage:Lvm2/LuaTable;

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->luaStorageProxy:Lvm2/LuaTable;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 1878
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_10

    .line 1881
    :cond_d
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->name:Ljava/lang/String;

    return-void

    :cond_10
    :goto_10
    const/4 p1, 0x0

    .line 1879
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->name:Ljava/lang/String;

    return-void
.end method

.method public setOverloaded(Z)V
    .registers 2

    .line 707
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setOverloadedFlag(Z)V

    return-void
.end method

.method public final setOverloadedFlag(Z)V
    .registers 3

    const/16 v0, 0x40

    .line 598
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setFlag(IZ)V

    return-void
.end method

.method public setParent(II)V
    .registers 3

    int-to-short p1, p1

    .line 222
    iput-short p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->parentX:S

    int-to-short p1, p2

    .line 223
    iput-short p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->parentY:S

    return-void
.end method

.method public setPendingPedestrians(I)V
    .registers 2

    .line 1990
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingPedestrians:I

    return-void
.end method

.method public setPerformance(F)V
    .registers 3

    .line 840
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->performanceMin:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->performanceMax:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->performance:F

    return-void
.end method

.method public setSpentDiamondsOn(Z)V
    .registers 2

    .line 636
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setSpentDiamondsOnFlag(Z)V

    return-void
.end method

.method public final setSpentDiamondsOnFlag(Z)V
    .registers 3

    const/16 v0, 0x100

    .line 612
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setFlag(IZ)V

    return-void
.end method

.method public setSpentMoney(I)V
    .registers 2
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation

    .line 2016
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->spentMoney:I

    return-void
.end method

.method public setTempUsedAspectAmount(II)V
    .registers 4

    .line 1860
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->tempUsedAspectAmount:[I

    aput p2, v0, p1

    return-void
.end method

.method public setTerrainLevels(II)V
    .registers 3

    .line 1973
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->minTerrainLevel:I

    .line 1974
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Building;->maxTerrainLevel:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 628
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Building;->text:Ljava/lang/String;

    return-void
.end method

.method public setUntouchable(Z)V
    .registers 2

    .line 876
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setUntouchableFlag(Z)V

    return-void
.end method

.method public final setUntouchableFlag(Z)V
    .registers 3

    const/16 v0, 0x200

    .line 619
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setFlag(IZ)V

    return-void
.end method

.method public setUsedAspectAmount(II)V
    .registers 4

    .line 1852
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->usedAspectAmount:[I

    aput p2, v0, p1

    return-void
.end method

.method public skipPendingUpgradeDays(J)V
    .registers 10

    .line 1801
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1802
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/util/Tuple;

    .line 1803
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Building;->pendingUpgrades:Ljava/util/List;

    new-instance v3, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Building ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from draft "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Building;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
