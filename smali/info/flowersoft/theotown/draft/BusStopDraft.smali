###### Class info.flowersoft.theotown.draft.BusStopDraft (info.flowersoft.theotown.draft.BusStopDraft)
.class public Linfo/flowersoft/theotown/draft/BusStopDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "BusStopDraft.java"


# instance fields
.field public addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

.field public animationFGSpotIndices:[[I

.field public animationFGSpots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;"
        }
    .end annotation
.end field

.field public animationSpotIndices:[[I

.field public animationSpots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;"
        }
    .end annotation
.end field

.field public capacity:I

.field public enterSpeed:F

.field public exitSpeed:F

.field public flags:J

.field public height:I

.field public influenceInduceVector:[I

.field public maxDirs:I

.field public maxLevel:I

.field public minDirs:I

.field public minLevel:I

.field public monthlyPrice:I

.field public parcelSpeeds:[F

.field public price:I

.field public requiredFlags:J

.field public speed:F

.field public symmetricDirs:Z

.field public width:I

.field public xFlags:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    iput v0, p0, Linfo/flowersoft/theotown/draft/BusStopDraft;->speed:F

    .line 36
    iput v0, p0, Linfo/flowersoft/theotown/draft/BusStopDraft;->enterSpeed:F

    .line 37
    iput v0, p0, Linfo/flowersoft/theotown/draft/BusStopDraft;->exitSpeed:F

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Linfo/flowersoft/theotown/draft/BusStopDraft;->minDirs:I

    const/4 v1, 0x3

    .line 44
    iput v1, p0, Linfo/flowersoft/theotown/draft/BusStopDraft;->maxDirs:I

    .line 45
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BusStopDraft;->symmetricDirs:Z

    const/4 v0, -0x2

    .line 47
    iput v0, p0, Linfo/flowersoft/theotown/draft/BusStopDraft;->minLevel:I

    const/16 v0, 0x10

    .line 48
    iput v0, p0, Linfo/flowersoft/theotown/draft/BusStopDraft;->maxLevel:I

    return-void
.end method


# virtual methods
.method public fitsRoad(JI)Z
    .registers 8

    .line 55
    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result v0

    .line 56
    iget v1, p0, Linfo/flowersoft/theotown/draft/BusStopDraft;->minDirs:I

    if-lt v0, v1, :cond_25

    iget v1, p0, Linfo/flowersoft/theotown/draft/BusStopDraft;->maxDirs:I

    if-gt v0, v1, :cond_25

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_19

    iget-wide v2, p0, Linfo/flowersoft/theotown/draft/BusStopDraft;->requiredFlags:J

    and-long/2addr p1, v2

    cmp-long p1, p1, v0

    if-eqz p1, :cond_25

    :cond_19
    iget-boolean p1, p0, Linfo/flowersoft/theotown/draft/BusStopDraft;->symmetricDirs:Z

    if-eqz p1, :cond_23

    .line 58
    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->isSymmetric(I)Z

    move-result p1

    if-eqz p1, :cond_25

    :cond_23
    const/4 p1, 0x1

    return p1

    :cond_25
    const/4 p1, 0x0

    return p1
.end method
