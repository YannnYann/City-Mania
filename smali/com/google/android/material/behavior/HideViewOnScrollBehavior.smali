###### Class com.google.android.material.behavior.HideViewOnScrollBehavior (com.google.android.material.behavior.HideViewOnScrollBehavior)
.class public Lcom/google/android/material/behavior/HideViewOnScrollBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "HideViewOnScrollBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/behavior/HideViewOnScrollBehavior$OnScrollStateChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final ENTER_ANIM_DURATION_ATTR:I

.field public static final ENTER_EXIT_ANIM_EASING_ATTR:I

.field public static final EXIT_ANIM_DURATION_ATTR:I


# instance fields
.field public accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public additionalHiddenOffset:I

.field public currentAnimator:Landroid/view/ViewPropertyAnimator;

.field public currentState:I

.field public disableOnTouchExploration:Z

.field public enterAnimDuration:I

.field public enterAnimInterpolator:Landroid/animation/TimeInterpolator;

.field public exitAnimDuration:I

.field public exitAnimInterpolator:Landroid/animation/TimeInterpolator;

.field public hideOnScrollViewDelegate:Lcom/google/android/material/behavior/HideViewOnScrollDelegate;

.field public final onScrollStateChangedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/behavior/HideViewOnScrollBehavior$OnScrollStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public savedImportantForAccessibility:I

.field public savedVisibility:I

.field public size:I

.field public touchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field public viewEdgeOverride:Z


# direct methods
.method public static synthetic $r8$lambda$O4yxcwWX0oqhtqJeVevJwrB8hK4(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;Landroid/view/View;Z)V
    .registers 4

    .line 222
    iget-boolean v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->disableOnTouchExploration:Z

    if-eqz v0, :cond_f

    if-eqz p2, :cond_f

    .line 222
    invoke-virtual {p0}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->isScrolledOut()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->slideIn(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 91
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong2:I

    sput v0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->ENTER_ANIM_DURATION_ATTR:I

    .line 92
    sget v0, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    sput v0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->EXIT_ANIM_DURATION_ATTR:I

    .line 93
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    sput v0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->ENTER_EXIT_ANIM_EASING_ATTR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 146
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->disableOnTouchExploration:Z

    .line 85
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->size:I

    const/4 v1, 0x2

    .line 137
    iput v1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->currentState:I

    .line 138
    iput v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->additionalHiddenOffset:I

    .line 141
    iput v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->savedImportantForAccessibility:I

    .line 142
    iput v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->savedVisibility:I

    .line 144
    iput-boolean v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->viewEdgeOverride:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 155
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->disableOnTouchExploration:Z

    .line 85
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    const/4 p1, 0x0

    .line 125
    iput p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->size:I

    const/4 p2, 0x2

    .line 137
    iput p2, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->currentState:I

    .line 138
    iput p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->additionalHiddenOffset:I

    .line 141
    iput p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->savedImportantForAccessibility:I

    .line 142
    iput p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->savedVisibility:I

    .line 144
    iput-boolean p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->viewEdgeOverride:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;)Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->touchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->touchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;)Landroid/view/accessibility/AccessibilityManager;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;)I
    .registers 1

    .line 62
    iget p0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->currentState:I

    return p0
.end method

.method private animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IJ",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->hideOnScrollViewDelegate:Lcom/google/android/material/behavior/HideViewOnScrollDelegate;

    .line 442
    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/behavior/HideViewOnScrollDelegate;->getViewTranslationAnimator(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 443
    invoke-virtual {p2, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 444
    invoke-virtual {p2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$2;

    invoke-direct {p3, p0, p1}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$2;-><init>(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;Landroid/view/View;)V

    .line 445
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private disableIfTouchExplorationEnabled(Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_12

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 219
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->touchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    if-nez v0, :cond_2e

    .line 220
    new-instance v0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->touchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 226
    iget-object v1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 227
    new-instance v0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$1;-><init>(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2e
    return-void
.end method

.method private updateCurrentState(Landroid/view/View;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 404
    iput p2, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->currentState:I

    .line 405
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->updateViewPropertiesForState(Landroid/view/View;I)V

    .line 406
    iget-object p2, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$OnScrollStateChangedListener;

    .line 407
    iget v1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->currentState:I

    invoke-interface {v0, p1, v1}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$OnScrollStateChangedListener;->onStateChanged(Landroid/view/View;I)V

    goto :goto_b

    :cond_1d
    return-void
.end method

.method private updateViewPropertiesForState(Landroid/view/View;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v0, :cond_29

    .line 413
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 414
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 416
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p2

    if-eq p2, v1, :cond_19

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->savedImportantForAccessibility:I

    .line 420
    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, v1, :cond_25

    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->savedVisibility:I

    .line 423
    :cond_25
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void

    :cond_29
    const/4 v0, 0x2

    if-ne p2, v0, :cond_42

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p2

    if-ne p2, v1, :cond_37

    .line 427
    iget p2, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->savedImportantForAccessibility:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 429
    :cond_37
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, v1, :cond_42

    .line 430
    iget p2, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->savedVisibility:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_42
    return-void
.end method


# virtual methods
.method public final isGravityBottom(I)Z
    .registers 3

    .line 0
    const/16 v0, 0x50

    if-eq p1, v0, :cond_b

    const/16 v0, 0x51

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_b
    const/4 p1, 0x1

    return p1
.end method

.method public final isGravityLeft(I)Z
    .registers 3

    .line 0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    const/16 v0, 0x13

    if-ne p1, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p1, 0x0

    return p1

    :cond_a
    :goto_a
    const/4 p1, 0x1

    return p1
.end method

.method public isScrolledIn()Z
    .registers 3

    .line 320
    iget v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->currentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public isScrolledOut()Z
    .registers 3

    .line 358
    iget v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 248
    invoke-direct {p0, p2}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->disableIfTouchExplorationEnabled(Landroid/view/View;)V

    .line 251
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 252
    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->setViewEdge(Landroid/view/View;I)V

    .line 254
    iget-object v1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->hideOnScrollViewDelegate:Lcom/google/android/material/behavior/HideViewOnScrollDelegate;

    invoke-virtual {v1, p2, v0}, Lcom/google/android/material/behavior/HideViewOnScrollDelegate;->getSize(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->size:I

    .line 258
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->ENTER_ANIM_DURATION_ATTR:I

    const/16 v2, 0xe1

    .line 257
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->enterAnimDuration:I

    .line 261
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->EXIT_ANIM_DURATION_ATTR:I

    const/16 v2, 0xaf

    .line 260
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->exitAnimDuration:I

    .line 264
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->ENTER_EXIT_ANIM_EASING_ATTR:I

    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 263
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->enterAnimInterpolator:Landroid/animation/TimeInterpolator;

    .line 269
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 268
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->exitAnimInterpolator:Landroid/animation/TimeInterpolator;

    .line 272
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    if-lez p5, :cond_6

    .line 312
    invoke-virtual {p0, p2}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->slideOut(Landroid/view/View;)V

    return-void

    :cond_6
    if-gez p5, :cond_b

    .line 314
    invoke-virtual {p0, p2}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->slideIn(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 0
    const/4 p1, 0x2

    if-ne p5, p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final setViewEdge(Landroid/view/View;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 159
    iget-boolean v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->viewEdgeOverride:Z

    if-eqz v0, :cond_5

    return-void

    .line 163
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 164
    iget p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 166
    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->isGravityBottom(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p1, 0x1

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->setViewEdgeInternal(I)V

    return-void

    .line 169
    :cond_18
    invoke-static {p1, p2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->isGravityLeft(I)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x2

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->setViewEdgeInternal(I)V

    return-void
.end method

.method public final setViewEdgeInternal(I)V
    .registers 7

    .line 180
    iget-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->hideOnScrollViewDelegate:Lcom/google/android/material/behavior/HideViewOnScrollDelegate;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/material/behavior/HideViewOnScrollDelegate;->getViewEdge()I

    move-result v0

    if-eq v0, p1, :cond_b

    goto :goto_c

    :cond_b
    return-void

    :cond_c
    :goto_c
    if-eqz p1, :cond_59

    const/4 v0, 0x1

    if-eq p1, v0, :cond_51

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1c

    .line 189
    new-instance p1, Lcom/google/android/material/behavior/HideLeftViewOnScrollDelegate;

    invoke-direct {p1}, Lcom/google/android/material/behavior/HideLeftViewOnScrollDelegate;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->hideOnScrollViewDelegate:Lcom/google/android/material/behavior/HideViewOnScrollDelegate;

    return-void

    .line 192
    :cond_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid view edge position value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Must be "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_51
    new-instance p1, Lcom/google/android/material/behavior/HideBottomViewOnScrollDelegate;

    invoke-direct {p1}, Lcom/google/android/material/behavior/HideBottomViewOnScrollDelegate;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->hideOnScrollViewDelegate:Lcom/google/android/material/behavior/HideViewOnScrollDelegate;

    return-void

    .line 183
    :cond_59
    new-instance p1, Lcom/google/android/material/behavior/HideRightViewOnScrollDelegate;

    invoke-direct {p1}, Lcom/google/android/material/behavior/HideRightViewOnScrollDelegate;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->hideOnScrollViewDelegate:Lcom/google/android/material/behavior/HideViewOnScrollDelegate;

    return-void
.end method

.method public slideIn(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 328
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->slideIn(Landroid/view/View;Z)V

    return-void
.end method

.method public slideIn(Landroid/view/View;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->isScrolledIn()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x2

    .line 342
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->updateCurrentState(Landroid/view/View;I)V

    .line 343
    iget-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_15

    .line 344
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 347
    :cond_15
    iget-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->hideOnScrollViewDelegate:Lcom/google/android/material/behavior/HideViewOnScrollDelegate;

    invoke-virtual {v0}, Lcom/google/android/material/behavior/HideViewOnScrollDelegate;->getTargetTranslation()I

    move-result v3

    if-eqz p2, :cond_28

    .line 350
    iget p2, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->enterAnimDuration:I

    int-to-long v4, p2

    iget-object v6, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->enterAnimInterpolator:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    return-void

    :cond_28
    move-object v1, p0

    move-object v2, p1

    .line 352
    iget-object p1, v1, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->hideOnScrollViewDelegate:Lcom/google/android/material/behavior/HideViewOnScrollDelegate;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/material/behavior/HideViewOnScrollDelegate;->setViewTranslation(Landroid/view/View;I)V

    return-void
.end method

.method public slideOut(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 366
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->slideOut(Landroid/view/View;Z)V

    return-void
.end method

.method public slideOut(Landroid/view/View;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .line 376
    invoke-virtual {p0}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->isScrolledOut()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_6
    move-object v2, p0

    goto :goto_49

    .line 381
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->disableOnTouchExploration:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_17

    .line 383
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_6

    .line 387
    :cond_17
    iget-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_21

    .line 388
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_21
    const/4 v0, 0x1

    .line 391
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->updateCurrentState(Landroid/view/View;I)V

    .line 392
    iget v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->size:I

    iget v1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->additionalHiddenOffset:I

    add-int v4, v0, v1

    if-eqz p2, :cond_38

    .line 394
    iget p2, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->exitAnimDuration:I

    int-to-long v5, p2

    iget-object v7, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->exitAnimInterpolator:Landroid/animation/TimeInterpolator;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    return-void

    :cond_38
    move-object v2, p0

    move-object v3, p1

    .line 396
    iget-object p1, v2, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->hideOnScrollViewDelegate:Lcom/google/android/material/behavior/HideViewOnScrollDelegate;

    invoke-virtual {p1, v3, v4}, Lcom/google/android/material/behavior/HideViewOnScrollDelegate;->setViewTranslation(Landroid/view/View;I)V

    .line 397
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_49

    const/4 p1, 0x4

    .line 398
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_49
    :goto_49
    return-void
.end method

###### Class com.google.android.material.behavior.HideViewOnScrollBehavior.AnonymousClass1 (com.google.android.material.behavior.HideViewOnScrollBehavior$1)
.class public Lcom/google/android/material/behavior/HideViewOnScrollBehavior$1;
.super Ljava/lang/Object;
.source "HideViewOnScrollBehavior.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->disableIfTouchExplorationEnabled(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$1;->this$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 234
    iget-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$1;->this$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    invoke-static {p1}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->access$000(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;)Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    move-result-object p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$1;->this$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    invoke-static {p1}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->access$100(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 235
    iget-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$1;->this$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    invoke-static {p1}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->access$100(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$1;->this$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    .line 236
    invoke-static {v0}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->access$000(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;)Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    move-result-object v0

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 237
    iget-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$1;->this$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->access$002(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    :cond_25
    return-void
.end method

###### Class com.google.android.material.behavior.HideViewOnScrollBehavior.AnonymousClass2 (com.google.android.material.behavior.HideViewOnScrollBehavior$2)
.class public Lcom/google/android/material/behavior/HideViewOnScrollBehavior$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HideViewOnScrollBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

.field public final synthetic val$child:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 446
    iput-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$2;->this$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    iput-object p2, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$2;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 449
    iget-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$2;->this$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->access$202(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 450
    iget-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$2;->this$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    invoke-static {p1}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->access$300(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1d

    iget-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$2;->val$child:Landroid/view/View;

    .line 451
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1d

    .line 452
    iget-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$2;->val$child:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    return-void
.end method

###### Class com.google.android.material.behavior.HideViewOnScrollBehavior.OnScrollStateChangedListener (com.google.android.material.behavior.HideViewOnScrollBehavior$OnScrollStateChangedListener)
.class public interface abstract Lcom/google/android/material/behavior/HideViewOnScrollBehavior$OnScrollStateChangedListener;
.super Ljava/lang/Object;
.source "HideViewOnScrollBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/behavior/HideViewOnScrollBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScrollStateChangedListener"
.end annotation


# virtual methods
.method public abstract onStateChanged(Landroid/view/View;I)V
.end method

###### Class com.google.android.material.behavior.HideViewOnScrollBehavior$$ExternalSyntheticLambda0 (com.google.android.material.behavior.HideViewOnScrollBehavior$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/google/android/material/behavior/HideViewOnScrollBehavior$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    iput-object p2, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    iget-object v1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->$r8$lambda$O4yxcwWX0oqhtqJeVevJwrB8hK4(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;Landroid/view/View;Z)V

    return-void
.end method
