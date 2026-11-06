###### Class info.flowersoft.theotown.components.coverage.Aspect (info.flowersoft.theotown.components.coverage.Aspect)
.class public interface abstract Linfo/flowersoft/theotown/components/coverage/Aspect;
.super Ljava/lang/Object;
.source "Aspect.java"


# virtual methods
.method public abstract getNeeders(Linfo/flowersoft/theotown/city/City;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/City;",
            ")",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNeighborTrading(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)J
.end method

.method public abstract getProviders(Linfo/flowersoft/theotown/city/City;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/City;",
            ")",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasInfiniteRadius()Z
.end method

.method public abstract neededAmount(Linfo/flowersoft/theotown/city/objects/Building;)I
.end method

.method public abstract prepare()V
.end method

.method public abstract providedAmount(Linfo/flowersoft/theotown/city/objects/Building;)I
.end method

.method public abstract providedRadius(Linfo/flowersoft/theotown/city/objects/Building;)I
.end method

.method public abstract reachedAmount(Linfo/flowersoft/theotown/city/objects/Building;)I
.end method

.method public abstract setNeighborTrading(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;J)V
.end method
