###### Class info.flowersoft.theotown.ui.CursorManagerKt (info.flowersoft.theotown.ui.CursorManagerKt)
.class public final Linfo/flowersoft/theotown/ui/CursorManagerKt;
.super Ljava/lang/Object;
.source "CursorManager.kt"


# direct methods
.method public static final times(FLinfo/flowersoft/theotown/ui/CursorPalette;)Linfo/flowersoft/theotown/ui/CursorPalette;
    .registers 6

    const-string v0, "palette"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorPalette;

    .line 46
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/CursorPalette;->getOutline()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-static {p0, v1}, Linfo/flowersoft/theotown/ui/CursorManagerKt;->times(FLio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/CursorPalette;->getArea()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-static {p0, v2}, Linfo/flowersoft/theotown/ui/CursorManagerKt;->times(FLio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    .line 48
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/CursorPalette;->getHighlight()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    invoke-static {p0, v3}, Linfo/flowersoft/theotown/ui/CursorManagerKt;->times(FLio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    .line 49
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/CursorPalette;->getShadow()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    invoke-static {p0, p1}, Linfo/flowersoft/theotown/ui/CursorManagerKt;->times(FLio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p0

    .line 45
    invoke-direct {v0, v1, v2, v3, p0}, Linfo/flowersoft/theotown/ui/CursorPalette;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    return-object v0
.end method

.method public static final times(FLio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 6

    .line 56
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    .line 57
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getNormalizedR()F

    move-result v1

    mul-float/2addr v1, p0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getNormalizedG()F

    move-result v2

    mul-float/2addr v2, p0

    .line 58
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getNormalizedB()F

    move-result v3

    mul-float/2addr p0, v3

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getNormalizedA()F

    move-result p1

    .line 56
    invoke-direct {v0, v1, v2, p0, p1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(FFFF)V

    return-object v0
.end method
