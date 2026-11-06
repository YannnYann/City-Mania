###### Class com.badlogic.gdx.math.Intersector (com.badlogic.gdx.math.Intersector)
.class public final Lcom/badlogic/gdx/math/Intersector;
.super Ljava/lang/Object;
.source "Intersector.java"


# static fields
.field public static best:Lcom/badlogic/gdx/math/Vector3;

.field public static final dir:Lcom/badlogic/gdx/math/Vector3;

.field public static final e:Lcom/badlogic/gdx/math/Vector2;

.field public static final ep1:Lcom/badlogic/gdx/math/Vector2;

.field public static final ep2:Lcom/badlogic/gdx/math/Vector2;

.field public static final floatArray:Lcom/badlogic/gdx/utils/FloatArray;

.field public static final floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

.field public static final i:Lcom/badlogic/gdx/math/Vector3;

.field public static intersection:Lcom/badlogic/gdx/math/Vector3;

.field public static final ip:Lcom/badlogic/gdx/math/Vector2;

.field public static final p:Lcom/badlogic/gdx/math/Plane;

.field public static final s:Lcom/badlogic/gdx/math/Vector2;

.field public static final start:Lcom/badlogic/gdx/math/Vector3;

.field public static tmp:Lcom/badlogic/gdx/math/Vector3;

.field public static tmp1:Lcom/badlogic/gdx/math/Vector3;

.field public static tmp2:Lcom/badlogic/gdx/math/Vector3;

.field public static tmp3:Lcom/badlogic/gdx/math/Vector3;

.field public static final v0:Lcom/badlogic/gdx/math/Vector3;

.field public static final v1:Lcom/badlogic/gdx/math/Vector3;

.field public static final v2:Lcom/badlogic/gdx/math/Vector3;

.field public static v2a:Lcom/badlogic/gdx/math/Vector2;

.field public static v2b:Lcom/badlogic/gdx/math/Vector2;

.field public static v2c:Lcom/badlogic/gdx/math/Vector2;

.field public static v2d:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->floatArray:Lcom/badlogic/gdx/utils/FloatArray;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

    .line 143
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->ip:Lcom/badlogic/gdx/math/Vector2;

    .line 144
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->ep1:Lcom/badlogic/gdx/math/Vector2;

    .line 145
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->ep2:Lcom/badlogic/gdx/math/Vector2;

    .line 146
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector2;

    .line 147
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->e:Lcom/badlogic/gdx/math/Vector2;

    .line 244
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2a:Lcom/badlogic/gdx/math/Vector2;

    .line 245
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2b:Lcom/badlogic/gdx/math/Vector2;

    .line 246
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2c:Lcom/badlogic/gdx/math/Vector2;

    .line 247
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2d:Lcom/badlogic/gdx/math/Vector2;

    .line 479
    new-instance v0, Lcom/badlogic/gdx/math/Plane;

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Plane;-><init>(Lcom/badlogic/gdx/math/Vector3;F)V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    .line 480
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    .line 527
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    .line 528
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    .line 845
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    .line 846
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 847
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    .line 848
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    .line 849
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    .line 1432
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public static isPointInPolygon([FIIFF)Z
    .registers 12

    .line 127
    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, p1, 0x3

    add-int/2addr p1, p2

    const/4 p2, 0x0

    move v3, v1

    :goto_b
    if-ge v2, p1, :cond_38

    .line 130
    aget v4, p0, v2

    cmpg-float v5, v4, p4

    if-gez v5, :cond_17

    cmpl-float v5, v3, p4

    if-gez v5, :cond_1f

    :cond_17
    cmpg-float v5, v3, p4

    if-gez v5, :cond_34

    cmpl-float v5, v4, p4

    if-ltz v5, :cond_34

    :cond_1f
    add-int/lit8 v5, v2, -0x1

    .line 132
    aget v5, p0, v5

    sub-float v6, p4, v4

    sub-float/2addr v3, v4

    div-float/2addr v6, v3

    add-int/lit8 v3, v2, -0x3

    .line 133
    aget v3, p0, v3

    sub-float/2addr v3, v5

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    cmpg-float v3, v5, p3

    if-gez v3, :cond_34

    xor-int/lit8 p2, p2, 0x1

    :cond_34
    add-int/lit8 v2, v2, 0x2

    move v3, v4

    goto :goto_b

    :cond_38
    cmpg-float p1, v1, p4

    if-gez p1, :cond_40

    cmpl-float p1, v3, p4

    if-gez p1, :cond_48

    :cond_40
    cmpg-float p1, v3, p4

    if-gez p1, :cond_59

    cmpl-float p1, v1, p4

    if-ltz p1, :cond_59

    :cond_48
    sub-float/2addr p4, v1

    sub-float/2addr v3, v1

    div-float/2addr p4, v3

    add-int/lit8 v2, v2, -0x3

    .line 138
    aget p0, p0, v2

    sub-float/2addr p0, v0

    mul-float/2addr p4, p0

    add-float/2addr v0, p4

    cmpg-float p0, v0, p3

    if-gez p0, :cond_59

    xor-int/lit8 p0, p2, 0x1

    return p0

    :cond_59
    return p2
.end method
