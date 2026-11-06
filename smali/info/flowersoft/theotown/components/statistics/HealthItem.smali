###### Class info.flowersoft.theotown.components.statistics.HealthItem (info.flowersoft.theotown.components.statistics.HealthItem)
.class public Linfo/flowersoft/theotown/components/statistics/HealthItem;
.super Linfo/flowersoft/theotown/components/statistics/AbstractPopulationItem;
.source "HealthItem.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/statistics/AbstractPopulationItem;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()I
    .registers 3

    .line 21
    iget-object v0, p0, Linfo/flowersoft/theotown/components/statistics/AbstractPopulationItem;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 22
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getCoverageCalculator()Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getCoverage(I)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 21
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 32
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/16 v0, 0xc2d

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 16
    const-string v0, "health"

    return-object v0
.end method
