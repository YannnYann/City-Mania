###### Class io.bidmachine.iab.vast.view.CircleCountdownView (io.bidmachine.iab.vast.view.CircleCountdownView)
.class public Lio/bidmachine/iab/vast/view/CircleCountdownView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/utils/IabElement;


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:F

.field public g:F

.field public final h:Landroid/graphics/RectF;

.field public final i:Landroid/graphics/RectF;

.field public j:F

.field public k:F

.field public l:F

.field public m:Landroid/graphics/Paint;

.field public n:Landroid/graphics/Paint;

.field public o:Landroid/graphics/Rect;

.field public p:Landroid/graphics/RectF;

.field public q:Landroid/graphics/Paint;

.field public r:Landroid/graphics/Paint;

.field public s:F

.field public t:I


# direct methods
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
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    sget v0, Lio/bidmachine/iab/utils/Assets;->MAIN_ASSETS_COLOR:I

    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    .line 3
    sget v0, Lio/bidmachine/iab/utils/Assets;->BACKGROUND_COLOR:I

    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->d:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->e:Z

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->f:F

    const v0, 0x3d924925

    .line 7
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->g:F

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->i:Landroid/graphics/RectF;

    const/high16 v0, 0x42580000    # 54.0f

    .line 13
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->j:F

    .line 14
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->k:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 15
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->l:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 30
    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->s:F

    .line 36
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 2
    invoke-static {p1, v0}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->l:F

    return-void
.end method


# virtual methods
.method public final a(FZ)F
    .registers 9

    .line 55
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p2, :cond_e

    .line 57
    iget p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->l:F

    mul-float/2addr p2, v1

    sub-float/2addr v0, p2

    :cond_e
    div-float/2addr v0, v1

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 59
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float p2, v2

    mul-float/2addr p1, p2

    mul-float/2addr p1, v1

    sub-float/2addr p2, p1

    return p2
.end method

.method public final a()V
    .registers 7

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float v3, v0, v2

    sub-float/2addr v1, v3

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v4, v3

    .line 10
    iget-object v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    add-float v5, v1, v0

    add-float/2addr v0, v4

    invoke-virtual {v3, v1, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->j:F

    .line 12
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->k:F

    .line 13
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->l:F

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v2, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    invoke-virtual {v0, v3, v2, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .registers 14

    .line 14
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    if-nez v0, :cond_c

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    .line 17
    :cond_c
    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->s:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v2

    sub-float v5, v1, v0

    .line 18
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    iget v1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object v7, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->h:Landroid/graphics/RectF;

    iget-object v11, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    const/high16 v9, 0x43b40000    # 360.0f

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object v2, v6

    .line 22
    iget-object p1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object p1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    iget-object p1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->l:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    iget-object v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->i:Landroid/graphics/RectF;

    iget-object v7, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->m:Landroid/graphics/Paint;

    const/high16 v4, 0x43870000    # 270.0f

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .registers 11

    .line 26
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->q:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_17

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->q:Landroid/graphics/Paint;

    .line 30
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    :cond_17
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->o:Landroid/graphics/Rect;

    if-nez v0, :cond_22

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->o:Landroid/graphics/Rect;

    .line 36
    :cond_22
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->p:Landroid/graphics/RectF;

    if-nez v0, :cond_2d

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->p:Landroid/graphics/RectF;

    .line 39
    :cond_2d
    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->f:F

    iget-boolean v2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->e:Z

    invoke-virtual {p0, v0, v2}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a(FZ)F

    move-result v0

    .line 40
    iget v2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->j:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    sub-float/2addr v2, v3

    .line 41
    iget v4, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->k:F

    sub-float/2addr v4, v3

    .line 42
    iget-object v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->o:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    iget-object v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->p:Landroid/graphics/RectF;

    add-float v5, v2, v0

    add-float/2addr v0, v4

    invoke-virtual {v3, v2, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 44
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->q:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 45
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->o:Landroid/graphics/Rect;

    iget-object v2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->p:Landroid/graphics/RectF;

    iget-object v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 47
    iget-boolean p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->e:Z

    if-eqz p2, :cond_9a

    .line 48
    iget-object p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->r:Landroid/graphics/Paint;

    if-nez p2, :cond_80

    .line 49
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->r:Landroid/graphics/Paint;

    .line 50
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    :cond_80
    iget-object p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->r:Landroid/graphics/Paint;

    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->l:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget-object p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->r:Landroid/graphics/Paint;

    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->i:Landroid/graphics/RectF;

    iget-object v6, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->r:Landroid/graphics/Paint;

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_9a
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 7
    :cond_1d
    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->t:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    iget v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object v2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v4, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->b:I

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 10
    iget-object v2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    iget v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->g:F

    invoke-virtual {p0, v3, v1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a(FZ)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    iget v1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->j:F

    .line 13
    iget v2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->k:F

    iget-object v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 14
    iget-object v3, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public changePercentage(FI)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "percent",
            "remainingTime"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    return-void

    .line 2
    :cond_c
    :goto_c
    iput p1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->s:F

    .line 3
    iput p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->t:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public getAccentColor()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    return v0
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->d:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_26

    .line 6
    :cond_10
    iget v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->t:I

    if-nez v0, :cond_18

    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_26

    .line 7
    :cond_18
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a(Landroid/graphics/Canvas;)V

    .line 8
    iget-object v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_23

    .line 9
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    return-void

    .line 11
    :cond_23
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->b(Landroid/graphics/Canvas;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a()V

    return-void
.end method

.method public setColors(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "primaryColor",
            "backgroundColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    .line 2
    iput p2, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->d:I

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a()V

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_8

    const/high16 p1, 0x42c80000    # 100.0f

    .line 3
    iput p1, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->s:F

    .line 5
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getFontStyle()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->b:I

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getStrokeColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->c:I

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getFillColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->d:I

    .line 4
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->isOutlined()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->e:Z

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->getStrokeWidth(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lio/bidmachine/iab/vast/view/CircleCountdownView;->l:F

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->getPaddingLeft(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->getPaddingTop(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/bidmachine/iab/utils/IabElementStyle;->getPaddingRight(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/bidmachine/iab/utils/IabElementStyle;->getPaddingBottom(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 10
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 14
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getOpacity()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 15
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->a()V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
