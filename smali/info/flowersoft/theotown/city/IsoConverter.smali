###### Class info.flowersoft.theotown.city.IsoConverter (info.flowersoft.theotown.city.IsoConverter)
.class public Linfo/flowersoft/theotown/city/IsoConverter;
.super Ljava/lang/Object;
.source "IsoConverter.java"


# instance fields
.field public absScaleX:F

.field public absScaleY:F

.field public absShiftX:F

.field public absShiftY:F

.field public view:Lio/blueflower/stapel2d/util/ScreenRect;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftX:F

    .line 13
    iput v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    iput v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleX:F

    .line 17
    iput v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleY:F

    return-void
.end method


# virtual methods
.method public absToIsoX(FF)F
    .registers 4

    .line 54
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result v0

    sub-float/2addr p1, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleX:F

    div-float/2addr p1, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftX:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result v0

    sub-float/2addr p2, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleY:F

    div-float/2addr p2, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftY:F

    sub-float/2addr p2, v0

    const/high16 v0, 0x41800000    # 16.0f

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    return p1
.end method

.method public absToIsoX(II)I
    .registers 4

    int-to-float p1, p1

    .line 38
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result v0

    sub-float/2addr p1, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleX:F

    div-float/2addr p1, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftX:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result v0

    sub-float/2addr p2, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleY:F

    div-float/2addr p2, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftY:F

    sub-float/2addr p2, v0

    const/high16 v0, 0x41800000    # 16.0f

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method public absToIsoY(FF)F
    .registers 4

    .line 58
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result v0

    sub-float/2addr p1, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleX:F

    div-float/2addr p1, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftX:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result v0

    sub-float/2addr p2, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleY:F

    div-float/2addr p2, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftY:F

    sub-float/2addr p2, v0

    const/high16 v0, 0x41800000    # 16.0f

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    return p1
.end method

.method public absToIsoY(II)I
    .registers 4

    int-to-float p1, p1

    .line 42
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result v0

    sub-float/2addr p1, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleX:F

    div-float/2addr p1, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftX:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result v0

    sub-float/2addr p2, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleY:F

    div-float/2addr p2, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftY:F

    sub-float/2addr p2, v0

    const/high16 v0, 0x41800000    # 16.0f

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method public getAbsScaleX()F
    .registers 2

    .line 83
    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleX:F

    return v0
.end method

.method public getAbsScaleY()F
    .registers 2

    .line 87
    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleY:F

    return v0
.end method

.method public getAbsShiftX()F
    .registers 2

    .line 70
    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftX:F

    return v0
.end method

.method public getAbsShiftY()F
    .registers 2

    .line 74
    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftY:F

    return v0
.end method

.method public getView()Lio/blueflower/stapel2d/util/ScreenRect;
    .registers 2

    .line 22
    iget-object v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    return-object v0
.end method

.method public halfHeight()F
    .registers 3

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public halfWidth()F
    .registers 3

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isoToAbsX(FF)F
    .registers 5

    .line 62
    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleX:F

    const/high16 v1, 0x42000000    # 32.0f

    add-float/2addr p1, p2

    mul-float/2addr p1, v1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget p2, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftX:F

    add-float/2addr p1, p2

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result p1

    add-float/2addr v0, p1

    return v0
.end method

.method public isoToAbsX(II)I
    .registers 5

    .line 46
    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleX:F

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x20

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    mul-float/2addr v0, p1

    float-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleX:F

    iget v1, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftX:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    add-double/2addr p1, v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result v0

    float-to-double v0, v0

    add-double/2addr p1, v0

    double-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public isoToAbsY(FF)F
    .registers 5

    .line 66
    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleY:F

    const/high16 v1, 0x41800000    # 16.0f

    sub-float/2addr p1, p2

    mul-float/2addr p1, v1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget p2, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftY:F

    add-float/2addr p1, p2

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result p1

    add-float/2addr v0, p1

    return v0
.end method

.method public isoToAbsY(II)I
    .registers 5

    .line 50
    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleY:F

    sub-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x10

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    mul-float/2addr v0, p1

    float-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    iget v0, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleX:F

    iget v1, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftY:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    add-double/2addr p1, v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result v0

    float-to-double v0, v0

    add-double/2addr p1, v0

    double-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public setAbsScale(FF)V
    .registers 3

    .line 91
    iput p1, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleX:F

    .line 92
    iput p2, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absScaleY:F

    return-void
.end method

.method public setAbsShift(FF)V
    .registers 3

    .line 78
    iput p1, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftX:F

    .line 79
    iput p2, p0, Linfo/flowersoft/theotown/city/IsoConverter;->absShiftY:F

    return-void
.end method

.method public setView(Lio/blueflower/stapel2d/util/ScreenRect;)V
    .registers 2

    .line 26
    iput-object p1, p0, Linfo/flowersoft/theotown/city/IsoConverter;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    return-void
.end method
