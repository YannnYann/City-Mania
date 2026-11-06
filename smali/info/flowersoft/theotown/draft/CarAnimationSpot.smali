###### Class info.flowersoft.theotown.draft.CarAnimationSpot (info.flowersoft.theotown.draft.CarAnimationSpot)
.class public Linfo/flowersoft/theotown/draft/CarAnimationSpot;
.super Ljava/lang/Object;
.source "CarAnimationSpot.java"


# instance fields
.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public frames:[I

.field public important:Z

.field public pos:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/AnimationDraft;Lio/blueflower/stapel2d/util/IntList;Z[ILio/blueflower/stapel2d/drawing/Color;)V
    .registers 6

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Linfo/flowersoft/theotown/draft/CarAnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 41
    iput-object p2, p0, Linfo/flowersoft/theotown/draft/CarAnimationSpot;->pos:Lio/blueflower/stapel2d/util/IntList;

    .line 42
    iput-boolean p3, p0, Linfo/flowersoft/theotown/draft/CarAnimationSpot;->important:Z

    .line 43
    iput-object p4, p0, Linfo/flowersoft/theotown/draft/CarAnimationSpot;->frames:[I

    .line 44
    iput-object p5, p0, Linfo/flowersoft/theotown/draft/CarAnimationSpot;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method


# virtual methods
.method public targetsFrame(I)Z
    .registers 7

    .line 48
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/CarAnimationSpot;->frames:[I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    move v2, v0

    .line 49
    :goto_8
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/CarAnimationSpot;->frames:[I

    array-length v4, v3

    if-ge v2, v4, :cond_15

    .line 50
    aget v3, v3, v2

    if-ne v3, p1, :cond_12

    return v1

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    return v0
.end method
