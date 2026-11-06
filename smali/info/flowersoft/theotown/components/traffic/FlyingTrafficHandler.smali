###### Class info.flowersoft.theotown.components.traffic.FlyingTrafficHandler (info.flowersoft.theotown.components.traffic.FlyingTrafficHandler)
.class public final Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;
.super Linfo/flowersoft/theotown/components/traffic/TrafficHandler;
.source "FlyingTrafficHandler.java"


# instance fields
.field public controllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;",
            ">;"
        }
    .end annotation
.end field

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public flyingObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/FlyingObject;",
            ">;"
        }
    .end annotation
.end field

.field public lastRemovedObject:Linfo/flowersoft/theotown/city/objects/FlyingObject;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 7

    .line 46
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->flyingObjects:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    .line 48
    new-instance v1, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->newSpawner()Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/PoliceHelicopterController;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->newSpawner()Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/PoliceHelicopterController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SWATHelicopterController;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->newSpawner()Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SWATHelicopterController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FireBrigadeHelicopterController;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->newSpawner()Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FireBrigadeHelicopterController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->newSpawner()Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->newSpawner()Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_69
    :goto_69
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 56
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->helicopterSpawner:Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;

    if-eqz v2, :cond_69

    .line 57
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    new-instance v3, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/GenericHelicopterController;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->newSpawner()Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    move-result-object v4

    invoke-direct {v3, v1, p1, v4}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/GenericHelicopterController;-><init>(Linfo/flowersoft/theotown/draft/BuildingDraft;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69

    :cond_88
    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;Linfo/flowersoft/theotown/draft/FlyingObjectDraft;IIIII)Linfo/flowersoft/theotown/city/objects/FlyingObject;
    .registers 7

    .line 35
    invoke-virtual/range {p0 .. p6}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->spawn(Linfo/flowersoft/theotown/draft/FlyingObjectDraft;IIIII)Linfo/flowersoft/theotown/city/objects/FlyingObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->remove(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;)Ljava/util/List;
    .registers 1

    .line 35
    iget-object p0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->flyingObjects:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;)Ljava/util/List;
    .registers 1

    .line 35
    iget-object p0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;)Linfo/flowersoft/theotown/components/DefaultDate;
    .registers 1

    .line 35
    iget-object p0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->unregister(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    return-void
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->getController(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;)Linfo/flowersoft/theotown/city/objects/FlyingObject;
    .registers 1

    .line 35
    iget-object p0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->lastRemovedObject:Linfo/flowersoft/theotown/city/objects/FlyingObject;

    return-object p0
.end method

.method public static synthetic access$702(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/city/objects/FlyingObject;
    .registers 2

    .line 35
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->lastRemovedObject:Linfo/flowersoft/theotown/city/objects/FlyingObject;

    return-object p1
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->register(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    return-void
.end method

.method private register(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 9

    .line 269
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getX()I

    move-result v0

    .line 270
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getY()I

    move-result v1

    .line 271
    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->registerAt(Linfo/flowersoft/theotown/city/objects/FlyingObject;II)V

    .line 273
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getDrawRadius()I

    move-result v2

    if-lez v2, :cond_33

    add-int v3, v0, v2

    add-int/lit8 v4, v3, -0x1

    add-int v5, v1, v2

    add-int/lit8 v6, v5, 0x1

    .line 275
    invoke-virtual {p0, p1, v4, v6}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->registerAt(Linfo/flowersoft/theotown/city/objects/FlyingObject;II)V

    sub-int/2addr v0, v2

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v5, -0x1

    .line 276
    invoke-virtual {p0, p1, v4, v5}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->registerAt(Linfo/flowersoft/theotown/city/objects/FlyingObject;II)V

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    .line 277
    invoke-virtual {p0, p1, v3, v2}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->registerAt(Linfo/flowersoft/theotown/city/objects/FlyingObject;II)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 278
    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->registerAt(Linfo/flowersoft/theotown/city/objects/FlyingObject;II)V

    :cond_33
    return-void
.end method

.method private unregister(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 9

    .line 283
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getX()I

    move-result v0

    .line 284
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getY()I

    move-result v1

    .line 285
    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->unregisterAt(Linfo/flowersoft/theotown/city/objects/FlyingObject;II)V

    .line 287
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getDrawRadius()I

    move-result v2

    if-lez v2, :cond_33

    add-int v3, v0, v2

    add-int/lit8 v4, v3, -0x1

    add-int v5, v1, v2

    add-int/lit8 v6, v5, 0x1

    .line 289
    invoke-virtual {p0, p1, v4, v6}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->unregisterAt(Linfo/flowersoft/theotown/city/objects/FlyingObject;II)V

    sub-int/2addr v0, v2

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v5, -0x1

    .line 290
    invoke-virtual {p0, p1, v4, v5}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->unregisterAt(Linfo/flowersoft/theotown/city/objects/FlyingObject;II)V

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    .line 291
    invoke-virtual {p0, p1, v3, v2}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->unregisterAt(Linfo/flowersoft/theotown/city/objects/FlyingObject;II)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 292
    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->unregisterAt(Linfo/flowersoft/theotown/city/objects/FlyingObject;II)V

    :cond_33
    return-void
.end method


# virtual methods
.method public draw(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 10

    .line 313
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getFlyingObject(II)Linfo/flowersoft/theotown/city/objects/FlyingObject;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_49

    .line 316
    :cond_9
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getDrawRadius()I

    move-result v1

    if-lez v1, :cond_4a

    .line 318
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getX()I

    move-result v2

    .line 319
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getY()I

    move-result v3

    .line 320
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v4

    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v2, v3}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v5

    sub-int/2addr v4, v5

    .line 321
    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result p1

    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2, v2, v3}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result p2

    sub-int/2addr p1, p2

    add-int/lit8 p2, v1, 0x1

    if-ne v4, p2, :cond_49

    neg-int p2, v1

    add-int/lit8 v2, p2, 0x1

    if-ne p1, v2, :cond_49

    add-int/lit8 p2, p2, -0x1

    int-to-float p1, p2

    add-int/lit8 v1, v1, -0x1

    int-to-float p2, v1

    .line 323
    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Drawer;->addShiftToTile(FF)V

    .line 324
    invoke-virtual {v0, p3}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draw(Linfo/flowersoft/theotown/city/Drawer;)V

    .line 325
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/Drawer;->resetShift()V

    :cond_49
    :goto_49
    return-void

    .line 328
    :cond_4a
    invoke-virtual {v0, p3}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->draw(Linfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public final getController(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;
    .registers 3

    .line 309
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getControllerId()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;

    return-object p1
.end method

.method public getController(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 194
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 195
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;

    .line 196
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

.method public getFlyingObjects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/FlyingObject;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->flyingObjects:Ljava/util/List;

    return-object v0
.end method

.method public getObjectAt(II)Linfo/flowersoft/theotown/city/objects/FlyingObject;
    .registers 6

    .line 173
    new-instance v0, Linfo/flowersoft/theotown/util/SafeListAccessor;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->flyingObjects:Ljava/util/List;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    .line 174
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getX()I

    move-result v2

    if-ne v2, p1, :cond_b

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getY()I

    move-result v2

    if-ne v2, p2, :cond_b

    return-object v1

    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getSpawner(I)Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;
    .registers 3

    .line 180
    new-instance v0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$1;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$1;-><init>(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;I)V

    return-object v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 68
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 69
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 70
    :goto_e
    iget-object v6, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_50

    .line 71
    iget-object v6, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;

    .line 72
    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_35

    add-int/2addr v5, v1

    goto :goto_e

    .line 74
    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Two flying object controllers with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    const/4 v5, 0x0

    move-object v6, v5

    .line 80
    :goto_52
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_124

    .line 81
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_126

    :goto_66
    move v7, v0

    goto :goto_88

    :sswitch_68
    const-string v8, "flyingObjects"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_71

    goto :goto_66

    :cond_71
    const/4 v7, 0x2

    goto :goto_88

    :sswitch_73
    const-string v8, "controller mapping"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7c

    goto :goto_66

    :cond_7c
    move v7, v1

    goto :goto_88

    :sswitch_7e
    const-string v8, "controllers"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_87

    goto :goto_66

    :cond_87
    move v7, v4

    :goto_88
    packed-switch v7, :pswitch_data_134

    .line 135
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_52

    .line 112
    :pswitch_8f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 113
    :cond_92
    :goto_92
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_cd

    .line 114
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 117
    :try_start_9b
    new-instance v7, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    invoke-direct {v7, p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    :try_end_a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9b .. :try_end_a0} :catch_a1

    goto :goto_ac

    .line 119
    :catch_a1
    :goto_a1
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ab

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_a1

    :cond_ab
    move-object v7, v5

    .line 121
    :goto_ac
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    if-eqz v7, :cond_92

    if-eqz v6, :cond_be

    .line 124
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getControllerId()I

    move-result v8

    invoke-virtual {v6, v8}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->setControllerId(I)V

    .line 126
    :cond_be
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getControllerId()I

    move-result v8

    if-ltz v8, :cond_92

    .line 127
    iget-object v8, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->flyingObjects:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-direct {p0, v7}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->register(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    goto :goto_92

    .line 132
    :cond_cd
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_52

    .line 83
    :pswitch_d1
    new-instance v6, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v6}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 84
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 85
    :goto_d9
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f7

    .line 86
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_f3

    .line 89
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_d9

    .line 91
    :cond_f3
    invoke-virtual {v6, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_d9

    .line 94
    :cond_f7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_52

    .line 97
    :pswitch_fc
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 98
    :goto_ff
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11f

    .line 99
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    .line 100
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;

    if-eqz v7, :cond_11b

    .line 102
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 103
    invoke-virtual {v7, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 104
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_ff

    .line 106
    :cond_11b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_ff

    .line 109
    :cond_11f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_52

    :cond_124
    return-void

    nop

    :sswitch_data_126
    .sparse-switch
        -0x6631efa9 -> :sswitch_7e
        0x46b0bc4a -> :sswitch_73
        0x5aab5b85 -> :sswitch_68
    .end sparse-switch

    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_d1
        :pswitch_8f
    .end packed-switch
.end method

.method public final newSpawner()Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;
    .registers 2

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->getSpawner(I)Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    move-result-object v0

    return-object v0
.end method

.method public prepare()V
    .registers 4

    .line 219
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    .line 221
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->flyingObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    .line 222
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->getController(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;

    move-result-object v2

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->register(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    goto :goto_11

    .line 225
    :cond_25
    new-instance v0, Lio/blueflower/stapel2d/util/CyclicWorker;

    new-instance v1, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$2;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$2;-><init>(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;)V

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->addDailyWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    .line 236
    new-instance v0, Lio/blueflower/stapel2d/util/CyclicWorker;

    new-instance v1, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$3;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$3;-><init>(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;)V

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->addWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    const/4 v0, 0x0

    .line 263
    :goto_40
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_56

    .line 264
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->prepare()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_56
    return-void
.end method

.method public final registerAt(Linfo/flowersoft/theotown/city/objects/FlyingObject;II)V
    .registers 5

    .line 297
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 298
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3, p1}, Linfo/flowersoft/theotown/city/Tiles;->setFlyingObject(IILinfo/flowersoft/theotown/city/objects/FlyingObject;)V

    :cond_d
    return-void
.end method

.method public final remove(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 3

    .line 211
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->unregister(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    .line 212
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->getController(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->unregister(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    .line 213
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->flyingObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 214
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->lastRemovedObject:Linfo/flowersoft/theotown/city/objects/FlyingObject;

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    const-string v0, "controller mapping"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 144
    :goto_b
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 145
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;

    .line 146
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 148
    :cond_25
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 150
    const-string v1, "controllers"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 151
    :goto_31
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 152
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;

    .line 153
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 154
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 155
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 157
    :cond_55
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 159
    const-string v0, "flyingObjects"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 160
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->flyingObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    .line 161
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 162
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 163
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_67

    .line 165
    :cond_7d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public final spawn(Linfo/flowersoft/theotown/draft/FlyingObjectDraft;IIIII)Linfo/flowersoft/theotown/city/objects/FlyingObject;
    .registers 14

    .line 202
    new-instance v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/city/objects/FlyingObject;-><init>(Linfo/flowersoft/theotown/draft/FlyingObjectDraft;IIIII)V

    .line 203
    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->register(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    .line 204
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->flyingObjects:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->getController(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;

    move-result-object p1

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->register(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    .line 206
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->getController(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;

    move-result-object p1

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->onSpawned(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    return-object v0
.end method

.method public final unregisterAt(Linfo/flowersoft/theotown/city/objects/FlyingObject;II)V
    .registers 5

    .line 303
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 304
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Linfo/flowersoft/theotown/city/Tiles;->setFlyingObject(IILinfo/flowersoft/theotown/city/objects/FlyingObject;)V

    :cond_e
    return-void
.end method

###### Class info.flowersoft.theotown.components.traffic.FlyingTrafficHandler.AnonymousClass1 (info.flowersoft.theotown.components.traffic.FlyingTrafficHandler$1)
.class Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$1;
.super Ljava/lang/Object;
.source "FlyingTrafficHandler.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->getSpawner(I)Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

.field public final synthetic val$controllerId:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$1;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    iput p2, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$1;->val$controllerId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 3

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$1;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->access$100(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    return-void
.end method

.method public spawn(Linfo/flowersoft/theotown/draft/FlyingObjectDraft;IIII)Linfo/flowersoft/theotown/city/objects/FlyingObject;
    .registers 13

    .line 183
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$1;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    iget v6, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$1;->val$controllerId:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->access$000(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;Linfo/flowersoft/theotown/draft/FlyingObjectDraft;IIIII)Linfo/flowersoft/theotown/city/objects/FlyingObject;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.components.traffic.FlyingTrafficHandler.AnonymousClass2 (info.flowersoft.theotown.components.traffic.FlyingTrafficHandler$2)
.class Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$2;
.super Ljava/lang/Object;
.source "FlyingTrafficHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 225
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$2;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 228
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$2;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->access$200(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 229
    :goto_8
    :try_start_8
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$2;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->access$300(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 230
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$2;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->access$300(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->update()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_26
    move-exception v1

    goto :goto_2a

    .line 232
    :cond_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_26

    throw v1
.end method

###### Class info.flowersoft.theotown.components.traffic.FlyingTrafficHandler.AnonymousClass3 (info.flowersoft.theotown.components.traffic.FlyingTrafficHandler$3)
.class Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$3;
.super Ljava/lang/Object;
.source "FlyingTrafficHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 236
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->access$200(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 240
    :try_start_7
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->access$400(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTimeDelta()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    .line 244
    :goto_16
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-static {v3}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->access$200(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_62

    .line 245
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-static {v3}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->access$200(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    .line 247
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->update(F)V

    .line 249
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getP()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5f

    .line 250
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-static {v4, v3}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->access$500(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    .line 251
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-static {v4, v3}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->access$600(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;

    move-result-object v4

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->onTarget(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    .line 252
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-static {v4}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->access$700(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;)Linfo/flowersoft/theotown/city/objects/FlyingObject;

    move-result-object v4

    if-eq v3, v4, :cond_59

    .line 253
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-static {v4, v3}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->access$800(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    goto :goto_5f

    :catchall_57
    move-exception v1

    goto :goto_64

    .line 255
    :cond_59
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->access$702(Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/city/objects/FlyingObject;

    :cond_5f
    :goto_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 259
    :cond_62
    monitor-exit v0

    return-void

    :goto_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_7 .. :try_end_65} :catchall_57

    throw v1
.end method
