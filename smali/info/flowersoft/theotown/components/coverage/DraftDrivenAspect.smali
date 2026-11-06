###### Class info.flowersoft.theotown.components.coverage.DraftDrivenAspect (info.flowersoft.theotown.components.coverage.DraftDrivenAspect)
.class public abstract Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;
.super Ljava/lang/Object;
.source "DraftDrivenAspect.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/coverage/Aspect;


# instance fields
.field public buildingField:I

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public coverageAspect:I

.field public infiniteRadius:Z

.field public influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

.field public final influenceType:Linfo/flowersoft/theotown/city/components/InfluenceType;

.field public populationAware:Z

.field public populationFactors:[F


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/city/components/InfluenceType;)V
    .registers 11

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 37
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;-><init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/city/components/InfluenceType;IZZ)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/city/components/InfluenceType;IZZ)V
    .registers 8

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 34
    new-array v0, v0, [F

    iput-object v0, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->populationFactors:[F

    .line 43
    iput-object p1, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->city:Linfo/flowersoft/theotown/city/City;

    .line 44
    iput p2, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->coverageAspect:I

    .line 45
    iput-object p3, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->influenceType:Linfo/flowersoft/theotown/city/components/InfluenceType;

    .line 46
    iput p4, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->buildingField:I

    .line 47
    iput-boolean p5, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->infiniteRadius:Z

    .line 48
    iput-boolean p6, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->populationAware:Z

    return-void
.end method


# virtual methods
.method public getNeighborTrading(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)J
    .registers 4

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasInfiniteRadius()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->infiniteRadius:Z

    return v0
.end method

.method public isActive(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 2

    .line 52
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result p1

    return p1
.end method

.method public neededAmount(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 5

    .line 90
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 94
    :cond_8
    iget v0, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->coverageAspect:I

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getNeededAmount(I)I

    move-result v0

    .line 96
    iget-boolean v1, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->populationAware:Z

    if-eqz v1, :cond_20

    int-to-float v0, v0

    .line 98
    iget-object v1, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->populationFactors:[F

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result v2

    aget v1, v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 101
    :cond_20
    iget v1, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->buildingField:I

    if-ltz v1, :cond_37

    .line 102
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getAspects()[I

    move-result-object p1

    iget v1, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->buildingField:I

    aget p1, p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    add-int/2addr v0, p1

    :cond_37
    return v0
.end method

.method public prepare()V
    .registers 10

    .line 57
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v0

    .line 58
    iget-object v2, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultPeople;

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v1, :cond_37

    .line 61
    invoke-virtual {v0, v4, v3}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getResidentialSpace(II)I

    move-result v5

    if-nez v5, :cond_22

    goto :goto_34

    .line 64
    :cond_22
    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/components/DefaultPeople;->getPeople(I)I

    move-result v6

    .line 65
    iget-object v7, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->populationFactors:[F

    int-to-float v6, v6

    int-to-float v5, v5

    div-float/2addr v6, v5

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v5, v8}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v5

    aput v5, v7, v4

    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_37
    return-void
.end method

.method public providedAmount(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 6

    .line 71
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->isActive(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget v0, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->coverageAspect:I

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getProvidedAmount(I)I

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    if-lez v0, :cond_2f

    .line 72
    iget v2, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->buildingField:I

    if-ltz v2, :cond_2f

    .line 73
    iget v2, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->coverageAspect:I

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getAspectCapacity(I)I

    move-result v2

    if-lez v2, :cond_2f

    .line 75
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getAspects()[I

    move-result-object p1

    iget v3, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->buildingField:I

    aget p1, p1, v3

    sub-int/2addr v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_2f
    return v0
.end method

.method public providedRadius(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 5

    .line 83
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getInfluenceInduceVector()[I

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->influenceType:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 84
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 85
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->isActive(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x4

    int-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

.method public reachedAmount(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 7

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    if-nez v0, :cond_f

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultInfluence;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    .line 112
    :cond_f
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->influenceType:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(Linfo/flowersoft/theotown/city/objects/Building;I)F

    move-result v0

    .line 115
    iget-object v1, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->influenceType:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/InfluenceType;->getBase()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_3a

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v3

    if-gez v4, :cond_3a

    .line 117
    iget-object v4, p0, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->influenceType:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/components/InfluenceType;->getBase()F

    move-result v4

    sub-float/2addr v0, v4

    sub-float v1, v3, v1

    div-float/2addr v0, v1

    .line 118
    invoke-static {v0, v2, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    .line 121
    :cond_3a
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;->neededAmount(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public setNeighborTrading(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;J)V
    .registers 4

    .line 0
    return-void
.end method
