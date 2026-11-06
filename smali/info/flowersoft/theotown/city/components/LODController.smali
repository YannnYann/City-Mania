###### Class info.flowersoft.theotown.city.components.LODController (info.flowersoft.theotown.city.components.LODController)
.class public final Linfo/flowersoft/theotown/city/components/LODController;
.super Ljava/lang/Object;
.source "LODController.java"


# instance fields
.field public duringScreenshot:Z

.field public noBackground:Z

.field public noBuffering:Z

.field public scale:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCars()Z
    .registers 3

    .line 23
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->duringScreenshot:Z

    if-nez v0, :cond_d

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->lod:Z

    if-eqz v0, :cond_d

    iget v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->scale:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_13

    :cond_d
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->noBackground:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public drawEdges()Z
    .registers 3

    .line 47
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->drawMapEdges:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->duringScreenshot:Z

    if-nez v0, :cond_11

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->lod:Z

    if-eqz v0, :cond_11

    iget v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->scale:I

    const/4 v1, -0x4

    if-lt v0, v1, :cond_13

    :cond_11
    const/4 v0, 0x1

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public drawFancyWater()Z
    .registers 3

    .line 62
    iget v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->scale:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public drawGrid()Z
    .registers 2

    .line 51
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->gridInBuildMode:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->duringScreenshot:Z

    if-nez v0, :cond_10

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->lod:Z

    if-eqz v0, :cond_10

    iget v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->scale:I

    if-ltz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public drawNeighboringCities()Z
    .registers 2

    .line 19
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->duringScreenshot:Z

    if-nez v0, :cond_a

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->drawNeighbors:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public drawOverlay()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->duringScreenshot:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->noBackground:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public drawRoadLength()Z
    .registers 3

    .line 94
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->showRoadLength:Z

    if-eqz v0, :cond_b

    iget v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->scale:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public drawSigns()Z
    .registers 2

    .line 55
    iget v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->scale:I

    if-gtz v0, :cond_a

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->noBackground:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public drawSmoke()Z
    .registers 3

    .line 35
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->drawSmoke:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->duringScreenshot:Z

    if-nez v0, :cond_11

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->lod:Z

    if-eqz v0, :cond_11

    iget v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->scale:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_17

    :cond_11
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->noBackground:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public drawTransparentBuildMode()Z
    .registers 2

    .line 43
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->transparencyInBuildMode:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->duringScreenshot:Z

    if-nez v0, :cond_10

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->lod:Z

    if-eqz v0, :cond_10

    iget v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->scale:I

    if-ltz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public drawWaterBackground()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->noBackground:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public drawWeather()Z
    .registers 3

    .line 27
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->weather:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->duringScreenshot:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->noBackground:Z

    if-nez v0, :cond_13

    iget v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->scale:I

    const/4 v1, -0x4

    if-lt v0, v1, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public getScale()I
    .registers 2

    .line 82
    iget v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->scale:I

    return v0
.end method

.method public isNoBackground()Z
    .registers 2

    .line 66
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->noBackground:Z

    return v0
.end method

.method public isNoBuffering()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/LODController;->noBuffering:Z

    return v0
.end method

.method public setCityScale(I)V
    .registers 2

    .line 78
    iput p1, p0, Linfo/flowersoft/theotown/city/components/LODController;->scale:I

    return-void
.end method

.method public setDuringScreenshot(Z)V
    .registers 2

    .line 86
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/components/LODController;->duringScreenshot:Z

    return-void
.end method

.method public setNoBackground(Z)V
    .registers 2

    .line 90
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/components/LODController;->noBackground:Z

    return-void
.end method

.method public setNoBuffering(Z)V
    .registers 2

    .line 74
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/components/LODController;->noBuffering:Z

    return-void
.end method
