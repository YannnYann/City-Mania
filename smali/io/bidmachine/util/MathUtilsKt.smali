###### Class io.bidmachine.util.MathUtilsKt (io.bidmachine.util.MathUtilsKt)
.class public final Lio/bidmachine/util/MathUtilsKt;
.super Ljava/lang/Object;
.source "MathUtils.kt"


# direct methods
.method public static final nonNegative(I)I
    .registers 2

    const/4 v0, 0x0

    .line 102
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
