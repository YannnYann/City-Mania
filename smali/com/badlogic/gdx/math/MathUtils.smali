###### Class com.badlogic.gdx.math.MathUtils (com.badlogic.gdx.math.MathUtils)
.class public final Lcom/badlogic/gdx/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/MathUtils$Sin;
    }
.end annotation


# static fields
.field public static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 389
    new-instance v0, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/RandomXS128;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    return-void
.end method

.method public static clamp(FFF)F
    .registers 4

    .line 0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    return p1

    :cond_5
    cmpl-float p1, p0, p2

    if-lez p1, :cond_a

    return p2

    :cond_a
    return p0
.end method

.method public static clamp(III)I
    .registers 3

    .line 0
    if-ge p0, p1, :cond_3

    return p1

    :cond_3
    if-le p0, p2, :cond_6

    return p2

    :cond_6
    return p0
.end method

.method public static clamp(JJJ)J
    .registers 7

    .line 0
    cmp-long v0, p0, p2

    if-gez v0, :cond_5

    return-wide p2

    :cond_5
    cmp-long p2, p0, p4

    if-lez p2, :cond_a

    return-wide p4

    :cond_a
    return-wide p0
.end method

.method public static cos(F)F
    .registers 3

    .line 80
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x3fc90fdb

    add-float/2addr p0, v1

    const v1, 0x4522f983

    mul-float/2addr p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x3fff

    aget p0, v0, p0

    return p0
.end method

.method public static isEqual(FFF)Z
    .registers 3

    sub-float/2addr p0, p1

    .line 664
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static lerp(FFF)F
    .registers 3

    .line 0
    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static nextPowerOfTwo(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v1, p0, 0x1

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x2

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x4

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x8

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x10

    or-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0
.end method

.method public static roundPositive(F)I
    .registers 2

    .line 0
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static sin(F)F
    .registers 3

    .line 74
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x4522f983

    mul-float/2addr p0, v1

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0x3fff

    aget p0, v0, p0

    return p0
.end method

###### Class com.badlogic.gdx.math.MathUtils.Sin (com.badlogic.gdx.math.MathUtils$Sin)
.class public Lcom/badlogic/gdx/math/MathUtils$Sin;
.super Ljava/lang/Object;
.source "MathUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/MathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sin"
.end annotation


# static fields
.field public static final table:[F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x4000

    .line 57
    new-array v1, v0, [F

    sput-object v1, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_22

    .line 61
    sget-object v3, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    int-to-float v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    const/high16 v5, 0x46800000    # 16384.0f

    div-float/2addr v4, v5

    const v5, 0x40c90fdb

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 64
    :cond_22
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const/4 v2, 0x0

    aput v2, v0, v1

    const/16 v1, 0x1000

    const/high16 v3, 0x3f800000    # 1.0f

    .line 65
    aput v3, v0, v1

    const/16 v1, 0x2000

    .line 66
    aput v2, v0, v1

    const/16 v1, 0x3000

    const/high16 v2, -0x40800000    # -1.0f

    .line 67
    aput v2, v0, v1

    return-void
.end method
