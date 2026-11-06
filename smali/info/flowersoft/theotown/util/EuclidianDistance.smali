###### Class info.flowersoft.theotown.util.EuclidianDistance (info.flowersoft.theotown.util.EuclidianDistance)
.class public Linfo/flowersoft/theotown/util/EuclidianDistance;
.super Linfo/flowersoft/theotown/util/Distance;
.source "EuclidianDistance.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Linfo/flowersoft/theotown/util/Distance;-><init>()V

    return-void
.end method


# virtual methods
.method public get(II)I
    .registers 3

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method
