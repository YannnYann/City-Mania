###### Class info.flowersoft.theotown.ui.listitem.SmoothHeightListItem (info.flowersoft.theotown.ui.listitem.SmoothHeightListItem)
.class public abstract Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "SmoothHeightListItem.java"


# instance fields
.field public lastChange:J

.field public lastHeight:I

.field public targetHeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;->lastHeight:I

    .line 25
    iput p1, p0, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;->targetHeight:I

    return-void
.end method


# virtual methods
.method public getHeight(Z)I
    .registers 7

    .line 30
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;->getTargetHeight(Z)I

    move-result p1

    .line 31
    iget v0, p0, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;->lastHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 32
    iput p1, p0, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;->lastHeight:I

    .line 33
    iput p1, p0, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;->targetHeight:I

    .line 37
    :cond_d
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 38
    iget-wide v2, p0, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;->lastChange:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1d

    .line 40
    iget v2, p0, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;->targetHeight:I

    goto :goto_33

    :cond_1d
    int-to-float v2, v2

    const/high16 v3, 0x43960000    # 300.0f

    div-float/2addr v2, v3

    .line 43
    sget-object v3, Lcom/badlogic/gdx/math/Interpolation;->smooth:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v2

    .line 44
    iget v3, p0, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;->lastHeight:I

    iget v4, p0, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;->targetHeight:I

    sub-int/2addr v4, v3

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v3

    .line 47
    :goto_33
    iget v3, p0, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;->targetHeight:I

    if-eq p1, v3, :cond_3d

    .line 48
    iput v2, p0, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;->lastHeight:I

    .line 49
    iput p1, p0, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;->targetHeight:I

    .line 50
    iput-wide v0, p0, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;->lastChange:J

    :cond_3d
    return v2
.end method

.method public abstract getTargetHeight(Z)I
.end method
