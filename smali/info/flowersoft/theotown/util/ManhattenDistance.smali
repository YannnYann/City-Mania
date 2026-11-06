###### Class info.flowersoft.theotown.util.ManhattenDistance (info.flowersoft.theotown.util.ManhattenDistance)
.class public Linfo/flowersoft/theotown/util/ManhattenDistance;
.super Linfo/flowersoft/theotown/util/Distance;
.source "ManhattenDistance.java"


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

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method
