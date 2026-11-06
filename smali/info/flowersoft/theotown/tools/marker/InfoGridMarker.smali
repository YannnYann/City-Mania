###### Class info.flowersoft.theotown.tools.marker.InfoGridMarker (info.flowersoft.theotown.tools.marker.InfoGridMarker)
.class public Linfo/flowersoft/theotown/tools/marker/InfoGridMarker;
.super Ljava/lang/Object;
.source "InfoGridMarker.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;


# instance fields
.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public infoGrid:Linfo/flowersoft/theotown/util/InfoGrid;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/drawing/Color;Linfo/flowersoft/theotown/util/InfoGrid;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/marker/InfoGridMarker;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 15
    iput-object p2, p0, Linfo/flowersoft/theotown/tools/marker/InfoGridMarker;->infoGrid:Linfo/flowersoft/theotown/util/InfoGrid;

    return-void
.end method


# virtual methods
.method public countVariants()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public getBuildingIntensity(II)F
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getColor(IILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4

    .line 20
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/marker/InfoGridMarker;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getIntensity(II)F
    .registers 4

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfoGridMarker;->infoGrid:Linfo/flowersoft/theotown/util/InfoGrid;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/InfoGrid;->get(II)F

    move-result p1

    const p2, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    div-float p1, p2, p1

    sub-float/2addr p2, p1

    return p2
.end method

.method public getLegend()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/marker/LegendEntry;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 70
    const-string v0, "InfoGridMarker"

    return-object v0
.end method

.method public getTempIntensity(II)F
    .registers 3

    .line 45
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/InfoGridMarker;->getIntensity(II)F

    move-result p1

    return p1
.end method

.method public ignoreBuilding(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public markBuilding(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public markTree(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public overlayAlpha(II)F
    .registers 3

    .line 0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public overlayTempAlpha(II)F
    .registers 3

    .line 35
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/InfoGridMarker;->overlayAlpha(II)F

    move-result p1

    return p1
.end method

.method public setVariant(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public useOverlay(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x1

    return p1
.end method
