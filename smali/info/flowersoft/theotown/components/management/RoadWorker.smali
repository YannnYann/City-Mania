###### Class info.flowersoft.theotown.components.management.RoadWorker (info.flowersoft.theotown.components.management.RoadWorker)
.class public Linfo/flowersoft/theotown/components/management/RoadWorker;
.super Lio/blueflower/stapel2d/util/CyclicWorker;
.source "RoadWorker.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final controllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/roadcontroller/RoadController;",
            ">;"
        }
    .end annotation
.end field

.field public final roads:Linfo/flowersoft/theotown/util/SafeListAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/util/SafeListAccessor<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 5

    .line 31
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/RoadWorker;->controllers:Ljava/util/List;

    .line 32
    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/RoadWorker;->city:Linfo/flowersoft/theotown/city/City;

    .line 33
    new-instance v1, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/management/RoadWorker;->roads:Linfo/flowersoft/theotown/util/SafeListAccessor;

    .line 35
    new-instance v1, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/components/roadcontroller/InfluenceRoadController;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {p0, p0}, Lio/blueflower/stapel2d/util/CyclicWorker;->setTask(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getController(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/roadcontroller/RoadController;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Linfo/flowersoft/theotown/components/roadcontroller/RoadController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 84
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/RoadWorker;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 85
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/RoadWorker;->controllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/roadcontroller/RoadController;

    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
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
    .registers 3

    const/4 v0, 0x0

    .line 52
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/RoadWorker;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 53
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/RoadWorker;->controllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/roadcontroller/RoadController;

    invoke-interface {v1}, Linfo/flowersoft/theotown/components/roadcontroller/RoadController;->prepare()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public run()V
    .registers 7

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/RoadWorker;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 60
    :goto_5
    :try_start_5
    iget-object v3, p0, Linfo/flowersoft/theotown/components/management/RoadWorker;->controllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 61
    iget-object v3, p0, Linfo/flowersoft/theotown/components/management/RoadWorker;->controllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/roadcontroller/RoadController;

    .line 62
    invoke-interface {v3}, Linfo/flowersoft/theotown/components/roadcontroller/RoadController;->beforePass()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catchall_1b
    move-exception v1

    goto :goto_6e

    .line 64
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1b

    .line 66
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/RoadWorker;->roads:Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Road;

    move v3, v1

    .line 67
    :goto_31
    iget-object v4, p0, Linfo/flowersoft/theotown/components/management/RoadWorker;->controllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_24

    .line 68
    iget-object v4, p0, Linfo/flowersoft/theotown/components/management/RoadWorker;->controllers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/roadcontroller/RoadController;

    .line 69
    iget-object v5, v2, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-interface {v4, v5}, Linfo/flowersoft/theotown/components/roadcontroller/RoadController;->canHandle(Linfo/flowersoft/theotown/draft/RoadDraft;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 70
    invoke-interface {v4, v2}, Linfo/flowersoft/theotown/components/roadcontroller/RoadController;->accept(Linfo/flowersoft/theotown/city/objects/Road;)V

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 75
    :cond_4f
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/RoadWorker;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v2

    .line 76
    :goto_52
    :try_start_52
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/RoadWorker;->controllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6a

    .line 77
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/RoadWorker;->controllers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/roadcontroller/RoadController;

    .line 78
    invoke-interface {v0}, Linfo/flowersoft/theotown/components/roadcontroller/RoadController;->afterPass()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :catchall_68
    move-exception v0

    goto :goto_6c

    .line 80
    :cond_6a
    monitor-exit v2

    return-void

    :goto_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_52 .. :try_end_6d} :catchall_68

    throw v0

    .line 64
    :goto_6e
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_1b

    throw v1
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
