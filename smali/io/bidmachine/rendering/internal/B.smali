###### Class io.bidmachine.rendering.internal.B (io.bidmachine.rendering.internal.B)
.class public final Lio/bidmachine/rendering/internal/B;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/B$a;,
        Lio/bidmachine/rendering/internal/B$b;
    }
.end annotation


# static fields
.field public static final u:Lio/bidmachine/rendering/internal/B$a;

.field public static final v:Landroid/widget/ImageView$ScaleType;


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Landroid/graphics/RectF;

.field public final c:Landroid/graphics/RectF;

.field public final d:I

.field public final e:I

.field public final f:Landroid/graphics/RectF;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/RectF;

.field public final i:Landroid/graphics/Paint;

.field public final j:Landroid/graphics/Matrix;

.field public final k:Landroid/graphics/RectF;

.field public l:Landroid/graphics/Shader$TileMode;

.field public m:Landroid/graphics/Shader$TileMode;

.field public n:Z

.field public o:F

.field public final p:[Z

.field public q:Z

.field public r:F

.field public s:Landroid/content/res/ColorStateList;

.field public t:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/rendering/internal/B$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/B$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/internal/B;->u:Lio/bidmachine/rendering/internal/B$a;

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lio/bidmachine/rendering/internal/B;->v:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 5

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/B;->a:Landroid/graphics/Bitmap;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/bidmachine/rendering/internal/B;->b:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/bidmachine/rendering/internal/B;->c:Landroid/graphics/RectF;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lio/bidmachine/rendering/internal/B;->d:I

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lio/bidmachine/rendering/internal/B;->e:I

    .line 7
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    int-to-float v0, v0

    int-to-float p1, p1

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2, v2, v0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9
    iput-object v1, p0, Lio/bidmachine/rendering/internal/B;->f:Landroid/graphics/RectF;

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 13
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    iput-object p1, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    .line 19
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 21
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    iput-object p1, p0, Lio/bidmachine/rendering/internal/B;->i:Landroid/graphics/Paint;

    .line 27
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    .line 28
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lio/bidmachine/rendering/internal/B;->k:Landroid/graphics/RectF;

    .line 30
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v1, p0, Lio/bidmachine/rendering/internal/B;->l:Landroid/graphics/Shader$TileMode;

    .line 31
    iput-object v1, p0, Lio/bidmachine/rendering/internal/B;->m:Landroid/graphics/Shader$TileMode;

    .line 32
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/B;->n:Z

    const/4 v0, 0x4

    .line 36
    new-array v0, v0, [Z

    fill-array-data v0, :array_96

    iput-object v0, p0, Lio/bidmachine/rendering/internal/B;->p:[Z

    const/4 v0, 0x0

    .line 40
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const-string v2, "valueOf(DEFAULT_BORDER_COLOR)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lio/bidmachine/rendering/internal/B;->s:Landroid/content/res/ColorStateList;

    .line 41
    sget-object v2, Lio/bidmachine/rendering/internal/B;->v:Landroid/widget/ImageView$ScaleType;

    iput-object v2, p0, Lio/bidmachine/rendering/internal/B;->t:Landroid/widget/ImageView$ScaleType;

    .line 44
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget v0, p0, Lio/bidmachine/rendering/internal/B;->r:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :array_96
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method


# virtual methods
.method public final a(F)Lio/bidmachine/rendering/internal/B;
    .registers 3

    .line 319
    iput p1, p0, Lio/bidmachine/rendering/internal/B;->r:F

    .line 320
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object p0
.end method

.method public final a(FFFF)Lio/bidmachine/rendering/internal/B;
    .registers 9

    .line 295
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 296
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 300
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_32

    goto :goto_5a

    .line 305
    :cond_32
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 306
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 307
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_5a

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_5a

    cmpg-float v2, v0, v1

    if-gez v2, :cond_57

    goto :goto_5a

    .line 310
    :cond_57
    iput v0, p0, Lio/bidmachine/rendering/internal/B;->o:F

    goto :goto_5d

    :cond_5a
    :goto_5a
    return-object p0

    .line 312
    :cond_5b
    iput v1, p0, Lio/bidmachine/rendering/internal/B;->o:F

    .line 315
    :goto_5d
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->p:[Z

    cmpl-float p1, p1, v1

    const/4 v2, 0x0

    if-lez p1, :cond_66

    move p1, v3

    goto :goto_67

    :cond_66
    move p1, v2

    :goto_67
    aput-boolean p1, v0, v2

    cmpl-float p1, p2, v1

    if-lez p1, :cond_6f

    move p1, v3

    goto :goto_70

    :cond_6f
    move p1, v2

    .line 316
    :goto_70
    aput-boolean p1, v0, v3

    cmpl-float p1, p3, v1

    if-lez p1, :cond_78

    move p1, v3

    goto :goto_79

    :cond_78
    move p1, v2

    :goto_79
    const/4 p2, 0x2

    .line 317
    aput-boolean p1, v0, p2

    cmpl-float p1, p4, v1

    if-lez p1, :cond_81

    goto :goto_82

    :cond_81
    move v3, v2

    :goto_82
    const/4 p1, 0x3

    .line 318
    aput-boolean v3, v0, p1

    return-object p0
.end method

.method public final a(I)Lio/bidmachine/rendering/internal/B;
    .registers 2

    .line 321
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/B;->a(Landroid/content/res/ColorStateList;)Lio/bidmachine/rendering/internal/B;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/res/ColorStateList;)Lio/bidmachine/rendering/internal/B;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 322
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    const-string v1, "valueOf(0)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    iput-object p1, p0, Lio/bidmachine/rendering/internal/B;->s:Landroid/content/res/ColorStateList;

    .line 323
    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public final a(Landroid/widget/ImageView$ScaleType;)Lio/bidmachine/rendering/internal/B;
    .registers 3

    if-nez p1, :cond_4

    .line 324
    sget-object p1, Lio/bidmachine/rendering/internal/B;->v:Landroid/widget/ImageView$ScaleType;

    .line 325
    :cond_4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->t:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_d

    .line 326
    iput-object p1, p0, Lio/bidmachine/rendering/internal/B;->t:Landroid/widget/ImageView$ScaleType;

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/B;->a()V

    :cond_d
    return-object p0
.end method

.method public final a()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->t:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Lio/bidmachine/rendering/internal/B$b;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    packed-switch v0, :pswitch_data_222

    .line 93
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 94
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->f:Landroid/graphics/RectF;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/B;->b:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 95
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 96
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget v2, p0, Lio/bidmachine/rendering/internal/B;->r:F

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {v0, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 97
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_216

    .line 98
    :pswitch_3f
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 99
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget v2, p0, Lio/bidmachine/rendering/internal/B;->r:F

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {v0, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 100
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 101
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_216

    .line 102
    :pswitch_61
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 103
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->f:Landroid/graphics/RectF;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/B;->b:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 104
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 105
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget v2, p0, Lio/bidmachine/rendering/internal/B;->r:F

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {v0, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 106
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_216

    .line 107
    :pswitch_90
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 108
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->f:Landroid/graphics/RectF;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/B;->b:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 109
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 110
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget v2, p0, Lio/bidmachine/rendering/internal/B;->r:F

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {v0, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 111
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_216

    .line 112
    :pswitch_bf
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 113
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->f:Landroid/graphics/RectF;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/B;->b:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 114
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 115
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget v2, p0, Lio/bidmachine/rendering/internal/B;->r:F

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {v0, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 116
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_216

    .line 117
    :pswitch_ee
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 119
    iget v0, p0, Lio/bidmachine/rendering/internal/B;->d:I

    int-to-float v0, v0

    iget-object v3, p0, Lio/bidmachine/rendering/internal/B;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_110

    iget v0, p0, Lio/bidmachine/rendering/internal/B;->e:I

    int-to-float v0, v0

    iget-object v3, p0, Lio/bidmachine/rendering/internal/B;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_110

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_128

    .line 123
    :cond_110
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v3, p0, Lio/bidmachine/rendering/internal/B;->d:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 124
    iget-object v3, p0, Lio/bidmachine/rendering/internal/B;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lio/bidmachine/rendering/internal/B;->e:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 128
    :goto_128
    iget-object v3, p0, Lio/bidmachine/rendering/internal/B;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lio/bidmachine/rendering/internal/B;->d:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    add-float/2addr v3, v2

    .line 129
    iget-object v4, p0, Lio/bidmachine/rendering/internal/B;->b:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lio/bidmachine/rendering/internal/B;->e:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v4, v2

    .line 131
    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 132
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 134
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 135
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 136
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget v2, p0, Lio/bidmachine/rendering/internal/B;->r:F

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {v0, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 137
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_216

    .line 138
    :pswitch_170
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/B;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 139
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget v3, p0, Lio/bidmachine/rendering/internal/B;->r:F

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-virtual {v0, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 141
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 146
    iget v0, p0, Lio/bidmachine/rendering/internal/B;->d:I

    int-to-float v0, v0

    iget-object v3, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v0, v3

    iget-object v3, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lio/bidmachine/rendering/internal/B;->e:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    const/4 v3, 0x0

    if-lez v0, :cond_1b5

    .line 147
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v4, p0, Lio/bidmachine/rendering/internal/B;->e:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 148
    iget-object v4, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lio/bidmachine/rendering/internal/B;->d:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    goto :goto_1ce

    .line 150
    :cond_1b5
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v4, p0, Lio/bidmachine/rendering/internal/B;->d:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 151
    iget-object v4, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lio/bidmachine/rendering/internal/B;->e:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    move v6, v4

    move v4, v3

    move v3, v6

    .line 154
    :goto_1ce
    iget-object v5, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 155
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    add-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v4, v4

    .line 156
    iget v5, p0, Lio/bidmachine/rendering/internal/B;->r:F

    div-float/2addr v5, v1

    add-float/2addr v4, v5

    add-float/2addr v3, v2

    float-to-int v1, v3

    int-to-float v1, v1

    add-float/2addr v1, v5

    .line 157
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_216

    .line 158
    :pswitch_1e4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/B;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 159
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget v3, p0, Lio/bidmachine/rendering/internal/B;->r:F

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-virtual {v0, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 161
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 162
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    .line 163
    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v3, p0, Lio/bidmachine/rendering/internal/B;->d:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v2

    .line 164
    iget-object v3, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lio/bidmachine/rendering/internal/B;->e:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    add-float/2addr v3, v2

    .line 165
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 259
    :goto_216
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/B;->n:Z

    return-void

    nop

    :pswitch_data_222
    .packed-switch 0x1
        :pswitch_1e4
        :pswitch_170
        :pswitch_ee
        :pswitch_bf
        :pswitch_90
        :pswitch_61
        :pswitch_3f
    .end packed-switch
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .registers 10

    .line 261
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->p:[Z

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/B;->a([Z)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_7e

    .line 266
    :cond_9
    iget v0, p0, Lio/bidmachine/rendering/internal/B;->o:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_11

    goto :goto_7e

    .line 271
    :cond_11
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->c:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 272
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 273
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v0, v1

    .line 274
    iget-object v3, p0, Lio/bidmachine/rendering/internal/B;->c:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v3, v2

    .line 275
    iget v4, p0, Lio/bidmachine/rendering/internal/B;->o:F

    .line 277
    iget-object v5, p0, Lio/bidmachine/rendering/internal/B;->p:[Z

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-nez v5, :cond_3c

    .line 278
    iget-object v5, p0, Lio/bidmachine/rendering/internal/B;->k:Landroid/graphics/RectF;

    add-float v6, v1, v4

    add-float v7, v2, v4

    invoke-virtual {v5, v1, v2, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 279
    iget-object v5, p0, Lio/bidmachine/rendering/internal/B;->k:Landroid/graphics/RectF;

    iget-object v6, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 282
    :cond_3c
    iget-object v5, p0, Lio/bidmachine/rendering/internal/B;->p:[Z

    const/4 v6, 0x1

    aget-boolean v5, v5, v6

    if-nez v5, :cond_51

    .line 283
    iget-object v5, p0, Lio/bidmachine/rendering/internal/B;->k:Landroid/graphics/RectF;

    sub-float v6, v0, v4

    invoke-virtual {v5, v6, v2, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 284
    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->k:Landroid/graphics/RectF;

    iget-object v5, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 287
    :cond_51
    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->p:[Z

    const/4 v5, 0x2

    aget-boolean v2, v2, v5

    if-nez v2, :cond_68

    .line 288
    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->k:Landroid/graphics/RectF;

    sub-float v5, v0, v4

    sub-float v6, v3, v4

    invoke-virtual {v2, v5, v6, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 289
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 292
    :cond_68
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->p:[Z

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-nez v0, :cond_7e

    .line 293
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->k:Landroid/graphics/RectF;

    sub-float v2, v3, v4

    add-float/2addr v4, v1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 294
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_7e
    :goto_7e
    return-void
.end method

.method public final a([Z)Z
    .registers 6

    .line 328
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_d

    aget-boolean v3, p1, v2

    if-eqz v3, :cond_a

    return v1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    const/4 p1, 0x1

    return p1
.end method

.method public final b(F)Lio/bidmachine/rendering/internal/B;
    .registers 2

    .line 36
    invoke-virtual {p0, p1, p1, p1, p1}, Lio/bidmachine/rendering/internal/B;->a(FFFF)Lio/bidmachine/rendering/internal/B;

    return-object p0
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lio/bidmachine/rendering/internal/B;->p:[Z

    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/internal/B;->a([Z)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_b4

    .line 6
    :cond_c
    iget v1, v0, Lio/bidmachine/rendering/internal/B;->o:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_15

    goto/16 :goto_b4

    .line 11
    :cond_15
    iget-object v1, v0, Lio/bidmachine/rendering/internal/B;->c:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 12
    iget v6, v1, Landroid/graphics/RectF;->top:F

    .line 13
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    add-float/2addr v1, v3

    .line 14
    iget-object v2, v0, Lio/bidmachine/rendering/internal/B;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float v13, v6, v2

    .line 15
    iget v14, v0, Lio/bidmachine/rendering/internal/B;->o:F

    .line 16
    iget v2, v0, Lio/bidmachine/rendering/internal/B;->r:F

    const/4 v15, 0x2

    int-to-float v4, v15

    div-float v16, v2, v4

    .line 18
    iget-object v2, v0, Lio/bidmachine/rendering/internal/B;->p:[Z

    const/4 v4, 0x0

    aget-boolean v2, v2, v4

    if-nez v2, :cond_50

    sub-float v5, v3, v16

    add-float v7, v3, v14

    .line 19
    iget-object v9, v0, Lio/bidmachine/rendering/internal/B;->i:Landroid/graphics/Paint;

    move v8, v6

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v8, v16

    add-float v6, v8, v14

    .line 20
    iget-object v7, v0, Lio/bidmachine/rendering/internal/B;->i:Landroid/graphics/Paint;

    move v5, v3

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_51

    :cond_50
    move v8, v6

    .line 23
    :goto_51
    iget-object v2, v0, Lio/bidmachine/rendering/internal/B;->p:[Z

    const/4 v4, 0x1

    aget-boolean v2, v2, v4

    if-nez v2, :cond_73

    sub-float v2, v1, v14

    sub-float v5, v2, v16

    .line 24
    iget-object v9, v0, Lio/bidmachine/rendering/internal/B;->i:Landroid/graphics/Paint;

    move v6, v8

    move-object/from16 v4, p1

    move v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v8, v7

    sub-float v9, v6, v16

    add-float v11, v6, v14

    .line 25
    iget-object v12, v0, Lio/bidmachine/rendering/internal/B;->i:Landroid/graphics/Paint;

    move v10, v8

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v1, v8

    .line 28
    :cond_73
    iget-object v2, v0, Lio/bidmachine/rendering/internal/B;->p:[Z

    aget-boolean v2, v2, v15

    if-nez v2, :cond_95

    sub-float v2, v1, v14

    sub-float v8, v2, v16

    add-float v10, v1, v16

    .line 29
    iget-object v12, v0, Lio/bidmachine/rendering/internal/B;->i:Landroid/graphics/Paint;

    move v11, v13

    move-object/from16 v7, p1

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v13, v9, v14

    .line 30
    iget-object v12, v0, Lio/bidmachine/rendering/internal/B;->i:Landroid/graphics/Paint;

    move v10, v1

    move v8, v1

    move v11, v9

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v9, v11

    goto :goto_96

    :cond_95
    move v9, v13

    .line 33
    :goto_96
    iget-object v1, v0, Lio/bidmachine/rendering/internal/B;->p:[Z

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    if-nez v1, :cond_b4

    sub-float v8, v3, v16

    add-float v10, v3, v14

    .line 34
    iget-object v12, v0, Lio/bidmachine/rendering/internal/B;->i:Landroid/graphics/Paint;

    move v11, v9

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v9, v14

    .line 35
    iget-object v7, v0, Lio/bidmachine/rendering/internal/B;->i:Landroid/graphics/Paint;

    move v5, v3

    move-object/from16 v2, p1

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_b4
    :goto_b4
    return-void
.end method

.method public final b([Z)Z
    .registers 6

    .line 37
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    aget-boolean v3, p1, v2

    if-eqz v3, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/internal/B;->n:Z

    if-eqz v0, :cond_2b

    .line 2
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->l:Landroid/graphics/Shader$TileMode;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/B;->m:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->l:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->m:Landroid/graphics/Shader$TileMode;

    if-ne v1, v2, :cond_23

    .line 4
    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 6
    :cond_23
    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/B;->n:Z

    .line 10
    :cond_2b
    iget-boolean v0, p0, Lio/bidmachine/rendering/internal/B;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    .line 11
    iget v0, p0, Lio/bidmachine/rendering/internal/B;->r:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_45

    .line 12
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 13
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    .line 15
    :cond_45
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    .line 18
    :cond_4d
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->p:[Z

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/B;->b([Z)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 19
    iget v0, p0, Lio/bidmachine/rendering/internal/B;->o:F

    .line 20
    iget v2, p0, Lio/bidmachine/rendering/internal/B;->r:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_72

    .line 21
    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 22
    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 23
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/B;->a(Landroid/graphics/Canvas;)V

    .line 24
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/B;->b(Landroid/graphics/Canvas;)V

    return-void

    .line 26
    :cond_72
    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 27
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/B;->a(Landroid/graphics/Canvas;)V

    return-void

    .line 30
    :cond_7d
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 31
    iget v0, p0, Lio/bidmachine/rendering/internal/B;->r:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_91

    .line 32
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_91
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/B;->e:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/B;->d:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 0
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/B;->a()V

    return-void
.end method

.method public onStateChange([I)Z
    .registers 4

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->s:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/B;->i:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_1b

    .line 3
    iget-object p1, p0, Lio/bidmachine/rendering/internal/B;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1b
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/B;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.B.a (io.bidmachine.rendering.internal.B$a)
.class public final Lio/bidmachine/rendering/internal/B$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/B;
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
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/B$a;-><init>()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.B.b (io.bidmachine.rendering.internal.B$b)
.class public abstract synthetic Lio/bidmachine/rendering/internal/B$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    sput-object v0, Lio/bidmachine/rendering/internal/B$b;->$EnumSwitchMapping$0:[I

    return-void
.end method
