###### Class info.flowersoft.theotown.components.traffic.TrafficHandler (info.flowersoft.theotown.components.traffic.TrafficHandler)
.class public abstract Linfo/flowersoft/theotown/components/traffic/TrafficHandler;
.super Ljava/lang/Object;
.source "TrafficHandler.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final dailyWorkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/util/CyclicWorker;",
            ">;"
        }
    .end annotation
.end field

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public final workers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/util/CyclicWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    .line 26
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->workers:Ljava/util/List;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->dailyWorkers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addDailyWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V
    .registers 3

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->dailyWorkers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V
    .registers 3

    .line 32
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->workers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispose()V
    .registers 1

    .line 57
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->joinWorkers()V

    return-void
.end method

.method public drawAfter(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 2

    .line 0
    return-void
.end method

.method public joinWorkers()V
    .registers 3

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->workers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/util/CyclicWorker;

    .line 62
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/CyclicWorker;->join()V

    goto :goto_6

    .line 64
    :cond_16
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->workers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->dailyWorkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/util/CyclicWorker;

    .line 67
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/CyclicWorker;->join()V

    goto :goto_21

    .line 69
    :cond_31
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->dailyWorkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public nextDay()V
    .registers 3

    .line 42
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->dailyWorkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/util/CyclicWorker;

    .line 43
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/CyclicWorker;->start()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public abstract prepare()V
.end method

.method public reset()V
    .registers 1

    .line 0
    return-void
.end method

.method public update()V
    .registers 3

    .line 48
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->workers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/util/CyclicWorker;

    .line 49
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/CyclicWorker;->start()V

    goto :goto_6

    :cond_16
    return-void
.end method
