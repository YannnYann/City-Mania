###### Class io.bidmachine.rendering.model.animation.effect.SlideAnimationEffect (io.bidmachine.rendering.model.animation.effect.SlideAnimationEffect)
.class public final Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect$WhenMappings;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;

.field public final b:Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

.field public final c:Z

.field public final d:Z

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;Lio/bidmachine/rendering/model/animation/effect/AnimationBase;)V
    .registers 4

    const-string v0, "animationDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationBase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->a:Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->b:Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->c:Z

    .line 7
    iput-boolean p1, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)F
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->b:Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    sget-object v1, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;->Screen:Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    if-ne v0, v1, :cond_19

    .line 2
    invoke-static {p1}, Lio/bidmachine/rendering/utils/UiUtilsKt;->findAdView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->getLocationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    return p1

    .line 7
    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public final b(Landroid/view/View;)F
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->b:Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    sget-object v1, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;->Screen:Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    if-ne v0, v1, :cond_14

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->getLocationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    return p1

    .line 4
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    neg-float p1, p1

    return p1
.end method

.method public bridge synthetic buildAnimator(Landroid/view/View;Z)Landroid/animation/Animator;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->buildAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public buildAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "view"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->a:Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;

    sget-object v3, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const-string v3, "{\n                Object\u2026          )\n            }"

    const/4 v4, 0x0

    if-eq v2, v1, :cond_6d

    const/4 v5, 0x2

    if-eq v2, v5, :cond_55

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3d

    const/4 v5, 0x4

    if-ne v2, v5, :cond_37

    .line 42
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 43
    iget v5, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->f:F

    if-eqz p2, :cond_26

    goto :goto_2a

    .line 46
    :cond_26
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->a(Landroid/view/View;)F

    move-result v4

    :goto_2a
    add-float/2addr v5, v4

    .line 47
    new-array p2, v1, [F

    aput v5, p2, v0

    .line 48
    invoke-static {p1, v2, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 49
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 39
    :cond_37
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 50
    :cond_3d
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 51
    iget v5, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->f:F

    if-eqz p2, :cond_44

    goto :goto_48

    .line 54
    :cond_44
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->d(Landroid/view/View;)F

    move-result v4

    :goto_48
    add-float/2addr v5, v4

    .line 55
    new-array p2, v1, [F

    aput v5, p2, v0

    .line 56
    invoke-static {p1, v2, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 57
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 58
    :cond_55
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 59
    iget v5, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->e:F

    if-eqz p2, :cond_5c

    goto :goto_60

    .line 62
    :cond_5c
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->c(Landroid/view/View;)F

    move-result v4

    :goto_60
    add-float/2addr v5, v4

    .line 63
    new-array p2, v1, [F

    aput v5, p2, v0

    .line 64
    invoke-static {p1, v2, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 65
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 66
    :cond_6d
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 67
    iget v5, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->e:F

    if-eqz p2, :cond_74

    goto :goto_78

    .line 70
    :cond_74
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->b(Landroid/view/View;)F

    move-result v4

    :goto_78
    add-float/2addr v5, v4

    .line 71
    new-array p2, v1, [F

    aput v5, p2, v0

    .line 72
    invoke-static {p1, v2, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 73
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Landroid/view/View;)F
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->b:Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    sget-object v1, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;->Screen:Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    if-ne v0, v1, :cond_19

    .line 2
    invoke-static {p1}, Lio/bidmachine/rendering/utils/UiUtilsKt;->findAdView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->getLocationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    return p1

    .line 7
    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public final d(Landroid/view/View;)F
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->b:Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    sget-object v1, Lio/bidmachine/rendering/model/animation/effect/AnimationBase;->Screen:Lio/bidmachine/rendering/model/animation/effect/AnimationBase;

    if-ne v0, v1, :cond_14

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->getLocationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    return p1

    .line 4
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    neg-float p1, p1

    return p1
.end method

.method public isApplicableWithLayers()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->c:Z

    return v0
.end method

.method public isLayoutSensitive()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->d:Z

    return v0
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->a:Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;

    sget-object v1, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1c

    return-void

    .line 9
    :cond_1c
    iget v0, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->f:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 10
    :cond_22
    iget v0, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->e:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public onSaveViewState(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->e:F

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->f:F

    return-void
.end method

.method public prepareView(Landroid/view/View;Z)V
    .registers 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->a:Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;

    sget-object v1, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_44

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1d

    return-void

    .line 27
    :cond_1d
    iget v0, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->f:F

    if-eqz p2, :cond_25

    .line 28
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->d(Landroid/view/View;)F

    move-result v2

    :cond_25
    add-float/2addr v0, v2

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 30
    :cond_2a
    iget v0, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->f:F

    if-eqz p2, :cond_32

    .line 31
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->a(Landroid/view/View;)F

    move-result v2

    :cond_32
    add-float/2addr v0, v2

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 33
    :cond_37
    iget v0, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->e:F

    if-eqz p2, :cond_3f

    .line 34
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->b(Landroid/view/View;)F

    move-result v2

    :cond_3f
    add-float/2addr v0, v2

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 36
    :cond_44
    iget v0, p0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->e:F

    if-eqz p2, :cond_4c

    .line 37
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;->c(Landroid/view/View;)F

    move-result v2

    :cond_4c
    add-float/2addr v0, v2

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

###### Class io.bidmachine.rendering.model.animation.effect.SlideAnimationEffect.WhenMappings (io.bidmachine.rendering.model.animation.effect.SlideAnimationEffect$WhenMappings)
.class public final synthetic Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;->values()[Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;->Left:Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;->Right:Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;->Up:Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;->Down:Lio/bidmachine/rendering/model/animation/effect/AnimationDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lio/bidmachine/rendering/model/animation/effect/SlideAnimationEffect$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
