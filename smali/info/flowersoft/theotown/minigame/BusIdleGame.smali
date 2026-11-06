###### Class info.flowersoft.theotown.minigame.BusIdleGame (info.flowersoft.theotown.minigame.BusIdleGame)
.class public Linfo/flowersoft/theotown/minigame/BusIdleGame;
.super Linfo/flowersoft/theotown/minigame/IdleGame;
.source "BusIdleGame.java"


# static fields
.field public static final CARS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/CarDraft;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final RANK_STAGE_FACTOR:I

.field public building:Linfo/flowersoft/theotown/city/objects/Building;

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/util/IntList;",
            ">;"
        }
    .end annotation
.end field

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    const-string v0, "idle bus"

    const-class v1, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->CARS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/minigame/Currency;)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 46
    invoke-direct {v0, v2}, Linfo/flowersoft/theotown/minigame/IdleGame;-><init>(Linfo/flowersoft/theotown/minigame/Currency;)V

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    const/16 v2, 0xa

    .line 42
    iput v2, v0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->RANK_STAGE_FACTOR:I

    .line 47
    iput-object v1, v0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->city:Linfo/flowersoft/theotown/city/City;

    .line 48
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v2

    iput-object v2, v0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 49
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    iput-object v2, v0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 51
    new-instance v3, Linfo/flowersoft/theotown/minigame/StandardSpec;

    const/16 v4, 0xd73

    invoke-interface {v2, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xcf5

    .line 52
    invoke-interface {v2, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    const/4 v6, 0x0

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    invoke-direct/range {v3 .. v14}, Linfo/flowersoft/theotown/minigame/StandardSpec;-><init>(Ljava/lang/String;Ljava/lang/String;ZDDDD)V

    .line 51
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/minigame/IdleGame;->addSpec(Linfo/flowersoft/theotown/minigame/IdleGame$Spec;)V

    .line 56
    new-instance v16, Linfo/flowersoft/theotown/minigame/StandardSpec;

    const/16 v3, 0x7a7

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x601

    .line 57
    invoke-interface {v2, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-wide/high16 v24, 0x4014000000000000L    # 5.0

    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    const/16 v19, 0x1

    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    const-wide v22, 0x3fc999999999999aL    # 0.2

    invoke-direct/range {v16 .. v27}, Linfo/flowersoft/theotown/minigame/StandardSpec;-><init>(Ljava/lang/String;Ljava/lang/String;ZDDDD)V

    move-object/from16 v2, v16

    .line 56
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/minigame/IdleGame;->addSpec(Linfo/flowersoft/theotown/minigame/IdleGame$Spec;)V

    .line 61
    new-instance v2, Linfo/flowersoft/theotown/minigame/BusIdleGame$1;

    invoke-direct {v2, v0, v1}, Linfo/flowersoft/theotown/minigame/BusIdleGame$1;-><init>(Linfo/flowersoft/theotown/minigame/BusIdleGame;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/minigame/IdleGame;->addProperty(Linfo/flowersoft/theotown/minigame/IdleGame$Property;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/minigame/BusIdleGame;)Ljava/util/List;
    .registers 1

    .line 32
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/minigame/BusIdleGame;)Lio/blueflower/stapel2d/gamestack/Translator;
    .registers 1

    .line 32
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/minigame/BusIdleGame;)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 1

    .line 32
    iget-object p0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->building:Linfo/flowersoft/theotown/city/objects/Building;

    return-object p0
.end method


# virtual methods
.method public addStage()V
    .registers 9

    .line 365
    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGame;->countStages()I

    move-result v0

    .line 366
    invoke-super {p0}, Linfo/flowersoft/theotown/minigame/IdleGame;->addStage()V

    .line 367
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    new-instance v2, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v2}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/BusStopList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_85

    const/4 v1, 0x0

    .line 370
    :cond_1f
    :goto_1f
    iget-object v3, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/BusStopList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v2

    iget-object v4, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/BusStopList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v1, v3, :cond_85

    .line 371
    new-instance v3, Linfo/flowersoft/theotown/util/ListSampler;

    iget-object v4, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object v4

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/util/ListSampler;-><init>(Ljava/util/List;)V

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/ListSampler;->sample(Ljava/util/Random;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/BusStop;

    .line 372
    iget-object v4, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v5

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v4

    .line 374
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v5

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v6

    iget v7, v3, Linfo/flowersoft/theotown/city/objects/BusStop;->level:I

    add-int/2addr v7, v4

    invoke-virtual {p0, v0, v5, v6, v7}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->pathContains(IIII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1f

    .line 375
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v5

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v6

    iget v3, v3, Linfo/flowersoft/theotown/city/objects/BusStop;->level:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v5, v6, v3}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->addToPath(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_85
    return-void
.end method

.method public addToPath(IIII)V
    .registers 6

    .line 247
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/util/IntList;

    shl-int/lit8 p4, p4, 0x1a

    shl-int/lit8 p2, p2, 0xd

    or-int/2addr p2, p4

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    return-void
.end method

.method public clearPath(I)V
    .registers 3

    .line 290
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    return-void
.end method

.method public final convertOldPathToNewFormat(I)I
    .registers 4

    .line 0
    shr-int/lit8 v0, p1, 0xe

    and-int/lit16 v0, v0, 0x3fff

    and-int/lit16 v1, p1, 0x3fff

    shr-int/lit8 p1, p1, 0x1c

    shl-int/lit8 p1, p1, 0x1a

    shl-int/lit8 v0, v0, 0xd

    or-int/2addr p1, v0

    or-int/2addr p1, v1

    return p1
.end method

.method public drawStageIcon(Lio/blueflower/stapel2d/drawing/Engine;IIIII)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p6

    .line 232
    invoke-virtual {v0, v10}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getStageCar(I)Linfo/flowersoft/theotown/draft/CarDraft;

    move-result-object v11

    .line 233
    invoke-virtual {v0, v10}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getBusCount(I)I

    move-result v12

    const/4 v2, 0x0

    move v13, v2

    :goto_10
    if-ge v13, v12, :cond_6a

    move/from16 v14, p2

    int-to-float v2, v14

    int-to-float v3, v13

    add-int/lit8 v4, v12, -0x1

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/16 v4, 0xa

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 236
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 237
    iget-object v3, v11, Linfo/flowersoft/theotown/draft/CarDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v3, :cond_36

    .line 238
    iget v4, v11, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerColor:I

    mul-int/2addr v4, v10

    div-int/lit8 v4, v4, 0x4

    array-length v5, v3

    rem-int/2addr v4, v5

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 240
    :cond_36
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, v2

    move/from16 v15, p3

    int-to-float v4, v15

    move/from16 v5, p4

    int-to-float v6, v5

    move/from16 v7, p5

    move v5, v6

    int-to-float v6, v7

    iget-object v8, v11, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/16 v16, 0x1

    aget v9, v8, v16

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    move-object/from16 v17, v3

    move v3, v2

    move-object/from16 v2, v17

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 241
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 242
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v7, v11, Linfo/flowersoft/theotown/draft/CarDraft;->overlayFrames:[I

    aget v9, v7, v16

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    goto :goto_10

    :cond_6a
    return-void
.end method

.method public getBuilding()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 205
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->building:Linfo/flowersoft/theotown/city/objects/Building;

    return-object v0
.end method

.method public getBusCount(I)I
    .registers 3

    .line 271
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getLevel(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/minigame/IdleGame;->getMajorLevel(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getIcon()I
    .registers 2

    .line 334
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_PUBLICTRANSPORT:I

    return v0
.end method

.method public getIncomeTitle()Ljava/lang/String;
    .registers 3

    .line 329
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x5c8

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGame;->getRank()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0x879

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGame;->countStages()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->maxStageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathLength(I)I
    .registers 3

    .line 251
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p1

    return p1
.end method

.method public getPathLevel(II)I
    .registers 4

    .line 263
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    shr-int/lit8 p1, p1, 0x1a

    return p1
.end method

.method public getPathX(II)I
    .registers 4

    .line 255
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    shr-int/lit8 p1, p1, 0xd

    and-int/lit16 p1, p1, 0x1fff

    return p1
.end method

.method public getPathY(II)I
    .registers 4

    .line 259
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    and-int/lit16 p1, p1, 0x1fff

    return p1
.end method

.method public getSpeed(I)F
    .registers 5

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/minigame/IdleGame;->getSpec(I)Linfo/flowersoft/theotown/minigame/IdleGame$Spec;

    move-result-object v0

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getLevel(I)I

    move-result v1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGame;->getRank()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Linfo/flowersoft/theotown/minigame/IdleGame$Spec;->getValue(III)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public getStageCar(I)Linfo/flowersoft/theotown/draft/CarDraft;
    .registers 4

    .line 299
    sget-object v0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->CARS:Ljava/util/List;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getLevel(I)I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/CarDraft;

    return-object p1
.end method

.method public getStageColor(I)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4

    .line 294
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getStageCar(I)Linfo/flowersoft/theotown/draft/CarDraft;

    move-result-object v0

    .line 295
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/CarDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getStageSubTitle(I)Ljava/lang/String;
    .registers 2

    .line 309
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getStageSubTitle(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStageTitle(I)Ljava/lang/String;
    .registers 4

    .line 304
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x217

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getLevel(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUnlockImmediatelyText()Ljava/lang/String;
    .registers 3

    .line 349
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x5eb

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnlockImmediatelyTitle()Ljava/lang/String;
    .registers 3

    .line 344
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0xa35

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnlockSubTitle(I)Ljava/lang/String;
    .registers 4

    .line 319
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0xb68

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUnlockTitle(I)Ljava/lang/String;
    .registers 3

    .line 314
    iget-object p1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v0, 0xc53

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUpgradeTitle(I)Ljava/lang/String;
    .registers 3

    .line 324
    iget-object p1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v0, 0x6fa

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public income(II)D
    .registers 9

    .line 225
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/minigame/IdleGame;->getMajorLevel(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    add-double/2addr v0, v2

    .line 226
    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGame;->getRank()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr p1, v2

    int-to-double v2, p1

    const-wide v4, 0x3ffccccccccccccdL    # 1.8

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v4

    const-wide v4, 0x3ff28f5c28f5c28fL    # 1.16

    int-to-double p1, p2

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v4

    mul-double/2addr v2, p1

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    move v1, v0

    move v2, v1

    .line 118
    :goto_3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 119
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_f6

    :goto_17
    move v3, v0

    goto :goto_44

    :sswitch_19
    const-string v4, "path2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_17

    :cond_22
    const/4 v3, 0x3

    goto :goto_44

    :sswitch_24
    const-string v4, "path"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_17

    :cond_2d
    const/4 v3, 0x2

    goto :goto_44

    :sswitch_2f
    const-string v4, "base"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto :goto_17

    :cond_38
    const/4 v3, 0x1

    goto :goto_44

    :sswitch_3a
    const-string v4, "building"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto :goto_17

    :cond_43
    const/4 v3, 0x0

    :goto_44
    packed-switch v3, :pswitch_data_108

    .line 159
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3

    .line 146
    :pswitch_4b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 147
    :goto_4e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 148
    new-instance v3, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v3}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 149
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 150
    :goto_5c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 151
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_5c

    .line 153
    :cond_6a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    .line 154
    iget-object v4, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 156
    :cond_73
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_3

    .line 133
    :pswitch_77
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 134
    :goto_7a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 135
    new-instance v3, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v3}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 136
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 137
    :goto_88
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 138
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v4

    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->convertOldPathToNewFormat(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_88

    .line 140
    :cond_9a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    .line 141
    iget-object v4, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 143
    :cond_a3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_3

    .line 121
    :pswitch_a8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 122
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 123
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_3

    .line 126
    :pswitch_b3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 127
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    .line 128
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    .line 129
    :goto_be
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c8

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_be

    .line 130
    :cond_c8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_3

    .line 164
    :cond_cd
    iget-object p1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_dd

    .line 165
    iget-object p1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 168
    :cond_dd
    :goto_dd
    iget-object p1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGame;->countStages()I

    move-result v0

    if-ge p1, v0, :cond_f4

    iget-object p1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_dd

    :cond_f4
    return-void

    nop

    :sswitch_data_f6
    .sparse-switch
        -0x5545ed4c -> :sswitch_3a
        0x2e06d1 -> :sswitch_2f
        0x346425 -> :sswitch_24
        0x65820ad -> :sswitch_19
    .end sparse-switch

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_b3
        :pswitch_a8
        :pswitch_77
        :pswitch_4b
    .end packed-switch
.end method

.method public maxStageCount()I
    .registers 2

    .line 0
    const/16 v0, 0x1e

    return v0
.end method

.method public pathContains(IIII)I
    .registers 8

    .line 275
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x0

    .line 276
    :goto_9
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 277
    invoke-virtual {p0, p1, v1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathX(II)I

    move-result v2

    if-ne v2, p2, :cond_22

    invoke-virtual {p0, p1, v1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathY(II)I

    move-result v2

    if-ne v2, p3, :cond_22

    invoke-virtual {p0, p1, v1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathLevel(II)I

    move-result v2

    if-ne v2, p4, :cond_22

    return v1

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_25
    const/4 p1, -0x1

    return p1
.end method

.method public priceOfStage(I)D
    .registers 6

    .line 215
    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGame;->getRank()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr p1, v0

    int-to-double v0, p1

    const-wide v2, 0x4008cccccccccccdL    # 3.1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public priceOfUpgrade(II)D
    .registers 9

    .line 220
    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGame;->getRank()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr p1, v0

    int-to-double v0, p1

    const-wide v2, 0x4001333333333333L    # 2.15

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4035000000000000L    # 21.0

    mul-double/2addr v0, v2

    const-wide v2, 0x3ff3d70a3d70a3d7L    # 1.24

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const p1, 0x3d4ccccd    # 0.05f

    int-to-float p2, p2

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p2, p1

    float-to-double p1, p2

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method public removeFromPath(II)V
    .registers 4

    .line 267
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    const-string v0, "base"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 181
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 182
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 184
    const-string v0, "building"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 185
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_2d

    .line 186
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 187
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_34

    :cond_2d
    const/4 v0, -0x1

    .line 189
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 190
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 192
    :goto_34
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 194
    const-string v0, "path2"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 195
    :goto_42
    iget-object v2, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6c

    .line 196
    iget-object v2, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->paths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/util/IntList;

    .line 197
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move v3, v0

    .line 198
    :goto_56
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v4

    if-ge v3, v4, :cond_66

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    invoke-interface {p1, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 199
    :cond_66
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 201
    :cond_6c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setActive(Z)V
    .registers 2

    .line 99
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->setActive(Z)V

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->building:Linfo/flowersoft/theotown/city/objects/Building;

    :cond_8
    return-void
.end method

.method public setBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 2

    .line 210
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame;->building:Linfo/flowersoft/theotown/city/objects/Building;

    return-void
.end method

.method public upgrade(II)V
    .registers 3

    .line 354
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/minigame/IdleGame;->upgrade(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.minigame.BusIdleGame.AnonymousClass1 (info.flowersoft.theotown.minigame.BusIdleGame$1)
.class public Linfo/flowersoft/theotown/minigame/BusIdleGame$1;
.super Ljava/lang/Object;
.source "BusIdleGame.java"

# interfaces
.implements Linfo/flowersoft/theotown/minigame/IdleGame$Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/minigame/BusIdleGame;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/minigame/Currency;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/minigame/BusIdleGame;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/minigame/BusIdleGame;Linfo/flowersoft/theotown/city/City;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame$1;->this$0:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iput-object p2, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame$1;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 79
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROUTE:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame$1;->this$0:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->access$100(Linfo/flowersoft/theotown/minigame/BusIdleGame;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x59e

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNeeded(I)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public isReady(I)Z
    .registers 3

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame$1;->this$0:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->access$000(Linfo/flowersoft/theotown/minigame/BusIdleGame;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(ILio/blueflower/stapel2d/util/Setter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 84
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame$1;->val$city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/BusRouteTool;

    iget-object v2, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame$1;->this$0:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    new-instance v3, Linfo/flowersoft/theotown/minigame/BusIdleGame$1$1;

    invoke-direct {v3, p0, p2}, Linfo/flowersoft/theotown/minigame/BusIdleGame$1$1;-><init>(Linfo/flowersoft/theotown/minigame/BusIdleGame$1;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-direct {v1, v2, p1, v3}, Linfo/flowersoft/theotown/tools/BusRouteTool;-><init>(Linfo/flowersoft/theotown/minigame/BusIdleGame;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

###### Class info.flowersoft.theotown.minigame.BusIdleGame.AnonymousClass1.RunnableC10761 (info.flowersoft.theotown.minigame.BusIdleGame$1$1)
.class public Linfo/flowersoft/theotown/minigame/BusIdleGame$1$1;
.super Ljava/lang/Object;
.source "BusIdleGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/minigame/BusIdleGame$1;->onClick(ILio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/minigame/BusIdleGame$1;

.field public final synthetic val$overlayVisibility:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/minigame/BusIdleGame$1;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame$1$1;->this$1:Linfo/flowersoft/theotown/minigame/BusIdleGame$1;

    iput-object p2, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame$1$1;->val$overlayVisibility:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame$1$1;->val$overlayVisibility:Lio/blueflower/stapel2d/util/Setter;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame$1$1;->this$1:Linfo/flowersoft/theotown/minigame/BusIdleGame$1;

    iget-object v1, v0, Linfo/flowersoft/theotown/minigame/BusIdleGame$1;->val$city:Linfo/flowersoft/theotown/city/City;

    iget-object v0, v0, Linfo/flowersoft/theotown/minigame/BusIdleGame$1;->this$0:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    invoke-static {v0}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->access$200(Linfo/flowersoft/theotown/minigame/BusIdleGame;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iget-object v2, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame$1$1;->this$1:Linfo/flowersoft/theotown/minigame/BusIdleGame$1;

    iget-object v2, v2, Linfo/flowersoft/theotown/minigame/BusIdleGame$1;->this$0:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    invoke-static {v2}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->access$200(Linfo/flowersoft/theotown/minigame/BusIdleGame;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame$1$1;->this$1:Linfo/flowersoft/theotown/minigame/BusIdleGame$1;

    iget-object v3, v3, Linfo/flowersoft/theotown/minigame/BusIdleGame$1;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Linfo/flowersoft/theotown/city/City;->focus(FFF)V

    .line 90
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGame$1$1;->this$1:Linfo/flowersoft/theotown/minigame/BusIdleGame$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/minigame/BusIdleGame$1;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v1, "bus_route_create"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    :cond_47
    return-void
.end method
