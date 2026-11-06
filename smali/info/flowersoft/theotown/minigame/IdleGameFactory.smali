###### Class info.flowersoft.theotown.minigame.IdleGameFactory (info.flowersoft.theotown.minigame.IdleGameFactory)
.class public interface abstract Linfo/flowersoft/theotown/minigame/IdleGameFactory;
.super Ljava/lang/Object;
.source "IdleGameFactory.java"


# virtual methods
.method public abstract create(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/minigame/IdleGame;
.end method

.method public abstract getBuilding(Linfo/flowersoft/theotown/minigame/IdleGame;)Linfo/flowersoft/theotown/city/objects/Building;
.end method

.method public abstract getBuildings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract load(Lio/blueflower/stapel2d/util/json/JsonReader;)Linfo/flowersoft/theotown/minigame/IdleGame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract update(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/minigame/IdleGame;",
            ">;)V"
        }
    .end annotation
.end method
