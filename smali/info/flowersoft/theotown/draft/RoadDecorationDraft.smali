###### Class info.flowersoft.theotown.draft.RoadDecorationDraft (info.flowersoft.theotown.draft.RoadDecorationDraft)
.class public Linfo/flowersoft/theotown/draft/RoadDecorationDraft;
.super Linfo/flowersoft/theotown/draft/Draft;
.source "RoadDecorationDraft.java"


# instance fields
.field public allowRoadCrossing:Z

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

.field public dirs:[I

.field public enterSpeed:F

.field public exclusive:Z

.field public exitSpeed:F

.field public flags:J

.field public lineStepping:I

.field public lineTool:Z

.field public maxDirs:I

.field public maxLevel:I

.field public minDirs:I

.field public minLevel:I

.field public occupationGroup:Ljava/lang/String;

.field public onBuiltTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public onClickTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public onEventTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public parcelSpeeds:[F

.field public previewRoad:Linfo/flowersoft/theotown/draft/RoadDraft;

.field public price:I

.field public randomTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public removeFlags:J

.field public removeXFlags:J

.field public requiredFlags:J

.field public sidewalkOffset:F

.field public sidewalkSize:F

.field public speed:F

.field public symmetricDirs:Z

.field public transitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public xFlags:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/Draft;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->speed:F

    .line 27
    iput v0, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->enterSpeed:F

    .line 28
    iput v0, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->exitSpeed:F

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->minDirs:I

    const/4 v1, 0x4

    .line 37
    iput v1, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->maxDirs:I

    .line 38
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->symmetricDirs:Z

    const/4 v1, -0x2

    .line 40
    iput v1, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->minLevel:I

    const/16 v1, 0x10

    .line 41
    iput v1, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->maxLevel:I

    .line 44
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->lineTool:Z

    .line 48
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->exclusive:Z

    .line 50
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->allowRoadCrossing:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 51
    iput v0, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->sidewalkOffset:F

    .line 52
    iput v0, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->sidewalkSize:F

    return-void
.end method


# virtual methods
.method public fitsRoad(JI)Z
    .registers 8

    .line 60
    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result v0

    .line 61
    iget v1, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->minDirs:I

    if-lt v0, v1, :cond_25

    iget v1, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->maxDirs:I

    if-gt v0, v1, :cond_25

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_19

    iget-wide v2, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->requiredFlags:J

    and-long/2addr p1, v2

    cmp-long p1, p1, v0

    if-eqz p1, :cond_25

    :cond_19
    iget-boolean p1, p0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->symmetricDirs:Z

    if-eqz p1, :cond_23

    .line 63
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
