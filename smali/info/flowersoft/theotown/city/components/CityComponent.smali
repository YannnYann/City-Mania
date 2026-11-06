###### Class info.flowersoft.theotown.city.components.CityComponent (info.flowersoft.theotown.city.components.CityComponent)
.class public abstract Linfo/flowersoft/theotown/city/components/CityComponent;
.super Ljava/lang/Object;
.source "CityComponent.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/DateListener;


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public tiles:Linfo/flowersoft/theotown/city/Tiles;

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
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->workers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V
    .registers 3

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->workers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 30
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 31
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-void
.end method

.method public dispose()V
    .registers 2

    .line 94
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->join()V

    .line 95
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->workers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 2

    .line 0
    return-void
.end method

.method public drawAfterCached(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 2

    .line 0
    return-void
.end method

.method public drawBefore(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 2

    .line 0
    return-void
.end method

.method public finishPrepare()V
    .registers 3

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->workers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/util/CyclicWorker;

    .line 50
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/CyclicWorker;->join()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public getCity()Linfo/flowersoft/theotown/city/City;
    .registers 2

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public join()V
    .registers 3

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->workers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/util/CyclicWorker;

    .line 89
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/CyclicWorker;->join()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public nextDay()V
    .registers 8

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->workers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/util/CyclicWorker;

    .line 70
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    .line 71
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/CyclicWorker;->start()V

    .line 72
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x64

    cmp-long v2, v4, v2

    if-ltz v2, :cond_6

    .line 74
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "City "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/CyclicWorker;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Took "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms to proceed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_55
    return-void
.end method

.method public nextMonth()V
    .registers 1

    .line 0
    return-void
.end method

.method public nextYear()V
    .registers 1

    .line 0
    return-void
.end method

.method public prepare()V
    .registers 3

    .line 43
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->workers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/util/CyclicWorker;

    .line 44
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/CyclicWorker;->start()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public unbind()V
    .registers 2

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->workers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public update()V
    .registers 1

    .line 0
    return-void
.end method
