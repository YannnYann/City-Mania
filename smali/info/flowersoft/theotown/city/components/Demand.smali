###### Class info.flowersoft.theotown.city.components.Demand (info.flowersoft.theotown.city.components.Demand)
.class public abstract Linfo/flowersoft/theotown/city/components/Demand;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "Demand.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBuildingDemand(II)F
.end method

.method public getCommercial()F
    .registers 3

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/components/Demand;->getCommercial(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/city/components/Demand;->getCommercial(I)F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/city/components/Demand;->getCommercial(I)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public abstract getCommercial(I)F
.end method

.method public getIndustrial()F
    .registers 3

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/components/Demand;->getIndustrial(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/city/components/Demand;->getIndustrial(I)F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/city/components/Demand;->getIndustrial(I)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public abstract getIndustrial(I)F
.end method

.method public getResidential()F
    .registers 3

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/components/Demand;->getResidential(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/city/components/Demand;->getResidential(I)F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/city/components/Demand;->getResidential(I)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public abstract getResidential(I)F
.end method

.method public getType()I
    .registers 2

    .line 0
    const/16 v0, 0xa

    return v0
.end method
