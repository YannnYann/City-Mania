###### Class info.flowersoft.theotown.tools.TerrainTool (info.flowersoft.theotown.tools.TerrainTool)
.class public Linfo/flowersoft/theotown/tools/TerrainTool;
.super Linfo/flowersoft/theotown/tools/TwoModesTool;
.source "TerrainTool.java"


# instance fields
.field public final MAX_SIZE:I

.field public final draft:Linfo/flowersoft/theotown/draft/GroundDraft;

.field public heightAdjust:I

.field public final level:I

.field public price:I

.field public final prices:[I

.field public final setToWater:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/GroundDraft;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;-><init>()V

    .line 27
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->infiniteRange()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x80

    goto :goto_e

    :cond_c
    const/16 v0, 0xe

    :goto_e
    iput v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->MAX_SIZE:I

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v1, v0

    .line 29
    new-array v0, v1, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->prices:[I

    const/16 v0, 0x64

    .line 33
    iput v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->heightAdjust:I

    .line 46
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    .line 47
    iget v0, p1, Linfo/flowersoft/theotown/draft/GroundDraft;->level:I

    iput v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->level:I

    .line 48
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 50
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TerrainTool;->addActions()V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    .line 35
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;-><init>()V

    .line 27
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->infiniteRange()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x80

    goto :goto_e

    :cond_c
    const/16 v0, 0xe

    :goto_e
    iput v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->MAX_SIZE:I

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v1, v0

    .line 29
    new-array v0, v1, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->prices:[I

    const/16 v0, 0x64

    .line 33
    iput v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->heightAdjust:I

    .line 36
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    .line 37
    const-class v0, Linfo/flowersoft/theotown/draft/GroundDraft;

    if-eqz p1, :cond_30

    .line 38
    const-string p1, "$water00"

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/GroundDraft;

    goto :goto_38

    .line 39
    :cond_30
    const-string p1, "$ground00"

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/GroundDraft;

    :goto_38
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->level:I

    .line 42
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TerrainTool;->addActions()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/TerrainTool;)I
    .registers 1

    .line 20
    iget p0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->heightAdjust:I

    return p0
.end method

.method public static synthetic access$028(Linfo/flowersoft/theotown/tools/TerrainTool;I)I
    .registers 3

    .line 20
    iget v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->heightAdjust:I

    mul-int/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->heightAdjust:I

    return v0
.end method

.method public static synthetic access$036(Linfo/flowersoft/theotown/tools/TerrainTool;I)I
    .registers 3

    .line 20
    iget v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->heightAdjust:I

    div-int/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->heightAdjust:I

    return v0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tools/TerrainTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 20
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/tools/TerrainTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 20
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/tools/TerrainTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 20
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static getId(Z)Ljava/lang/String;
    .registers 3

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$terrain"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_f

    const-string p0, "water"

    goto :goto_11

    :cond_f
    const-string p0, "land"

    :goto_11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addActions()V
    .registers 3

    .line 59
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    if-eqz v0, :cond_22

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v1, Linfo/flowersoft/theotown/tools/TerrainTool$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/tools/TerrainTool$1;-><init>(Linfo/flowersoft/theotown/tools/TerrainTool;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v1, Linfo/flowersoft/theotown/tools/TerrainTool$2;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/tools/TerrainTool$2;-><init>(Linfo/flowersoft/theotown/tools/TerrainTool;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v1, Linfo/flowersoft/theotown/tools/TerrainTool$3;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/tools/TerrainTool$3;-><init>(Linfo/flowersoft/theotown/tools/TerrainTool;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 140
    :cond_22
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V

    return-void
.end method

.method public build(IIII)V
    .registers 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 165
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    .line 167
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 168
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v7, v3, v1

    int-to-float v8, v7

    .line 169
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    float-to-int v8, v8

    sub-int v9, v4, v2

    int-to-float v10, v9

    .line 170
    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v10

    float-to-int v10, v10

    const/4 v11, 0x1

    if-eqz v8, :cond_29

    goto :goto_2a

    :cond_29
    move v8, v11

    :goto_2a
    if-eqz v10, :cond_2d

    goto :goto_2e

    :cond_2d
    move v10, v11

    .line 175
    :goto_2e
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v11

    .line 176
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v9, v11

    const/4 v12, 0x0

    .line 178
    iput v12, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->price:I

    move v13, v12

    :goto_3c
    add-int v14, v3, v8

    if-eq v1, v14, :cond_155

    move v14, v2

    :goto_41
    add-int v15, v4, v10

    if-eq v14, v15, :cond_14b

    .line 182
    iget-object v15, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v15, v1, v14}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v15

    .line 183
    iget v12, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->level:I

    if-ne v12, v11, :cond_56

    iget-object v12, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v12, v1, v14}, Linfo/flowersoft/theotown/city/Tiles;->getGroundDraft2(II)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v12

    goto :goto_5a

    :cond_56
    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v12

    .line 185
    :goto_5a
    iget v11, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->level:I

    if-nez v11, :cond_10d

    .line 186
    iget-object v11, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-boolean v2, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    invoke-virtual {v11, v2, v1, v14}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTerrainBuildable(ZII)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 187
    iget v2, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->price:I

    move-object/from16 p1, v12

    int-to-long v11, v2

    iget-object v2, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move/from16 v17, v8

    iget-boolean v8, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    invoke-virtual {v2, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPriceForTerrain(Z)J

    move-result-wide v18

    add-long v11, v11, v18

    long-to-int v2, v11

    iput v2, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->price:I

    .line 188
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-boolean v8, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    const/4 v11, 0x0

    invoke-virtual {v2, v8, v1, v14, v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildTerrain(ZIILvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/Ground;

    add-int/lit8 v13, v13, 0x1

    goto :goto_8b

    :cond_87
    move/from16 v17, v8

    move-object/from16 p1, v12

    .line 192
    :goto_8b
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    if-eqz v2, :cond_ce

    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v8

    if-ne v2, v8, :cond_ce

    iget-object v2, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    move-object/from16 v12, p1

    if-eq v12, v2, :cond_ce

    .line 193
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-boolean v8, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    invoke-virtual {v2, v8, v1, v14}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTerrainBuildable(ZII)Z

    move-result v2

    if-nez v2, :cond_bb

    .line 194
    iget v2, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->price:I

    int-to-long v11, v2

    iget-object v2, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-boolean v8, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    invoke-virtual {v2, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPriceForTerrain(Z)J

    move-result-wide v18

    const-wide/16 v20, 0x4

    div-long v18, v18, v20

    add-long v11, v11, v18

    long-to-int v2, v11

    iput v2, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->price:I

    .line 197
    :cond_bb
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-virtual {v15, v2}, Linfo/flowersoft/theotown/city/objects/Ground;->setDraft(Linfo/flowersoft/theotown/draft/GroundDraft;)V

    .line 198
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v8, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v8, v8

    invoke-virtual {v2, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v15, v2}, Linfo/flowersoft/theotown/city/objects/Ground;->setFrame(I)V

    .line 201
    :cond_ce
    iget-boolean v2, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v8

    if-ne v2, v8, :cond_100

    .line 202
    iget-boolean v2, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    if-eqz v2, :cond_e5

    .line 203
    iget-short v2, v15, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    const/4 v8, 0x0

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v15, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    goto :goto_e6

    :cond_e5
    const/4 v8, 0x0

    .line 204
    :goto_e6
    iget-boolean v2, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    if-nez v2, :cond_f3

    .line 205
    iget-short v2, v15, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v15, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    .line 206
    :cond_f3
    iget v2, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->heightAdjust:I

    .line 207
    iget-short v8, v15, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    iget-boolean v11, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    if-eqz v11, :cond_fc

    neg-int v2, v2

    :cond_fc
    add-int/2addr v8, v2

    int-to-short v2, v8

    iput-short v2, v15, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    .line 210
    :cond_100
    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v11, 0x0

    invoke-virtual {v2, v1, v14, v11}, Linfo/flowersoft/theotown/city/Tiles;->setGroundDraft2(IILinfo/flowersoft/theotown/draft/GroundDraft;)V

    .line 211
    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v8, 0x0

    invoke-virtual {v2, v1, v14, v8}, Linfo/flowersoft/theotown/city/Tiles;->setGroundFrame2(III)V

    goto :goto_142

    :cond_10d
    move/from16 v17, v8

    .line 213
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    if-eq v12, v2, :cond_142

    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v2

    iget-boolean v8, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    if-ne v2, v8, :cond_142

    .line 214
    iget v2, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->price:I

    int-to-long v11, v2

    iget-object v2, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v2, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPriceForTerrain(Z)J

    move-result-wide v18

    add-long v11, v11, v18

    long-to-int v2, v11

    iput v2, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->price:I

    add-int/lit8 v13, v13, 0x1

    .line 217
    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget-object v8, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-virtual {v2, v1, v14, v8}, Linfo/flowersoft/theotown/city/Tiles;->setGroundDraft2(IILinfo/flowersoft/theotown/draft/GroundDraft;)V

    .line 218
    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    sget-object v8, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v11, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget-object v11, v11, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v11, v11

    invoke-virtual {v8, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    invoke-virtual {v2, v1, v14, v8}, Linfo/flowersoft/theotown/city/Tiles;->setGroundFrame2(III)V

    :cond_142
    :goto_142
    add-int/2addr v14, v10

    move/from16 v2, p2

    move/from16 v8, v17

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_41

    :cond_14b
    move/from16 v17, v8

    add-int v1, v1, v17

    move/from16 v2, p2

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_3c

    .line 223
    :cond_155
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v18

    iget v1, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->price:I

    int-to-double v1, v1

    int-to-float v8, v3

    int-to-float v10, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "terrain "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-wide/from16 v19, v1

    move/from16 v21, v8

    move/from16 v22, v10

    invoke-virtual/range {v18 .. v23}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 225
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->smoothWaterHeight:Z

    if-eqz v1, :cond_214

    const/4 v8, 0x0

    :goto_17f
    const/4 v1, 0x3

    if-ge v8, v1, :cond_214

    add-int/lit8 v1, v6, -0x3

    :goto_184
    add-int v2, v6, v9

    add-int/lit8 v10, v2, 0x3

    if-ge v1, v10, :cond_20d

    add-int/lit8 v10, v5, -0x3

    :goto_18c
    add-int v11, v5, v7

    add-int/lit8 v12, v11, 0x3

    if-ge v10, v12, :cond_203

    .line 229
    iget-object v12, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v12, v10, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v12

    if-eqz v12, :cond_1a3

    if-lt v10, v5, :cond_1a9

    if-lt v1, v6, :cond_1a9

    if-ge v10, v11, :cond_1a9

    if-lt v1, v2, :cond_1a3

    goto :goto_1a9

    :cond_1a3
    move/from16 v16, v1

    move/from16 p1, v2

    const/4 v1, 0x0

    goto :goto_1fa

    .line 231
    :cond_1a9
    :goto_1a9
    iget-object v11, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v11, v10, v1}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v11

    .line 233
    iget-short v12, v11, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    move/from16 v16, v1

    const/4 v14, 0x1

    const/4 v15, 0x1

    :goto_1b5
    const/16 v1, 0x8

    if-gt v14, v1, :cond_1e0

    .line 236
    invoke-static {v14}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v1

    add-int/2addr v1, v10

    .line 237
    invoke-static {v14}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v17

    move/from16 p1, v2

    add-int v2, v16, v17

    .line 238
    iget-object v3, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_1d9

    .line 239
    iget-object v3, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v1

    iget-short v1, v1, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    add-int/2addr v12, v1

    add-int/lit8 v15, v15, 0x1

    :cond_1d9
    mul-int/lit8 v14, v14, 0x2

    move/from16 v2, p1

    move/from16 v3, p3

    goto :goto_1b5

    :cond_1e0
    move/from16 p1, v2

    .line 244
    div-int/2addr v12, v15

    .line 245
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v1

    if-eqz v1, :cond_1f2

    const/4 v1, 0x0

    .line 246
    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v11, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    goto :goto_1fa

    :cond_1f2
    const/4 v1, 0x0

    .line 248
    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v11, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    :goto_1fa
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v1, v16

    goto :goto_18c

    :cond_203
    move/from16 v16, v1

    const/4 v1, 0x0

    add-int/lit8 v2, v16, 0x1

    move/from16 v3, p3

    move v1, v2

    goto/16 :goto_184

    :cond_20d
    const/4 v1, 0x0

    add-int/lit8 v8, v8, 0x1

    move/from16 v3, p3

    goto/16 :goto_17f

    :cond_214
    if-lez v13, :cond_251

    .line 257
    iget-boolean v1, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    if-eqz v1, :cond_21f

    .line 258
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v1, v5, v6, v7, v9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFenceWithin(IIII)V

    .line 261
    :cond_21f
    iget-object v1, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result v1

    if-eqz v1, :cond_22e

    .line 262
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v2, "terraform"

    invoke-interface {v1, v2}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    .line 265
    :cond_22e
    iget-boolean v1, v0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    if-eqz v1, :cond_23e

    .line 266
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD_WATER:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->playSound(IIIII)V

    goto :goto_24b

    .line 268
    :cond_23e
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD_LAND:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->playSound(IIIII)V

    .line 270
    :goto_24b
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/tools/BuildTool;->issueMovement()V

    .line 271
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    :cond_251
    return-void
.end method

.method public final calculatePrices()V
    .registers 14

    .line 283
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c2

    .line 284
    iget v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->MAX_SIZE:I

    neg-int v0, v0

    :goto_8
    iget v2, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->MAX_SIZE:I

    if-gt v0, v2, :cond_c2

    neg-int v2, v2

    .line 285
    :goto_d
    iget v3, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->MAX_SIZE:I

    if-gt v2, v3, :cond_be

    if-gtz v2, :cond_16

    neg-int v4, v3

    sub-int/2addr v4, v2

    goto :goto_17

    :cond_16
    move v4, v2

    :goto_17
    if-gtz v0, :cond_1c

    neg-int v5, v3

    sub-int/2addr v5, v0

    goto :goto_1d

    :cond_1c
    move v5, v0

    :goto_1d
    add-int v6, v4, v3

    add-int/2addr v3, v5

    .line 290
    iget v7, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    add-int/2addr v7, v4

    .line 291
    iget v8, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    add-int/2addr v8, v5

    .line 292
    iget-object v9, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9, v7, v8}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v9

    if-eqz v9, :cond_ba

    .line 293
    invoke-static {v4}, Lio/blueflower/stapel2d/util/MathUtil;->signum(I)I

    move-result v4

    neg-int v4, v4

    .line 294
    invoke-static {v5}, Lio/blueflower/stapel2d/util/MathUtil;->signum(I)I

    move-result v5

    neg-int v5, v5

    if-eqz v4, :cond_48

    .line 296
    iget-object v9, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->prices:[I

    add-int v10, v6, v4

    iget v11, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->MAX_SIZE:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v1

    mul-int/2addr v11, v3

    add-int/2addr v10, v11

    aget v9, v9, v10

    goto :goto_49

    :cond_48
    const/4 v9, 0x0

    :goto_49
    if-eqz v5, :cond_59

    .line 297
    iget-object v10, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->prices:[I

    add-int v11, v3, v5

    iget v12, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->MAX_SIZE:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v1

    mul-int/2addr v11, v12

    add-int/2addr v11, v6

    aget v10, v10, v11

    add-int/2addr v9, v10

    :cond_59
    mul-int v10, v4, v5

    if-eqz v10, :cond_6b

    .line 298
    iget-object v10, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->prices:[I

    add-int/2addr v4, v6

    add-int/2addr v5, v3

    iget v11, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->MAX_SIZE:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v1

    mul-int/2addr v5, v11

    add-int/2addr v4, v5

    aget v4, v10, v4

    sub-int/2addr v9, v4

    .line 299
    :cond_6b
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v7, v8}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    .line 301
    iget v5, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->level:I

    if-nez v5, :cond_93

    .line 302
    iget-object v5, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-boolean v10, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    invoke-virtual {v5, v10, v7, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTerrainBuildable(ZII)Z

    move-result v5

    if-nez v5, :cond_87

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    if-eq v4, v5, :cond_af

    :cond_87
    int-to-long v4, v9

    .line 303
    iget-object v7, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-boolean v8, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    invoke-virtual {v7, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPriceForTerrain(Z)J

    move-result-wide v7

    :goto_90
    add-long/2addr v4, v7

    long-to-int v9, v4

    goto :goto_af

    .line 305
    :cond_93
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v4

    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    if-ne v4, v5, :cond_af

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v7, v8}, Linfo/flowersoft/theotown/city/Tiles;->getGroundDraft2(II)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    if-eq v4, v5, :cond_af

    int-to-long v4, v9

    .line 306
    iget-object v7, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-boolean v8, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    invoke-virtual {v7, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPriceForTerrain(Z)J

    move-result-wide v7

    goto :goto_90

    .line 309
    :cond_af
    :goto_af
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->prices:[I

    iget v5, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->MAX_SIZE:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    mul-int/2addr v3, v5

    add-int/2addr v6, v3

    aput v9, v4, v6

    :cond_ba
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_be
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_c2
    return-void
.end method

.method public drawBefore(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 2

    .line 277
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBefore(Lio/blueflower/stapel2d/drawing/Engine;)V

    .line 279
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TerrainTool;->calculatePrices()V

    return-void
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 11

    .line 145
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/BuildTool;->drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 147
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    goto :goto_3c

    .line 151
    :cond_9
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {p0, v0, v1, p1, p2}, Linfo/flowersoft/theotown/tools/TerrainTool;->isValidFast(IIII)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isTileInvolved(II)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 152
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 153
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-boolean v1, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTerrainBuildable(ZII)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 154
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    return-void

    :cond_33
    move v3, p1

    move v4, p2

    move-object v2, p3

    .line 156
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 351
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_TERRAIN:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 55
    const-string v0, "Terrain"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 356
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-boolean v1, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    invoke-static {v1}, Linfo/flowersoft/theotown/tools/TerrainTool;->getId(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    iget-boolean v1, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    if-eqz v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->heightAdjust:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2e
    return-object v0
.end method

.method public isValid(II)Z
    .registers 5

    .line 325
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPriceForTerrain(Z)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    return p1
.end method

.method public isValid(IIII)Z
    .registers 12

    const/4 v0, 0x0

    .line 330
    iput v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->price:I

    sub-int v1, p3, p1

    .line 331
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iget v5, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->MAX_SIZE:I

    if-le v2, v5, :cond_1a

    return v0

    :cond_1a
    int-to-float v0, v1

    .line 333
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v1, v3

    .line 334
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    if-eqz v0, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v4

    :goto_2a
    if-eqz v1, :cond_2d

    move v4, v1

    :cond_2d
    :goto_2d
    add-int v1, p3, v0

    if-eq p1, v1, :cond_53

    move v1, p2

    :goto_32
    add-int v2, p4, v4

    if-eq v1, v2, :cond_51

    .line 340
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-boolean v3, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    invoke-virtual {v2, v3, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTerrainBuildable(ZII)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 341
    iget v2, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->price:I

    int-to-long v2, v2

    iget-object v5, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-boolean v6, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->setToWater:Z

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPriceForTerrain(Z)J

    move-result-wide v5

    add-long/2addr v2, v5

    long-to-int v2, v2

    iput v2, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->price:I

    :cond_4f
    add-int/2addr v1, v4

    goto :goto_32

    :cond_51
    add-int/2addr p1, v0

    goto :goto_2d

    .line 346
    :cond_53
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget p2, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->price:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    return p1
.end method

.method public final isValidFast(IIII)Z
    .registers 5

    sub-int/2addr p3, p1

    .line 317
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->MAX_SIZE:I

    if-le p1, p2, :cond_16

    const/4 p1, 0x0

    return p1

    .line 319
    :cond_16
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->prices:[I

    add-int/2addr p3, p2

    add-int/2addr p4, p2

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p4, p2

    add-int/2addr p3, p4

    aget p1, p1, p3

    iput p1, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->price:I

    .line 320
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget p2, p0, Linfo/flowersoft/theotown/tools/TerrainTool;->price:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.tools.TerrainTool.AnonymousClass1 (info.flowersoft.theotown.tools.TerrainTool$1)
.class public Linfo/flowersoft/theotown/tools/TerrainTool$1;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "TerrainTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/TerrainTool;->addActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/TerrainTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/TerrainTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 60
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TerrainTool$1;->this$0:Linfo/flowersoft/theotown/tools/TerrainTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 63
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_LEVEL_DOWN:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 68
    const-string v0, "cmdTerrainDown"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool$1;->this$0:Linfo/flowersoft/theotown/tools/TerrainTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TerrainTool;->access$100(Linfo/flowersoft/theotown/tools/TerrainTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x1f9

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 3

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool$1;->this$0:Linfo/flowersoft/theotown/tools/TerrainTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TerrainTool;->access$000(Linfo/flowersoft/theotown/tools/TerrainTool;)I

    move-result v0

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool$1;->this$0:Linfo/flowersoft/theotown/tools/TerrainTool;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/tools/TerrainTool;->access$028(Linfo/flowersoft/theotown/tools/TerrainTool;I)I

    return-void
.end method

###### Class info.flowersoft.theotown.tools.TerrainTool.AnonymousClass2 (info.flowersoft.theotown.tools.TerrainTool$2)
.class public Linfo/flowersoft/theotown/tools/TerrainTool$2;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "TerrainTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/TerrainTool;->addActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/TerrainTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/TerrainTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TerrainTool$2;->this$0:Linfo/flowersoft/theotown/tools/TerrainTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 89
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_LEVEL_UP:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 94
    const-string v0, "cmdTerrainUp"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool$2;->this$0:Linfo/flowersoft/theotown/tools/TerrainTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TerrainTool;->access$200(Linfo/flowersoft/theotown/tools/TerrainTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x3cc

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 3

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool$2;->this$0:Linfo/flowersoft/theotown/tools/TerrainTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TerrainTool;->access$000(Linfo/flowersoft/theotown/tools/TerrainTool;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool$2;->this$0:Linfo/flowersoft/theotown/tools/TerrainTool;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/tools/TerrainTool;->access$036(Linfo/flowersoft/theotown/tools/TerrainTool;I)I

    return-void
.end method

###### Class info.flowersoft.theotown.tools.TerrainTool.AnonymousClass3 (info.flowersoft.theotown.tools.TerrainTool$3)
.class public Linfo/flowersoft/theotown/tools/TerrainTool$3;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "TerrainTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/TerrainTool;->addActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/TerrainTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/TerrainTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 112
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TerrainTool$3;->this$0:Linfo/flowersoft/theotown/tools/TerrainTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 115
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_RIVER:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 120
    const-string v0, "cmdTerrainSmooth"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TerrainTool$3;->this$0:Linfo/flowersoft/theotown/tools/TerrainTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TerrainTool;->access$300(Linfo/flowersoft/theotown/tools/TerrainTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x5d0

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPressed()Z
    .registers 2

    .line 135
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->smoothWaterHeight:Z

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 125
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->smoothWaterHeight:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->smoothWaterHeight:Z

    return-void
.end method
