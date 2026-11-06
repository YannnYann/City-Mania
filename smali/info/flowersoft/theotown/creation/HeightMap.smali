###### Class info.flowersoft.theotown.creation.HeightMap (info.flowersoft.theotown.creation.HeightMap)
.class public Linfo/flowersoft/theotown/creation/HeightMap;
.super Ljava/lang/Object;
.source "HeightMap.java"


# instance fields
.field public final data:[F

.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II[F)V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Linfo/flowersoft/theotown/creation/HeightMap;->width:I

    .line 11
    iput p2, p0, Linfo/flowersoft/theotown/creation/HeightMap;->height:I

    .line 12
    iput-object p3, p0, Linfo/flowersoft/theotown/creation/HeightMap;->data:[F

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 20
    iget v0, p0, Linfo/flowersoft/theotown/creation/HeightMap;->height:I

    return v0
.end method

.method public getValue(II)F
    .registers 5

    .line 24
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/HeightMap;->data:[F

    iget v1, p0, Linfo/flowersoft/theotown/creation/HeightMap;->width:I

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1
.end method

.method public getWidth()I
    .registers 2

    .line 16
    iget v0, p0, Linfo/flowersoft/theotown/creation/HeightMap;->width:I

    return v0
.end method
