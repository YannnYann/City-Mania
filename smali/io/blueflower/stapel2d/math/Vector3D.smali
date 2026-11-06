###### Class io.blueflower.stapel2d.math.Vector3D (io.blueflower.stapel2d.math.Vector3D)
.class public Lio/blueflower/stapel2d/math/Vector3D;
.super Ljava/lang/Object;
.source "Vector3D.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final X_AXIS:Lio/blueflower/stapel2d/math/Vector3D;

.field public static final Y_AXIS:Lio/blueflower/stapel2d/math/Vector3D;

.field public static final ZERO:Lio/blueflower/stapel2d/math/Vector3D;

.field public static final Z_AXIS:Lio/blueflower/stapel2d/math/Vector3D;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 9
    new-instance v0, Lio/blueflower/stapel2d/math/Vector3D;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/blueflower/stapel2d/math/Vector3D;-><init>(FFF)V

    sput-object v0, Lio/blueflower/stapel2d/math/Vector3D;->X_AXIS:Lio/blueflower/stapel2d/math/Vector3D;

    .line 10
    new-instance v0, Lio/blueflower/stapel2d/math/Vector3D;

    invoke-direct {v0, v2, v1, v2}, Lio/blueflower/stapel2d/math/Vector3D;-><init>(FFF)V

    sput-object v0, Lio/blueflower/stapel2d/math/Vector3D;->Y_AXIS:Lio/blueflower/stapel2d/math/Vector3D;

    .line 11
    new-instance v0, Lio/blueflower/stapel2d/math/Vector3D;

    invoke-direct {v0, v2, v2, v1}, Lio/blueflower/stapel2d/math/Vector3D;-><init>(FFF)V

    sput-object v0, Lio/blueflower/stapel2d/math/Vector3D;->Z_AXIS:Lio/blueflower/stapel2d/math/Vector3D;

    .line 12
    new-instance v0, Lio/blueflower/stapel2d/math/Vector3D;

    invoke-direct {v0, v2, v2, v2}, Lio/blueflower/stapel2d/math/Vector3D;-><init>(FFF)V

    sput-object v0, Lio/blueflower/stapel2d/math/Vector3D;->ZERO:Lio/blueflower/stapel2d/math/Vector3D;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lio/blueflower/stapel2d/math/Vector3D;->x:F

    .line 23
    iput p2, p0, Lio/blueflower/stapel2d/math/Vector3D;->y:F

    .line 24
    iput p3, p0, Lio/blueflower/stapel2d/math/Vector3D;->z:F

    return-void
.end method


# virtual methods
.method public add(FFF)V
    .registers 5

    .line 48
    iget v0, p0, Lio/blueflower/stapel2d/math/Vector3D;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lio/blueflower/stapel2d/math/Vector3D;->x:F

    .line 49
    iget p1, p0, Lio/blueflower/stapel2d/math/Vector3D;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lio/blueflower/stapel2d/math/Vector3D;->y:F

    .line 50
    iget p1, p0, Lio/blueflower/stapel2d/math/Vector3D;->z:F

    add-float/2addr p1, p3

    iput p1, p0, Lio/blueflower/stapel2d/math/Vector3D;->z:F

    return-void
.end method

.method public add(FFFF)V
    .registers 5

    mul-float/2addr p2, p1

    mul-float/2addr p3, p1

    mul-float/2addr p1, p4

    .line 40
    invoke-virtual {p0, p2, p3, p1}, Lio/blueflower/stapel2d/math/Vector3D;->add(FFF)V

    return-void
.end method

.method public add(FLio/blueflower/stapel2d/math/Vector3D;)V
    .registers 5

    .line 36
    iget v0, p2, Lio/blueflower/stapel2d/math/Vector3D;->x:F

    iget v1, p2, Lio/blueflower/stapel2d/math/Vector3D;->y:F

    iget p2, p2, Lio/blueflower/stapel2d/math/Vector3D;->z:F

    invoke-virtual {p0, p1, v0, v1, p2}, Lio/blueflower/stapel2d/math/Vector3D;->add(FFFF)V

    return-void
.end method

.method public clone()Lio/blueflower/stapel2d/math/Vector3D;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 120
    new-instance v0, Lio/blueflower/stapel2d/math/Vector3D;

    iget v1, p0, Lio/blueflower/stapel2d/math/Vector3D;->x:F

    iget v2, p0, Lio/blueflower/stapel2d/math/Vector3D;->y:F

    iget v3, p0, Lio/blueflower/stapel2d/math/Vector3D;->z:F

    invoke-direct {v0, v1, v2, v3}, Lio/blueflower/stapel2d/math/Vector3D;-><init>(FFF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lio/blueflower/stapel2d/math/Vector3D;->clone()Lio/blueflower/stapel2d/math/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public crossProduct(FFF)Lio/blueflower/stapel2d/math/Vector3D;
    .registers 5

    .line 113
    new-instance v0, Lio/blueflower/stapel2d/math/Vector3D;

    invoke-direct {v0}, Lio/blueflower/stapel2d/math/Vector3D;-><init>()V

    .line 114
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/blueflower/stapel2d/math/Vector3D;->crossProduct(FFFLio/blueflower/stapel2d/math/Vector3D;)V

    return-object v0
.end method

.method public crossProduct(Lio/blueflower/stapel2d/math/Vector3D;)Lio/blueflower/stapel2d/math/Vector3D;
    .registers 4

    .line 109
    iget v0, p1, Lio/blueflower/stapel2d/math/Vector3D;->x:F

    iget v1, p1, Lio/blueflower/stapel2d/math/Vector3D;->y:F

    iget p1, p1, Lio/blueflower/stapel2d/math/Vector3D;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lio/blueflower/stapel2d/math/Vector3D;->crossProduct(FFF)Lio/blueflower/stapel2d/math/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public crossProduct(FFFLio/blueflower/stapel2d/math/Vector3D;)V
    .registers 8

    .line 103
    iget v0, p0, Lio/blueflower/stapel2d/math/Vector3D;->y:F

    mul-float/2addr v0, p3

    iget v1, p0, Lio/blueflower/stapel2d/math/Vector3D;->z:F

    mul-float v2, v1, p2

    sub-float/2addr v0, v2

    iput v0, p4, Lio/blueflower/stapel2d/math/Vector3D;->x:F

    mul-float/2addr v1, p1

    .line 104
    iget v0, p0, Lio/blueflower/stapel2d/math/Vector3D;->x:F

    mul-float/2addr p3, v0

    sub-float/2addr v1, p3

    iput v1, p4, Lio/blueflower/stapel2d/math/Vector3D;->y:F

    mul-float/2addr v0, p2

    .line 105
    iget p2, p0, Lio/blueflower/stapel2d/math/Vector3D;->y:F

    mul-float/2addr p2, p1

    sub-float/2addr v0, p2

    iput v0, p4, Lio/blueflower/stapel2d/math/Vector3D;->z:F

    return-void
.end method

.method public equals(Lio/blueflower/stapel2d/math/Vector3D;F)Z
    .registers 5

    .line 129
    iget v0, p0, Lio/blueflower/stapel2d/math/Vector3D;->x:F

    iget v1, p1, Lio/blueflower/stapel2d/math/Vector3D;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_29

    iget v0, p0, Lio/blueflower/stapel2d/math/Vector3D;->y:F

    iget v1, p1, Lio/blueflower/stapel2d/math/Vector3D;->y:F

    sub-float/2addr v0, v1

    .line 130
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_29

    iget v0, p0, Lio/blueflower/stapel2d/math/Vector3D;->z:F

    iget p1, p1, Lio/blueflower/stapel2d/math/Vector3D;->z:F

    sub-float/2addr v0, p1

    .line 131
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_29

    const/4 p1, 0x1

    return p1

    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 125
    instance-of v0, p1, Lio/blueflower/stapel2d/math/Vector3D;

    if-eqz v0, :cond_f

    check-cast p1, Lio/blueflower/stapel2d/math/Vector3D;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/blueflower/stapel2d/math/Vector3D;->equals(Lio/blueflower/stapel2d/math/Vector3D;F)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public length()F
    .registers 3

    .line 32
    invoke-virtual {p0}, Lio/blueflower/stapel2d/math/Vector3D;->lengthSquared()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public lengthSquared()F
    .registers 3

    .line 28
    iget v0, p0, Lio/blueflower/stapel2d/math/Vector3D;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lio/blueflower/stapel2d/math/Vector3D;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lio/blueflower/stapel2d/math/Vector3D;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public multiply(F)V
    .registers 3

    .line 62
    iget v0, p0, Lio/blueflower/stapel2d/math/Vector3D;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lio/blueflower/stapel2d/math/Vector3D;->x:F

    .line 63
    iget v0, p0, Lio/blueflower/stapel2d/math/Vector3D;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lio/blueflower/stapel2d/math/Vector3D;->y:F

    .line 64
    iget v0, p0, Lio/blueflower/stapel2d/math/Vector3D;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lio/blueflower/stapel2d/math/Vector3D;->z:F

    return-void
.end method

.method public normalize()V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    invoke-virtual {p0}, Lio/blueflower/stapel2d/math/Vector3D;->length()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/math/Vector3D;->multiply(F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/math/Vector3D;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/blueflower/stapel2d/math/Vector3D;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/blueflower/stapel2d/math/Vector3D;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
