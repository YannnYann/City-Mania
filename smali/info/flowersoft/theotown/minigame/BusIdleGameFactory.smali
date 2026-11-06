###### Class info.flowersoft.theotown.minigame.BusIdleGameFactory (info.flowersoft.theotown.minigame.BusIdleGameFactory)
.class public Linfo/flowersoft/theotown/minigame/BusIdleGameFactory;
.super Ljava/lang/Object;
.source "BusIdleGameFactory.java"

# interfaces
.implements Linfo/flowersoft/theotown/minigame/IdleGameFactory;


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public currency:Linfo/flowersoft/theotown/minigame/Currency;

.field public drafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/minigame/Currency;)V
    .registers 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "bus depot"

    const-class v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGameFactory;->drafts:Ljava/util/List;

    .line 23
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGameFactory;->city:Linfo/flowersoft/theotown/city/City;

    .line 24
    iput-object p2, p0, Linfo/flowersoft/theotown/minigame/BusIdleGameFactory;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    return-void
.end method


# virtual methods
.method public create(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/minigame/IdleGame;
    .registers 5

    .line 29
    new-instance v0, Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGameFactory;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/minigame/BusIdleGameFactory;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/minigame/BusIdleGame;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/minigame/Currency;)V

    .line 30
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->setBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V

    return-object v0
.end method

.method public getBuilding(Linfo/flowersoft/theotown/minigame/IdleGame;)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 53
    check-cast p1, Linfo/flowersoft/theotown/minigame/BusIdleGame;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    return-object p1
.end method

.method public getBuildings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/BusIdleGameFactory;->drafts:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 43
    const-string v0, "bus idle game"

    return-object v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)Linfo/flowersoft/theotown/minigame/BusIdleGame;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance v0, Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/BusIdleGameFactory;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/minigame/BusIdleGameFactory;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/minigame/BusIdleGame;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/minigame/Currency;)V

    .line 37
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    return-object v0
.end method

.method public bridge synthetic load(Lio/blueflower/stapel2d/util/json/JsonReader;)Linfo/flowersoft/theotown/minigame/IdleGame;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/minigame/BusIdleGameFactory;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)Linfo/flowersoft/theotown/minigame/BusIdleGame;

    move-result-object p1

    return-object p1
.end method

.method public update(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/minigame/IdleGame;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 59
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 60
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/minigame/IdleGame;

    .line 61
    instance-of v3, v2, Linfo/flowersoft/theotown/minigame/BusIdleGame;

    if-eqz v3, :cond_19

    .line 62
    check-cast v2, Linfo/flowersoft/theotown/minigame/BusIdleGame;

    .line 63
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->setRank(I)V

    add-int/lit8 v1, v1, 0x1

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1c
    return-void
.end method
