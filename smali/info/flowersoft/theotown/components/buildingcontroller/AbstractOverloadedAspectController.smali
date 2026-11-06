###### Class info.flowersoft.theotown.components.buildingcontroller.AbstractOverloadedAspectController (info.flowersoft.theotown.components.buildingcontroller.AbstractOverloadedAspectController)
.class public abstract Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;
.super Ljava/lang/Object;
.source "AbstractOverloadedAspectController.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;


# instance fields
.field public final aspects:Lio/blueflower/stapel2d/util/IntList;

.field public currentSelection:Linfo/flowersoft/theotown/city/objects/Building;

.field public lastBuilding:Linfo/flowersoft/theotown/city/objects/Building;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;->aspects:Lio/blueflower/stapel2d/util/IntList;

    return-void
.end method


# virtual methods
.method public accept(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 3

    .line 67
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isOverloaded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    iput-object p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;->currentSelection:Linfo/flowersoft/theotown/city/objects/Building;

    :cond_8
    return-void
.end method

.method public addAspect(I)V
    .registers 3

    .line 44
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;->aspects:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    return-void
.end method

.method public afterPass()V
    .registers 1

    .line 0
    return-void
.end method

.method public beforePass()V
    .registers 2

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;->currentSelection:Linfo/flowersoft/theotown/city/objects/Building;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;->lastBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;->currentSelection:Linfo/flowersoft/theotown/city/objects/Building;

    return-void
.end method

.method public canHandle(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 53
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;->aspects:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 54
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->neededAspectAmount:[I

    iget-object v3, p0, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;->aspects:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    aget v2, v2, v3

    if-gez v2, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    return v0
.end method

.method public getOverloaded()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 48
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/AbstractOverloadedAspectController;->lastBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    return-object v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
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
