###### Class info.flowersoft.theotown.components.traffic.flyingobjectcontroller.TestHelicopterController (info.flowersoft.theotown.components.traffic.flyingobjectcontroller.TestHelicopterController)
.class public Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController;
.super Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;
.source "TestHelicopterController.java"


# instance fields
.field public initiated:Z


# direct methods
.method public static synthetic $r8$lambda$4IVAK8gXarWVCHBhaNpsvwo5pgQ(Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController;Linfo/flowersoft/theotown/city/components/Tool;IIII)V
    .registers 6

    .line 40
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    .line 40
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_29

    .line 41
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    const/4 p4, 0x0

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    iget-object p5, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p5, p2, p3}, Linfo/flowersoft/theotown/city/City;->getTileHeight(II)I

    move-result p5

    if-nez p5, :cond_26

    iget-object p5, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p5}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p5

    invoke-virtual {p5, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result p5

    if-nez p5, :cond_26

    const/4 p4, 0x1

    :cond_26
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->flyTo(Linfo/flowersoft/theotown/city/objects/FlyingObject;IIZ)V

    :cond_29
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V

    return-void
.end method


# virtual methods
.method public finishedFlightCommand(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 2

    .line 0
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 55
    const-string v0, "test helicopter"

    return-object v0
.end method

.method public update()V
    .registers 4

    .line 28
    invoke-super {p0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->update()V

    .line 30
    invoke-static {}, Linfo/flowersoft/theotown/util/ScreenRecorder;->getInstance()Linfo/flowersoft/theotown/util/ScreenRecorder;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ScreenRecorder;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    .line 32
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController;->initiated:Z

    if-nez v0, :cond_56

    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 33
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 34
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->FLYINGS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    const/16 v1, 0x10

    .line 35
    invoke-virtual {p0, v0, v1, v1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->create(Linfo/flowersoft/theotown/draft/FlyingObjectDraft;II)Linfo/flowersoft/theotown/city/objects/FlyingObject;

    .line 38
    :cond_2f
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/Tool;->registerClickListener(Linfo/flowersoft/theotown/city/components/Tool$ClickListener;)V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController;->initiated:Z

    return-void

    .line 47
    :cond_41
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    .line 48
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->spawner:Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;->remove(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    :cond_56
    return-void
.end method

###### Class info.flowersoft.theotown.components.traffic.flyingobjectcontroller.TestHelicopterController$$ExternalSyntheticLambda0 (info.flowersoft.theotown.components.traffic.flyingobjectcontroller.TestHelicopterController$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Tool$ClickListener;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController;

    return-void
.end method


# virtual methods
.method public final onClick(Linfo/flowersoft/theotown/city/components/Tool;IIII)V
    .registers 12

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController;->$r8$lambda$4IVAK8gXarWVCHBhaNpsvwo5pgQ(Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/TestHelicopterController;Linfo/flowersoft/theotown/city/components/Tool;IIII)V

    return-void
.end method
