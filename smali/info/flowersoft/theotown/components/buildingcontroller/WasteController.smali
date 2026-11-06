###### Class info.flowersoft.theotown.components.buildingcontroller.WasteController (info.flowersoft.theotown.components.buildingcontroller.WasteController)
.class public Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;
.super Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;
.source "WasteController.java"


# instance fields
.field public final WASTE_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1, v0, v1}, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;-><init>(Linfo/flowersoft/theotown/city/City;II)V

    .line 18
    const-string p1, "$animationwaste00"

    const-class v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;->WASTE_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 23
    const-string p1, "waste"

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 24
    const-string v0, "min rank"

    iget v1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->minRank:I

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->minRank:I

    return-void
.end method


# virtual methods
.method public final TryToSpawnGarbageNearby(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 7

    .line 38
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 39
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    rem-int v1, v0, v1

    .line 40
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    div-int v2, v0, v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1e

    const/4 v2, -0x1

    goto :goto_22

    :cond_1e
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    .line 41
    :goto_22
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    .line 42
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    .line 43
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    if-ge v0, p1, :cond_35

    add-int/2addr v3, v1

    add-int/2addr v4, v2

    goto :goto_37

    :cond_35
    add-int/2addr v3, v2

    add-int/2addr v4, v1

    .line 50
    :goto_37
    iget-object p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 51
    iget-object p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v0, 0x0

    invoke-virtual {p1, v3, v4, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 53
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v0, :cond_57

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getOccupation()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    if-nez v0, :cond_57

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;->WASTE_OCCUPATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Road;->setOccupation(Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    :cond_57
    return-void
.end method

.method public accept(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 5

    .line 29
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->accept(Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 31
    iget v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->coverageAspect:I

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getNeededAmount(I)I

    move-result v0

    if-lez v0, :cond_27

    .line 32
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isFullOfWaste()Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3da3d70a    # 0.08f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_27

    .line 33
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;->TryToSpawnGarbageNearby(Linfo/flowersoft/theotown/city/objects/Building;)V

    :cond_27
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 61
    const-string v0, "waste"

    return-object v0
.end method
