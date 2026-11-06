###### Class info.flowersoft.theotown.resources.ResolutionManager (info.flowersoft.theotown.resources.ResolutionManager)
.class public Linfo/flowersoft/theotown/resources/ResolutionManager;
.super Ljava/lang/Object;
.source "ResolutionManager.java"


# instance fields
.field public final factors:Lio/blueflower/stapel2d/util/IntList;

.field public final height:I

.field public perfect:I

.field public final width:I

.field public xdpi:F


# direct methods
.method public constructor <init>(II)V
    .registers 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->factors:Lio/blueflower/stapel2d/util/IntList;

    .line 27
    iput p1, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->width:I

    .line 28
    iput p2, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->height:I

    .line 29
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getPpiX()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    .line 32
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    .line 33
    invoke-interface {v2}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->getLogicalWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    .line 37
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_4e

    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    .line 38
    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->supportsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 39
    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isMac:Z

    if-eqz v0, :cond_46

    .line 41
    iget v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    goto :goto_4e

    .line 44
    :cond_46
    iget v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    const v1, 0x3fe66666    # 1.8f

    mul-float/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    .line 50
    :cond_4e
    :goto_4e
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_5f

    iget v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    mul-float/2addr v0, v2

    iput v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    .line 53
    :cond_5f
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_71

    iget v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    .line 55
    :cond_71
    iget v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8e

    iget v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_8e

    iget v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    cmpg-float v1, v0, v2

    if-lez v1, :cond_8e

    const v1, 0x461c4000    # 10000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_92

    :cond_8e
    const/high16 v0, 0x43200000    # 160.0f

    iput v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    .line 60
    :cond_92
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    div-float/2addr p1, p2

    const/high16 v0, 0x40800000    # 4.0f

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x41800000    # 16.0f

    .line 61
    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v0

    add-float/2addr p1, v2

    mul-float/2addr p2, p1

    iput p2, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    .line 63
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/ResolutionManager;->evaluateResolutions()V

    return-void
.end method


# virtual methods
.method public countResolutions()I
    .registers 2

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->factors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    return v0
.end method

.method public final evaluateResolutions()V
    .registers 8

    .line 67
    iget v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget v1, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 70
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResolutionMgr perfect width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for res "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with xdpi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " derived from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getPpiX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    const/4 v1, 0x1

    move v2, v1

    .line 72
    :goto_4e
    iget v3, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->width:I

    if-ge v2, v3, :cond_74

    .line 73
    div-int/2addr v3, v2

    .line 74
    iget v4, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->height:I

    div-int/2addr v4, v2

    const/16 v5, 0xf0

    if-lt v3, v5, :cond_74

    const/16 v3, 0xa0

    if-ge v4, v3, :cond_5f

    goto :goto_74

    :cond_5f
    mul-int/lit8 v3, v2, 0x64

    int-to-float v3, v3

    .line 80
    iget v4, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->xdpi:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_71

    .line 81
    iget-object v3, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->factors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 84
    :cond_74
    :goto_74
    iget-object v2, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->factors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_81

    iget-object v2, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->factors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 86
    :cond_81
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->factors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->reverse()V

    const/4 v1, 0x0

    .line 88
    :goto_87
    iget-object v2, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->factors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a7

    .line 89
    iget v2, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->width:I

    int-to-float v2, v2

    iget-object v3, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->factors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_a4

    .line 91
    iput v1, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->perfect:I

    :cond_a4
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    .line 95
    :cond_a7
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResolutionMgr perfect index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->perfect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->factors:Lio/blueflower/stapel2d/util/IntList;

    iget v3, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->perfect:I

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->factors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " factors available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    return-void
.end method

.method public getFactor(I)I
    .registers 3

    .line 107
    iget v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->perfect:I

    add-int/2addr p1, v0

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->factors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->factors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getHeight(I)I
    .registers 3

    .line 119
    iget v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->height:I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/ResolutionManager;->getFactor(I)I

    move-result p1

    div-int/2addr v0, p1

    return v0
.end method

.method public getPerfectResolution()I
    .registers 2

    .line 99
    iget v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->perfect:I

    return v0
.end method

.method public getWidth(I)I
    .registers 3

    .line 115
    iget v0, p0, Linfo/flowersoft/theotown/resources/ResolutionManager;->width:I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/ResolutionManager;->getFactor(I)I

    move-result p1

    div-int/2addr v0, p1

    return v0
.end method
