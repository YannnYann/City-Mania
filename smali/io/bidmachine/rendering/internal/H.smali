###### Class io.bidmachine.rendering.internal.H (io.bidmachine.rendering.internal.H)
.class public final Lio/bidmachine/rendering/internal/H;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/H$b;,
        Lio/bidmachine/rendering/internal/H$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/bidmachine/rendering/Repository;

.field public final c:Lio/bidmachine/rendering/model/Background;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Lio/bidmachine/rendering/internal/meanbackground/g;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Landroid/animation/Animator;


# direct methods
.method public static synthetic $r8$lambda$Nr-as7_bfK-IsEINP5N9gwS3X3Y(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/rendering/internal/H;->a(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/Background;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "background"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/H;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/H;->b:Lio/bidmachine/rendering/Repository;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/internal/H;->c:Lio/bidmachine/rendering/model/Background;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/H;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/H;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/g;

    const/4 p3, 0x0

    const/4 v0, 0x3

    invoke-direct {p1, p3, p3, v0, p3}, Lio/bidmachine/rendering/internal/meanbackground/g;-><init>(Lkotlin/coroutines/CoroutineContext;Lio/bidmachine/rendering/internal/meanbackground/g$b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/H;->f:Lio/bidmachine/rendering/internal/meanbackground/g;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/H;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final a(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$newDrawable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lio/bidmachine/util/ColorUtilsKt;->toColorInt(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/rendering/internal/H;Landroid/view/View;ZLandroid/graphics/Bitmap;Lio/bidmachine/rendering/model/ScaleType;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;ILjava/lang/Object;)V
    .registers 10

    and-int/lit8 p8, p7, 0x8

    const/4 v0, 0x0

    if-eqz p8, :cond_6

    move-object p4, v0

    :cond_6
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_b

    move-object p5, v0

    :cond_b
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_10

    move-object p6, v0

    .line 242
    :cond_10
    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;ZLandroid/graphics/Bitmap;Lio/bidmachine/rendering/model/ScaleType;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/rendering/internal/H;Ljava/lang/Object;Landroid/view/View;Lio/bidmachine/rendering/model/Placeholder;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;ILjava/lang/Object;)V
    .registers 10

    and-int/lit8 p8, p7, 0x8

    const/4 v0, 0x0

    if-eqz p8, :cond_6

    move-object p4, v0

    :cond_6
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_b

    move-object p5, v0

    :cond_b
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_10

    move-object p6, v0

    .line 26
    :cond_10
    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/rendering/internal/H;->a(Ljava/lang/Object;Landroid/view/View;Lio/bidmachine/rendering/model/Placeholder;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/rendering/internal/H;Ljava/lang/Object;Landroid/view/View;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;ZLio/bidmachine/rendering/internal/H$a;ILjava/lang/Object;)V
    .registers 10

    and-int/lit8 p8, p7, 0x4

    const/4 v0, 0x0

    if-eqz p8, :cond_6

    move-object p3, v0

    :cond_6
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_b

    move-object p4, v0

    :cond_b
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_10

    const/4 p5, 0x1

    :cond_10
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_15

    move-object p6, v0

    .line 1
    :cond_15
    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/rendering/internal/H;->a(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;ZLio/bidmachine/rendering/internal/H$a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 299
    iget-object v0, p0, Lio/bidmachine/rendering/internal/H;->h:Landroid/animation/Animator;

    if-eqz v0, :cond_a

    .line 300
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 301
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_a
    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lio/bidmachine/rendering/internal/H;->h:Landroid/animation/Animator;

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lio/bidmachine/rendering/internal/H$a;)V
    .registers 7

    .line 277
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/H;->a()V

    .line 279
    iget-object v0, p0, Lio/bidmachine/rendering/internal/H;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_11

    .line 280
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 284
    :cond_11
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 285
    new-array p1, p1, [F

    fill-array-data p1, :array_44

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 286
    invoke-virtual {p3}, Lio/bidmachine/rendering/internal/H$a;->a()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 287
    invoke-virtual {p3}, Lio/bidmachine/rendering/internal/H$a;->b()Landroid/animation/TimeInterpolator;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 288
    new-instance p3, Lio/bidmachine/rendering/internal/H$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lio/bidmachine/rendering/internal/H$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 289
    new-instance p3, Lio/bidmachine/rendering/internal/H$g;

    invoke-direct {p3, v0, p2}, Lio/bidmachine/rendering/internal/H$g;-><init>(Ljava/lang/ref/WeakReference;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 296
    iput-object p1, p0, Lio/bidmachine/rendering/internal/H;->h:Landroid/animation/Animator;

    .line 297
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_44
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(Landroid/view/View;ZILjava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V
    .registers 15

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    new-instance v1, Lio/bidmachine/util/gradient/GradientDrawable;

    invoke-direct {v1}, Lio/bidmachine/util/gradient/GradientDrawable;-><init>()V

    .line 150
    invoke-virtual {v1, p3}, Lio/bidmachine/util/gradient/GradientDrawable;->setColor(I)V

    if-eqz p4, :cond_17

    .line 152
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v1, p3}, Lio/bidmachine/util/gradient/GradientDrawable;->setCornerRadius(F)V

    :cond_17
    if-eqz p5, :cond_4c

    .line 155
    invoke-virtual {p5}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result v2

    invoke-virtual {p5}, Lio/bidmachine/rendering/model/Border;->getStrokeColor()I

    move-result v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lio/bidmachine/util/gradient/GradientDrawable;->setStroke$default(Lio/bidmachine/util/gradient/GradientDrawable;IIFFILjava/lang/Object;)V

    .line 157
    invoke-virtual {p5}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result p3

    .line 158
    invoke-virtual {p5}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result p4

    iget-object v0, p0, Lio/bidmachine/rendering/internal/H;->a:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr p4, v0

    .line 159
    invoke-virtual {p5}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result v0

    .line 160
    invoke-virtual {p5}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result p5

    iget-object v3, p0, Lio/bidmachine/rendering/internal/H;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr p5, v2

    .line 161
    invoke-virtual {p1, p3, p4, v0, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 169
    :cond_4c
    invoke-virtual {p0, p1, p2, v1, p6}, Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;ZLandroid/graphics/drawable/Drawable;Lio/bidmachine/rendering/internal/H$a;)V

    return-void
.end method

.method public final a(Landroid/view/View;ZLandroid/graphics/Bitmap;Lio/bidmachine/rendering/model/ScaleType;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;)V
    .registers 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_8

    return-void

    .line 243
    :cond_8
    invoke-static {p4}, Lio/bidmachine/rendering/model/ScaleTypeKt;->toImageViewScaleType(Lio/bidmachine/rendering/model/ScaleType;)Landroid/widget/ImageView$ScaleType;

    move-result-object p4

    .line 244
    new-instance v0, Lio/bidmachine/rendering/internal/B;

    invoke-direct {v0, p3}, Lio/bidmachine/rendering/internal/B;-><init>(Landroid/graphics/Bitmap;)V

    .line 245
    invoke-virtual {v0, p4}, Lio/bidmachine/rendering/internal/B;->a(Landroid/widget/ImageView$ScaleType;)Lio/bidmachine/rendering/internal/B;

    if-eqz p5, :cond_24

    .line 246
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lez p3, :cond_24

    .line 247
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Lio/bidmachine/rendering/internal/B;->b(F)Lio/bidmachine/rendering/internal/B;

    :cond_24
    if-eqz p6, :cond_58

    .line 250
    invoke-virtual {p6}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Lio/bidmachine/rendering/internal/B;->a(F)Lio/bidmachine/rendering/internal/B;

    .line 251
    invoke-virtual {p6}, Lio/bidmachine/rendering/model/Border;->getStrokeColor()I

    move-result p3

    invoke-virtual {v0, p3}, Lio/bidmachine/rendering/internal/B;->a(I)Lio/bidmachine/rendering/internal/B;

    .line 253
    invoke-virtual {p6}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result p3

    .line 254
    invoke-virtual {p6}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result p4

    iget-object p5, p0, Lio/bidmachine/rendering/internal/H;->a:Landroid/content/Context;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p5, v1}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result p5

    sub-int/2addr p4, p5

    .line 255
    invoke-virtual {p6}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result p5

    .line 256
    invoke-virtual {p6}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result p6

    iget-object v2, p0, Lio/bidmachine/rendering/internal/H;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr p6, v1

    .line 257
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->setPadding(IIII)V

    :cond_58
    const/4 p3, 0x0

    .line 265
    invoke-virtual {p0, p1, p2, v0, p3}, Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;ZLandroid/graphics/drawable/Drawable;Lio/bidmachine/rendering/internal/H$a;)V

    return-void
.end method

.method public final a(Landroid/view/View;ZLandroid/graphics/drawable/Drawable;Lio/bidmachine/rendering/internal/H$a;)V
    .registers 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lio/bidmachine/rendering/internal/H;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-nez p2, :cond_14

    return-void

    .line 270
    :cond_14
    iget-object p2, p0, Lio/bidmachine/rendering/internal/H;->c:Lio/bidmachine/rendering/model/Background;

    invoke-virtual {p2}, Lio/bidmachine/rendering/model/Background;->getOpacity()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/high16 v0, 0x437f0000    # 255.0f

    invoke-static {p2, v0}, Lio/bidmachine/util/UtilsKt;->fromRatio(Ljava/lang/Number;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p3, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p4, :cond_40

    .line 273
    invoke-virtual {p4, p1}, Lio/bidmachine/rendering/internal/H$a;->a(Landroid/view/View;)Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_40

    .line 274
    invoke-virtual {p0, p1, p3, p4}, Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lio/bidmachine/rendering/internal/H$a;)V

    return-void

    .line 276
    :cond_40
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Landroid/view/View;ZLio/bidmachine/rendering/model/Color;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V
    .registers 18

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "color"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Lio/bidmachine/rendering/model/Color;->isContextBased()Z

    move-result v8

    .line 87
    invoke-virtual {p3}, Lio/bidmachine/rendering/model/Color;->getSource()Lio/bidmachine/rendering/model/ColorSource;

    move-result-object v0

    .line 88
    instance-of v1, v0, Lio/bidmachine/rendering/model/OneColorSource;

    if-eqz v1, :cond_47

    .line 90
    check-cast v0, Lio/bidmachine/rendering/model/OneColorSource;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/OneColorSource;->getColor()I

    move-result v4

    .line 91
    new-instance v0, Lio/bidmachine/rendering/internal/H$e;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/rendering/internal/H$e;-><init>(Lio/bidmachine/rendering/internal/H;Landroid/view/View;ZILjava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V

    move-object v7, v0

    if-nez v8, :cond_30

    .line 102
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 106
    :cond_30
    iget-object v8, p0, Lio/bidmachine/rendering/internal/H;->f:Lio/bidmachine/rendering/internal/meanbackground/g;

    .line 108
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 109
    new-instance v0, Lio/bidmachine/rendering/internal/H$c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/rendering/internal/H$c;-><init>(Lio/bidmachine/rendering/internal/H;Landroid/view/View;ZLjava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V

    invoke-virtual {v8, p1, v9, v7, v0}, Lio/bidmachine/rendering/internal/meanbackground/g;->a(Landroid/view/View;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 127
    :cond_47
    instance-of v1, v0, Lio/bidmachine/rendering/model/GradientColorSource;

    if-eqz v1, :cond_7d

    .line 129
    check-cast v0, Lio/bidmachine/rendering/model/GradientColorSource;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/GradientColorSource;->getGradient()Lio/bidmachine/rendering/model/Gradient;

    move-result-object v4

    .line 130
    new-instance v0, Lio/bidmachine/rendering/internal/H$f;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/rendering/internal/H$f;-><init>(Lio/bidmachine/rendering/internal/H;Landroid/view/View;ZLio/bidmachine/rendering/model/Gradient;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V

    move-object v9, v0

    if-nez v8, :cond_65

    .line 141
    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 145
    :cond_65
    iget-object v8, p0, Lio/bidmachine/rendering/internal/H;->f:Lio/bidmachine/rendering/internal/meanbackground/g;

    const/high16 v0, -0x1000000

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 148
    new-instance v0, Lio/bidmachine/rendering/internal/H$d;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/rendering/internal/H$d;-><init>(Lio/bidmachine/rendering/internal/H;Landroid/view/View;ZLio/bidmachine/rendering/model/Gradient;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V

    invoke-virtual {v8, p1, v10, v9, v0}, Lio/bidmachine/rendering/internal/meanbackground/g;->b(Landroid/view/View;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    :cond_7d
    return-void
.end method

.method public final a(Landroid/view/View;ZLio/bidmachine/rendering/model/Gradient;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V
    .registers 16

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gradient"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p3}, Lio/bidmachine/rendering/model/Gradient;->getType()Lio/bidmachine/rendering/model/GradientType;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/GradientType;->toDrawableGradientType()I

    move-result v0

    .line 171
    invoke-virtual {p3}, Lio/bidmachine/rendering/model/Gradient;->getDirection()Lio/bidmachine/rendering/model/GradientDirection;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/GradientDirection;->toDrawableGradientOrientation()Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    move-result-object v1

    .line 172
    new-instance v2, Lio/bidmachine/util/gradient/GradientDrawable;

    invoke-virtual {p3}, Lio/bidmachine/rendering/model/Gradient;->getColors()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lio/bidmachine/util/gradient/GradientDrawable;-><init>(Lio/bidmachine/util/gradient/GradientDrawable$Orientation;[I)V

    .line 173
    invoke-virtual {v2, v0}, Lio/bidmachine/util/gradient/GradientDrawable;->setGradientType(I)V

    .line 174
    invoke-virtual {p3}, Lio/bidmachine/rendering/model/Gradient;->getType()Lio/bidmachine/rendering/model/GradientType;

    move-result-object p3

    sget-object v0, Lio/bidmachine/rendering/model/GradientType;->Radial:Lio/bidmachine/rendering/model/GradientType;

    if-ne p3, v0, :cond_39

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 175
    invoke-static {v2, v1, v3, p3, v0}, Lio/bidmachine/util/gradient/GradientDrawable;->setGradientRadius$default(Lio/bidmachine/util/gradient/GradientDrawable;FIILjava/lang/Object;)V

    :cond_39
    if-eqz p4, :cond_43

    .line 178
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v2, p3}, Lio/bidmachine/util/gradient/GradientDrawable;->setCornerRadius(F)V

    :cond_43
    if-eqz p5, :cond_78

    .line 181
    invoke-virtual {p5}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result v3

    invoke-virtual {p5}, Lio/bidmachine/rendering/model/Border;->getStrokeColor()I

    move-result v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lio/bidmachine/util/gradient/GradientDrawable;->setStroke$default(Lio/bidmachine/util/gradient/GradientDrawable;IIFFILjava/lang/Object;)V

    .line 183
    invoke-virtual {p5}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result p3

    .line 184
    invoke-virtual {p5}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result p4

    iget-object v0, p0, Lio/bidmachine/rendering/internal/H;->a:Landroid/content/Context;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr p4, v0

    .line 185
    invoke-virtual {p5}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result v0

    .line 186
    invoke-virtual {p5}, Lio/bidmachine/rendering/model/Border;->getStrokeWidthPx()I

    move-result p5

    iget-object v3, p0, Lio/bidmachine/rendering/internal/H;->a:Landroid/content/Context;

    invoke-static {v3, v1}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr p5, v1

    .line 187
    invoke-virtual {p1, p3, p4, v0, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 195
    :cond_78
    invoke-virtual {p0, p1, p2, v2, p6}, Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;ZLandroid/graphics/drawable/Drawable;Lio/bidmachine/rendering/internal/H$a;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;Lio/bidmachine/rendering/model/BackgroundSource;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V
    .registers 16

    const-string v1, "assetsHolder"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "backgroundSource"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    instance-of v1, p3, Lio/bidmachine/rendering/model/ColorBackgroundSource;

    if-eqz v1, :cond_24

    .line 68
    move-object v0, p3

    check-cast v0, Lio/bidmachine/rendering/model/ColorBackgroundSource;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/ColorBackgroundSource;->getColor()Lio/bidmachine/rendering/model/Color;

    move-result-object v5

    const/4 v4, 0x1

    move-object v2, p0

    move-object v3, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 69
    invoke-virtual/range {v2 .. v8}, Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;ZLio/bidmachine/rendering/model/Color;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V

    return-void

    .line 79
    :cond_24
    instance-of v1, p3, Lio/bidmachine/rendering/model/ImageBackgroundSource;

    if-eqz v1, :cond_38

    .line 84
    move-object v0, p3

    check-cast v0, Lio/bidmachine/rendering/model/ImageBackgroundSource;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/ImageBackgroundSource;->getImage()Lio/bidmachine/rendering/model/Image;

    move-result-object v6

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p4

    move-object v8, p5

    .line 85
    invoke-virtual/range {v2 .. v8}, Lio/bidmachine/rendering/internal/H;->a(Ljava/lang/Object;Landroid/view/View;ZLio/bidmachine/rendering/model/Image;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;)V

    :cond_38
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;Lio/bidmachine/rendering/model/Placeholder;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V
    .registers 17

    const-string v0, "assetsHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeholder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p3}, Lio/bidmachine/rendering/model/Placeholder;->getSource()Lio/bidmachine/rendering/model/PlaceholderSource;

    move-result-object v0

    .line 28
    instance-of v1, v0, Lio/bidmachine/rendering/model/NamePlaceholderSource;

    if-eqz v1, :cond_30

    .line 32
    sget-object v1, Lio/bidmachine/rendering/internal/k;->a:Lio/bidmachine/rendering/internal/k;

    check-cast v0, Lio/bidmachine/rendering/model/NamePlaceholderSource;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/NamePlaceholderSource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/rendering/internal/k;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v6, p4

    move-object v7, p5

    .line 33
    invoke-static/range {v1 .. v9}, Lio/bidmachine/rendering/internal/H;->a(Lio/bidmachine/rendering/internal/H;Landroid/view/View;ZLandroid/graphics/Bitmap;Lio/bidmachine/rendering/model/ScaleType;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;ILjava/lang/Object;)V

    return-void

    .line 42
    :cond_30
    instance-of v1, v0, Lio/bidmachine/rendering/model/ColorPlaceholderSource;

    if-eqz v1, :cond_45

    .line 46
    check-cast v0, Lio/bidmachine/rendering/model/ColorPlaceholderSource;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/ColorPlaceholderSource;->getColor()Lio/bidmachine/rendering/model/Color;

    move-result-object v4

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    .line 47
    invoke-virtual/range {v1 .. v7}, Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;ZLio/bidmachine/rendering/model/Color;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V

    return-void

    .line 57
    :cond_45
    instance-of v1, v0, Lio/bidmachine/rendering/model/ImagePlaceholderSource;

    if-eqz v1, :cond_58

    .line 62
    check-cast v0, Lio/bidmachine/rendering/model/ImagePlaceholderSource;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/ImagePlaceholderSource;->getImage()Lio/bidmachine/rendering/model/Image;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p5

    .line 63
    invoke-virtual/range {v1 .. v7}, Lio/bidmachine/rendering/internal/H;->a(Ljava/lang/Object;Landroid/view/View;ZLio/bidmachine/rendering/model/Image;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;)V

    :cond_58
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;ZLio/bidmachine/rendering/internal/H$a;)V
    .registers 16

    const-string v1, "assetsHolder"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/H;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/H;->c:Lio/bidmachine/rendering/model/Background;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/Background;->getPlaceholder()Lio/bidmachine/rendering/model/Placeholder;

    move-result-object v1

    if-eqz v1, :cond_2b

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v3, v1

    move-object v1, p1

    .line 4
    :try_start_26
    invoke-static/range {v0 .. v8}, Lio/bidmachine/rendering/internal/H;->a(Lio/bidmachine/rendering/internal/H;Ljava/lang/Object;Landroid/view/View;Lio/bidmachine/rendering/model/Placeholder;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;ILjava/lang/Object;)V

    .line 11
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2b

    .line 14
    :catchall_2b
    :cond_2b
    iget-object v1, p0, Lio/bidmachine/rendering/internal/H;->c:Lio/bidmachine/rendering/model/Background;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/Background;->isContextBased()Z

    move-result v1

    if-eqz p5, :cond_35

    if-eqz v1, :cond_39

    :cond_35
    if-nez p5, :cond_4c

    if-eqz v1, :cond_4c

    .line 16
    :cond_39
    iget-object v1, p0, Lio/bidmachine/rendering/internal/H;->c:Lio/bidmachine/rendering/model/Background;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/Background;->getSource()Lio/bidmachine/rendering/model/BackgroundSource;

    move-result-object v3

    if-eqz v3, :cond_4c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    .line 17
    :try_start_47
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/rendering/internal/H;->a(Ljava/lang/Object;Landroid/view/View;Lio/bidmachine/rendering/model/BackgroundSource;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V

    .line 25
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4c

    :catchall_4c
    :cond_4c
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;ZLio/bidmachine/rendering/model/Image;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;)V
    .registers 17

    const-string v1, "assetsHolder"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "image"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p4}, Lio/bidmachine/rendering/model/Image;->getResource()Lio/bidmachine/rendering/model/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/Resource;->getSource()Lio/bidmachine/rendering/model/ResourceSource;

    move-result-object v1

    .line 197
    instance-of v4, v1, Lio/bidmachine/rendering/model/Base64ResourceSource;

    if-eqz v4, :cond_33

    .line 201
    check-cast v1, Lio/bidmachine/rendering/model/Base64ResourceSource;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/Base64ResourceSource;->getBase64()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/rendering/internal/k;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 202
    invoke-virtual {p4}, Lio/bidmachine/rendering/model/Image;->getScaleType()Lio/bidmachine/rendering/model/ScaleType;

    move-result-object v6

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object v7, p5

    move-object/from16 v8, p6

    .line 203
    invoke-virtual/range {v2 .. v8}, Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;ZLandroid/graphics/Bitmap;Lio/bidmachine/rendering/model/ScaleType;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;)V

    return-void

    .line 213
    :cond_33
    instance-of v3, v1, Lio/bidmachine/rendering/model/UrlResourceSource;

    if-eqz v3, :cond_58

    .line 214
    check-cast v1, Lio/bidmachine/rendering/model/UrlResourceSource;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/UrlResourceSource;->getUrls()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/rendering/model/MediaSourceKt;->urlsToMediaSource(Ljava/util/List;)Lio/bidmachine/rendering/model/MediaSource;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 215
    iget-object v9, p0, Lio/bidmachine/rendering/internal/H;->b:Lio/bidmachine/rendering/Repository;

    .line 218
    new-instance v2, Lio/bidmachine/rendering/internal/H$b;

    .line 221
    invoke-virtual {p4}, Lio/bidmachine/rendering/model/Image;->getScaleType()Lio/bidmachine/rendering/model/ScaleType;

    move-result-object v6

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move-object v7, p5

    move-object/from16 v8, p6

    .line 222
    invoke-direct/range {v2 .. v8}, Lio/bidmachine/rendering/internal/H$b;-><init>(Lio/bidmachine/rendering/internal/H;Landroid/view/View;ZLio/bidmachine/rendering/model/ScaleType;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;)V

    .line 223
    invoke-interface {v9, v1, p1, v2}, Lio/bidmachine/rendering/Repository;->getImage(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;)V

    return-void

    .line 237
    :cond_58
    instance-of v0, v1, Lio/bidmachine/rendering/model/HtmlResourceSource;

    if-nez v0, :cond_5e

    .line 241
    instance-of v0, v1, Lio/bidmachine/rendering/model/XmlResourceSource;

    :cond_5e
    return-void
.end method

###### Class io.bidmachine.rendering.internal.H.a (io.bidmachine.rendering.internal.H$a)
.class public final Lio/bidmachine/rendering/internal/H$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>(JLandroid/animation/TimeInterpolator;)V
    .registers 5

    const-string v0, "interpolator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/bidmachine/rendering/internal/H$a;->a:J

    .line 3
    iput-object p3, p0, Lio/bidmachine/rendering/internal/H$a;->b:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public synthetic constructor <init>(JLandroid/animation/TimeInterpolator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const-wide/16 p1, 0xc8

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_f

    .line 4
    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 5
    :cond_f
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/H$a;-><init>(JLandroid/animation/TimeInterpolator;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/H$a;->a:J

    return-wide v0
.end method

.method public final a(Landroid/view/View;)Z
    .registers 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/H$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/H$a;->b:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/rendering/internal/H$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/rendering/internal/H$a;

    iget-wide v3, p0, Lio/bidmachine/rendering/internal/H$a;->a:J

    iget-wide v5, p1, Lio/bidmachine/rendering/internal/H$a;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lio/bidmachine/rendering/internal/H$a;->b:Landroid/animation/TimeInterpolator;

    iget-object p1, p1, Lio/bidmachine/rendering/internal/H$a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    return v2

    :cond_20
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/H$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/internal/H$a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimationConfig(durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/rendering/internal/H$a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/H$a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.H.b (io.bidmachine.rendering.internal.H$b)
.class public final Lio/bidmachine/rendering/internal/H$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/Repository$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lio/bidmachine/rendering/model/ScaleType;

.field public final c:Ljava/lang/Integer;

.field public final d:Lio/bidmachine/rendering/model/Border;

.field public final e:Ljava/lang/ref/WeakReference;

.field public final synthetic f:Lio/bidmachine/rendering/internal/H;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/H;Landroid/view/View;ZLio/bidmachine/rendering/model/ScaleType;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;)V
    .registers 8

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/H$b;->f:Lio/bidmachine/rendering/internal/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lio/bidmachine/rendering/internal/H$b;->a:Z

    .line 3
    iput-object p4, p0, Lio/bidmachine/rendering/internal/H$b;->b:Lio/bidmachine/rendering/model/ScaleType;

    .line 4
    iput-object p5, p0, Lio/bidmachine/rendering/internal/H$b;->c:Ljava/lang/Integer;

    .line 5
    iput-object p6, p0, Lio/bidmachine/rendering/internal/H$b;->d:Lio/bidmachine/rendering/model/Border;

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/H$b;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onError(Lio/bidmachine/util/Error;)V
    .registers 3

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .registers 2

    .line 2
    check-cast p1, Lio/bidmachine/util/Error;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/H$b;->onError(Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .registers 10

    const-string v0, "successType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/H$b;->f:Lio/bidmachine/rendering/internal/H;

    .line 4
    :try_start_7
    iget-object v0, p0, Lio/bidmachine/rendering/internal/H$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_13

    goto :goto_26

    :cond_13
    const-string v0, "weakView.get() ?: return"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-boolean v3, p0, Lio/bidmachine/rendering/internal/H$b;->a:Z

    .line 7
    iget-object v5, p0, Lio/bidmachine/rendering/internal/H$b;->b:Lio/bidmachine/rendering/model/ScaleType;

    .line 8
    iget-object v6, p0, Lio/bidmachine/rendering/internal/H$b;->c:Ljava/lang/Integer;

    .line 9
    iget-object v7, p0, Lio/bidmachine/rendering/internal/H$b;->d:Lio/bidmachine/rendering/model/Border;

    move-object v4, p1

    .line 10
    invoke-virtual/range {v1 .. v7}, Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;ZLandroid/graphics/Bitmap;Lio/bidmachine/rendering/model/ScaleType;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;)V

    .line 18
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_26

    :catchall_26
    :goto_26
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/H$b;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.H.c (io.bidmachine.rendering.internal.H$c)
.class public final Lio/bidmachine/rendering/internal/H$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;ZLio/bidmachine/rendering/model/Color;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/H;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Integer;

.field public final synthetic e:Lio/bidmachine/rendering/model/Border;

.field public final synthetic f:Lio/bidmachine/rendering/internal/H$a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/H;Landroid/view/View;ZLjava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V
    .registers 7

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/H$c;->a:Lio/bidmachine/rendering/internal/H;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/H$c;->b:Landroid/view/View;

    iput-boolean p3, p0, Lio/bidmachine/rendering/internal/H$c;->c:Z

    iput-object p4, p0, Lio/bidmachine/rendering/internal/H$c;->d:Ljava/lang/Integer;

    iput-object p5, p0, Lio/bidmachine/rendering/internal/H$c;->e:Lio/bidmachine/rendering/model/Border;

    iput-object p6, p0, Lio/bidmachine/rendering/internal/H$c;->f:Lio/bidmachine/rendering/internal/H$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/H$c;->a:Lio/bidmachine/rendering/internal/H;

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/H$c;->b:Landroid/view/View;

    .line 3
    iget-boolean v2, p0, Lio/bidmachine/rendering/internal/H$c;->c:Z

    .line 5
    iget-object v4, p0, Lio/bidmachine/rendering/internal/H$c;->d:Ljava/lang/Integer;

    .line 6
    iget-object v5, p0, Lio/bidmachine/rendering/internal/H$c;->e:Lio/bidmachine/rendering/model/Border;

    .line 7
    iget-object v6, p0, Lio/bidmachine/rendering/internal/H$c;->f:Lio/bidmachine/rendering/internal/H$a;

    move v3, p1

    .line 8
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;ZILjava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/H$c;->a(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.H.d (io.bidmachine.rendering.internal.H$d)
.class public final Lio/bidmachine/rendering/internal/H$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;ZLio/bidmachine/rendering/model/Color;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/H;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Lio/bidmachine/rendering/model/Gradient;

.field public final synthetic e:Ljava/lang/Integer;

.field public final synthetic f:Lio/bidmachine/rendering/model/Border;

.field public final synthetic g:Lio/bidmachine/rendering/internal/H$a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/H;Landroid/view/View;ZLio/bidmachine/rendering/model/Gradient;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V
    .registers 8

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/H$d;->a:Lio/bidmachine/rendering/internal/H;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/H$d;->b:Landroid/view/View;

    iput-boolean p3, p0, Lio/bidmachine/rendering/internal/H$d;->c:Z

    iput-object p4, p0, Lio/bidmachine/rendering/internal/H$d;->d:Lio/bidmachine/rendering/model/Gradient;

    iput-object p5, p0, Lio/bidmachine/rendering/internal/H$d;->e:Ljava/lang/Integer;

    iput-object p6, p0, Lio/bidmachine/rendering/internal/H$d;->f:Lio/bidmachine/rendering/model/Border;

    iput-object p7, p0, Lio/bidmachine/rendering/internal/H$d;->g:Lio/bidmachine/rendering/internal/H$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .registers 10

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lio/bidmachine/rendering/internal/H$d;->a:Lio/bidmachine/rendering/internal/H;

    .line 2
    iget-object v2, p0, Lio/bidmachine/rendering/internal/H$d;->b:Landroid/view/View;

    .line 3
    iget-boolean v3, p0, Lio/bidmachine/rendering/internal/H$d;->c:Z

    .line 4
    new-instance v4, Lio/bidmachine/rendering/model/Gradient;

    .line 5
    iget-object v0, p0, Lio/bidmachine/rendering/internal/H$d;->d:Lio/bidmachine/rendering/model/Gradient;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/Gradient;->getType()Lio/bidmachine/rendering/model/GradientType;

    move-result-object v0

    .line 6
    iget-object v5, p0, Lio/bidmachine/rendering/internal/H$d;->d:Lio/bidmachine/rendering/model/Gradient;

    invoke-virtual {v5}, Lio/bidmachine/rendering/model/Gradient;->getDirection()Lio/bidmachine/rendering/model/GradientDirection;

    move-result-object v5

    .line 7
    invoke-direct {v4, v0, v5, p1}, Lio/bidmachine/rendering/model/Gradient;-><init>(Lio/bidmachine/rendering/model/GradientType;Lio/bidmachine/rendering/model/GradientDirection;Ljava/util/List;)V

    .line 12
    iget-object v5, p0, Lio/bidmachine/rendering/internal/H$d;->e:Ljava/lang/Integer;

    .line 13
    iget-object v6, p0, Lio/bidmachine/rendering/internal/H$d;->f:Lio/bidmachine/rendering/model/Border;

    .line 14
    iget-object v7, p0, Lio/bidmachine/rendering/internal/H$d;->g:Lio/bidmachine/rendering/internal/H$a;

    .line 15
    invoke-virtual/range {v1 .. v7}, Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;ZLio/bidmachine/rendering/model/Gradient;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/H$d;->a(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.H.e (io.bidmachine.rendering.internal.H$e)
.class public final Lio/bidmachine/rendering/internal/H$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;ZLio/bidmachine/rendering/model/Color;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/H;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Integer;

.field public final synthetic f:Lio/bidmachine/rendering/model/Border;

.field public final synthetic g:Lio/bidmachine/rendering/internal/H$a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/H;Landroid/view/View;ZILjava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V
    .registers 8

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/H$e;->a:Lio/bidmachine/rendering/internal/H;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/H$e;->b:Landroid/view/View;

    iput-boolean p3, p0, Lio/bidmachine/rendering/internal/H$e;->c:Z

    iput p4, p0, Lio/bidmachine/rendering/internal/H$e;->d:I

    iput-object p5, p0, Lio/bidmachine/rendering/internal/H$e;->e:Ljava/lang/Integer;

    iput-object p6, p0, Lio/bidmachine/rendering/internal/H$e;->f:Lio/bidmachine/rendering/model/Border;

    iput-object p7, p0, Lio/bidmachine/rendering/internal/H$e;->g:Lio/bidmachine/rendering/internal/H$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/H$e;->a:Lio/bidmachine/rendering/internal/H;

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/H$e;->b:Landroid/view/View;

    .line 3
    iget-boolean v2, p0, Lio/bidmachine/rendering/internal/H$e;->c:Z

    .line 4
    iget v3, p0, Lio/bidmachine/rendering/internal/H$e;->d:I

    .line 5
    iget-object v4, p0, Lio/bidmachine/rendering/internal/H$e;->e:Ljava/lang/Integer;

    .line 6
    iget-object v5, p0, Lio/bidmachine/rendering/internal/H$e;->f:Lio/bidmachine/rendering/model/Border;

    .line 7
    iget-object v6, p0, Lio/bidmachine/rendering/internal/H$e;->g:Lio/bidmachine/rendering/internal/H$a;

    .line 8
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;ZILjava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/H$e;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.H.f (io.bidmachine.rendering.internal.H$f)
.class public final Lio/bidmachine/rendering/internal/H$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;ZLio/bidmachine/rendering/model/Color;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/H;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Lio/bidmachine/rendering/model/Gradient;

.field public final synthetic e:Ljava/lang/Integer;

.field public final synthetic f:Lio/bidmachine/rendering/model/Border;

.field public final synthetic g:Lio/bidmachine/rendering/internal/H$a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/H;Landroid/view/View;ZLio/bidmachine/rendering/model/Gradient;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V
    .registers 8

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/H$f;->a:Lio/bidmachine/rendering/internal/H;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/H$f;->b:Landroid/view/View;

    iput-boolean p3, p0, Lio/bidmachine/rendering/internal/H$f;->c:Z

    iput-object p4, p0, Lio/bidmachine/rendering/internal/H$f;->d:Lio/bidmachine/rendering/model/Gradient;

    iput-object p5, p0, Lio/bidmachine/rendering/internal/H$f;->e:Ljava/lang/Integer;

    iput-object p6, p0, Lio/bidmachine/rendering/internal/H$f;->f:Lio/bidmachine/rendering/model/Border;

    iput-object p7, p0, Lio/bidmachine/rendering/internal/H$f;->g:Lio/bidmachine/rendering/internal/H$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/H$f;->a:Lio/bidmachine/rendering/internal/H;

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/H$f;->b:Landroid/view/View;

    .line 3
    iget-boolean v2, p0, Lio/bidmachine/rendering/internal/H$f;->c:Z

    .line 4
    iget-object v3, p0, Lio/bidmachine/rendering/internal/H$f;->d:Lio/bidmachine/rendering/model/Gradient;

    .line 5
    iget-object v4, p0, Lio/bidmachine/rendering/internal/H$f;->e:Ljava/lang/Integer;

    .line 6
    iget-object v5, p0, Lio/bidmachine/rendering/internal/H$f;->f:Lio/bidmachine/rendering/model/Border;

    .line 7
    iget-object v6, p0, Lio/bidmachine/rendering/internal/H$f;->g:Lio/bidmachine/rendering/internal/H$a;

    .line 8
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;ZLio/bidmachine/rendering/model/Gradient;Ljava/lang/Integer;Lio/bidmachine/rendering/model/Border;Lio/bidmachine/rendering/internal/H$a;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/H$f;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.H.g (io.bidmachine.rendering.internal.H$g)
.class public final Lio/bidmachine/rendering/internal/H$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/H;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lio/bidmachine/rendering/internal/H$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Lio/bidmachine/rendering/internal/H$g;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/H$g;->b:Landroid/graphics/drawable/Drawable;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/H$g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lio/bidmachine/rendering/internal/H$g;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.H$$ExternalSyntheticLambda0 (io.bidmachine.rendering.internal.H$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/rendering/internal/H$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/H$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/H$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lio/bidmachine/rendering/internal/H;->$r8$lambda$Nr-as7_bfK-IsEINP5N9gwS3X3Y(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
