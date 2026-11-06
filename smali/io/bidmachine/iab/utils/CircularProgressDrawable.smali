###### Class io.bidmachine.iab.utils.CircularProgressDrawable (io.bidmachine.iab.utils.CircularProgressDrawable)
.class public Lio/bidmachine/iab/utils/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/utils/CircularProgressDrawable$d;
    }
.end annotation


# static fields
.field public static final g:Landroid/view/animation/Interpolator;

.field public static final h:Landroid/view/animation/Interpolator;

.field public static final i:[I


# instance fields
.field public final a:Landroid/content/res/Resources;

.field public final b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

.field public c:F

.field public d:Landroid/animation/Animator;

.field public e:F

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->g:Landroid/view/animation/Interpolator;

    .line 3
    new-instance v0, Lio/bidmachine/iab/utils/CircularProgressDrawable$a;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$a;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->h:Landroid/view/animation/Interpolator;

    const/high16 v0, -0x1000000

    .line 22
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->i:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->a:Landroid/content/res/Resources;

    .line 3
    new-instance p1, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-direct {p1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;-><init>()V

    iput-object p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    .line 4
    sget-object v0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->i:[I

    invoke-virtual {p1, v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->a([I)V

    const/high16 p1, 0x40200000    # 2.5f

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->setStrokeWidth(F)V

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->a()V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/utils/CircularProgressDrawable;)F
    .registers 1

    .line 4
    iget p0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->e:F

    return p0
.end method

.method public static synthetic a(Lio/bidmachine/iab/utils/CircularProgressDrawable;F)F
    .registers 2

    .line 5
    iput p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->e:F

    return p1
.end method

.method public static synthetic a(Lio/bidmachine/iab/utils/CircularProgressDrawable;FLio/bidmachine/iab/utils/CircularProgressDrawable$d;)V
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b(FLio/bidmachine/iab/utils/CircularProgressDrawable$d;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/utils/CircularProgressDrawable;FLio/bidmachine/iab/utils/CircularProgressDrawable$d;Z)V
    .registers 4

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->a(FLio/bidmachine/iab/utils/CircularProgressDrawable$d;Z)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/utils/CircularProgressDrawable;Z)Z
    .registers 2

    .line 6
    iput-boolean p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->f:Z

    return p1
.end method

.method public static synthetic b(Lio/bidmachine/iab/utils/CircularProgressDrawable;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->f:Z

    return p0
.end method


# virtual methods
.method public final a(FII)I
    .registers 10

    .line 0
    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    sub-int/2addr v4, v1

    int-to-float v3, v4

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float/2addr p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int p1, v0, p2

    return p1
.end method

.method public final a()V
    .registers 4

    .line 44
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    const/4 v1, 0x2

    .line 45
    new-array v1, v1, [F

    fill-array-data v1, :array_2c

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 46
    new-instance v2, Lio/bidmachine/iab/utils/CircularProgressDrawable$b;

    invoke-direct {v2, p0, v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$b;-><init>(Lio/bidmachine/iab/utils/CircularProgressDrawable;Lio/bidmachine/iab/utils/CircularProgressDrawable$d;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, -0x1

    .line 54
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 55
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 56
    sget-object v2, Lio/bidmachine/iab/utils/CircularProgressDrawable;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    new-instance v2, Lio/bidmachine/iab/utils/CircularProgressDrawable$c;

    invoke-direct {v2, p0, v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$c;-><init>(Lio/bidmachine/iab/utils/CircularProgressDrawable;Lio/bidmachine/iab/utils/CircularProgressDrawable$d;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 85
    iput-object v1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->d:Landroid/animation/Animator;

    return-void

    :array_2c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(F)V
    .registers 2

    .line 13
    iput p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->c:F

    return-void
.end method

.method public final a(FLio/bidmachine/iab/utils/CircularProgressDrawable$d;)V
    .registers 7

    .line 14
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b(FLio/bidmachine/iab/utils/CircularProgressDrawable$d;)V

    .line 15
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->i()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 16
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->j()F

    move-result v1

    invoke-virtual {p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->h()F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->j()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 17
    invoke-virtual {p2, v1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->d(F)V

    .line 18
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->h()F

    move-result v1

    invoke-virtual {p2, v1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->b(F)V

    .line 19
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->i()F

    move-result v1

    invoke-virtual {p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->i()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    .line 20
    invoke-virtual {p2, v1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->c(F)V

    return-void
.end method

.method public final a(FLio/bidmachine/iab/utils/CircularProgressDrawable$d;Z)V
    .registers 11

    .line 21
    iget-boolean v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->f:Z

    if-eqz v0, :cond_8

    .line 22
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->a(FLio/bidmachine/iab/utils/CircularProgressDrawable$d;)V

    return-void

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_12

    if-eqz p3, :cond_11

    goto :goto_12

    :cond_11
    return-void

    .line 24
    :cond_12
    :goto_12
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->i()F

    move-result p3

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v2, p1, v1

    const v3, 0x3c23d70a    # 0.01f

    const v4, 0x3f4a3d71    # 0.79f

    if-gez v2, :cond_32

    div-float v0, p1, v1

    .line 30
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->j()F

    move-result v1

    .line 31
    sget-object v2, Lio/bidmachine/iab/utils/CircularProgressDrawable;->h:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    goto :goto_48

    :cond_32
    sub-float v2, p1, v1

    div-float/2addr v2, v1

    .line 34
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->j()F

    move-result v1

    add-float/2addr v1, v4

    .line 35
    sget-object v5, Lio/bidmachine/iab/utils/CircularProgressDrawable;->h:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    sub-float v0, v1, v0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_48
    const v2, 0x3e570a3c    # 0.20999998f

    mul-float/2addr v2, p1

    add-float/2addr p3, v2

    .line 39
    iget v2, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->e:F

    add-float/2addr p1, v2

    const/high16 v2, 0x43580000    # 216.0f

    mul-float/2addr p1, v2

    .line 40
    invoke-virtual {p2, v1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->d(F)V

    .line 41
    invoke-virtual {p2, v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->b(F)V

    .line 42
    invoke-virtual {p2, p3}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->c(F)V

    .line 43
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->a(F)V

    return-void
.end method

.method public final b(FLio/bidmachine/iab/utils/CircularProgressDrawable$d;)V
    .registers 5

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1a

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    .line 2
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->g()I

    move-result v0

    .line 3
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->d()I

    move-result v1

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->a(FII)I

    move-result p1

    invoke-virtual {p2, p1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->c(I)V

    return-void

    .line 8
    :cond_1a
    invoke-virtual {p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->g()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->c(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget v1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->c:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4
    iget-object v1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-virtual {v1, p1, v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->a()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 0
    const/4 v0, -0x3

    return v0
.end method

.method public getStrokeWidth()F
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    iget v0, v0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->i:F

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->a(I)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCenterRadius(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "centerRadius"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->a(F)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->a(Landroid/graphics/ColorFilter;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colors"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->a([I)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->d(I)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strokeCap"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->a(Landroid/graphics/Paint$Cap;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strokeWidth"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->e(F)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->m()V

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->c()F

    move-result v0

    iget-object v1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-virtual {v1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->f()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->f:Z

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->d:Landroid/animation/Animator;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    .line 8
    :cond_2a
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->d(I)V

    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->l()V

    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->d:Landroid/animation/Animator;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 11
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public stop()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->a(F)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->d(I)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->l()V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

###### Class io.bidmachine.iab.utils.CircularProgressDrawable.a (io.bidmachine.iab.utils.CircularProgressDrawable$a)
.class public Lio/bidmachine/iab/utils/CircularProgressDrawable$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/utils/CircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:[F

.field public final b:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0xc9

    .line 2
    new-array v1, v1, [F

    fill-array-data v1, :array_16

    iput-object v1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$a;->a:[F

    const/16 v1, 0xc8

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 3
    iput v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$a;->b:F

    return-void

    nop

    :array_16
    .array-data 4
        0x0
        0x38d1b717    # 1.0E-4f
        0x3951b717    # 2.0E-4f
        0x3a03126f    # 5.0E-4f
        0x3a6bedfa    # 9.0E-4f
        0x3ab78034    # 0.0014f
        0x3b03126f    # 0.002f
        0x3b30f27c    # 0.0027f
        0x3b6bedfa    # 0.0036f
        0x3b96bb99    # 0.0046f
        0x3bbe0ded    # 0.0058f
        0x3be8a71e    # 0.0071f
        0x3c0b4396    # 0.0085f
        0x3c257a78    # 0.0101f
        0x3c4154ca    # 0.0118f
        0x3c6075f7    # 0.0137f
        0x3c816f00    # 0.0158f
        0x3c9374bc    # 0.018f
        0x3ca7ef9e    # 0.0205f
        0x3cbd3c36    # 0.0231f
        0x3cd42c3d    # 0.0259f
        0x3cecbfb1    # 0.0289f
        0x3d037b4a
        0x3d116873    # 0.0355f
        0x3d202752    # 0.0391f
        0x3d3020c5    # 0.043f
        0x3d40ebee    # 0.0471f
        0x3d5288ce    # 0.0514f
        0x3d656042    # 0.056f
        0x3d79096c    # 0.0608f
        0x3d872b02    # 0.066f
        0x3d923a2a    # 0.0714f
        0x3d9de69b    # 0.0771f
        0x3da9fbe7    # 0.083f
        0x3db6e2eb    # 0.0893f
        0x3dc46738    # 0.0959f
        0x3dd2bd3c    # 0.1029f
        0x3de17c1c    # 0.1101f
        0x3df10cb3    # 0.1177f
        0x3e00b780    # 0.1257f
        0x3e091d15    # 0.1339f
        0x3e1205bc    # 0.1426f
        0x3e1b3d08    # 0.1516f
        0x3e24dd2f    # 0.161f
        0x3e2ecbfb    # 0.1707f
        0x3e3923a3    # 0.1808f
        0x3e43e426    # 0.1913f
        0x3e4ef34d    # 0.2021f
        0x3e5a6b51    # 0.2133f
        0x3e6631f9    # 0.2248f
        0x3e724745    # 0.2366f
        0x3e7eab36    # 0.2487f
        0x3e85aee6    # 0.2611f
        0x3e8c2f83    # 0.2738f
        0x3e92ca58    # 0.2867f
        0x3e997f63    # 0.2998f
        0x3ea04ea5    # 0.3131f
        0x3ea72b02    # 0.3265f
        0x3eae147b    # 0.34f
        0x3eb50b0f    # 0.3536f
        0x3ebc0ebf    # 0.3673f
        0x3ec3126f    # 0.381f
        0x3eca0903    # 0.3946f
        0x3ed0ff97    # 0.4082f
        0x3ed7e910    # 0.4217f
        0x3eded289    # 0.4352f
        0x3ee5a1cb    # 0.4485f
        0x3eec56d6    # 0.4616f
        0x3ef2fec5    # 0.4746f
        0x3ef98c7e    # 0.4874f
        0x3f000000    # 0.5f
        0x3f032ca5    # 0.5124f
        0x3f064c30    # 0.5246f
        0x3f095810    # 0.5365f
        0x3f0c56d6    # 0.5482f
        0x3f0f4880    # 0.5597f
        0x3f122d0e    # 0.571f
        0x3f14fdf4    # 0.582f
        0x3f17c1be    # 0.5928f
        0x3f1a71de    # 0.6033f
        0x3f1d14e4    # 0.6136f
        0x3f1faace    # 0.6237f
        0x3f222d0e    # 0.6335f
        0x3f24a234    # 0.6431f
        0x3f270a3d    # 0.6525f
        0x3f295e9e    # 0.6616f
        0x3f2bac71    # 0.6706f
        0x3f2de69b    # 0.6793f
        0x3f3013a9    # 0.6878f
        0x3f32339c    # 0.6961f
        0x3f344d01    # 0.7043f
        0x3f3652bd    # 0.7122f
        0x3f384b5e    # 0.7199f
        0x3f3a3d71    # 0.7275f
        0x3f3c2268    # 0.7349f
        0x3f3dfa44    # 0.7421f
        0x3f3fc505    # 0.7491f
        0x3f4182aa    # 0.7559f
        0x3f4339c1    # 0.7626f
        0x3f44ea4b    # 0.7692f
        0x3f468db9    # 0.7756f
        0x3f48240b    # 0.7818f
        0x3f49b3d0    # 0.7879f
        0x3f4b367a    # 0.7938f
        0x3f4cb296    # 0.7996f
        0x3f4e2824    # 0.8053f
        0x3f4f9097    # 0.8108f
        0x3f50f27c    # 0.8162f
        0x3f524dd3    # 0.8215f
        0x3f539c0f    # 0.8266f
        0x3f54ea4b    # 0.8317f
        0x3f562b6b    # 0.8366f
        0x3f5765fe    # 0.8414f
        0x3f589a02    # 0.8461f
        0x3f59c77a    # 0.8507f
        0x3f5ae7d5    # 0.8551f
        0x3f5c0831    # 0.8595f
        0x3f5d21ff    # 0.8638f
        0x3f5e2eb2    # 0.8679f
        0x3f5f3b64    # 0.872f
        0x3f604189    # 0.876f
        0x3f613a93    # 0.8798f
        0x3f62339c    # 0.8836f
        0x3f632618    # 0.8873f
        0x3f641206    # 0.8909f
        0x3f64fdf4    # 0.8945f
        0x3f65dcc6    # 0.8979f
        0x3f66bb99    # 0.9013f
        0x3f6793de    # 0.9046f
        0x3f686595    # 0.9078f
        0x3f6930be    # 0.9109f
        0x3f69f55a    # 0.9139f
        0x3f6ab9f5    # 0.9169f
        0x3f6b7803    # 0.9198f
        0x3f6c3611    # 0.9227f
        0x3f6ce704    # 0.9254f
        0x3f6d97f6    # 0.9281f
        0x3f6e425b    # 0.9307f
        0x3f6eecc0    # 0.9333f
        0x3f6f9097    # 0.9358f
        0x3f702de0    # 0.9382f
        0x3f70cb29    # 0.9406f
        0x3f7161e5    # 0.9429f
        0x3f71f8a1    # 0.9452f
        0x3f7288ce    # 0.9474f
        0x3f73126f    # 0.9495f
        0x3f739c0f    # 0.9516f
        0x3f741f21    # 0.9536f
        0x3f74a234    # 0.9556f
        0x3f751eb8    # 0.9575f
        0x3f759b3d    # 0.9594f
        0x3f761134    # 0.9612f
        0x3f76809d    # 0.9629f
        0x3f76f007    # 0.9646f
        0x3f775f70    # 0.9663f
        0x3f77c84b    # 0.9679f
        0x3f783127    # 0.9695f
        0x3f789375    # 0.971f
        0x3f78f5c3    # 0.9725f
        0x3f795183    # 0.9739f
        0x3f79ad43    # 0.9753f
        0x3f7a0275    # 0.9766f
        0x3f7a57a8    # 0.9779f
        0x3f7aa64c    # 0.9791f
        0x3f7af4f1    # 0.9803f
        0x3f7b4396    # 0.9815f
        0x3f7b8bac    # 0.9826f
        0x3f7bd3c3    # 0.9837f
        0x3f7c1bda    # 0.9848f
        0x3f7c5d64    # 0.9858f
        0x3f7c985f    # 0.9867f
        0x3f7cd9e8    # 0.9877f
        0x3f7d0e56    # 0.9885f
        0x3f7d4952    # 0.9894f
        0x3f7d7dbf    # 0.9902f
        0x3f7db22d    # 0.991f
        0x3f7de00d    # 0.9917f
        0x3f7e0ded    # 0.9924f
        0x3f7e3bcd    # 0.9931f
        0x3f7e6320    # 0.9937f
        0x3f7e9100    # 0.9944f
        0x3f7eb1c4    # 0.9949f
        0x3f7ed917    # 0.9955f
        0x3f7ef9db    # 0.996f
        0x3f7f1412    # 0.9964f
        0x3f7f34d7    # 0.9969f
        0x3f7f4f0e    # 0.9973f
        0x3f7f6944    # 0.9977f
        0x3f7f7cee    # 0.998f
        0x3f7f9724    # 0.9984f
        0x3f7fa440    # 0.9986f
        0x3f7fb7e9    # 0.9989f
        0x3f7fc505    # 0.9991f
        0x3f7fd220    # 0.9993f
        0x3f7fdf3b    # 0.9995f
        0x3f7fec57    # 0.9997f
        0x3f7ff2e5    # 0.9998f
        0x3f7ff972    # 0.9999f
        0x3f7ff972    # 0.9999f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_7

    return v0

    :cond_7
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_d

    return v0

    .line 1
    :cond_d
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$a;->a:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    .line 2
    iget v2, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$a;->b:F

    mul-float/2addr v1, v2

    sub-float/2addr p1, v1

    div-float/2addr p1, v2

    .line 5
    iget-object v1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$a;->a:[F

    aget v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    sub-float/2addr v0, v2

    mul-float/2addr p1, v0

    add-float/2addr v2, p1

    return v2
.end method

###### Class io.bidmachine.iab.utils.CircularProgressDrawable.b (io.bidmachine.iab.utils.CircularProgressDrawable$b)
.class public Lio/bidmachine/iab/utils/CircularProgressDrawable$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/utils/CircularProgressDrawable;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

.field public final synthetic b:Lio/bidmachine/iab/utils/CircularProgressDrawable;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/utils/CircularProgressDrawable;Lio/bidmachine/iab/utils/CircularProgressDrawable$d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$b;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    iput-object p2, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$b;->a:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$b;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    iget-object v1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$b;->a:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-static {v0, p1, v1}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->a(Lio/bidmachine/iab/utils/CircularProgressDrawable;FLio/bidmachine/iab/utils/CircularProgressDrawable$d;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$b;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    iget-object v1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$b;->a:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->a(Lio/bidmachine/iab/utils/CircularProgressDrawable;FLio/bidmachine/iab/utils/CircularProgressDrawable$d;Z)V

    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$b;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

###### Class io.bidmachine.iab.utils.CircularProgressDrawable.c (io.bidmachine.iab.utils.CircularProgressDrawable$c)
.class public Lio/bidmachine/iab/utils/CircularProgressDrawable$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/utils/CircularProgressDrawable;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

.field public final synthetic b:Lio/bidmachine/iab/utils/CircularProgressDrawable;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/utils/CircularProgressDrawable;Lio/bidmachine/iab/utils/CircularProgressDrawable$d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$c;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    iput-object p2, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$c;->a:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$c;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    iget-object v1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$c;->a:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v1, v2}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->a(Lio/bidmachine/iab/utils/CircularProgressDrawable;FLio/bidmachine/iab/utils/CircularProgressDrawable$d;Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$c;->a:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->m()V

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$c;->a:Lio/bidmachine/iab/utils/CircularProgressDrawable$d;

    invoke-virtual {v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->k()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$c;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    invoke-static {v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->b(Lio/bidmachine/iab/utils/CircularProgressDrawable;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$c;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->a(Lio/bidmachine/iab/utils/CircularProgressDrawable;Z)Z

    .line 6
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-wide/16 v0, 0x534

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 8
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    .line 10
    :cond_2e
    iget-object p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$c;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    invoke-static {p1}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->a(Lio/bidmachine/iab/utils/CircularProgressDrawable;)F

    move-result v0

    add-float/2addr v0, v3

    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->a(Lio/bidmachine/iab/utils/CircularProgressDrawable;F)F

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$c;->b:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->a(Lio/bidmachine/iab/utils/CircularProgressDrawable;F)F

    return-void
.end method

###### Class io.bidmachine.iab.utils.CircularProgressDrawable.d (io.bidmachine.iab.utils.CircularProgressDrawable$d)
.class public Lio/bidmachine/iab/utils/CircularProgressDrawable$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/utils/CircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:[I

.field public k:I

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->f:F

    .line 3
    iput v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->g:F

    .line 4
    iput v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->h:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 5
    iput v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->i:F

    const/16 v0, 0xff

    .line 12
    iput v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->p:I

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->a:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->b:Landroid/graphics/Paint;

    .line 18
    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->c:Landroid/graphics/Paint;

    .line 22
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->e:Landroid/graphics/Paint;

    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 29
    iget v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->p:I

    return v0
.end method

.method public a(F)V
    .registers 2

    .line 30
    iput p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->o:F

    return-void
.end method

.method public a(I)V
    .registers 2

    .line 28
    iput p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->p:I

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 10

    .line 2
    iget-object v1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->a:Landroid/graphics/RectF;

    .line 3
    iget v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->o:F

    iget v2, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->i:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_22

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget v2, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->i:F

    div-float/2addr v2, v3

    sub-float v2, v0, v2

    .line 7
    :cond_22
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    .line 8
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, v2

    .line 11
    invoke-virtual {v1, v0, v4, v5, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 15
    iget p2, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->f:F

    iget v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->h:F

    add-float/2addr p2, v0

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr p2, v2

    .line 16
    iget v4, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->g:F

    add-float/2addr v4, v0

    mul-float/2addr v4, v2

    sub-float/2addr v4, p2

    .line 18
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->b:Landroid/graphics/Paint;

    iget v2, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->q:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->b:Landroid/graphics/Paint;

    iget v2, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->p:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20
    iget v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->i:F

    div-float/2addr v0, v3

    .line 21
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 22
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v3

    iget-object v3, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    neg-float v0, v0

    .line 23
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 24
    iget-object v5, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->b:Landroid/graphics/Paint;

    move v3, v4

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public a(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 27
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public a(Landroid/graphics/Paint$Cap;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public a([I)V
    .registers 2

    .line 25
    iput-object p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->j:[I

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->d(I)V

    return-void
.end method

.method public b(F)V
    .registers 2

    .line 3
    iput p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->g:F

    return-void
.end method

.method public c()F
    .registers 2

    .line 2
    iget v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->g:F

    return v0
.end method

.method public c(F)V
    .registers 2

    .line 3
    iput p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->h:F

    return-void
.end method

.method public c(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->q:I

    return-void
.end method

.method public d()I
    .registers 3

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->j:[I

    invoke-virtual {p0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->e()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public d(F)V
    .registers 2

    .line 4
    iput p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->f:F

    return-void
.end method

.method public d(I)V
    .registers 3

    .line 1
    iput p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->k:I

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->j:[I

    aget p1, v0, p1

    iput p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->q:I

    return-void
.end method

.method public e()I
    .registers 3

    .line 1
    iget v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->j:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method public e(F)V
    .registers 3

    .line 2
    iput p1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->i:F

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public f()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->f:F

    return v0
.end method

.method public g()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->j:[I

    iget v1, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->k:I

    aget v0, v0, v1

    return v0
.end method

.method public h()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->m:F

    return v0
.end method

.method public i()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->n:F

    return v0
.end method

.method public j()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->l:F

    return v0
.end method

.method public k()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->d(I)V

    return-void
.end method

.method public l()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->l:F

    .line 2
    iput v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->m:F

    .line 3
    iput v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->n:F

    .line 4
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->d(F)V

    .line 5
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->b(F)V

    .line 6
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->c(F)V

    return-void
.end method

.method public m()V
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->f:F

    iput v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->l:F

    .line 2
    iget v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->g:F

    iput v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->m:F

    .line 3
    iget v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->h:F

    iput v0, p0, Lio/bidmachine/iab/utils/CircularProgressDrawable$d;->n:F

    return-void
.end method
