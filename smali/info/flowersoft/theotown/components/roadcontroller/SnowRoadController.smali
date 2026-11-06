###### Class info.flowersoft.theotown.components.roadcontroller.SnowRoadController (info.flowersoft.theotown.components.roadcontroller.SnowRoadController)
.class public Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;
.super Ljava/lang/Object;
.source "SnowRoadController.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/roadcontroller/RoadController;


# instance fields
.field public final SNOW_ON_ROAD_ANIM:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public catastropheActive:Z

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public downfall:F

.field public winter:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "$animationsnowroad"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 17
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;->SNOW_ON_ROAD_ANIM:Linfo/flowersoft/theotown/draft/AnimationDraft;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;->catastropheActive:Z

    .line 22
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;->winter:Z

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;->downfall:F

    .line 26
    iput-object p1, p0, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;->city:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public accept(Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 6

    .line 51
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getOccupation()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    .line 52
    iget-object v1, p0, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;->SNOW_ON_ROAD_ANIM:Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-ne v0, v1, :cond_1d

    .line 53
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;->catastropheActive:Z

    if-nez v0, :cond_1d

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Road;->setOccupation(Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    .line 57
    :cond_1d
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;->winter:Z

    if-eqz v0, :cond_4b

    iget v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;->downfall:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4b

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getFlags()J

    move-result-wide v0

    const-wide/16 v2, 0x60

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4b

    .line 58
    iget v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;->downfall:F

    const/high16 v1, 0x42a00000    # 80.0f

    mul-float/2addr v0, v1

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 59
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getSnow()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/objects/Road;->setSnow(I)V

    return-void

    .line 61
    :cond_4b
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getSnow()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Road;->setSnow(I)V

    return-void
.end method

.method public afterPass()V
    .registers 1

    .line 0
    return-void
.end method

.method public beforePass()V
    .registers 3

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    .line 41
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->isActive()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;->catastropheActive:Z

    .line 43
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/WinterManager;->isWinter()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;->winter:Z

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultWeather;

    .line 46
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->getRain()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/roadcontroller/SnowRoadController;->downfall:F

    return-void
.end method

.method public canHandle(Linfo/flowersoft/theotown/draft/RoadDraft;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 71
    const-string v0, "snow road"

    return-object v0
.end method

.method public prepare()V
    .registers 1

    .line 0
    return-void
.end method
