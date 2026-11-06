###### Class info.flowersoft.theotown.util.Functions (info.flowersoft.theotown.util.Functions)
.class public Linfo/flowersoft/theotown/util/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static castToIntClamped(J)I
    .registers 4

    const-wide/32 v0, -0x80000000

    .line 17
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static interpolate(F)F
    .registers 4

    .line 0
    mul-float v0, p0, p0

    mul-float v1, v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p0

    const/high16 p0, 0x40800000    # 4.0f

    mul-float/2addr v2, p0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method
