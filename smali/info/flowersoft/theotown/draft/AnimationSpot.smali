###### Class info.flowersoft.theotown.draft.AnimationSpot (info.flowersoft.theotown.draft.AnimationSpot)
.class public Linfo/flowersoft/theotown/draft/AnimationSpot;
.super Ljava/lang/Object;
.source "AnimationSpot.java"


# instance fields
.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public days:I

.field public daysTotal:I

.field public draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public flags:I

.field public frameShift:I

.field public nightLightProbability:F

.field public rotationAware:Z

.field public seed:I

.field public shift:I

.field public startDay:I

.field public targetFrames:[I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/AnimationDraft;IIII[II)V
    .registers 8

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 129
    iput p2, p0, Linfo/flowersoft/theotown/draft/AnimationSpot;->x:I

    .line 130
    iput p3, p0, Linfo/flowersoft/theotown/draft/AnimationSpot;->y:I

    .line 131
    iput p4, p0, Linfo/flowersoft/theotown/draft/AnimationSpot;->shift:I

    .line 132
    iput p5, p0, Linfo/flowersoft/theotown/draft/AnimationSpot;->flags:I

    .line 133
    iput-object p6, p0, Linfo/flowersoft/theotown/draft/AnimationSpot;->targetFrames:[I

    .line 134
    iput p7, p0, Linfo/flowersoft/theotown/draft/AnimationSpot;->seed:I

    return-void
.end method


# virtual methods
.method public isTargeted(I)Z
    .registers 7

    .line 143
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/AnimationSpot;->targetFrames:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    move v2, v0

    .line 144
    :goto_7
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/AnimationSpot;->targetFrames:[I

    array-length v4, v3

    if-ge v2, v4, :cond_14

    .line 145
    aget v3, v3, v2

    if-ne v3, p1, :cond_11

    return v1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    return v0

    :cond_15
    return v1
.end method
