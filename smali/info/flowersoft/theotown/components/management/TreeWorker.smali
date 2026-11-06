###### Class info.flowersoft.theotown.components.management.TreeWorker (info.flowersoft.theotown.components.management.TreeWorker)
.class public Linfo/flowersoft/theotown/components/management/TreeWorker;
.super Lio/blueflower/stapel2d/util/CyclicWorker;
.source "TreeWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

.field public final removeTrees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Tree;",
            ">;"
        }
    .end annotation
.end field

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 24
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/TreeWorker;->removeTrees:Ljava/util/List;

    .line 25
    invoke-virtual {p0, p0}, Lio/blueflower/stapel2d/util/CyclicWorker;->setTask(Ljava/lang/Runnable;)V

    .line 27
    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/TreeWorker;->city:Linfo/flowersoft/theotown/city/City;

    .line 28
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/TreeWorker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 29
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/TreeWorker;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    return-void
.end method


# virtual methods
.method public prepare()V
    .registers 1

    .line 0
    return-void
.end method

.method public run()V
    .registers 7

    .line 38
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/TreeWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/TreeWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/TreeWorker;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultInfluence;

    .line 42
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->TEXTURE_WORLD:Lio/blueflower/stapel2d/drawing/Texture;

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/TreeWorker;->removeTrees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/TreeWorker;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v0

    const/4 v1, 0x0

    .line 62
    :goto_21
    :try_start_21
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/TreeWorker;->removeTrees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 63
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/TreeWorker;->removeTrees:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Tree;

    .line 64
    iget-object v3, p0, Linfo/flowersoft/theotown/components/management/TreeWorker;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v4

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Tree;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :catchall_41
    move-exception v1

    goto :goto_4a

    .line 66
    :cond_43
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/TreeWorker;->removeTrees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 67
    monitor-exit v0

    return-void

    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_21 .. :try_end_4b} :catchall_41

    throw v1

    :cond_4c
    return-void
.end method
