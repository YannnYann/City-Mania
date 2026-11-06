###### Class info.flowersoft.theotown.city.miniatureview.MiniatureView (info.flowersoft.theotown.city.miniatureview.MiniatureView)
.class public Linfo/flowersoft/theotown/city/miniatureview/MiniatureView;
.super Ljava/lang/Object;
.source "MiniatureView.java"


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public final color:Lio/blueflower/stapel2d/drawing/Color;

.field public coloring:Linfo/flowersoft/theotown/city/miniatureview/MiniatureViewColoring;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/miniatureview/MiniatureViewColoring;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0}, Lio/blueflower/stapel2d/drawing/Color;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/miniatureview/MiniatureView;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 18
    iput-object p1, p0, Linfo/flowersoft/theotown/city/miniatureview/MiniatureView;->city:Linfo/flowersoft/theotown/city/City;

    .line 19
    iput-object p2, p0, Linfo/flowersoft/theotown/city/miniatureview/MiniatureView;->coloring:Linfo/flowersoft/theotown/city/miniatureview/MiniatureViewColoring;

    return-void
.end method


# virtual methods
.method public getCity()Linfo/flowersoft/theotown/city/City;
    .registers 2

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/city/miniatureview/MiniatureView;->city:Linfo/flowersoft/theotown/city/City;

    return-object v0
.end method

.method public getColor(IIZ)Lio/blueflower/stapel2d/drawing/Color;
    .registers 11

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/city/miniatureview/MiniatureView;->coloring:Linfo/flowersoft/theotown/city/miniatureview/MiniatureViewColoring;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/miniatureview/MiniatureView;->color:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/miniatureview/MiniatureView;->city:Linfo/flowersoft/theotown/city/City;

    .line 41
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/city/miniatureview/MiniatureView;->city:Linfo/flowersoft/theotown/city/City;

    .line 43
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v5

    move v3, p1

    move v4, p2

    move v6, p3

    .line 39
    invoke-interface/range {v0 .. v6}, Linfo/flowersoft/theotown/city/miniatureview/MiniatureViewColoring;->getMiniatureColor(Lio/blueflower/stapel2d/drawing/Color;Linfo/flowersoft/theotown/city/Tiles;IIIZ)V

    .line 44
    iget-object p1, p0, Linfo/flowersoft/theotown/city/miniatureview/MiniatureView;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getHeight()I
    .registers 2

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/city/miniatureview/MiniatureView;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 27
    iget-object v0, p0, Linfo/flowersoft/theotown/city/miniatureview/MiniatureView;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    return v0
.end method

.method public setColoring(Linfo/flowersoft/theotown/city/miniatureview/MiniatureViewColoring;)V
    .registers 2

    .line 23
    iput-object p1, p0, Linfo/flowersoft/theotown/city/miniatureview/MiniatureView;->coloring:Linfo/flowersoft/theotown/city/miniatureview/MiniatureViewColoring;

    return-void
.end method
