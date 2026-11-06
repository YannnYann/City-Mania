###### Class info.flowersoft.theotown.components.disaster.RiotDisaster (info.flowersoft.theotown.components.disaster.RiotDisaster)
.class public Linfo/flowersoft/theotown/components/disaster/RiotDisaster;
.super Linfo/flowersoft/theotown/city/components/Disaster;
.source "RiotDisaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;,
        Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;
    }
.end annotation


# instance fields
.field public final DEMONSTRATION_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final RIOT_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final activeRiots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;",
            ">;"
        }
    .end annotation
.end field

.field public maxPeople:I

.field public reason:Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

.field public startDay:J

.field public targetDay:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Disaster;-><init>()V

    .line 39
    const-string v0, "$animationprotester00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->DEMONSTRATION_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 40
    const-string v0, "$animationriot00"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->RIOT_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->activeRiots:Ljava/util/List;

    return-void
.end method

.method public static getBuildingHappiness(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)F
    .registers 2

    .line 351
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    if-eqz p0, :cond_13

    .line 353
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object p0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getIndex()I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_13
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method


# virtual methods
.method public final addRiot(Linfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/draft/AnimationDraft;)Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;
    .registers 10

    .line 382
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    .line 383
    new-instance v2, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;-><init>(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$1;)V

    .line 384
    invoke-static {v2, v0, v1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$302(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;J)J

    const-wide/16 v3, 0x2

    add-long/2addr v0, v3

    .line 385
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    invoke-static {v2, v0, v1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$402(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;J)J

    .line 386
    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$602(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;I)I

    .line 387
    invoke-static {v2, p2}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$702(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;Linfo/flowersoft/theotown/draft/AnimationDraft;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 388
    invoke-static {v2, p1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$502(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;Linfo/flowersoft/theotown/city/objects/Road;)Linfo/flowersoft/theotown/city/objects/Road;

    .line 389
    invoke-static {v2, v1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$802(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;Z)Z

    .line 390
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/objects/Road;->setOccupation(Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    .line 391
    iget-object p1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->activeRiots:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->startSound(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)V

    return-object v2
.end method

.method public final burnNearBuilding(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)V
    .registers 8

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x1

    move v2, v1

    :goto_8
    const/16 v3, 0x10

    if-gt v2, v3, :cond_64

    .line 236
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$500(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v3

    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 237
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$500(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v4

    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 238
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 239
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 240
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->isLocked()Z

    move-result v4

    if-nez v4, :cond_61

    .line 241
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result v4

    iget-object v5, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->reason:Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    if-eqz v5, :cond_51

    invoke-static {v5}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->access$000(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result v5

    goto :goto_52

    :cond_51
    move v5, v1

    :goto_52
    if-gt v4, v5, :cond_5e

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v4

    if-nez v4, :cond_61

    .line 242
    :cond_5e
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_61
    mul-int/lit8 v2, v2, 0x2

    goto :goto_8

    .line 247
    :cond_64
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8e

    .line 248
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    .line 249
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    const-class v1, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    .line 250
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    .line 251
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->issue(Linfo/flowersoft/theotown/city/objects/Building;)Z

    :cond_8e
    return-void
.end method

.method public final findReason()Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;
    .registers 5

    .line 314
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 316
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getLowestHappiness()Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 318
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getLowestHappinessBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    .line 319
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->getBuildingHappiness(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_4c

    const v3, 0x3e19999a    # 0.15f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4c

    .line 320
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_4c

    .line 321
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v2, v3, :cond_4c

    .line 322
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getCurrentHabitants()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_4c

    .line 323
    new-instance v2, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    invoke-direct {v2}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;-><init>()V

    .line 324
    invoke-static {v2, v1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->access$102(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 325
    invoke-static {v2, v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->access$002(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/Building;

    return-object v2

    :cond_4c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoProbability()F
    .registers 2

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public declared-synchronized getLocation()[I
    .registers 4

    monitor-enter p0

    .line 415
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->reason:Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    if-eqz v0, :cond_27

    .line 416
    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->access$000(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 418
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    filled-new-array {v1, v2}, [I

    move-result-object v0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 417
    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    goto :goto_59

    .line 419
    :cond_27
    :try_start_27
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->activeRiots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    .line 420
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->activeRiots:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$500(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v0

    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->activeRiots:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$500(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0
    :try_end_54
    .catchall {:try_start_27 .. :try_end_54} :catchall_25

    monitor-exit p0

    return-object v0

    .line 422
    :cond_56
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_59
    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_25

    throw v0
.end method

.method public declared-synchronized getOccupation()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 3

    monitor-enter p0

    .line 427
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->isActive()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 428
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->activeRiots:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$700(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    goto :goto_1b

    .line 430
    :cond_18
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_16

    throw v0
.end method

.method public getReason()Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;
    .registers 2

    .line 333
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->isActive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 334
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->reason:Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .line 270
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->activeRiots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isAutoEnabled()Z
    .registers 5

    .line 436
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 438
    :cond_a
    const-string v0, "disasters"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 439
    const-string v1, "riot"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 440
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 442
    :cond_1d
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v1

    sget-object v2, Linfo/flowersoft/theotown/city/GameMode;->SANDBOX:Linfo/flowersoft/theotown/city/GameMode;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2f

    .line 443
    const-string v1, "sandbox"

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 444
    :cond_2f
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v1

    sget-object v2, Linfo/flowersoft/theotown/city/GameMode;->FREE:Linfo/flowersoft/theotown/city/GameMode;

    if-ne v1, v2, :cond_40

    .line 445
    const-string v1, "free"

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 447
    :cond_40
    const-string v1, "default"

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isCorruptable(II)Z
    .registers 7

    .line 256
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 257
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 258
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getOccupation()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object p2

    if-nez p2, :cond_2b

    iget-object p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-wide p1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->flags:J

    const-wide/32 v2, 0x8000e4

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2b

    const/4 p1, 0x1

    return p1

    :cond_2b
    return v1
.end method

.method public final isStillReason(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Z
    .registers 5

    .line 341
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->access$000(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->access$000(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    .line 342
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->access$000(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_43

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_43

    .line 346
    :cond_2a
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->access$000(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->access$100(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->getBuildingHappiness(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_43

    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_43

    const/4 p1, 0x1

    return p1

    :cond_43
    :goto_43
    return v2
.end method

.method public issue()Z
    .registers 5

    .line 275
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->findReason()Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 277
    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->access$000(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->sampleRoadAroundBuilding(Linfo/flowersoft/theotown/city/objects/Building;)[I

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 279
    aget v1, v2, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->DEMONSTRATION_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-virtual {p0, v1, v2, v3, v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->issue(IILinfo/flowersoft/theotown/draft/AnimationDraft;Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Z

    move-result v0

    return v0

    :cond_1d
    return v1
.end method

.method public issue(II)Z
    .registers 5

    .line 361
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->RIOT_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->issue(IILinfo/flowersoft/theotown/draft/AnimationDraft;Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Z

    move-result p1

    return p1
.end method

.method public issue(IILinfo/flowersoft/theotown/draft/AnimationDraft;Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Z
    .registers 9

    .line 365
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->isCorruptable(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 366
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p4, :cond_1e

    .line 367
    invoke-static {p4}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->access$000(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallHabitants()I

    move-result p2

    div-int/lit8 p2, p2, 0x5

    goto :goto_20

    :cond_1e
    const/16 p2, 0x32

    :goto_20
    iput p2, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->maxPeople:I

    if-eqz p1, :cond_48

    .line 369
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getOccupation()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object p2

    if-nez p2, :cond_48

    .line 370
    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    .line 371
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->startDay:J

    const-wide/16 v2, 0x2d

    add-long/2addr v0, v2

    .line 372
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/16 v2, 0x3c

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->targetDay:J

    .line 373
    invoke-virtual {p0, p1, p3}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->addRiot(Linfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/draft/AnimationDraft;)Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;

    .line 374
    iput-object p4, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->reason:Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    const/4 p1, 0x1

    return p1

    :cond_48
    return v1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    :cond_1
    :goto_1
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_117

    .line 62
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_118

    goto :goto_42

    :sswitch_17
    const-string v3, "target day"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_42

    :cond_20
    const/4 v2, 0x3

    goto :goto_42

    :sswitch_22
    const-string v3, "riots"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_42

    :cond_2b
    const/4 v2, 0x2

    goto :goto_42

    :sswitch_2d
    const-string v3, "reason"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_42

    :cond_36
    const/4 v2, 0x1

    goto :goto_42

    :sswitch_38
    const-string v3, "start day"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_42

    :cond_41
    move v2, v0

    :goto_42
    packed-switch v2, :pswitch_data_12a

    .line 128
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_1

    .line 67
    :pswitch_49
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->targetDay:J

    goto :goto_1

    .line 90
    :pswitch_51
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 91
    :goto_54
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 92
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 93
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    .line 94
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    .line 95
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    .line 96
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v4

    .line 97
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v5

    .line 99
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    .line 102
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_8f

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->peek()I

    move-result v6

    const/4 v8, 0x6

    if-ne v6, v8, :cond_8f

    .line 103
    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/AnimationDraft;

    goto :goto_90

    :cond_8f
    move-object v6, v7

    .line 106
    :goto_90
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9a

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_90

    :cond_9a
    if-eqz v6, :cond_c6

    .line 109
    iget-object v8, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v8

    invoke-virtual {v8, v3, v4, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-eqz v3, :cond_c6

    .line 112
    new-instance v4, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;

    invoke-direct {v4, v7}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;-><init>(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$1;)V

    int-to-long v7, v1

    .line 113
    invoke-static {v4, v7, v8}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$302(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;J)J

    int-to-long v1, v2

    .line 114
    invoke-static {v4, v1, v2}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$402(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;J)J

    .line 115
    invoke-static {v4, v3}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$502(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;Linfo/flowersoft/theotown/city/objects/Road;)Linfo/flowersoft/theotown/city/objects/Road;

    .line 116
    invoke-static {v4, v5}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$602(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;I)I

    .line 117
    invoke-static {v4, v6}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$702(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;Linfo/flowersoft/theotown/draft/AnimationDraft;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 118
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->activeRiots:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/city/objects/Road;->setOccupation(Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    .line 122
    :cond_c6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_54

    .line 125
    :cond_ca
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_1

    .line 73
    :pswitch_cf
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 74
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    .line 75
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    .line 76
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 77
    :goto_de
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e8

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_de

    .line 78
    :cond_e8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    .line 80
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    .line 81
    invoke-static {v3}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttribute(Ljava/lang/String;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 83
    new-instance v3, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    invoke-direct {v3}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;-><init>()V

    iput-object v3, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->reason:Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    .line 84
    invoke-static {v3, v1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->access$002(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/Building;

    .line 85
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->reason:Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->access$102(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    goto/16 :goto_1

    .line 64
    :pswitch_10e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->startDay:J

    goto/16 :goto_1

    :cond_117
    return-void

    :sswitch_data_118
    .sparse-switch
        -0x7f022d22 -> :sswitch_38
        -0x37ba6dbc -> :sswitch_2d
        0x677e197 -> :sswitch_22
        0x1ce9508d -> :sswitch_17
    .end sparse-switch

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_10e
        :pswitch_cf
        :pswitch_51
        :pswitch_49
    .end packed-switch
.end method

.method public prepare()V
    .registers 1

    .line 136
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Disaster;->prepare()V

    return-void
.end method

.method public final removeRiot(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)V
    .registers 4

    .line 408
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$500(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Road;->setOccupation(Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    .line 409
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->activeRiots:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 410
    invoke-static {p1, v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$802(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;Z)Z

    return-void
.end method

.method public final sampleRoadAroundBuilding(Linfo/flowersoft/theotown/city/objects/Building;)[I
    .registers 13

    .line 286
    new-instance v0, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    .line 287
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    .line 288
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    .line 289
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v3

    .line 290
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    .line 291
    new-instance v4, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    const/4 v5, 0x0

    move v6, v5

    :goto_21
    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v6, v3, :cond_50

    add-int v8, v1, v6

    add-int/lit8 v9, v2, -0x1

    .line 294
    invoke-virtual {v4, v8, v9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRoad(II)Z

    move-result v10

    if-eqz v10, :cond_3a

    invoke-static {v8, v9}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9, v7}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_3a
    add-int v9, v2, p1

    .line 295
    invoke-virtual {v4, v8, v9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRoad(II)Z

    move-result v10

    if-eqz v10, :cond_4d

    invoke-static {v8, v9}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_50
    :goto_50
    if-ge v5, p1, :cond_7d

    add-int/lit8 v6, v1, -0x1

    add-int v8, v2, v5

    .line 299
    invoke-virtual {v4, v6, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRoad(II)Z

    move-result v9

    if-eqz v9, :cond_67

    invoke-static {v6, v8}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v7}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_67
    add-int v6, v1, v3

    .line 300
    invoke-virtual {v4, v6, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRoad(II)Z

    move-result v9

    if-eqz v9, :cond_7a

    invoke-static {v6, v8}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v7}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    .line 303
    :cond_7d
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 304
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 305
    invoke-static {p1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v0

    .line 306
    invoke-static {p1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result p1

    .line 307
    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1

    :cond_9a
    const/4 p1, 0x0

    return-object p1
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    const-string v0, "start day"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->startDay:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 142
    const-string v0, "target day"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->targetDay:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 144
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->reason:Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    if-eqz v0, :cond_4d

    .line 145
    const-string v0, "reason"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 146
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->reason:Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->access$000(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 147
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->reason:Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->access$000(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 148
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->reason:Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->access$100(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getTag(Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 149
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 152
    :cond_4d
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->activeRiots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b2

    .line 153
    const-string v0, "riots"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 154
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    .line 155
    :goto_5e
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->activeRiots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_af

    .line 156
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->activeRiots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;

    .line 157
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 158
    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$300(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 159
    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$400(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 160
    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$500(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 161
    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$500(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 162
    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$600(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)I

    move-result v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v2, -0x1

    .line 163
    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 164
    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$700(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 165
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 167
    :cond_af
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_b2
    return-void
.end method

.method public final startSound(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)V
    .registers 11

    .line 397
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    .line 398
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$700(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->DEMONSTRATION_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-ne v1, v2, :cond_15

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_DEMO:I

    goto :goto_17

    :cond_15
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_RIOT:I

    :goto_17
    sget-object v2, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v3, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$1;

    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    .line 399
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$500(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v6

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$500(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v7

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$1;-><init>(Linfo/flowersoft/theotown/components/disaster/RiotDisaster;Linfo/flowersoft/theotown/city/City;IILinfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)V

    .line 398
    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playLoop(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    return-void
.end method

.method public update()V
    .registers 2

    .line 173
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->isActive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 174
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->updateRiot()V

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->reason:Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    return-void
.end method

.method public final updateRiot()V
    .registers 18

    move-object/from16 v0, p0

    .line 181
    iget-object v1, v0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v1

    .line 183
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    iget-object v4, v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->activeRiots:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 185
    iget-wide v5, v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->targetDay:J

    cmp-long v5, v1, v5

    const/4 v6, 0x0

    if-gez v5, :cond_27

    iget-object v5, v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->reason:Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;

    if-eqz v5, :cond_25

    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->isStillReason(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_27

    :cond_25
    move v5, v6

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v5, 0x1

    :goto_28
    move v7, v6

    :goto_29
    if-ge v7, v4, :cond_e4

    .line 188
    iget-object v8, v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->activeRiots:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;

    .line 189
    invoke-static {v8}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$400(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)J

    move-result-wide v9

    sub-long v9, v1, v9

    long-to-int v9, v9

    .line 191
    invoke-static {v8}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$500(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v10

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/objects/Road;->getOccupation()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v10

    if-nez v10, :cond_4b

    .line 192
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v16, v7

    goto/16 :goto_df

    .line 196
    :cond_4b
    invoke-static {v8}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$600(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)I

    move-result v10

    if-lez v10, :cond_c0

    if-nez v5, :cond_c0

    iget-object v10, v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->activeRiots:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iget v11, v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->maxPeople:I

    if-ge v10, v11, :cond_c0

    move v10, v6

    :goto_5e
    const/4 v11, 0x4

    if-ge v10, v11, :cond_ba

    .line 198
    invoke-static {v10}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v11

    .line 199
    invoke-static {v8}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$500(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v12

    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v12

    invoke-static {v11}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v13

    add-int/2addr v12, v13

    .line 200
    invoke-static {v8}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$500(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v13

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v13

    invoke-static {v11}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v11

    add-int/2addr v13, v11

    .line 202
    invoke-virtual {v0, v12, v13}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->isCorruptable(II)Z

    move-result v11

    if-eqz v11, :cond_b2

    .line 203
    iget-object v11, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v11

    invoke-virtual {v11, v12, v13, v6}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v11

    if-eqz v11, :cond_b2

    .line 206
    invoke-static {v8}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$700(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v10

    .line 207
    iget-object v12, v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->DEMONSTRATION_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-ne v10, v12, :cond_ac

    iget-wide v12, v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->startDay:J

    sub-long v14, v1, v12

    move/from16 v16, v7

    iget-wide v6, v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->targetDay:J

    sub-long/2addr v6, v12

    const-wide/16 v12, 0x2

    div-long/2addr v6, v12

    cmp-long v6, v14, v6

    if-lez v6, :cond_ae

    .line 208
    iget-object v10, v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->RIOT_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

    goto :goto_ae

    :cond_ac
    move/from16 v16, v7

    .line 210
    :cond_ae
    :goto_ae
    invoke-virtual {v0, v11, v10}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->addRiot(Linfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/draft/AnimationDraft;)Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;

    goto :goto_bc

    :cond_b2
    move/from16 v16, v7

    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v16

    const/4 v6, 0x0

    goto :goto_5e

    :cond_ba
    move/from16 v16, v7

    .line 215
    :goto_bc
    invoke-static {v8}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$610(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)I

    goto :goto_c2

    :cond_c0
    move/from16 v16, v7

    .line 218
    :goto_c2
    invoke-static {v8}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$700(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v6

    iget-object v7, v0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->RIOT_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-ne v6, v7, :cond_da

    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v6, v7, v6

    if-ltz v6, :cond_da

    .line 219
    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->burnNearBuilding(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)V

    :cond_da
    if-ltz v9, :cond_df

    .line 223
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_df
    :goto_df
    add-int/lit8 v7, v16, 0x1

    const/4 v6, 0x0

    goto/16 :goto_29

    :cond_e4
    const/4 v6, 0x0

    .line 227
    :goto_e5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_f7

    .line 228
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->removeRiot(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_e5

    :cond_f7
    return-void
.end method

###### Class info.flowersoft.theotown.components.disaster.RiotDisaster.AnonymousClass1 (info.flowersoft.theotown.components.disaster.RiotDisaster$1)
.class public Linfo/flowersoft/theotown/components/disaster/RiotDisaster$1;
.super Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;
.source "RiotDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/disaster/RiotDisaster;->startSound(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

.field public final synthetic val$riot:Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/RiotDisaster;Linfo/flowersoft/theotown/city/City;IILinfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 399
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$1;->this$0:Linfo/flowersoft/theotown/components/disaster/RiotDisaster;

    iput-object p5, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$1;->val$riot:Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;

    invoke-direct {p0, p2, p3, p4}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;II)V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    .line 402
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$1;->val$riot:Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->access$800(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.disaster.RiotDisaster.Reason (info.flowersoft.theotown.components.disaster.RiotDisaster$Reason)
.class public final Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;
.super Ljava/lang/Object;
.source "RiotDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/disaster/RiotDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reason"
.end annotation


# instance fields
.field public attribute:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

.field public building:Linfo/flowersoft/theotown/city/objects/Building;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 1

    .line 465
    iget-object p0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->building:Linfo/flowersoft/theotown/city/objects/Building;

    return-object p0
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 465
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->building:Linfo/flowersoft/theotown/city/objects/Building;

    return-object p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;
    .registers 1

    .line 465
    iget-object p0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->attribute:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    return-object p0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;
    .registers 2

    .line 465
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->attribute:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    return-object p1
.end method


# virtual methods
.method public getAttribute()Linfo/flowersoft/theotown/components/management/attribute/Attribute;
    .registers 2

    .line 470
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->attribute:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    return-object v0
.end method

.method public getBuilding()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 474
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Reason;->building:Linfo/flowersoft/theotown/city/objects/Building;

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.disaster.RiotDisaster.Riot (info.flowersoft.theotown.components.disaster.RiotDisaster$Riot)
.class public final Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;
.super Ljava/lang/Object;
.source "RiotDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/disaster/RiotDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Riot"
.end annotation


# instance fields
.field public localStartDay:J

.field public localTargetDay:J

.field public occupation:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public road:Linfo/flowersoft/theotown/city/objects/Road;

.field public spawnCount:I

.field public valid:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$1;)V
    .registers 2

    .line 456
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;-><init>()V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)J
    .registers 3

    .line 456
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->localStartDay:J

    return-wide v0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;J)J
    .registers 3

    .line 456
    iput-wide p1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->localStartDay:J

    return-wide p1
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)J
    .registers 3

    .line 456
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->localTargetDay:J

    return-wide v0
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;J)J
    .registers 3

    .line 456
    iput-wide p1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->localTargetDay:J

    return-wide p1
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/city/objects/Road;
    .registers 1

    .line 456
    iget-object p0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->road:Linfo/flowersoft/theotown/city/objects/Road;

    return-object p0
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;Linfo/flowersoft/theotown/city/objects/Road;)Linfo/flowersoft/theotown/city/objects/Road;
    .registers 2

    .line 456
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->road:Linfo/flowersoft/theotown/city/objects/Road;

    return-object p1
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)I
    .registers 1

    .line 456
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->spawnCount:I

    return p0
.end method

.method public static synthetic access$602(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;I)I
    .registers 2

    .line 456
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->spawnCount:I

    return p1
.end method

.method public static synthetic access$610(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)I
    .registers 3

    .line 456
    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->spawnCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->spawnCount:I

    return v0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 1

    .line 456
    iget-object p0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->occupation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-object p0
.end method

.method public static synthetic access$702(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;Linfo/flowersoft/theotown/draft/AnimationDraft;)Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 2

    .line 456
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->occupation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-object p1
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;)Z
    .registers 1

    .line 456
    iget-boolean p0, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->valid:Z

    return p0
.end method

.method public static synthetic access$802(Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;Z)Z
    .registers 2

    .line 456
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/disaster/RiotDisaster$Riot;->valid:Z

    return p1
.end method
