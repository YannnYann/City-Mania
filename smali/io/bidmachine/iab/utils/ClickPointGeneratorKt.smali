###### Class io.bidmachine.iab.utils.ClickPointGeneratorKt (io.bidmachine.iab.utils.ClickPointGeneratorKt)
.class public final Lio/bidmachine/iab/utils/ClickPointGeneratorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final relativeToView(Landroid/graphics/PointF;II)Landroid/graphics/Point;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/graphics/Point;

    int-to-float p1, p1

    iget v1, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr p1, v1

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    int-to-float p2, p2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, p0

    invoke-static {p2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    invoke-direct {v0, p1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method
