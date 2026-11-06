###### Class info.flowersoft.theotown.components.buildingcontroller.ProductionAspectController (info.flowersoft.theotown.components.buildingcontroller.ProductionAspectController)
.class public abstract Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;
.super Ljava/lang/Object;
.source "ProductionAspectController.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;


# instance fields
.field public active:Z

.field public aspectField:I

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public coverageAspect:I

.field public minRank:I

.field public nextOverfilledNeeder:Linfo/flowersoft/theotown/city/objects/Building;

.field public nextOverfilledProducer:Linfo/flowersoft/theotown/city/objects/Building;

.field public overfilledNeeder:Linfo/flowersoft/theotown/city/objects/Building;

.field public overfilledProducer:Linfo/flowersoft/theotown/city/objects/Building;

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;II)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->city:Linfo/flowersoft/theotown/city/City;

    .line 37
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 38
    iput p2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->coverageAspect:I

    .line 39
    iput p3, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->aspectField:I

    return-void
.end method


# virtual methods
.method public accept(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 12

    .line 77
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_37

    .line 79
    :cond_7
    iget v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->coverageAspect:I

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getNeededAmount(I)I

    move-result v3

    .line 80
    iget v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->coverageAspect:I

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getProvidedAmount(I)I

    move-result v0

    .line 81
    iget v1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->coverageAspect:I

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/objects/Building;->getUsedAspectAmount(I)I

    move-result v4

    .line 82
    iget v1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->coverageAspect:I

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/objects/Building;->getAspectCapacity(I)I

    move-result v5

    .line 83
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getAspects()[I

    move-result-object v6

    if-lez v3, :cond_2b

    move-object v1, p0

    move-object v2, p1

    .line 86
    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->applyNeeder(Linfo/flowersoft/theotown/city/objects/Building;III[I)V

    return-void

    :cond_2b
    move-object v2, p1

    if-lez v0, :cond_37

    move v7, v4

    move v8, v5

    move-object v9, v6

    move-object v4, p0

    move v6, v0

    move-object v5, v2

    .line 88
    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->applyProducer(Linfo/flowersoft/theotown/city/objects/Building;III[I)V

    :cond_37
    :goto_37
    return-void
.end method

.method public afterPass()V
    .registers 2

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->nextOverfilledProducer:Linfo/flowersoft/theotown/city/objects/Building;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->overfilledProducer:Linfo/flowersoft/theotown/city/objects/Building;

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->nextOverfilledNeeder:Linfo/flowersoft/theotown/city/objects/Building;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->overfilledNeeder:Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->nextOverfilledProducer:Linfo/flowersoft/theotown/city/objects/Building;

    .line 62
    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->nextOverfilledNeeder:Linfo/flowersoft/theotown/city/objects/Building;

    return-void
.end method

.method public final applyNeeder(Linfo/flowersoft/theotown/city/objects/Building;III[I)V
    .registers 11

    .line 106
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lez p3, :cond_e

    add-int/lit8 p3, p3, 0x1

    .line 108
    :cond_e
    iget-boolean v2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->active:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_29

    iget v2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->aspectField:I

    aget v4, p5, v2

    mul-int/2addr p2, v0

    div-int/2addr p2, v1

    mul-int/2addr p2, v0

    div-int/2addr p2, v1

    mul-int/2addr p2, v0

    div-int/2addr p2, v1

    add-int/2addr v4, p2

    sub-int/2addr v4, p3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    aput p2, p5, v2

    .line 109
    :cond_29
    iget p2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->coverageAspect:I

    add-int/lit8 p3, p3, -0x1

    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/objects/Building;->setUsedAspectAmount(II)V

    .line 111
    iget p2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->aspectField:I

    aget p2, p5, p2

    if-lt p2, p4, :cond_3c

    iput-object p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->nextOverfilledNeeder:Linfo/flowersoft/theotown/city/objects/Building;

    :cond_3c
    return-void
.end method

.method public final applyProducer(Linfo/flowersoft/theotown/city/objects/Building;III[I)V
    .registers 8

    const/4 v0, -0x1

    if-eq p4, v0, :cond_2e

    .line 94
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->active:Z

    if-eqz v0, :cond_16

    iget v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->aspectField:I

    aget v1, p5, v0

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr v1, p2

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    aput p2, p5, v0

    .line 95
    :cond_16
    iget-object p2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 96
    iget p2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->aspectField:I

    const/4 p3, 0x0

    aput p3, p5, p2

    .line 98
    :cond_23
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->updateFrame(Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 100
    iget p2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->aspectField:I

    aget p2, p5, p2

    if-lt p2, p4, :cond_2e

    iput-object p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->nextOverfilledProducer:Linfo/flowersoft/theotown/city/objects/Building;

    :cond_2e
    return-void
.end method

.method public beforePass()V
    .registers 3

    .line 72
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v0

    iget v0, v0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    iget v1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->minRank:I

    if-lt v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->active:Z

    return-void
.end method

.method public canHandle(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z
    .registers 3

    .line 67
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->neededAspectAmount:[I

    iget v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->coverageAspect:I

    aget p1, p1, v0

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public getOverfilledNeeder()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 129
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->overfilledNeeder:Linfo/flowersoft/theotown/city/objects/Building;

    return-object v0
.end method

.method public getOverfilledProducer()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 125
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->overfilledProducer:Linfo/flowersoft/theotown/city/objects/Building;

    return-object v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    :cond_a
    return-void
.end method

.method public prepare()V
    .registers 1

    .line 0
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public updateFrame(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 5

    .line 115
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    .line 116
    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomFrame:Z

    if-nez v1, :cond_2b

    .line 117
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getAspects()[I

    move-result-object v1

    iget v2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->aspectField:I

    aget v1, v1, v2

    int-to-float v1, v1

    iget v2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->coverageAspect:I

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getAspectCapacity(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 118
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, v0

    int-to-float v2, v0

    mul-float/2addr v1, v2

    .line 119
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 120
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setFrame(I)V

    :cond_2b
    return-void
.end method
