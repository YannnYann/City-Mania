###### Class info.flowersoft.theotown.city.objects.Pedestrian (info.flowersoft.theotown.city.objects.Pedestrian)
.class public final Linfo/flowersoft/theotown/city/objects/Pedestrian;
.super Ljava/lang/Object;
.source "Pedestrian.java"


# instance fields
.field public age:F

.field public distance:S

.field public draft:Linfo/flowersoft/theotown/draft/PedestrianDraft;

.field public frame:I

.field public innerCoordsSXSYEXEY:I

.field public innerXY:S

.field public parcelDXDYXY:I

.field public progress:F

.field public seed:S


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()F
    .registers 2

    .line 111
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->age:F

    return v0
.end method

.method public getDistance()F
    .registers 3

    .line 247
    iget-short v0, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->distance:S

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/PedestrianDraft;
    .registers 2

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->draft:Linfo/flowersoft/theotown/draft/PedestrianDraft;

    return-object v0
.end method

.method public getEndInnerX()F
    .registers 3

    .line 214
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->innerCoordsSXSYEXEY:I

    shl-int/lit8 v0, v0, 0x10

    shr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    const/high16 v1, 0x42000000    # 32.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getEndInnerY()F
    .registers 3

    .line 223
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->innerCoordsSXSYEXEY:I

    shl-int/lit8 v0, v0, 0x18

    shr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    const/high16 v1, 0x42000000    # 32.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getFrame()I
    .registers 2

    .line 87
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->frame:I

    return v0
.end method

.method public getInnerX()F
    .registers 3

    .line 168
    iget-short v0, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->innerXY:S

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getInnerY()F
    .registers 3

    .line 177
    iget-short v0, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->innerXY:S

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getNextParcelX()I
    .registers 3

    .line 143
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getParcelX()I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->parcelDXDYXY:I

    shr-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    return v0
.end method

.method public getNextParcelY()I
    .registers 3

    .line 151
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getParcelY()I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->parcelDXDYXY:I

    shl-int/lit8 v1, v1, 0x3

    shr-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    return v0
.end method

.method public getParcelX()I
    .registers 2

    .line 127
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->parcelDXDYXY:I

    ushr-int/lit8 v0, v0, 0xd

    and-int/lit16 v0, v0, 0x1fff

    return v0
.end method

.method public getParcelY()I
    .registers 2

    .line 135
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->parcelDXDYXY:I

    and-int/lit16 v0, v0, 0x1fff

    return v0
.end method

.method public getProgress()F
    .registers 2

    .line 95
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->progress:F

    return v0
.end method

.method public getSeed()I
    .registers 2

    .line 159
    iget-short v0, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->seed:S

    return v0
.end method

.method public getStartInnerX()F
    .registers 3

    .line 196
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->innerCoordsSXSYEXEY:I

    shr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    const/high16 v1, 0x42000000    # 32.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getStartInnerY()F
    .registers 3

    .line 205
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->innerCoordsSXSYEXEY:I

    shl-int/lit8 v0, v0, 0x8

    shr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    const/high16 v1, 0x42000000    # 32.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public setAge(F)V
    .registers 2

    .line 119
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->age:F

    return-void
.end method

.method public setDistance(F)V
    .registers 3

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    .line 256
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-short p1, p1

    iput-short p1, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->distance:S

    return-void
.end method

.method public setInner(FF)V
    .registers 4

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    .line 187
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    int-to-short p1, p1

    iput-short p1, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->innerXY:S

    return-void
.end method

.method public setInnerCoords(FFFF)V
    .registers 6

    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr p1, v0

    .line 235
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    mul-float/2addr p2, v0

    .line 236
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    mul-float/2addr p3, v0

    .line 237
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    mul-float/2addr p4, v0

    .line 238
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->innerCoordsSXSYEXEY:I

    return-void
.end method

.method public final setParcel(IIII)V
    .registers 5

    shl-int/lit8 p3, p3, 0x1d

    and-int/lit8 p4, p4, 0x7

    shl-int/lit8 p4, p4, 0x1a

    or-int/2addr p3, p4

    shl-int/lit8 p1, p1, 0xd

    or-int/2addr p1, p3

    or-int/2addr p1, p2

    .line 282
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->parcelDXDYXY:I

    return-void
.end method

.method public setProgress(F)V
    .registers 2

    .line 103
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->progress:F

    return-void
.end method

.method public setup(Linfo/flowersoft/theotown/draft/PedestrianDraft;IIIF)V
    .registers 6

    .line 66
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->draft:Linfo/flowersoft/theotown/draft/PedestrianDraft;

    and-int/lit16 p2, p2, 0x7fff

    int-to-short p2, p2

    .line 67
    iput-short p2, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->seed:S

    const/4 p2, 0x0

    .line 68
    invoke-virtual {p0, p3, p4, p2, p2}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->setParcel(IIII)V

    .line 69
    iput p5, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->age:F

    .line 70
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget-short p2, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->seed:S

    array-length p3, p1

    rem-int/2addr p2, p3

    aget p1, p1, p2

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->frame:I

    return-void
.end method

.method public walkTo(II)V
    .registers 5

    .line 266
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getNextParcelX()I

    move-result v0

    .line 267
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getNextParcelY()I

    move-result v1

    sub-int/2addr p1, v0

    sub-int/2addr p2, v1

    .line 270
    invoke-virtual {p0, v0, v1, p1, p2}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->setParcel(IIII)V

    const/4 p1, 0x0

    .line 271
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Pedestrian;->progress:F

    return-void
.end method
