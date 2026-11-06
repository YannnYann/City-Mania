###### Class info.flowersoft.theotown.components.DefaultCatastrophe (info.flowersoft.theotown.components.DefaultCatastrophe)
.class public final Linfo/flowersoft/theotown/components/DefaultCatastrophe;
.super Linfo/flowersoft/theotown/city/components/Catastrophe;
.source "DefaultCatastrophe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/DefaultCatastrophe$DisasterState;,
        Linfo/flowersoft/theotown/components/DefaultCatastrophe$Quake;,
        Linfo/flowersoft/theotown/components/DefaultCatastrophe$Flash;
    }
.end annotation


# instance fields
.field public final classToDisaster:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/city/components/Disaster;",
            ">;",
            "Linfo/flowersoft/theotown/city/components/Disaster;",
            ">;"
        }
    .end annotation
.end field

.field public final disasterStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/DefaultCatastrophe$DisasterState;",
            ">;"
        }
    .end annotation
.end field

.field public final disasterTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final disasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/Disaster;",
            ">;"
        }
    .end annotation
.end field

.field public final flashs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/DefaultCatastrophe$Flash;",
            ">;"
        }
    .end annotation
.end field

.field public lastDisaster:J

.field public final quakes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/DefaultCatastrophe$Quake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 5

    .line 55
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Catastrophe;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasterStates:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasterTags:Ljava/util/List;

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->classToDisaster:Ljava/util/Map;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->flashs:Ljava/util/List;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->quakes:Ljava/util/List;

    .line 63
    new-instance v1, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;-><init>()V

    const-string v2, "fire"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->registerDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;)V

    .line 64
    new-instance v1, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;-><init>()V

    const-string v2, "meteor"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->registerDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;)V

    .line 65
    new-instance v1, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/disaster/EarthQuakeDisaster;-><init>()V

    const-string v2, "earthquake"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->registerDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;)V

    .line 66
    new-instance v1, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;-><init>()V

    const-string v2, "nuke"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->registerDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;)V

    .line 67
    new-instance v1, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;-><init>()V

    const-string v2, "tornado"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->registerDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;)V

    .line 68
    new-instance v1, Linfo/flowersoft/theotown/components/disaster/NuclearPlantDisaster;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/disaster/NuclearPlantDisaster;-><init>()V

    const-string v2, "nuclear plant"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->registerDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;)V

    .line 69
    new-instance v1, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;-><init>()V

    const-string v2, "illness"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->registerDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;)V

    .line 70
    new-instance v1, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/disaster/FloodingDisaster;-><init>()V

    const-string v2, "flooding"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->registerDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;)V

    .line 71
    new-instance v1, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;-><init>()V

    const-string v2, "riot"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->registerDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;)V

    .line 72
    new-instance v1, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;-><init>()V

    const-string v2, "crime"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->registerDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;)V

    .line 73
    new-instance v1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;-><init>()V

    const-string v2, "ufo"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->registerDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;)V

    .line 74
    new-instance v1, Linfo/flowersoft/theotown/components/disaster/GenericBuildingDisaster;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/disaster/GenericBuildingDisaster;-><init>()V

    const-string v2, "generic building"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->registerDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;)V

    .line 75
    new-instance v1, Linfo/flowersoft/theotown/components/disaster/GreenSlimeDisaster;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/disaster/GreenSlimeDisaster;-><init>()V

    const-string v2, "green slime"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->registerDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;)V

    .line 76
    new-instance v1, Linfo/flowersoft/theotown/components/disaster/PinkSlimeDisaster;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/disaster/PinkSlimeDisaster;-><init>()V

    const-string v2, "pink slime"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->registerDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;)V

    .line 77
    new-instance v1, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/disaster/BlizzardDisaster;-><init>()V

    const-string v2, "blizzard"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->registerDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;)V

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Disaster;

    .line 81
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/city/components/Disaster;->bind(Linfo/flowersoft/theotown/city/City;)V

    goto :goto_c7

    :cond_d7
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 133
    :goto_3
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 134
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 136
    :goto_e
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    if-eqz p1, :cond_35

    .line 137
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasterTags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 139
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/components/Disaster;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->loadDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Lio/blueflower/stapel2d/util/json/JsonReader;)V

    const/4 p1, 0x0

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_35
    if-nez p1, :cond_38

    goto :goto_3

    .line 145
    :cond_38
    const-string v0, "last disaster"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    .line 150
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3

    .line 147
    :cond_44
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->lastDisaster:J

    goto :goto_3

    :cond_4b
    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/DefaultCatastrophe;)Ljava/util/List;
    .registers 1

    .line 43
    iget-object p0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/DefaultCatastrophe;)J
    .registers 3

    .line 43
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->lastDisaster:J

    return-wide v0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/components/DefaultCatastrophe;J)J
    .registers 3

    .line 43
    iput-wide p1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->lastDisaster:J

    return-wide p1
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/DefaultCatastrophe;)Ljava/util/List;
    .registers 1

    .line 43
    iget-object p0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasterStates:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 182
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 184
    new-instance v0, Lio/blueflower/stapel2d/util/CyclicWorker;

    new-instance v1, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;-><init>(Linfo/flowersoft/theotown/components/DefaultCatastrophe;Linfo/flowersoft/theotown/city/City;)V

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/components/CityComponent;->addWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    return-void
.end method

.method public declared-synchronized drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 10

    monitor-enter p0

    .line 293
    :try_start_1
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 294
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getLod()Linfo/flowersoft/theotown/city/components/LODController;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/LODController;->isNoBackground()Z

    move-result p1

    if-nez p1, :cond_a4

    .line 295
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Disaster;

    .line 296
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/components/Disaster;->draw(Lio/blueflower/stapel2d/drawing/Engine;)V

    goto :goto_15

    :catchall_25
    move-exception v0

    move-object p1, v0

    goto/16 :goto_a6

    .line 299
    :cond_29
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 300
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result p1

    .line 302
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->flashs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 303
    :goto_3c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 304
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultCatastrophe$Flash;

    .line 305
    invoke-static {v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe$Flash;->access$500(Linfo/flowersoft/theotown/components/DefaultCatastrophe$Flash;)I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    const/high16 v2, 0x457a0000    # 4000.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_5c

    .line 308
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_3c

    :cond_5c
    neg-float v3, v1

    float-to-double v3, v3

    .line 310
    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v4

    sub-float v1, v2, v1

    mul-float/2addr v3, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v3, v1

    .line 311
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 313
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 314
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/16 v1, 0xff

    .line 315
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 316
    invoke-virtual {v0, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 317
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 318
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v4

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v5

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 317
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    const/4 v1, 0x0

    .line 319
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V
    :try_end_a3
    .catchall {:try_start_1 .. :try_end_a3} :catchall_25

    goto :goto_3c

    .line 323
    :cond_a4
    monitor-exit p0

    return-void

    :goto_a6
    :try_start_a6
    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_25

    throw p1
.end method

.method public getActiveDisasters()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/Disaster;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/components/Disaster;

    .line 245
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/Disaster;->isActive()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 246
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method public getDisaster(Ljava/lang/String;)Linfo/flowersoft/theotown/city/components/Disaster;
    .registers 4

    const/4 v0, 0x0

    .line 97
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasterTags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 98
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasterTags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 99
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/components/Disaster;

    return-object p1

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDisaster(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->classToDisaster:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getDisasterIndex(Linfo/flowersoft/theotown/city/components/Disaster;)I
    .registers 4

    const/4 v0, 0x0

    .line 115
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 116
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_12

    return v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public getDisasterTag(Linfo/flowersoft/theotown/city/components/Disaster;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 106
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 107
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1a

    .line 108
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasterTags:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDisasters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/Disaster;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    return-object v0
.end method

.method public isActive()Z
    .registers 4

    .line 229
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Disaster;

    .line 230
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/Disaster;->isSilent()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/Disaster;->isActive()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized issueDisaster(Ljava/lang/Class;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/city/components/Disaster;",
            ">;II)Z"
        }
    .end annotation

    monitor-enter p0

    .line 326
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Disaster;

    .line 327
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 328
    invoke-virtual {v1, p2, p3}, Linfo/flowersoft/theotown/city/components/Disaster;->issue(II)Z

    move-result p1
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    monitor-exit p0

    return p1

    :catchall_23
    move-exception p1

    goto :goto_3c

    .line 332
    :cond_25
    :try_start_25
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No disaster found of type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_23

    throw p1
.end method

.method public declared-synchronized issueFlash()V
    .registers 4

    monitor-enter p0

    .line 337
    :try_start_1
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$Flash;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe$Flash;-><init>(Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;)V

    .line 338
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 339
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe$Flash;->access$502(Linfo/flowersoft/theotown/components/DefaultCatastrophe$Flash;I)I

    .line 340
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->flashs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 341
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public declared-synchronized issueQuake()V
    .registers 4

    monitor-enter p0

    .line 345
    :try_start_1
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$Quake;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe$Quake;-><init>(Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;)V

    .line 346
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 347
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe$Quake;->access$402(Linfo/flowersoft/theotown/components/DefaultCatastrophe$Quake;I)I

    .line 348
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->quakes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 349
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public final loadDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 169
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/components/Disaster;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 170
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    return-void
.end method

.method public prepare()V
    .registers 3

    .line 254
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->prepare()V

    .line 256
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Disaster;

    .line 257
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/Disaster;->prepare()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public final registerDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;)V
    .registers 4

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasterTags:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p2, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->classToDisaster:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasterStates:Ljava/util/List;

    new-instance p2, Linfo/flowersoft/theotown/components/DefaultCatastrophe$DisasterState;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe$DisasterState;-><init>(Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 156
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 157
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Disaster;

    .line 158
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasterTags:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/Disaster;->saveMe()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 160
    invoke-virtual {p0, v1, v2, p1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->saveDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    :cond_25
    const-string v0, "last disaster"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->lastDisaster:J

    invoke-interface {p1, v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public final saveDisaster(Linfo/flowersoft/theotown/city/components/Disaster;Ljava/lang/String;Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-interface {p3, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 175
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 176
    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/city/components/Disaster;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 177
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setAutoActive(Linfo/flowersoft/theotown/city/components/Disaster;Z)V
    .registers 4

    .line 124
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisasterIndex(Linfo/flowersoft/theotown/city/components/Disaster;)I

    move-result p1

    if-ltz p1, :cond_10

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->disasterStates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultCatastrophe$DisasterState;

    iput-boolean p2, p1, Linfo/flowersoft/theotown/components/DefaultCatastrophe$DisasterState;->autoActive:Z

    :cond_10
    return-void
.end method

.method public declared-synchronized update()V
    .registers 11

    monitor-enter p0

    .line 263
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 264
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v1

    .line 266
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getSpeed()I

    move-result v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_3d

    const/4 v2, 0x2

    if-ne v0, v2, :cond_17

    monitor-exit p0

    return-void

    .line 267
    :cond_17
    :try_start_17
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->quakes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 268
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 269
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultCatastrophe$Quake;

    .line 270
    invoke-static {v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe$Quake;->access$400(Linfo/flowersoft/theotown/components/DefaultCatastrophe$Quake;)I

    move-result v2

    sub-int v2, v1, v2

    int-to-float v2, v2

    const/high16 v3, 0x45fa0000    # 8000.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_3f

    .line 273
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1d

    :catchall_3d
    move-exception v0

    goto :goto_75

    .line 275
    :cond_3f
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v4

    .line 276
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v5

    .line 277
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v6

    .line 278
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    .line 279
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float v8, v2, v8

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v9, v8

    mul-float/2addr v9, v8

    sub-float/2addr v3, v9

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v3, v8

    float-to-double v8, v6

    mul-float/2addr v7, v3

    float-to-double v6, v7

    const v3, 0x437b53d2

    mul-float/2addr v2, v3

    float-to-double v2, v2

    .line 284
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v6, v2

    add-double/2addr v8, v6

    double-to-float v2, v8

    .line 286
    invoke-virtual {v4, v5, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V
    :try_end_72
    .catchall {:try_start_17 .. :try_end_72} :catchall_3d

    goto :goto_1d

    .line 289
    :cond_73
    monitor-exit p0

    return-void

    :goto_75
    :try_start_75
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_3d

    throw v0
.end method

###### Class info.flowersoft.theotown.components.DefaultCatastrophe.AnonymousClass1 (info.flowersoft.theotown.components.DefaultCatastrophe$1)
.class Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;
.super Ljava/lang/Object;
.source "DefaultCatastrophe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/DefaultCatastrophe;->bind(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public counter:I

.field public final synthetic this$0:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/DefaultCatastrophe;Linfo/flowersoft/theotown/city/City;)V
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

    .line 184
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->this$0:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 189
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->val$city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 190
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v2

    .line 191
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->this$0:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-static {v4}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->access$100(Linfo/flowersoft/theotown/components/DefaultCatastrophe;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/components/Disaster;

    .line 192
    iget-object v6, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->val$city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v6

    .line 193
    :try_start_26
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/components/Disaster;->update()V

    .line 194
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/components/Disaster;->isSilent()Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/components/Disaster;->isActive()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 195
    iget-object v5, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->this$0:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-static {v5, v2, v3}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->access$202(Linfo/flowersoft/theotown/components/DefaultCatastrophe;J)J

    goto :goto_3d

    :catchall_3b
    move-exception v0

    goto :goto_3f

    .line 197
    :cond_3d
    :goto_3d
    monitor-exit v6

    goto :goto_17

    :goto_3f
    monitor-exit v6
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_3b

    throw v0

    .line 200
    :cond_41
    sget-boolean v4, Linfo/flowersoft/theotown/resources/Settings;->catastrophes:Z

    if-eqz v4, :cond_f3

    .line 201
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->isInFreezeMode()Z

    move-result v0

    if-nez v0, :cond_f3

    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_CATASTROPHE:I

    .line 202
    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_f3

    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->val$city:Linfo/flowersoft/theotown/city/City;

    const-string v4, "_disable_all_disasters"

    const-wide/16 v5, 0x0

    .line 203
    invoke-virtual {v0, v4, v5, v6}, Linfo/flowersoft/theotown/city/City;->getTransitionVar(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-nez v0, :cond_f3

    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->val$city:Linfo/flowersoft/theotown/city/City;

    .line 204
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_f3

    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->val$city:Linfo/flowersoft/theotown/city/City;

    .line 205
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v0

    if-nez v0, :cond_f3

    .line 206
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->counter:I

    const/16 v4, 0xd

    if-lt v0, v4, :cond_f3

    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->this$0:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->access$200(Linfo/flowersoft/theotown/components/DefaultCatastrophe;)J

    move-result-wide v7

    sub-long/2addr v2, v7

    const-wide/16 v7, 0xd

    cmp-long v0, v2, v7

    if-ltz v0, :cond_f3

    const/4 v0, 0x0

    .line 207
    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->counter:I

    .line 208
    :goto_87
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->this$0:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->access$100(Linfo/flowersoft/theotown/components/DefaultCatastrophe;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_f3

    .line 209
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->this$0:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->access$100(Linfo/flowersoft/theotown/components/DefaultCatastrophe;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/components/Disaster;

    .line 210
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->this$0:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-static {v3}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->access$300(Linfo/flowersoft/theotown/components/DefaultCatastrophe;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/DefaultCatastrophe$DisasterState;

    .line 212
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/Disaster;->isAutoEnabled()Z

    move-result v4

    if-eqz v4, :cond_f0

    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->val$city:Linfo/flowersoft/theotown/city/City;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_disable_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->this$0:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    .line 213
    invoke-virtual {v8, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisasterTag(Linfo/flowersoft/theotown/city/components/Disaster;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_disaster"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v6}, Linfo/flowersoft/theotown/city/City;->getTransitionVar(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_f0

    iget-boolean v3, v3, Linfo/flowersoft/theotown/components/DefaultCatastrophe$DisasterState;->autoActive:Z

    if-eqz v3, :cond_f0

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    .line 215
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/Disaster;->getAutoProbability()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_f0

    .line 216
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/Disaster;->issue()Z

    move-result v2

    if-eqz v2, :cond_f0

    goto :goto_f3

    :cond_f0
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 223
    :cond_f3
    :goto_f3
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->counter:I

    add-int/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;->counter:I

    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultCatastrophe.DisasterState (info.flowersoft.theotown.components.DefaultCatastrophe$DisasterState)
.class public Linfo/flowersoft/theotown/components/DefaultCatastrophe$DisasterState;
.super Ljava/lang/Object;
.source "DefaultCatastrophe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultCatastrophe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisasterState"
.end annotation


# instance fields
.field public autoActive:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$DisasterState;->autoActive:Z

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;)V
    .registers 2

    .line 359
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe$DisasterState;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultCatastrophe.Flash (info.flowersoft.theotown.components.DefaultCatastrophe$Flash)
.class public Linfo/flowersoft/theotown/components/DefaultCatastrophe$Flash;
.super Ljava/lang/Object;
.source "DefaultCatastrophe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultCatastrophe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Flash"
.end annotation


# instance fields
.field public issueTime:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;)V
    .registers 2

    .line 351
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe$Flash;-><init>()V

    return-void
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/components/DefaultCatastrophe$Flash;)I
    .registers 1

    .line 351
    iget p0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$Flash;->issueTime:I

    return p0
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/components/DefaultCatastrophe$Flash;I)I
    .registers 2

    .line 351
    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$Flash;->issueTime:I

    return p1
.end method

###### Class info.flowersoft.theotown.components.DefaultCatastrophe.Quake (info.flowersoft.theotown.components.DefaultCatastrophe$Quake)
.class public Linfo/flowersoft/theotown/components/DefaultCatastrophe$Quake;
.super Ljava/lang/Object;
.source "DefaultCatastrophe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultCatastrophe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Quake"
.end annotation


# instance fields
.field public issueTime:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/DefaultCatastrophe$1;)V
    .registers 2

    .line 355
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe$Quake;-><init>()V

    return-void
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/DefaultCatastrophe$Quake;)I
    .registers 1

    .line 355
    iget p0, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$Quake;->issueTime:I

    return p0
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/components/DefaultCatastrophe$Quake;I)I
    .registers 2

    .line 355
    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultCatastrophe$Quake;->issueTime:I

    return p1
.end method
