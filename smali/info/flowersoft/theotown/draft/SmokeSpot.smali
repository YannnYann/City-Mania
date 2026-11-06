###### Class info.flowersoft.theotown.draft.SmokeSpot (info.flowersoft.theotown.draft.SmokeSpot)
.class public Linfo/flowersoft/theotown/draft/SmokeSpot;
.super Ljava/lang/Object;
.source "SmokeSpot.java"


# instance fields
.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public draft:Linfo/flowersoft/theotown/draft/SmokeDraft;

.field public targetFrames:[I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/SmokeDraft;IILio/blueflower/stapel2d/drawing/Color;[I)V
    .registers 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Linfo/flowersoft/theotown/draft/SmokeSpot;->draft:Linfo/flowersoft/theotown/draft/SmokeDraft;

    .line 44
    iput p2, p0, Linfo/flowersoft/theotown/draft/SmokeSpot;->x:I

    .line 45
    iput p3, p0, Linfo/flowersoft/theotown/draft/SmokeSpot;->y:I

    .line 46
    iput-object p4, p0, Linfo/flowersoft/theotown/draft/SmokeSpot;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 47
    iput-object p5, p0, Linfo/flowersoft/theotown/draft/SmokeSpot;->targetFrames:[I

    return-void
.end method


# virtual methods
.method public isTargeted(I)Z
    .registers 7

    const/4 v0, 0x1

    if-gez p1, :cond_4

    return v0

    .line 57
    :cond_4
    iget-object v1, p0, Linfo/flowersoft/theotown/draft/SmokeSpot;->targetFrames:[I

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    move v2, v1

    .line 58
    :goto_a
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/SmokeSpot;->targetFrames:[I

    array-length v4, v3

    if-ge v2, v4, :cond_17

    .line 59
    aget v3, v3, v2

    if-ne v3, p1, :cond_14

    return v0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_17
    return v1

    :cond_18
    return v0
.end method
