###### Class info.flowersoft.theotown.components.buildingcontroller.RangerController (info.flowersoft.theotown.components.buildingcontroller.RangerController)
.class public Linfo/flowersoft/theotown/components/buildingcontroller/RangerController;
.super Ljava/lang/Object;
.source "RangerController.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public trees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/TreeDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "ranger tree"

    const-class v1, Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/RangerController;->trees:Ljava/util/List;

    .line 30
    iput-object p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/RangerController;->city:Linfo/flowersoft/theotown/city/City;

    .line 31
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/RangerController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 32
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/RangerController;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    return-void
.end method


# virtual methods
.method public accept(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 2

    .line 66
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    return-void
.end method

.method public afterPass()V
    .registers 1

    .line 0
    return-void
.end method

.method public beforePass()V
    .registers 1

    .line 0
    return-void
.end method

.method public canHandle(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z
    .registers 3

    .line 57
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v0, "$ranger00"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 89
    const-string v0, "ranger"

    return-object v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
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
