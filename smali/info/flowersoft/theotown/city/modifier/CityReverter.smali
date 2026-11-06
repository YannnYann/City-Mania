###### Class info.flowersoft.theotown.city.modifier.CityReverter (info.flowersoft.theotown.city.modifier.CityReverter)
.class public Linfo/flowersoft/theotown/city/modifier/CityReverter;
.super Ljava/lang/Object;
.source "CityReverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;,
        Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;,
        Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;
    }
.end annotation


# instance fields
.field public final EMPTY_FENCE_ARRAY:[Linfo/flowersoft/theotown/draft/FenceDraft;

.field public actionX:I

.field public actionY:I

.field public final budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

.field public endState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

.field public endStateComplete:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

.field public forward:Z

.field public final handler:Linfo/flowersoft/theotown/mechanics/GameHandler;

.field public jsonWriter:Lio/blueflower/stapel2d/util/json/JsonWriter;

.field public os:Ljava/io/ByteArrayOutputStream;

.field public startSX:I

.field public startSY:I

.field public startState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

.field public startStateComplete:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

.field public startTX:I

.field public startTY:I

.field public sx:I

.field public sy:I

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public timeBuilding:J

.field public timeGround:J

.field public timePipe:J

.field public timeRoad:J

.field public timeTree:J

.field public timeWire:J

.field public tx:I

.field public ty:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 47
    new-array v0, v0, [Linfo/flowersoft/theotown/draft/FenceDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->EMPTY_FENCE_ARRAY:[Linfo/flowersoft/theotown/draft/FenceDraft;

    .line 72
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->city:Linfo/flowersoft/theotown/city/City;

    .line 73
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 74
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 76
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->handler:Linfo/flowersoft/theotown/mechanics/GameHandler;

    return-void
.end method


# virtual methods
.method public begin(IIIIIII)V
    .registers 8

    .line 80
    iput p5, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->actionX:I

    .line 81
    iput p6, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->actionY:I

    .line 82
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p5

    sub-int/2addr p5, p7

    const/4 p6, 0x0

    invoke-static {p5, p6}, Ljava/lang/Math;->max(II)I

    move-result p5

    iput p5, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    .line 83
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p5

    sub-int/2addr p5, p7

    invoke-static {p5, p6}, Ljava/lang/Math;->max(II)I

    move-result p5

    iput p5, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    .line 84
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, p7

    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result p3

    const/4 p5, 0x1

    sub-int/2addr p3, p5

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    .line 85
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, p7

    iget-object p2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result p2

    sub-int/2addr p2, p5

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    .line 86
    iget p2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    iput p2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startSX:I

    .line 87
    iget p2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    iput p2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startSY:I

    .line 88
    iget p2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iput p2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startTX:I

    .line 89
    iput p1, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startTY:I

    .line 91
    invoke-virtual {p0, p6}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->buildState(Z)Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    .line 92
    invoke-virtual {p0, p5}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->buildState(Z)Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startStateComplete:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->endState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    return-void
.end method

.method public final buildState(Z)Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;
    .registers 13

    .line 232
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;-><init>(Linfo/flowersoft/theotown/city/modifier/CityReverter$1;)V

    .line 233
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v4, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    iget v5, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    .line 234
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v2

    iput-wide v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->money:D

    .line 235
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->handler:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v2

    iput v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->diamonds:I

    const-wide/16 v2, 0x0

    .line 237
    iput-wide v2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeBuilding:J

    .line 238
    iput-wide v2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeGround:J

    .line 239
    iput-wide v2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeRoad:J

    .line 240
    iput-wide v2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeTree:J

    .line 241
    iput-wide v2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeWire:J

    .line 242
    iput-wide v2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timePipe:J

    .line 244
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->os:Ljava/io/ByteArrayOutputStream;

    .line 245
    new-instance v2, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

    new-instance v3, Ljava/io/DataOutputStream;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->os:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;-><init>(Ljava/io/DataOutputStream;)V

    iput-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->jsonWriter:Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 246
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    .line 247
    iget v4, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    move v7, v4

    :goto_56
    iget v4, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    if-gt v7, v4, :cond_79

    .line 248
    iget v4, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    move v6, v4

    :goto_5d
    iget v4, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    if-gt v6, v4, :cond_74

    .line 249
    iget-object v4, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    iget v8, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    iget v9, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    move-object v5, p0

    move v10, p1

    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->buildTileState(IIIIZ)Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move p1, v10

    goto :goto_5d

    :cond_74
    move-object v5, p0

    move v10, p1

    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    :cond_79
    move-object v5, p0

    .line 252
    iput-object v1, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter;->os:Ljava/io/ByteArrayOutputStream;

    .line 253
    iput-object v1, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter;->jsonWriter:Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 255
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Took "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms to capture state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CityReverter"

    invoke-interface {p1, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeBuilding:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms building"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeRoad:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms road"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeGround:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms ground"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeTree:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms tree"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeWire:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms wire"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timePipe:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms pipe"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final buildTileState(IIIIZ)Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;
    .registers 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 486
    iget-object v6, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v0, v2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v6

    .line 488
    new-instance v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;-><init>(Linfo/flowersoft/theotown/city/modifier/CityReverter$1;)V

    .line 490
    :try_start_18
    iget-object v9, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v9, v0, v2}, Linfo/flowersoft/theotown/city/Tiles;->hasRoad(II)Z

    move-result v9

    if-eqz v9, :cond_98

    .line 491
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v9

    .line 492
    iget-object v11, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v11

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/RoadList;->getMinLevel()I

    move-result v11

    .line 493
    iget-object v12, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v12

    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/RoadList;->getMaxLevel()I

    move-result v12

    :goto_38
    if-gt v11, v12, :cond_8e

    .line 495
    iget-object v13, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v13, v0, v2, v11}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v13

    if-eqz v13, :cond_89

    .line 497
    new-instance v14, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget-object v15, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->os:Ljava/io/ByteArrayOutputStream;

    iget-object v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->jsonWriter:Lio/blueflower/stapel2d/util/json/JsonWriter;

    invoke-direct {v14, v15, v8}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;-><init>(Ljava/io/ByteArrayOutputStream;Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 498
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->getWriter()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v8

    invoke-virtual {v13, v8, v5}, Linfo/flowersoft/theotown/city/objects/Road;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;Z)V

    .line 499
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->endWriter()V

    .line 500
    iget-object v8, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->roads:Ljava/util/List;

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v8, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->roadLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v8, v11}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 503
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v8

    if-eqz v8, :cond_82

    .line 505
    new-instance v13, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget-object v14, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->os:Ljava/io/ByteArrayOutputStream;

    iget-object v15, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->jsonWriter:Lio/blueflower/stapel2d/util/json/JsonWriter;

    invoke-direct {v13, v14, v15}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;-><init>(Ljava/io/ByteArrayOutputStream;Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 506
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->getWriter()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v14

    invoke-virtual {v8, v14, v5}, Linfo/flowersoft/theotown/city/objects/BusStop;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;Z)V

    .line 507
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->endWriter()V

    .line 508
    iget-object v8, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->busStops:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    goto :goto_8a

    :catch_7f
    move-exception v0

    goto/16 :goto_20e

    .line 510
    :cond_82
    iget-object v8, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->busStops:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    :cond_89
    move-object v13, v8

    :goto_8a
    add-int/lit8 v11, v11, 0x1

    move-object v8, v13

    goto :goto_38

    .line 514
    :cond_8e
    iget-wide v11, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeRoad:J

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v13

    sub-long/2addr v13, v9

    add-long/2addr v11, v13

    iput-wide v11, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeRoad:J

    .line 517
    :cond_98
    iget-object v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v0, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v8

    if-eqz v8, :cond_103

    .line 518
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v9

    if-ne v9, v0, :cond_ac

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v9

    if-eq v9, v2, :cond_d4

    .line 519
    :cond_ac
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v9

    if-ge v9, v3, :cond_b8

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v9

    if-eq v2, v9, :cond_d4

    .line 520
    :cond_b8
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v9

    if-ge v9, v4, :cond_c4

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v9

    if-eq v0, v9, :cond_d4

    .line 521
    :cond_c4
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v9

    if-ge v9, v3, :cond_103

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v9

    if-ge v9, v4, :cond_103

    if-ne v0, v3, :cond_103

    if-ne v2, v4, :cond_103

    .line 522
    :cond_d4
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v3

    .line 523
    new-instance v9, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget-object v10, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->os:Ljava/io/ByteArrayOutputStream;

    iget-object v11, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->jsonWriter:Lio/blueflower/stapel2d/util/json/JsonWriter;

    invoke-direct {v9, v10, v11}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;-><init>(Ljava/io/ByteArrayOutputStream;Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 524
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->getWriter()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v10

    invoke-virtual {v8, v10, v5}, Linfo/flowersoft/theotown/city/objects/Building;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;Z)V

    .line 525
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->endWriter()V

    .line 526
    iput-object v9, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->building:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    .line 527
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v5

    iput v5, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->buildingX:I

    .line 528
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v5

    iput v5, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->buildingY:I

    .line 529
    iget-wide v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeBuilding:J

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    add-long/2addr v8, v10

    iput-wide v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeBuilding:J

    .line 532
    :cond_103
    iget-object v3, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v0, v2}, Linfo/flowersoft/theotown/city/Tiles;->hasWire(II)Z

    move-result v3

    if-eqz v3, :cond_146

    .line 533
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v3

    const/4 v5, -0x1

    :goto_110
    const/4 v8, 0x1

    if-gt v5, v8, :cond_13c

    .line 535
    iget-object v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v0, v2, v5}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v8

    if-nez v8, :cond_11c

    goto :goto_139

    .line 538
    :cond_11c
    new-instance v9, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget-object v10, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->os:Ljava/io/ByteArrayOutputStream;

    iget-object v11, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->jsonWriter:Lio/blueflower/stapel2d/util/json/JsonWriter;

    invoke-direct {v9, v10, v11}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;-><init>(Ljava/io/ByteArrayOutputStream;Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 539
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->getWriter()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v10

    invoke-virtual {v8, v10}, Linfo/flowersoft/theotown/city/objects/Wire;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 540
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->endWriter()V

    .line 541
    iget-object v8, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->wires:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v8, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->wireLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v8, v5}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :goto_139
    add-int/lit8 v5, v5, 0x1

    goto :goto_110

    .line 544
    :cond_13c
    iget-wide v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeWire:J

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    add-long/2addr v8, v10

    iput-wide v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeWire:J

    .line 547
    :cond_146
    iget-object v3, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v0, v2}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v3

    if-eqz v3, :cond_171

    .line 549
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    .line 550
    new-instance v8, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget-object v9, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->os:Ljava/io/ByteArrayOutputStream;

    iget-object v10, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->jsonWriter:Lio/blueflower/stapel2d/util/json/JsonWriter;

    invoke-direct {v8, v9, v10}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;-><init>(Ljava/io/ByteArrayOutputStream;Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 551
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->getWriter()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v9

    invoke-virtual {v3, v9}, Linfo/flowersoft/theotown/city/objects/Pipe;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 552
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->endWriter()V

    .line 553
    iput-object v8, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->pipe:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    .line 554
    iget-wide v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timePipe:J

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timePipe:J

    .line 557
    :cond_171
    iget-object v3, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v0, v2}, Linfo/flowersoft/theotown/city/Tiles;->hasFence(II)Z

    move-result v3

    if-eqz v3, :cond_18e

    const/4 v3, 0x4

    .line 558
    new-array v4, v3, [Linfo/flowersoft/theotown/draft/FenceDraft;

    iput-object v4, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->fences:[Linfo/flowersoft/theotown/draft/FenceDraft;

    const/4 v4, 0x0

    :goto_17f
    if-ge v4, v3, :cond_192

    .line 560
    iget-object v5, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->fences:[Linfo/flowersoft/theotown/draft/FenceDraft;

    iget-object v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v0, v2, v4}, Linfo/flowersoft/theotown/city/Tiles;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object v8

    aput-object v8, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_17f

    .line 563
    :cond_18e
    iget-object v3, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->EMPTY_FENCE_ARRAY:[Linfo/flowersoft/theotown/draft/FenceDraft;

    iput-object v3, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->fences:[Linfo/flowersoft/theotown/draft/FenceDraft;

    .line 566
    :cond_192
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v3

    .line 567
    iget-object v5, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v0, v2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v5

    iput-object v5, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 568
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v5

    int-to-byte v5, v5

    iput-byte v5, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->groundBaseHeight:B

    .line 569
    iget-short v5, v6, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    iput-short v5, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->groundHeight:S

    .line 570
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeights()B

    move-result v5

    iput-byte v5, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->groundHeights:B

    .line 571
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v5

    iput-object v5, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->groundDraft:Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 572
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Ground;->getFrame()I

    move-result v5

    iput v5, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->groundFrame:I

    .line 573
    iget-wide v5, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeGround:J

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    add-long/2addr v5, v8

    iput-wide v5, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeGround:J

    .line 575
    iget-object v3, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v0, v2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v3

    if-eqz v3, :cond_1f0

    .line 577
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    .line 578
    new-instance v6, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget-object v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->os:Ljava/io/ByteArrayOutputStream;

    iget-object v9, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->jsonWriter:Lio/blueflower/stapel2d/util/json/JsonWriter;

    invoke-direct {v6, v8, v9}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;-><init>(Ljava/io/ByteArrayOutputStream;Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 579
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->getWriter()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v8

    invoke-virtual {v3, v8}, Linfo/flowersoft/theotown/city/objects/Tree;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 580
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->endWriter()V

    .line 581
    iput-object v6, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->tree:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    .line 582
    iget-wide v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeTree:J

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->timeTree:J

    .line 585
    :cond_1f0
    iget-object v3, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v0, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object v0

    if-eqz v0, :cond_211

    .line 587
    new-instance v2, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget-object v3, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->os:Ljava/io/ByteArrayOutputStream;

    iget-object v4, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->jsonWriter:Lio/blueflower/stapel2d/util/json/JsonWriter;

    invoke-direct {v2, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;-><init>(Ljava/io/ByteArrayOutputStream;Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 588
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->getWriter()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v3

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/objects/Rail;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 589
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->endWriter()V

    .line 590
    iput-object v2, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->rail1:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;
    :try_end_20d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_20d} :catch_7f

    goto :goto_211

    .line 594
    :goto_20e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 596
    :cond_211
    :goto_211
    invoke-virtual {v1, v7}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->hashCode(Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;)I

    move-result v0

    iput v0, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->hash:I

    return-object v7
.end method

.method public canRevert()Z
    .registers 2

    .line 175
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    if-eqz v0, :cond_a

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->endState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public end()V
    .registers 4

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->buildState(Z)Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->endState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    .line 99
    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    .line 101
    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->endState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    return-void

    .line 103
    :cond_19
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->endState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startStateComplete:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->prune(Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;)V

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->buildState(Z)Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->endStateComplete:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    .line 105
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->forward:Z

    return-void

    .line 97
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You have to begin the action first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_47

    if-eqz p2, :cond_47

    .line 470
    iget-object v2, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    .line 471
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p2, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_47

    iget-wide v2, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->money:D

    iget-wide v4, p2, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->money:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_47

    iget v2, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->diamonds:I

    iget v3, p2, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->diamonds:I

    if-eq v2, v3, :cond_23

    goto :goto_47

    :cond_23
    move v2, v1

    .line 474
    :goto_24
    iget-object v3, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 475
    iget-object v3, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;

    iget-object v4, p2, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;)Z

    move-result v3

    if-nez v3, :cond_43

    return v1

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_46
    return v0

    :cond_47
    :goto_47
    if-ne p1, p2, :cond_4a

    return v0

    :cond_4a
    return v1
.end method

.method public final equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;)Z
    .registers 3

    if-eq p1, p2, :cond_f

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 461
    iget p1, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->hash:I

    iget p2, p2, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->hash:I

    if-ne p1, p2, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method

.method public final equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    if-ne p1, p2, :cond_9

    goto :goto_11

    .line 466
    :cond_9
    iget p1, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->hash:I

    iget p2, p2, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->hash:I

    if-ne p1, p2, :cond_10

    return v1

    :cond_10
    return v0

    :cond_11
    :goto_11
    if-ne p1, p2, :cond_14

    return v1

    :cond_14
    return v0
.end method

.method public final equalLine(Ljava/util/List;Ljava/util/List;III)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;",
            ">;III)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p5, :cond_1b

    .line 154
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;

    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    add-int/2addr p3, p4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode(Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;)I
    .registers 6

    .line 602
    iget-object v0, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->groundDraft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-byte v1, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->groundHeights:B

    add-int/2addr v0, v1

    iget-short v1, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->groundHeight:S

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget-byte v1, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->groundBaseHeight:B

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget v1, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->groundFrame:I

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 603
    :goto_1c
    iget-object v3, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->roads:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 604
    iget-object v3, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->roads:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget v3, v3, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->hash:I

    xor-int/2addr v0, v3

    .line 605
    iget-object v3, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->busStops:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 606
    iget-object v3, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->busStops:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget v3, v3, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->hash:I

    xor-int/2addr v0, v3

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 609
    :cond_45
    :goto_45
    iget-object v2, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->wires:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5b

    .line 610
    iget-object v2, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->wires:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget v2, v2, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->hash:I

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 612
    :cond_5b
    iget-object v1, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->building:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    if-eqz v1, :cond_62

    iget v1, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->hash:I

    xor-int/2addr v0, v1

    .line 613
    :cond_62
    iget-object v1, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->pipe:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    if-eqz v1, :cond_69

    iget v1, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->hash:I

    xor-int/2addr v0, v1

    .line 614
    :cond_69
    iget-object v1, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->tree:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    if-eqz v1, :cond_70

    iget v1, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->hash:I

    xor-int/2addr v0, v1

    .line 615
    :cond_70
    iget-object v1, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eqz v1, :cond_7b

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 616
    :cond_7b
    iget-object v1, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->rail1:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    if-eqz v1, :cond_82

    iget v1, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->hash:I

    xor-int/2addr v0, v1

    .line 617
    :cond_82
    iget-object p1, p1, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->fences:[Linfo/flowersoft/theotown/draft/FenceDraft;

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public isForward()Z
    .registers 2

    .line 171
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->forward:Z

    return v0
.end method

.method public final prune(Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 110
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v9

    .line 111
    iget v1, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int/2addr v1, v2

    const/4 v11, 0x1

    add-int/lit8 v12, v1, 0x1

    .line 112
    iget v1, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    sub-int/2addr v1, v2

    add-int/lit8 v13, v1, 0x1

    .line 115
    :goto_1b
    iget v1, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    const/4 v14, 0x0

    if-ge v1, v2, :cond_5c

    iget-object v1, v6, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    iget-object v2, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v4, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int/2addr v3, v4

    add-int/lit8 v5, v3, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equalLine(Ljava/util/List;Ljava/util/List;III)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 116
    iget-object v1, v6, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v11

    invoke-virtual {v0, v1, v14, v11, v2}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->removeLine(Ljava/util/List;III)V

    .line 117
    iget-object v1, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v11

    invoke-virtual {v0, v1, v14, v11, v2}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->removeLine(Ljava/util/List;III)V

    .line 118
    iget-object v1, v8, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v11

    invoke-virtual {v0, v1, v14, v11, v2}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->removeLine(Ljava/util/List;III)V

    .line 119
    iget v1, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    add-int/2addr v1, v11

    iput v1, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    goto :goto_1b

    .line 123
    :cond_5c
    :goto_5c
    iget v1, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    if-ge v1, v2, :cond_be

    move v3, v1

    iget-object v1, v6, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    move v4, v2

    iget-object v2, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    sub-int v3, v4, v3

    iget v4, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v5, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int v15, v4, v5

    add-int/2addr v15, v11

    mul-int/2addr v3, v15

    sub-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x1

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equalLine(Ljava/util/List;Ljava/util/List;III)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 124
    iget-object v1, v6, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    sub-int/2addr v2, v3

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v4, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int v5, v3, v4

    add-int/2addr v5, v11

    mul-int/2addr v2, v5

    sub-int/2addr v3, v4

    add-int/2addr v3, v11

    invoke-virtual {v0, v1, v2, v11, v3}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->removeLine(Ljava/util/List;III)V

    .line 125
    iget-object v1, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    sub-int/2addr v2, v3

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v4, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int v5, v3, v4

    add-int/2addr v5, v11

    mul-int/2addr v2, v5

    sub-int/2addr v3, v4

    add-int/2addr v3, v11

    invoke-virtual {v0, v1, v2, v11, v3}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->removeLine(Ljava/util/List;III)V

    .line 126
    iget-object v1, v8, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    sub-int/2addr v2, v3

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v4, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int v5, v3, v4

    add-int/2addr v5, v11

    mul-int/2addr v2, v5

    sub-int/2addr v3, v4

    add-int/2addr v3, v11

    invoke-virtual {v0, v1, v2, v11, v3}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->removeLine(Ljava/util/List;III)V

    .line 127
    iget v1, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    sub-int/2addr v1, v11

    iput v1, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    goto :goto_5c

    .line 131
    :cond_be
    :goto_be
    iget v1, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    if-ge v1, v2, :cond_115

    move v3, v1

    iget-object v1, v6, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    move v4, v2

    iget-object v2, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    sub-int v3, v4, v3

    add-int/lit8 v4, v3, 0x1

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    iget v5, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    sub-int/2addr v3, v5

    add-int/lit8 v5, v3, 0x1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equalLine(Ljava/util/List;Ljava/util/List;III)Z

    move-result v1

    if-eqz v1, :cond_115

    .line 132
    iget-object v1, v6, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v11

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    iget v4, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v11

    invoke-virtual {v0, v1, v14, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->removeLine(Ljava/util/List;III)V

    .line 133
    iget-object v1, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v11

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    iget v4, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v11

    invoke-virtual {v0, v1, v14, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->removeLine(Ljava/util/List;III)V

    .line 134
    iget-object v1, v8, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v11

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    iget v4, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v11

    invoke-virtual {v0, v1, v14, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->removeLine(Ljava/util/List;III)V

    .line 135
    iget v1, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    add-int/2addr v1, v11

    iput v1, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    goto :goto_be

    .line 139
    :cond_115
    :goto_115
    iget v1, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    if-ge v1, v2, :cond_171

    move v3, v1

    iget-object v1, v6, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    move v4, v2

    iget-object v2, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    move v5, v3

    sub-int v3, v4, v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v11

    iget v5, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    iget v14, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    sub-int/2addr v5, v14

    add-int/2addr v5, v11

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equalLine(Ljava/util/List;Ljava/util/List;III)Z

    move-result v1

    if-eqz v1, :cond_171

    .line 140
    iget-object v1, v6, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int v4, v2, v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v11

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    iget v5, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    sub-int/2addr v3, v5

    add-int/2addr v3, v11

    invoke-virtual {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->removeLine(Ljava/util/List;III)V

    .line 141
    iget-object v1, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int v4, v2, v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v11

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    iget v5, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    sub-int/2addr v3, v5

    add-int/2addr v3, v11

    invoke-virtual {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->removeLine(Ljava/util/List;III)V

    .line 142
    iget-object v1, v8, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int v4, v2, v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v11

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    iget v5, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    sub-int/2addr v3, v5

    add-int/2addr v3, v11

    invoke-virtual {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->removeLine(Ljava/util/List;III)V

    .line 143
    iget v1, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    sub-int/2addr v1, v11

    iput v1, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    goto :goto_115

    .line 146
    :cond_171
    iget v1, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v11

    .line 147
    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v11

    .line 148
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prune from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v12, v12, 0x64

    mul-int/2addr v12, v13

    mul-int/2addr v1, v2

    div-int/2addr v12, v1

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%; took "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v1

    sub-long/2addr v1, v9

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CityReverter"

    invoke-interface {v3, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final removeLine(Ljava/util/List;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;",
            ">;III)V"
        }
    .end annotation

    add-int/lit8 v0, p4, -0x1

    mul-int/2addr v0, p3

    add-int/2addr p2, v0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p4, :cond_e

    .line 165
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sub-int/2addr p2, p3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    return-void
.end method

.method public revert()V
    .registers 21

    move-object/from16 v1, p0

    .line 179
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    if-eqz v0, :cond_df

    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->endState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    if-eqz v0, :cond_df

    const/4 v0, 0x0

    .line 180
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->buildState(Z)Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    move-result-object v9

    .line 182
    iget-object v2, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->endState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    iget v2, v2, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->diamonds:I

    iget-object v3, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    iget v3, v3, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->diamonds:I

    sub-int/2addr v2, v3

    .line 183
    const-string v3, "revert"

    const/4 v10, 0x1

    if-gez v2, :cond_24

    .line 184
    iget-object v4, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->handler:Linfo/flowersoft/theotown/mechanics/GameHandler;

    neg-int v2, v2

    invoke-virtual {v4, v2, v10, v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamonds(IZLjava/lang/String;)V

    goto :goto_2b

    :cond_24
    if-lez v2, :cond_2b

    .line 186
    iget-object v4, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->handler:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-virtual {v4, v2, v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->spendDiamonds(ILjava/lang/String;)V

    .line 189
    :cond_2b
    :goto_2b
    iget-object v2, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->endState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    iget-wide v2, v2, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->money:D

    iget-object v4, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    iget-wide v4, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->money:D

    sub-double v12, v2, v4

    const-wide/16 v2, 0x0

    cmpg-double v4, v12, v2

    if-gez v4, :cond_4f

    .line 191
    iget-object v14, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    neg-double v2, v12

    iget v4, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->actionX:I

    int-to-float v4, v4

    iget v5, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->actionY:I

    int-to-float v5, v5

    const-string v19, "revert"

    move-wide v15, v2

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-virtual/range {v14 .. v19}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DFFLjava/lang/String;)V

    goto :goto_60

    :cond_4f
    cmpl-double v2, v12, v2

    if-lez v2, :cond_60

    .line 193
    iget-object v11, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    iget v2, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->actionX:I

    int-to-float v14, v2

    iget v2, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->actionY:I

    int-to-float v15, v2

    const-string v16, "revert"

    invoke-virtual/range {v11 .. v16}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 197
    :cond_60
    :goto_60
    iget v2, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    move v3, v2

    :goto_63
    iget v2, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->ty:I

    if-gt v3, v2, :cond_b4

    .line 198
    iget v2, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    move v11, v0

    :goto_6a
    iget v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    if-gt v2, v0, :cond_b0

    .line 200
    :try_start_6e
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startStateComplete:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    iget-object v0, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    .line 202
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;

    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->endStateComplete:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    iget-object v0, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    .line 203
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;

    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    iget-object v0, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    .line 204
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;

    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->endState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    iget-object v0, v0, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    .line 205
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;

    iget-object v0, v9, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;->tileStates:Ljava/util/List;

    .line 206
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;

    .line 200
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->revertTile(IILinfo/flowersoft/theotown/city/modifier/CityReverter$TileState;Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;)V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_a6} :catch_a7

    goto :goto_ab

    :catch_a7
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_ab
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :cond_b0
    add-int/lit8 v3, v3, 0x1

    move v0, v11

    goto :goto_63

    .line 214
    :cond_b4
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget v3, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    add-int/lit8 v4, v3, -0x1

    iget v5, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    add-int/lit8 v6, v5, -0x1

    iget v7, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tx:I

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x3

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v4, v6, v7, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->adjustGroundWaterBorder(IIII)V

    .line 216
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    .line 217
    iget-object v2, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->endState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    iput-object v2, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    .line 218
    iput-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->endState:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    .line 219
    iget-boolean v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->forward:Z

    xor-int/2addr v0, v10

    iput-boolean v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->forward:Z

    .line 220
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startStateComplete:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    .line 221
    iget-object v2, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->endStateComplete:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    iput-object v2, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startStateComplete:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    .line 222
    iput-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->endStateComplete:Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;

    return-void

    .line 179
    :cond_df
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Start or end state not set"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final revertTile(IILinfo/flowersoft/theotown/city/modifier/CityReverter$TileState;Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;)V
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 267
    invoke-virtual {v1, v6, v7}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 268
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipped "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " because it was changed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CityReverter"

    invoke-interface {v0, v9, v8}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_39
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v8

    .line 278
    iget-object v0, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->groundDraft:Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-virtual {v8, v0}, Linfo/flowersoft/theotown/city/objects/Ground;->setDraft(Linfo/flowersoft/theotown/draft/GroundDraft;)V

    .line 279
    iget v0, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->groundFrame:I

    invoke-virtual {v8, v0}, Linfo/flowersoft/theotown/city/objects/Ground;->setFrame(I)V

    .line 280
    iget-short v0, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->groundHeight:S

    iput-short v0, v8, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    .line 281
    iget-byte v0, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->groundBaseHeight:B

    invoke-virtual {v8, v0}, Linfo/flowersoft/theotown/city/objects/Ground;->setTerrainHeight(B)V

    .line 282
    iget-byte v0, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->groundHeights:B

    invoke-virtual {v8, v0}, Linfo/flowersoft/theotown/city/objects/Ground;->setTerrainHeights(B)V

    .line 284
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    .line 286
    iget-object v9, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 v10, 0x1

    if-ne v0, v9, :cond_66

    iget-object v9, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eq v0, v9, :cond_8a

    .line 287
    :cond_66
    iget-object v9, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/City;->getZoneCounter()[I

    move-result-object v9

    if-eqz v0, :cond_75

    .line 288
    iget v0, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    aget v11, v9, v0

    sub-int/2addr v11, v10

    aput v11, v9, v0

    .line 289
    :cond_75
    iget-object v0, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eqz v0, :cond_80

    iget v11, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    aget v12, v9, v11

    add-int/2addr v12, v10

    aput v12, v9, v11

    .line 290
    :cond_80
    iget-object v9, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v9, v2, v3, v0}, Linfo/flowersoft/theotown/city/Tiles;->setZone(IILinfo/flowersoft/theotown/draft/ZoneDraft;)V

    .line 291
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->calculateZoneSize(II)V

    :cond_8a
    const/4 v0, 0x3

    .line 295
    new-array v9, v0, [I

    const/4 v11, 0x0

    aput v11, v9, v11

    aput v11, v9, v10

    const/4 v12, 0x2

    aput v11, v9, v12

    .line 296
    filled-new-array/range {p3 .. p4}, [Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;

    move-result-object v13

    .line 297
    new-array v14, v0, [Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    .line 298
    new-array v15, v0, [Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    const/4 v0, -0x2

    move/from16 p5, v11

    move v11, v0

    :goto_a1
    const/16 v0, 0x10

    move/from16 v16, v10

    if-gt v11, v0, :cond_1b6

    move/from16 v0, p5

    :goto_a9
    if-ge v0, v12, :cond_ee

    .line 301
    aget-object v12, v13, v0

    iget-object v12, v12, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->roadLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v12}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v12

    const/16 v17, 0x0

    aget v10, v9, v0

    if-le v12, v10, :cond_e6

    aget-object v12, v13, v0

    iget-object v12, v12, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->roadLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v12, v10}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v10

    if-ne v10, v11, :cond_e6

    .line 302
    aget-object v10, v13, v0

    iget-object v10, v10, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->roads:Ljava/util/List;

    aget v12, v9, v0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    aput-object v10, v14, v0

    .line 303
    aget-object v10, v13, v0

    iget-object v10, v10, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->busStops:Ljava/util/List;

    aget v12, v9, v0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    aput-object v10, v15, v0

    .line 304
    aget v10, v9, v0

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v0

    goto :goto_ea

    .line 306
    :cond_e6
    aput-object v17, v14, v0

    .line 307
    aput-object v17, v15, v0

    :goto_ea
    add-int/lit8 v0, v0, 0x1

    const/4 v12, 0x2

    goto :goto_a9

    :cond_ee
    const/16 v17, 0x0

    .line 310
    aget-object v0, v14, p5

    aget-object v10, v14, v16

    invoke-virtual {v1, v0, v10}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;)Z

    move-result v0

    if-eqz v0, :cond_104

    aget-object v0, v15, p5

    aget-object v10, v15, v16

    invoke-virtual {v1, v0, v10}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;)Z

    move-result v0

    if-nez v0, :cond_1af

    .line 311
    :cond_104
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(II)V

    .line 314
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v2, v3, v11}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_135

    .line 316
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v10

    if-eqz v10, :cond_124

    iget-object v10, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object v10

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v12

    invoke-virtual {v10, v12}, Linfo/flowersoft/theotown/city/BusStopList;->remove(Ljava/lang/Object;)Z

    .line 317
    :cond_124
    iget-object v10, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v10

    invoke-virtual {v10, v0}, Linfo/flowersoft/theotown/city/RoadList;->remove(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    move-object/from16 v10, v17

    invoke-virtual {v0, v2, v3, v11, v10}, Linfo/flowersoft/theotown/city/Tiles;->setRoad(IIILinfo/flowersoft/theotown/city/objects/Road;)V

    goto :goto_137

    :cond_135
    move-object/from16 v10, v17

    .line 322
    :goto_137
    aget-object v0, v14, p5

    if-eqz v0, :cond_1aa

    .line 324
    :try_start_13b
    new-instance v12, Linfo/flowersoft/theotown/city/objects/Road;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->getReader()Lio/blueflower/stapel2d/util/json/JsonReader;

    move-result-object v0

    invoke-direct {v12, v0, v10}, Linfo/flowersoft/theotown/city/objects/Road;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;Ljava/util/List;)V

    .line 325
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v0

    invoke-virtual {v0, v12}, Linfo/flowersoft/theotown/city/RoadList;->add(Linfo/flowersoft/theotown/city/objects/Road;)Z

    .line 326
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v2, v3, v11, v12}, Linfo/flowersoft/theotown/city/Tiles;->setRoad(IIILinfo/flowersoft/theotown/city/objects/Road;)V

    .line 327
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v10, v12, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    move-object/from16 v17, v0

    iget v0, v12, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    move/from16 v19, v0

    iget v0, v12, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    move/from16 v20, v0

    iget v0, v12, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    sget-object v23, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    const/16 v22, 0x9

    move/from16 v21, v0

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v23}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->callEventMethod(Linfo/flowersoft/theotown/draft/Draft;IIIILvm2/LuaValue;)V

    .line 328
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v0

    if-nez v0, :cond_182

    if-nez v11, :cond_182

    iget v0, v12, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Ground;->getUpDirs()I

    move-result v10

    if-ne v0, v10, :cond_182

    move/from16 v0, v16

    goto :goto_184

    :catch_180
    move-exception v0

    goto :goto_1a7

    :cond_182
    move/from16 v0, p5

    :goto_184
    iput-boolean v0, v12, Linfo/flowersoft/theotown/city/objects/Road;->slope:Z

    .line 329
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v0

    add-int/2addr v0, v11

    iput v0, v12, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    .line 331
    aget-object v0, v15, p5

    if-eqz v0, :cond_1aa

    .line 332
    new-instance v10, Linfo/flowersoft/theotown/city/objects/BusStop;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->getReader()Lio/blueflower/stapel2d/util/json/JsonReader;

    move-result-object v0

    invoke-direct {v10, v0}, Linfo/flowersoft/theotown/city/objects/BusStop;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 333
    invoke-virtual {v12, v10}, Linfo/flowersoft/theotown/city/objects/Road;->setBusStop(Linfo/flowersoft/theotown/city/objects/BusStop;)V

    .line 334
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object v0

    invoke-virtual {v0, v10}, Linfo/flowersoft/theotown/city/BusStopList;->add(Linfo/flowersoft/theotown/city/objects/BusStop;)Z
    :try_end_1a6
    .catch Linfo/flowersoft/theotown/resources/MissingDraftException; {:try_start_13b .. :try_end_1a6} :catch_180

    goto :goto_1aa

    .line 337
    :goto_1a7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 341
    :cond_1aa
    :goto_1aa
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(II)V

    :cond_1af
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v16

    const/4 v12, 0x2

    goto/16 :goto_a1

    :cond_1b6
    const/4 v0, -0x1

    move/from16 v9, p5

    move v10, v9

    move/from16 v8, v16

    :goto_1bc
    if-gt v0, v8, :cond_239

    .line 349
    iget-object v11, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->wires:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v9, :cond_1d9

    iget-object v11, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->wireLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v11, v9}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v11

    if-ne v11, v0, :cond_1d9

    .line 350
    iget-object v11, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->wires:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1da

    :cond_1d9
    const/4 v11, 0x0

    .line 354
    :goto_1da
    iget-object v12, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->wires:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v10, :cond_1f5

    iget-object v12, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->wireLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v12, v10}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v12

    if-ne v12, v0, :cond_1f5

    .line 355
    iget-object v12, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->wires:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1f6

    :cond_1f5
    const/4 v12, 0x0

    .line 359
    :goto_1f6
    invoke-virtual {v1, v11, v12}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;)Z

    move-result v12

    if-nez v12, :cond_236

    .line 360
    iget-object v12, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v12, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(II)V

    .line 362
    iget-object v12, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v12, v2, v3, v0}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v12

    if-eqz v12, :cond_218

    .line 364
    iget-object v13, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/City;->getWires()Linfo/flowersoft/theotown/city/WireList;

    move-result-object v13

    invoke-virtual {v13, v12}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->remove(Ljava/lang/Object;)Z

    .line 365
    iget-object v12, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v13, 0x0

    invoke-virtual {v12, v2, v3, v0, v13}, Linfo/flowersoft/theotown/city/Tiles;->setWire(IIILinfo/flowersoft/theotown/city/objects/Wire;)V

    :cond_218
    if-eqz v11, :cond_231

    .line 369
    new-instance v12, Linfo/flowersoft/theotown/city/objects/Wire;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->getReader()Lio/blueflower/stapel2d/util/json/JsonReader;

    move-result-object v11

    invoke-direct {v12, v2, v3, v11}, Linfo/flowersoft/theotown/city/objects/Wire;-><init>(IILio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 370
    iget-object v11, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v11, v2, v3, v0, v12}, Linfo/flowersoft/theotown/city/Tiles;->setWire(IIILinfo/flowersoft/theotown/city/objects/Wire;)V

    .line 371
    iget-object v11, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/City;->getWires()Linfo/flowersoft/theotown/city/WireList;

    move-result-object v11

    invoke-virtual {v11, v12}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_231
    iget-object v11, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v11, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(II)V

    :cond_236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1bc

    .line 378
    :cond_239
    iget-object v0, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->pipe:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget-object v8, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->pipe:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    invoke-virtual {v1, v0, v8}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;)Z

    move-result v0

    if-eqz v0, :cond_24d

    iget-object v0, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->pipe:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget-object v8, v6, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->pipe:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    invoke-virtual {v1, v0, v8}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;)Z

    move-result v0

    if-nez v0, :cond_289

    .line 379
    :cond_24d
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(II)V

    .line 381
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v0

    if-eqz v0, :cond_269

    .line 383
    iget-object v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v3, v10}, Linfo/flowersoft/theotown/city/Tiles;->setPipe(IILinfo/flowersoft/theotown/city/objects/Pipe;)V

    .line 384
    iget-object v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object v8

    invoke-virtual {v8, v0}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->remove(Ljava/lang/Object;)Z

    .line 387
    :cond_269
    iget-object v0, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->pipe:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    if-eqz v0, :cond_284

    .line 388
    new-instance v8, Linfo/flowersoft/theotown/city/objects/Pipe;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->getReader()Lio/blueflower/stapel2d/util/json/JsonReader;

    move-result-object v0

    invoke-direct {v8, v2, v3, v0}, Linfo/flowersoft/theotown/city/objects/Pipe;-><init>(IILio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 389
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v2, v3, v8}, Linfo/flowersoft/theotown/city/Tiles;->setPipe(IILinfo/flowersoft/theotown/city/objects/Pipe;)V

    .line 390
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object v0

    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_284
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(II)V

    .line 396
    :cond_289
    iget-object v0, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->building:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget-object v8, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->building:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    invoke-virtual {v1, v0, v8}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;)Z

    move-result v0

    if-eqz v0, :cond_29d

    iget-object v0, v6, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->building:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget-object v8, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->building:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    invoke-virtual {v1, v0, v8}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;)Z

    move-result v0

    if-nez v0, :cond_31c

    :cond_29d
    iget-object v0, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->building:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    if-eqz v0, :cond_2b7

    iget v0, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->buildingX:I

    iget v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sx:I

    if-lt v0, v8, :cond_2ad

    iget v0, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->buildingY:I

    iget v9, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    if-ge v0, v9, :cond_2b7

    :cond_2ad
    iget v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startSX:I

    if-ne v0, v8, :cond_31c

    iget v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->startSY:I

    iget v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->sy:I

    if-ne v0, v8, :cond_31c

    .line 398
    :cond_2b7
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_2c5

    .line 400
    iget-object v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v10}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    .line 402
    :cond_2c5
    iget-object v0, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->building:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    if-eqz v0, :cond_31c

    .line 404
    :try_start_2c9
    new-instance v8, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->getReader()Lio/blueflower/stapel2d/util/json/JsonReader;

    move-result-object v0

    invoke-direct {v8, v0}, Linfo/flowersoft/theotown/city/objects/Building;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 405
    iget-object v9, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v10

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v11

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v12

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(IIIILvm2/LuaValue;)V

    .line 406
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v9

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v10

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v11

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v12

    invoke-virtual {v0, v9, v10, v11, v12}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(IIII)V

    .line 407
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->rebuildAfterReUndo(Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 408
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v9

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v10

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v11

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v8

    invoke-virtual {v0, v9, v10, v11, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(IIII)V
    :try_end_317
    .catch Linfo/flowersoft/theotown/resources/MissingDraftException; {:try_start_2c9 .. :try_end_317} :catch_318

    goto :goto_31c

    :catch_318
    move-exception v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 415
    :cond_31c
    :goto_31c
    iget-object v0, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->tree:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget-object v8, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->tree:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    invoke-virtual {v1, v0, v8}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;)Z

    move-result v0

    if-eqz v0, :cond_330

    iget-object v0, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->tree:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget-object v8, v6, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->tree:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    invoke-virtual {v1, v0, v8}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;)Z

    move-result v0

    if-nez v0, :cond_35f

    .line 416
    :cond_330
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(II)V

    .line 418
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v0

    if-eqz v0, :cond_343

    .line 420
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v3, v10}, Linfo/flowersoft/theotown/city/Tiles;->setTree(IILinfo/flowersoft/theotown/city/objects/Tree;)V

    .line 422
    :cond_343
    iget-object v0, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->tree:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    if-eqz v0, :cond_35a

    .line 424
    :try_start_347
    new-instance v8, Linfo/flowersoft/theotown/city/objects/Tree;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->getReader()Lio/blueflower/stapel2d/util/json/JsonReader;

    move-result-object v0

    invoke-direct {v8, v0}, Linfo/flowersoft/theotown/city/objects/Tree;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 425
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v2, v3, v8}, Linfo/flowersoft/theotown/city/Tiles;->setTree(IILinfo/flowersoft/theotown/city/objects/Tree;)V
    :try_end_355
    .catch Linfo/flowersoft/theotown/resources/MissingDraftException; {:try_start_347 .. :try_end_355} :catch_356

    goto :goto_35a

    :catch_356
    move-exception v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 431
    :cond_35a
    :goto_35a
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(II)V

    .line 434
    :cond_35f
    iget-object v0, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->fences:[Linfo/flowersoft/theotown/draft/FenceDraft;

    iget-object v8, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->fences:[Linfo/flowersoft/theotown/draft/FenceDraft;

    if-ne v0, v8, :cond_36b

    iget-object v0, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->fences:[Linfo/flowersoft/theotown/draft/FenceDraft;

    iget-object v8, v6, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->fences:[Linfo/flowersoft/theotown/draft/FenceDraft;

    if-eq v0, v8, :cond_388

    :cond_36b
    move/from16 v11, p5

    :goto_36d
    const/4 v0, 0x4

    if-ge v11, v0, :cond_388

    .line 436
    iget-object v0, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->fences:[Linfo/flowersoft/theotown/draft/FenceDraft;

    aget-object v0, v0, v11

    iget-object v8, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->fences:[Linfo/flowersoft/theotown/draft/FenceDraft;

    aget-object v8, v8, v11

    if-ne v0, v8, :cond_380

    iget-object v8, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->fences:[Linfo/flowersoft/theotown/draft/FenceDraft;

    aget-object v8, v8, v11

    if-eq v8, v0, :cond_385

    .line 437
    :cond_380
    iget-object v8, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v2, v3, v11, v0}, Linfo/flowersoft/theotown/city/Tiles;->setFence(IIILinfo/flowersoft/theotown/draft/FenceDraft;)V

    :cond_385
    add-int/lit8 v11, v11, 0x1

    goto :goto_36d

    .line 442
    :cond_388
    iget-object v0, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->rail1:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget-object v5, v5, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->rail1:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    invoke-virtual {v1, v0, v5}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;)Z

    move-result v0

    if-eqz v0, :cond_39c

    iget-object v0, v7, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->rail1:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    iget-object v5, v6, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->rail1:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    invoke-virtual {v1, v0, v5}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->equal(Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;)Z

    move-result v0

    if-nez v0, :cond_3d8

    .line 443
    :cond_39c
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(II)V

    .line 445
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object v0

    if-eqz v0, :cond_3b8

    .line 447
    iget-object v5, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v10, 0x0

    invoke-virtual {v5, v2, v3, v10}, Linfo/flowersoft/theotown/city/Tiles;->setRail(IILinfo/flowersoft/theotown/city/objects/Rail;)V

    .line 448
    iget-object v5, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getRails()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 450
    :cond_3b8
    iget-object v0, v4, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->rail1:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

    if-eqz v0, :cond_3d3

    .line 451
    new-instance v4, Linfo/flowersoft/theotown/city/objects/Rail;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->getReader()Lio/blueflower/stapel2d/util/json/JsonReader;

    move-result-object v0

    invoke-direct {v4, v0}, Linfo/flowersoft/theotown/city/objects/Rail;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 452
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v2, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->setRail(IILinfo/flowersoft/theotown/city/objects/Rail;)V

    .line 453
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_3d3
    iget-object v0, v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;->cityModifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(II)V

    :cond_3d8
    return-void
.end method

###### Class info.flowersoft.theotown.city.modifier.CityReverter.AnonymousClass1 (info.flowersoft.theotown.city.modifier.CityReverter$1)
.class public synthetic Linfo/flowersoft/theotown/city/modifier/CityReverter$1;
.super Ljava/lang/Object;
.source "CityReverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/modifier/CityReverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.city.modifier.CityReverter.CityState (info.flowersoft.theotown.city.modifier.CityReverter$CityState)
.class public Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;
.super Ljava/lang/Object;
.source "CityReverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/modifier/CityReverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CityState"
.end annotation


# instance fields
.field public diamonds:I

.field public money:D

.field public tileStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/modifier/CityReverter$1;)V
    .registers 2

    .line 678
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/modifier/CityReverter$CityState;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.city.modifier.CityReverter.SerializedObject (info.flowersoft.theotown.city.modifier.CityReverter$SerializedObject)
.class Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;
.super Ljava/lang/Object;
.source "CityReverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/modifier/CityReverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializedObject"
.end annotation


# instance fields
.field public hash:I

.field public out:Ljava/io/ByteArrayOutputStream;

.field public raw:[B

.field public writer:Lio/blueflower/stapel2d/util/json/JsonWriter;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayOutputStream;Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 3

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->out:Ljava/io/ByteArrayOutputStream;

    .line 631
    iput-object p2, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->writer:Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method


# virtual methods
.method public endWriter()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->writer:Lio/blueflower/stapel2d/util/json/JsonWriter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 640
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->writer:Lio/blueflower/stapel2d/util/json/JsonWriter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->close()V

    .line 641
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->raw:[B

    .line 642
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 643
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->writer:Lio/blueflower/stapel2d/util/json/JsonWriter;

    check-cast v0, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/json/BinaryJsonWriter;->reset()V

    .line 644
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->raw:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->hash:I

    const/4 v0, 0x0

    .line 645
    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->writer:Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 646
    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->out:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public getReader()Lio/blueflower/stapel2d/util/json/JsonReader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    new-instance v0, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->raw:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/json/BinaryJsonReader;-><init>(Ljava/io/DataInputStream;)V

    .line 651
    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    return-object v0
.end method

.method public getWriter()Lio/blueflower/stapel2d/util/json/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->writer:Lio/blueflower/stapel2d/util/json/JsonWriter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 636
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;->writer:Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-object v0
.end method

###### Class info.flowersoft.theotown.city.modifier.CityReverter.TileState (info.flowersoft.theotown.city.modifier.CityReverter$TileState)
.class public Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;
.super Ljava/lang/Object;
.source "CityReverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/modifier/CityReverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TileState"
.end annotation


# instance fields
.field public building:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

.field public buildingX:I

.field public buildingY:I

.field public busStops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;",
            ">;"
        }
    .end annotation
.end field

.field public fences:[Linfo/flowersoft/theotown/draft/FenceDraft;

.field public groundBaseHeight:B

.field public groundDraft:Linfo/flowersoft/theotown/draft/GroundDraft;

.field public groundFrame:I

.field public groundHeight:S

.field public groundHeights:B

.field public hash:I

.field public pipe:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

.field public rail1:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

.field public roadLevels:Lio/blueflower/stapel2d/util/IntList;

.field public roads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;",
            ">;"
        }
    .end annotation
.end field

.field public tree:Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;

.field public wireLevels:Lio/blueflower/stapel2d/util/IntList;

.field public wires:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/modifier/CityReverter$SerializedObject;",
            ">;"
        }
    .end annotation
.end field

.field public zone:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->roads:Ljava/util/List;

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->busStops:Ljava/util/List;

    .line 666
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->roadLevels:Lio/blueflower/stapel2d/util/IntList;

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->wires:Ljava/util/List;

    .line 672
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;->wireLevels:Lio/blueflower/stapel2d/util/IntList;

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/modifier/CityReverter$1;)V
    .registers 2

    .line 656
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/modifier/CityReverter$TileState;-><init>()V

    return-void
.end method
