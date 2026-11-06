###### Class info.flowersoft.theotown.components.DefaultIdleGame (info.flowersoft.theotown.components.DefaultIdleGame)
.class public Linfo/flowersoft/theotown/components/DefaultIdleGame;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "DefaultIdleGame.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public final PAYMENT_DELAY_MS:I

.field public currencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/minigame/Currency;",
            ">;"
        }
    .end annotation
.end field

.field public factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/minigame/IdleGameFactory;",
            ">;"
        }
    .end annotation
.end field

.field public gameIdCounter:I

.field public games:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/minigame/IdleGame;",
            ">;"
        }
    .end annotation
.end field

.field public idToFactory:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/minigame/IdleGameFactory;",
            ">;"
        }
    .end annotation
.end field

.field public idToGame:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/minigame/IdleGame;",
            ">;"
        }
    .end annotation
.end field

.field public lastPayment:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 5

    .line 55
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    const/16 v0, 0x3e8

    .line 43
    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->PAYMENT_DELAY_MS:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->currencies:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->factories:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->games:Ljava/util/List;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->idToFactory:Lcom/badlogic/gdx/utils/IntMap;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->idToGame:Lcom/badlogic/gdx/utils/IntMap;

    const/4 v0, 0x1

    .line 51
    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->gameIdCounter:I

    .line 56
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 58
    new-instance v0, Linfo/flowersoft/theotown/minigame/BusCurrency;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/minigame/BusCurrency;-><init>(Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 60
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->factories:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/minigame/BusIdleGameFactory;

    invoke-direct {v2, p1, v0}, Linfo/flowersoft/theotown/minigame/BusIdleGameFactory;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/minigame/Currency;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->currencies:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static isActive()Z
    .registers 1

    .line 40
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->legacyBusSystem:Z

    return v0
.end method


# virtual methods
.method public drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 11

    .line 280
    invoke-static {}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->isActive()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_c4

    .line 282
    :cond_8
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->ringBuildIndicator:Z

    if-eqz v0, :cond_c4

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_c4

    .line 283
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 284
    iget p2, p1, Linfo/flowersoft/theotown/city/objects/Building;->_IDLE_ID:I

    if-lez p2, :cond_29

    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->idToGame:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/minigame/IdleGame;

    goto :goto_2a

    :cond_29
    const/4 p2, 0x0

    :goto_2a
    if-eqz p1, :cond_c4

    if-eqz p2, :cond_c4

    .line 286
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->upgradeAvailable(Linfo/flowersoft/theotown/minigame/IdleGame;)Z

    move-result p2

    if-eqz p2, :cond_c4

    .line 287
    iget-boolean p2, p3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 289
    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 290
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v1

    .line 291
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x8

    mul-int/2addr v2, v3

    int-to-float v2, v2

    .line 292
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v4

    mul-int/2addr v4, v3

    sub-int/2addr v4, v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    neg-int v3, v3

    .line 293
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result p1

    mul-int/lit8 p1, p1, 0xc

    sub-int/2addr v3, p1

    int-to-float p1, v3

    .line 291
    invoke-virtual {p3, v2, p1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 296
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result p1

    .line 298
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    .line 299
    invoke-virtual {v0, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 300
    iget v4, p3, Linfo/flowersoft/theotown/city/Drawer;->time:I

    rem-int/lit16 v4, v4, 0x3e8

    int-to-float v4, v4

    const v5, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 301
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    mul-float/2addr v4, v2

    const/high16 v2, -0x3e300000    # -26.0f

    sub-float v4, v2, v4

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    invoke-virtual {p3, v5, v2, v4, v6}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 302
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    iget v4, p3, Linfo/flowersoft/theotown/city/Drawer;->x:F

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/Drawer;->getShiftX()F

    move-result v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p3, Linfo/flowersoft/theotown/city/Drawer;->y:F

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/Drawer;->getShiftY()F

    move-result v6

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2, v4, v5, v0, v3}, Linfo/flowersoft/theotown/drawing/Drawing;->drawHalo(IILio/blueflower/stapel2d/drawing/Engine;F)V

    .line 303
    invoke-virtual {v0, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 305
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/Drawer;->resetShift()V

    .line 306
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 307
    iput-boolean p2, p3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    :cond_c4
    :goto_c4
    return-void
.end method

.method public getCurrencies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/minigame/Currency;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->currencies:Ljava/util/List;

    return-object v0
.end method

.method public getCurrency(Ljava/lang/String;)Linfo/flowersoft/theotown/minigame/Currency;
    .registers 5

    const/4 v0, 0x0

    .line 168
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->currencies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 169
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->currencies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/minigame/Currency;

    .line 170
    invoke-interface {v1}, Linfo/flowersoft/theotown/minigame/Currency;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGame(I)Linfo/flowersoft/theotown/minigame/IdleGame;
    .registers 3

    .line 276
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->idToGame:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/minigame/IdleGame;

    return-object p1
.end method

.method public getGame(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/minigame/IdleGame;
    .registers 3

    .line 256
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Building;->_IDLE_ID:I

    if-lez p1, :cond_d

    .line 257
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->idToGame:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/minigame/IdleGame;

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/minigame/IdleGame;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->games:Ljava/util/List;

    return-object v0
.end method

.method public getIncome(Linfo/flowersoft/theotown/minigame/Currency;)D
    .registers 7

    .line 265
    invoke-static {}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->isActive()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    return-wide v1

    :cond_9
    const/4 v0, 0x0

    .line 268
    :goto_a
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->games:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2e

    .line 269
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->games:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/minigame/IdleGame;

    .line 270
    invoke-virtual {v3}, Linfo/flowersoft/theotown/minigame/IdleGame;->getCurrency()Linfo/flowersoft/theotown/minigame/Currency;

    move-result-object v4

    if-ne v4, p1, :cond_2b

    invoke-virtual {v3}, Linfo/flowersoft/theotown/minigame/IdleGame;->isActive()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v3}, Linfo/flowersoft/theotown/minigame/IdleGame;->getOverallIncome()D

    move-result-wide v3

    add-double/2addr v1, v3

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_2e
    return-wide v1
.end method

.method public final getNonActiveGame()Linfo/flowersoft/theotown/minigame/IdleGame;
    .registers 4

    const/4 v0, 0x0

    .line 233
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->games:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 234
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->games:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/minigame/IdleGame;

    .line 235
    invoke-virtual {v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->isActive()Z

    move-result v2

    if-nez v2, :cond_18

    return-object v1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 0
    const/16 v0, 0x14

    return v0
.end method

.method public final issuePayment(D)V
    .registers 9

    .line 245
    invoke-static {}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->isActive()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_37

    :cond_7
    const/4 v0, 0x0

    .line 247
    :goto_8
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->games:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 248
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->games:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/minigame/IdleGame;

    .line 249
    invoke-virtual {v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getOverallIncome()D

    move-result-wide v2

    mul-double/2addr v2, p1

    .line 250
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/GameMode;->hasInfiniteIdleMoney()Z

    move-result v4

    if-eqz v4, :cond_2c

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    .line 251
    :cond_2c
    invoke-virtual {v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getCurrency()Linfo/flowersoft/theotown/minigame/Currency;

    move-result-object v1

    neg-double v2, v2

    invoke-interface {v1, v2, v3}, Linfo/flowersoft/theotown/minigame/Currency;->spend(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_37
    :goto_37
    return-void
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 68
    :goto_8
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->currencies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_29

    .line 69
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->currencies:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/minigame/Currency;

    invoke-interface {v4}, Linfo/flowersoft/theotown/minigame/Currency;->getTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->currencies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/minigame/Currency;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v3, v0

    goto :goto_8

    .line 72
    :cond_29
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v4, v2

    .line 73
    :goto_2f
    iget-object v5, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->factories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_50

    .line 74
    iget-object v5, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->factories:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/minigame/IdleGameFactory;

    invoke-interface {v5}, Linfo/flowersoft/theotown/minigame/IdleGameFactory;->getTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->factories:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/minigame/IdleGameFactory;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v0

    goto :goto_2f

    .line 77
    :cond_50
    :goto_50
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13f

    .line 78
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_140

    goto :goto_86

    :sswitch_66
    const-string v6, "idle games"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    goto :goto_86

    :cond_6f
    const/4 v5, 0x2

    goto :goto_86

    :sswitch_71
    const-string v6, "game id"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    goto :goto_86

    :cond_7a
    move v5, v0

    goto :goto_86

    :sswitch_7c
    const-string v6, "currencies"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_85

    goto :goto_86

    :cond_85
    move v5, v2

    :goto_86
    packed-switch v5, :pswitch_data_14e

    .line 136
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_50

    .line 95
    :pswitch_8d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 96
    :goto_90
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10a

    .line 97
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 98
    const-string v4, ""

    .line 99
    :cond_9b
    :goto_9b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_106

    .line 100
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c1

    const-string v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bc

    .line 124
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_9b

    .line 102
    :cond_bc
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_9b

    .line 105
    :cond_c1
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/minigame/IdleGameFactory;

    if-eqz v5, :cond_102

    .line 107
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 108
    invoke-interface {v5, p1}, Linfo/flowersoft/theotown/minigame/IdleGameFactory;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)Linfo/flowersoft/theotown/minigame/IdleGame;

    move-result-object v6

    .line 109
    invoke-virtual {v6}, Linfo/flowersoft/theotown/minigame/IdleGame;->getId()I

    move-result v7

    if-nez v7, :cond_df

    iget v7, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->gameIdCounter:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->gameIdCounter:I

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/minigame/IdleGame;->setId(I)V

    .line 110
    :cond_df
    invoke-virtual {v6}, Linfo/flowersoft/theotown/minigame/IdleGame;->getId()I

    move-result v7

    .line 111
    iget-object v8, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->games:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v8, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->idToFactory:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v8, v7, v5}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v8, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->idToGame:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v8, v7, v6}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 115
    invoke-interface {v5, v6}, Linfo/flowersoft/theotown/minigame/IdleGameFactory;->getBuilding(Linfo/flowersoft/theotown/minigame/IdleGame;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v5

    if-eqz v5, :cond_9b

    .line 117
    invoke-virtual {v6}, Linfo/flowersoft/theotown/minigame/IdleGame;->getId()I

    move-result v6

    iput v6, v5, Linfo/flowersoft/theotown/city/objects/Building;->_IDLE_ID:I

    goto :goto_9b

    .line 120
    :cond_102
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_9b

    .line 128
    :cond_106
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_90

    .line 130
    :cond_10a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_50

    .line 133
    :pswitch_10f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v4

    iput v4, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->gameIdCounter:I

    goto/16 :goto_50

    .line 80
    :pswitch_117
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 81
    :goto_11a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13a

    .line 82
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/minigame/Currency;

    if-eqz v4, :cond_136

    .line 85
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 86
    invoke-interface {v4, p1}, Linfo/flowersoft/theotown/util/Saveable;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 87
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_11a

    .line 89
    :cond_136
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_11a

    .line 92
    :cond_13a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_50

    :cond_13f
    return-void

    :sswitch_data_140
    .sparse-switch
        -0x40efff91 -> :sswitch_7c
        -0xba9a3f7 -> :sswitch_71
        0xb235775 -> :sswitch_66
    .end sparse-switch

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_117
        :pswitch_10f
        :pswitch_8d
    .end packed-switch
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    const-string v0, "currencies"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 145
    :goto_b
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->currencies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 146
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->currencies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/minigame/Currency;

    invoke-interface {v2}, Linfo/flowersoft/theotown/minigame/Currency;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 147
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->currencies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/minigame/Currency;

    invoke-interface {v2, p1}, Linfo/flowersoft/theotown/util/Saveable;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 148
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 150
    :cond_37
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 152
    const-string v1, "idle games"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 153
    :goto_43
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->games:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_84

    .line 154
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->games:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/minigame/IdleGame;

    .line 155
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 156
    const-string v2, "type"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->idToFactory:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/minigame/IdleGameFactory;

    invoke-interface {v3}, Linfo/flowersoft/theotown/minigame/IdleGameFactory;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 157
    const-string v2, "data"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 158
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 159
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 160
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 162
    :cond_84
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 164
    const-string v0, "game id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->gameIdCounter:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public update()V
    .registers 12

    .line 177
    invoke-static {}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->isActive()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_fd

    .line 179
    :cond_8
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 180
    iget-wide v2, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->lastPayment:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_26

    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-gez v4, :cond_26

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 182
    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->issuePayment(D)V

    .line 184
    :cond_26
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->lastPayment:J

    const/4 v0, 0x0

    move v1, v0

    .line 186
    :goto_2a
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->games:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_76

    .line 187
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->games:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/minigame/IdleGame;

    .line 188
    invoke-virtual {v2}, Linfo/flowersoft/theotown/minigame/IdleGame;->isActive()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 189
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->idToFactory:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/minigame/IdleGame;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/minigame/IdleGameFactory;

    .line 190
    invoke-interface {v3, v2}, Linfo/flowersoft/theotown/minigame/IdleGameFactory;->getBuilding(Linfo/flowersoft/theotown/minigame/IdleGame;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v4

    if-eqz v4, :cond_70

    .line 191
    invoke-interface {v3}, Linfo/flowersoft/theotown/minigame/IdleGameFactory;->getBuildings()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 192
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v5

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v3

    if-eq v3, v4, :cond_73

    .line 196
    :cond_70
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/minigame/IdleGame;->setActive(Z)V

    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_76
    move v1, v0

    .line 201
    :goto_77
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->factories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_fd

    .line 202
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->factories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/minigame/IdleGameFactory;

    .line 203
    invoke-interface {v2}, Linfo/flowersoft/theotown/minigame/IdleGameFactory;->getBuildings()Ljava/util/List;

    move-result-object v3

    move v4, v0

    .line 204
    :goto_8c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_f4

    .line 205
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 207
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v6

    invoke-virtual {v6, v5}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v5

    move v6, v0

    .line 208
    :goto_a3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_f1

    .line 209
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v7, :cond_ee

    .line 211
    invoke-virtual {p0, v7}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->getGame(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/minigame/IdleGame;

    move-result-object v8

    if-nez v8, :cond_ee

    .line 212
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->getNonActiveGame()Linfo/flowersoft/theotown/minigame/IdleGame;

    move-result-object v8

    if-nez v8, :cond_e1

    .line 214
    invoke-interface {v2, v7}, Linfo/flowersoft/theotown/minigame/IdleGameFactory;->create(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/minigame/IdleGame;

    move-result-object v8

    .line 215
    iget v9, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->gameIdCounter:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->gameIdCounter:I

    invoke-virtual {v8, v9}, Linfo/flowersoft/theotown/minigame/IdleGame;->setId(I)V

    .line 216
    iget-object v9, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->games:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v9, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->idToFactory:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/minigame/IdleGame;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v9, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->idToGame:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/minigame/IdleGame;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_e1
    invoke-virtual {v8, v7}, Linfo/flowersoft/theotown/minigame/IdleGame;->setBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V

    const/4 v9, 0x1

    .line 221
    invoke-virtual {v8, v9}, Linfo/flowersoft/theotown/minigame/IdleGame;->setActive(Z)V

    .line 222
    invoke-virtual {v8}, Linfo/flowersoft/theotown/minigame/IdleGame;->getId()I

    move-result v8

    iput v8, v7, Linfo/flowersoft/theotown/city/objects/Building;->_IDLE_ID:I

    :cond_ee
    add-int/lit8 v6, v6, 0x1

    goto :goto_a3

    :cond_f1
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    .line 228
    :cond_f4
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultIdleGame;->games:Ljava/util/List;

    invoke-interface {v2, v3}, Linfo/flowersoft/theotown/minigame/IdleGameFactory;->update(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_77

    :cond_fd
    :goto_fd
    return-void
.end method

.method public final upgradeAvailable(Linfo/flowersoft/theotown/minigame/IdleGame;)Z
    .registers 6

    .line 313
    invoke-virtual {p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getCurrency()Linfo/flowersoft/theotown/minigame/Currency;

    move-result-object v0

    const/4 v1, 0x0

    .line 314
    :goto_5
    invoke-virtual {p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->countStages()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 315
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getLevel(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/minigame/IdleGame;->priceOfUpgrade(II)D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Linfo/flowersoft/theotown/minigame/Currency;->canSpend(D)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 317
    :cond_1e
    invoke-virtual {p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->countStages()I

    move-result v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->priceOfStage(I)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/minigame/Currency;->canSpend(D)Z

    move-result p1

    return p1
.end method
