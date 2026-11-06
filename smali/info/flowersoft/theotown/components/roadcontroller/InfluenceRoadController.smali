###### Class info.flowersoft.theotown.components.roadcontroller.InfluenceRoadController (info.flowersoft.theotown.components.roadcontroller.InfluenceRoadController)
.class public Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;
.super Ljava/lang/Object;
.source "InfluenceRoadController.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/roadcontroller/RoadController;


# instance fields
.field public addRoadProbability:F

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

.field public final roads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation
.end field

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;->roads:Ljava/util/List;

    .line 23
    iput-object p1, p0, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;->city:Linfo/flowersoft/theotown/city/City;

    .line 24
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 25
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    return-void
.end method


# virtual methods
.method public accept(Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 4

    .line 46
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;->addRoadProbability:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1b

    iget-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;->roads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1b

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;->roads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public afterPass()V
    .registers 7

    const/4 v0, 0x0

    .line 53
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;->roads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 54
    iget-object v1, p0, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;->roads:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Road;

    .line 55
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    .line 56
    iget v3, v1, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    .line 57
    iget v4, v1, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    .line 59
    iget-object v5, p0, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v2, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v4

    if-ne v4, v1, :cond_38

    const/high16 v4, 0x41200000    # 10.0f

    .line 60
    iget v5, v1, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmount:F

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 62
    iget v5, v1, Linfo/flowersoft/theotown/city/objects/Road;->lastAppliedTrafficAmount:I

    if-eq v5, v4, :cond_38

    .line 63
    iget-object v5, p0, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v5, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeTileInfluence(II)V

    .line 64
    iput v4, v1, Linfo/flowersoft/theotown/city/objects/Road;->lastAppliedTrafficAmount:I

    .line 65
    iget-object v1, p0, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->addTileInfluence(II)V

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_3b
    iget-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;->roads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public beforePass()V
    .registers 4

    const v0, 0x3dcccccd    # 0.1f

    const/16 v1, 0x80

    int-to-float v2, v1

    mul-float/2addr v2, v0

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/RoadList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    iput v2, p0, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;->addRoadProbability:F

    return-void
.end method

.method public canHandle(Linfo/flowersoft/theotown/draft/RoadDraft;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 75
    const-string v0, "influence road controller"

    return-object v0
.end method

.method public prepare()V
    .registers 1

    .line 0
    return-void
.end method
