###### Class info.flowersoft.theotown.components.buildingcontroller.BodyDisposalController (info.flowersoft.theotown.components.buildingcontroller.BodyDisposalController)
.class public Linfo/flowersoft/theotown/components/buildingcontroller/BodyDisposalController;
.super Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;
.source "BodyDisposalController.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 17
    invoke-direct {p0, p1, v0, v1}, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;-><init>(Linfo/flowersoft/theotown/city/City;II)V

    .line 19
    const-string p1, "body disposal"

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 20
    const-string v0, "min rank"

    iget v1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->minRank:I

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->minRank:I

    return-void
.end method


# virtual methods
.method public accept(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 7

    .line 25
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->accept(Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 27
    iget v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->coverageAspect:I

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getNeededAmount(I)I

    move-result v0

    if-lez v0, :cond_71

    .line 28
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isFullOfDeadPeople()Z

    move-result v0

    if-eqz v0, :cond_71

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3da3d70a    # 0.08f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_71

    .line 29
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 30
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    rem-int v1, v0, v1

    .line 31
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    div-int v2, v0, v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_40

    const/4 v2, -0x1

    goto :goto_44

    :cond_40
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    .line 32
    :goto_44
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    .line 33
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    .line 34
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    if-ge v0, p1, :cond_57

    add-int/2addr v3, v1

    add-int/2addr v4, v2

    goto :goto_59

    :cond_57
    add-int/2addr v3, v2

    add-int/2addr v4, v1

    .line 41
    :goto_59
    iget-object p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_71

    .line 42
    iget-object p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v0, 0x0

    invoke-virtual {p1, v3, v4, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_71

    .line 43
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v0, :cond_71

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getOccupation()Linfo/flowersoft/theotown/draft/AnimationDraft;

    :cond_71
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 52
    const-string v0, "body disposal"

    return-object v0
.end method
