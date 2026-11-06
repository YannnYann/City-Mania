###### Class info.flowersoft.theotown.components.transportationsystem.TSSystemConfig (info.flowersoft.theotown.components.transportationsystem.TSSystemConfig)
.class public Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;
.super Ljava/lang/Object;
.source "TSSystemConfig.java"


# instance fields
.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public freightFactor:F

.field public passengerFactor:F

.field public reacherDecay:F

.field public stationMaxTiles:I

.field public stationRadius:I

.field public stationSearchRadius:I

.field public supportNeighborConnections:Z

.field public waiterDecay:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f4ccccd    # 0.8f

    .line 13
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->waiterDecay:F

    .line 18
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->reacherDecay:F

    const/4 v0, 0x2

    .line 23
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->stationSearchRadius:I

    const/16 v0, 0xa

    .line 28
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->stationRadius:I

    const/16 v0, 0x40

    .line 33
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->stationMaxTiles:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->passengerFactor:F

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->freightFactor:F

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->supportNeighborConnections:Z

    return-void
.end method
