###### Class io.bidmachine.rendering.internal.view.b (io.bidmachine.rendering.internal.view.b)
.class public final Lio/bidmachine/rendering/internal/view/b;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/view/b$a;,
        Lio/bidmachine/rendering/internal/view/b$d;,
        Lio/bidmachine/rendering/internal/view/b$c;,
        Lio/bidmachine/rendering/internal/view/b$b;
    }
.end annotation


# static fields
.field public static final s:Lio/bidmachine/rendering/internal/view/b$a;


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:J

.field public final e:Landroid/graphics/RectF;

.field public final f:Landroid/graphics/RectF;

.field public final g:Lio/bidmachine/rendering/internal/view/b$c;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public j:Lio/bidmachine/rendering/internal/view/b$d;

.field public k:Ljava/lang/Runnable;

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:I

.field public q:B

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/view/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/view/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/internal/view/b;->s:Lio/bidmachine/rendering/internal/view/b$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 3
    sget v2, Lio/bidmachine/rendering/internal/k;->d:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->a:Landroid/graphics/Paint;

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 10
    sget v3, Lio/bidmachine/rendering/internal/k;->c:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->b:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 17
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 21
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 22
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->c:Landroid/graphics/Paint;

    const-wide/16 v0, 0x10

    .line 29
    iput-wide v0, p0, Lio/bidmachine/rendering/internal/view/b;->d:J

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->e:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->f:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Lio/bidmachine/rendering/internal/view/b$c;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/view/b$c;-><init>()V

    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->g:Lio/bidmachine/rendering/internal/view/b$c;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/high16 v0, 0x42c80000    # 100.0f

    .line 41
    iput v0, p0, Lio/bidmachine/rendering/internal/view/b;->o:F

    const/4 v0, -0x1

    .line 43
    iput-byte v0, p0, Lio/bidmachine/rendering/internal/view/b;->q:B

    .line 47
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/view/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/view/b;)Lio/bidmachine/rendering/internal/view/b$c;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/view/b;->g:Lio/bidmachine/rendering/internal/view/b$c;

    return-object p0
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/view/b;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/view/b;->d:J

    return-wide v0
.end method

.method private final c()V
    .registers 4

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1a

    .line 6
    :cond_13
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->j:Lio/bidmachine/rendering/internal/view/b$d;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/view/b$d;->a()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public static final synthetic c(Lio/bidmachine/rendering/internal/view/b;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/rendering/internal/view/b;->r:Z

    return p0
.end method

.method public static final synthetic d(Lio/bidmachine/rendering/internal/view/b;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/b;->c()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Z)F
    .registers 4

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    if-eqz p2, :cond_11

    .line 57
    iget p2, p0, Lio/bidmachine/rendering/internal/view/b;->n:F

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    :cond_11
    const p2, 0x3f3504f3

    mul-float/2addr p1, p2

    const p2, 0x3f666666    # 0.9f

    mul-float/2addr p1, p2

    return p1
.end method

.method public final a()V
    .registers 7

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 35
    iget-object v2, p0, Lio/bidmachine/rendering/internal/view/b;->e:Landroid/graphics/RectF;

    int-to-float v0, v0

    add-float v4, v1, v0

    add-float/2addr v0, v3

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 36
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iput v0, p0, Lio/bidmachine/rendering/internal/view/b;->l:F

    .line 37
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iput v0, p0, Lio/bidmachine/rendering/internal/view/b;->m:F

    .line 40
    iget v0, p0, Lio/bidmachine/rendering/internal/view/b;->n:F

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 41
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b;->f:Landroid/graphics/RectF;

    .line 42
    iget-object v2, p0, Lio/bidmachine/rendering/internal/view/b;->e:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    .line 43
    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    .line 44
    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    .line 45
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    .line 46
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 54
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b;->e:Landroid/graphics/RectF;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lio/bidmachine/rendering/internal/view/b;->a(Landroid/graphics/RectF;Z)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public final a(FI)V
    .registers 5

    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 24
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p0, Lio/bidmachine/rendering/internal/view/b;->o:F

    .line 25
    iput p2, p0, Lio/bidmachine/rendering/internal/view/b;->p:I

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/high16 v0, 0x42580000    # 54.0f

    .line 3
    invoke-static {p1, v0}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lio/bidmachine/rendering/internal/view/b;->l:F

    .line 4
    invoke-static {p1, v0}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lio/bidmachine/rendering/internal/view/b;->m:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 5
    invoke-static {p1, v0}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/bidmachine/rendering/internal/view/b;->n:F

    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b;->a()V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .registers 14

    .line 58
    iget-byte v0, p0, Lio/bidmachine/rendering/internal/view/b;->q:B

    int-to-float v0, v0

    const/16 v1, 0x168

    int-to-float v1, v1

    iget v2, p0, Lio/bidmachine/rendering/internal/view/b;->o:F

    mul-float/2addr v2, v1

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float v5, v0, v1

    .line 59
    iget-object v7, p0, Lio/bidmachine/rendering/internal/view/b;->e:Landroid/graphics/RectF;

    iget-object v11, p0, Lio/bidmachine/rendering/internal/view/b;->a:Landroid/graphics/Paint;

    const/high16 v9, 0x43b40000    # 360.0f

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object v2, v6

    .line 60
    iget-object v3, p0, Lio/bidmachine/rendering/internal/view/b;->f:Landroid/graphics/RectF;

    iget-object v7, p0, Lio/bidmachine/rendering/internal/view/b;->b:Landroid/graphics/Paint;

    const/high16 v4, 0x43870000    # 270.0f

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public a(Lio/bidmachine/rendering/model/AppearanceParams;)V
    .registers 5

    const-string v0, "appearanceParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/AppearanceParams;->getFontStyleType()Lio/bidmachine/rendering/model/FontStyleType;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 10
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/FontStyleType;->getTypeface()I

    move-result v0

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 12
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/AppearanceParams;->getFillColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 13
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    :cond_29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/model/AppearanceParams;->getStrokeWidthPx(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-float v0, v0

    .line 16
    iput v0, p0, Lio/bidmachine/rendering/internal/view/b;->n:F

    .line 17
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    :cond_44
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/AppearanceParams;->getStrokeColor()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_53

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 20
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    :cond_53
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b;->a()V

    return-void
.end method

.method public final b()V
    .registers 2

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b;->d()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->j:Lio/bidmachine/rendering/internal/view/b$d;

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .registers 7

    .line 4
    iget v0, p0, Lio/bidmachine/rendering/internal/view/b;->p:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget v1, p0, Lio/bidmachine/rendering/internal/view/b;->l:F

    .line 6
    iget v2, p0, Lio/bidmachine/rendering/internal/view/b;->m:F

    iget-object v3, p0, Lio/bidmachine/rendering/internal/view/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lio/bidmachine/rendering/internal/view/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 7
    iget-object v3, p0, Lio/bidmachine/rendering/internal/view/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final d()V
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->g:Lio/bidmachine/rendering/internal/view/b$c;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/b$c;->e()V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 4
    invoke-static {v0}, Lio/bidmachine/util/UiUtils;->cancelOnUiThread(Ljava/lang/Runnable;)V

    :cond_c
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->k:Ljava/lang/Runnable;

    return-void
.end method

.method public final e()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b;->d()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_14

    .line 5
    :cond_c
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_14
    return-void

    .line 9
    :cond_15
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->g:Lio/bidmachine/rendering/internal/view/b$c;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/b$c;->g()V

    .line 10
    new-instance v0, Lio/bidmachine/rendering/internal/view/b$b;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/view/b$b;-><init>(Lio/bidmachine/rendering/internal/view/b;)V

    .line 11
    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->k:Ljava/lang/Runnable;

    .line 12
    iget-wide v1, p0, Lio/bidmachine/rendering/internal/view/b;->d:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/util/UiUtils;->onUiThread(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->g:Lio/bidmachine/rendering/internal/view/b$c;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/b$c;->f()V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b;->e()V

    return-void
.end method

.method public final getBackgroundArcPaint$bidmachine_android_sdk_bb_3_8_0()Landroid/graphics/Paint;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getListener()Lio/bidmachine/rendering/internal/view/b$d;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->j:Lio/bidmachine/rendering/internal/view/b$d;

    return-object v0
.end method

.method public final getMainArcPaint$bidmachine_android_sdk_bb_3_8_0()Landroid/graphics/Paint;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->b:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getTextPaint$bidmachine_android_sdk_bb_3_8_0()Landroid/graphics/Paint;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Lio/bidmachine/rendering/internal/view/b;->p:I

    if-nez v0, :cond_19

    goto :goto_1f

    .line 7
    :cond_19
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/view/b;->a(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/view/b;->b(Landroid/graphics/Canvas;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b;->a()V

    return-void
.end method

.method public final setDurationMs(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b;->g:Lio/bidmachine/rendering/internal/view/b$c;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/rendering/internal/view/b$c;->a(J)V

    return-void
.end method

.method public final setListener(Lio/bidmachine/rendering/internal/view/b$d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/b;->j:Lio/bidmachine/rendering/internal/view/b$d;

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.b.a (io.bidmachine.rendering.internal.view.b$a)
.class public final Lio/bidmachine/rendering/internal/view/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/b$a;-><init>()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.b.C1206b (io.bidmachine.rendering.internal.view.b$b)
.class public final Lio/bidmachine/rendering/internal/view/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/view/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/view/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/view/b;->c(Lio/bidmachine/rendering/internal/view/b;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    if-eqz v0, :cond_20

    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    invoke-static {v1}, Lio/bidmachine/rendering/internal/view/b;->a(Lio/bidmachine/rendering/internal/view/b;)Lio/bidmachine/rendering/internal/view/b$c;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/view/b$c;->i()V

    goto :goto_29

    .line 5
    :cond_20
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    invoke-static {v1}, Lio/bidmachine/rendering/internal/view/b;->a(Lio/bidmachine/rendering/internal/view/b;)Lio/bidmachine/rendering/internal/view/b$c;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/view/b$c;->h()V

    .line 7
    :goto_29
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    invoke-static {v1}, Lio/bidmachine/rendering/internal/view/b;->a(Lio/bidmachine/rendering/internal/view/b;)Lio/bidmachine/rendering/internal/view/b$c;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/view/b$c;->b()J

    move-result-wide v1

    .line 8
    iget-object v3, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    invoke-static {v3}, Lio/bidmachine/rendering/internal/view/b;->a(Lio/bidmachine/rendering/internal/view/b;)Lio/bidmachine/rendering/internal/view/b$c;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/rendering/internal/view/b$c;->c()J

    move-result-wide v3

    if-eqz v0, :cond_55

    long-to-float v0, v3

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    long-to-float v5, v1

    div-float/2addr v0, v5

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const/16 v3, 0x3e8

    int-to-double v3, v3

    div-double/2addr v1, v3

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 13
    iget-object v2, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    invoke-virtual {v2, v0, v1}, Lio/bidmachine/rendering/internal/view/b;->a(FI)V

    .line 16
    :cond_55
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/view/b;->a(Lio/bidmachine/rendering/internal/view/b;)Lio/bidmachine/rendering/internal/view/b$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/b$c;->d()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 17
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/view/b;->d(Lio/bidmachine/rendering/internal/view/b;)V

    return-void

    .line 19
    :cond_67
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/view/b;->b(Lio/bidmachine/rendering/internal/view/b;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lio/bidmachine/util/UiUtils;->onUiThread(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.b.c (io.bidmachine.rendering.internal.view.b$c)
.class public Lio/bidmachine/rendering/internal/view/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:J

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lio/bidmachine/rendering/internal/view/b$c;->b:J

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b$c;->f()V

    return-void
.end method

.method public final b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->b:J

    return-wide v0
.end method

.method public final c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->c:J

    return-wide v0
.end method

.method public final d()Z
    .registers 5

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->c:J

    iget-wide v2, p0, Lio/bidmachine/rendering/internal/view/b$c;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->a:Z

    return-void
.end method

.method public final f()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->c:J

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b$c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->d:J

    return-void
.end method

.method public final g()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->a:Z

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b$c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->d:J

    return-void
.end method

.method public final h()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b$c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->d:J

    return-void
.end method

.method public final i()V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->a:Z

    if-nez v0, :cond_5

    return-void

    .line 5
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/b$c;->a()J

    move-result-wide v0

    .line 6
    iget-wide v2, p0, Lio/bidmachine/rendering/internal/view/b$c;->d:J

    sub-long v2, v0, v2

    .line 7
    iget-wide v4, p0, Lio/bidmachine/rendering/internal/view/b$c;->b:J

    iget-wide v6, p0, Lio/bidmachine/rendering/internal/view/b$c;->c:J

    add-long/2addr v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lio/bidmachine/rendering/internal/view/b$c;->c:J

    .line 8
    iput-wide v0, p0, Lio/bidmachine/rendering/internal/view/b$c;->d:J

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.b.d (io.bidmachine.rendering.internal.view.b$d)
.class public interface abstract Lio/bidmachine/rendering/internal/view/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a()V
.end method
