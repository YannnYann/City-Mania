###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager (io.bidmachine.media3.ui.PlayerControlViewLayoutManager)
.class public final Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;
.super Ljava/lang/Object;
.source "PlayerControlViewLayoutManager.java"


# instance fields
.field public animationEnabled:Z

.field public final basicControls:Landroid/view/ViewGroup;

.field public final bottomBar:Landroid/view/ViewGroup;

.field public final centerControls:Landroid/view/ViewGroup;

.field public final controlsBackground:Landroid/view/View;

.field public final extraControls:Landroid/view/ViewGroup;

.field public final extraControlsScrollView:Landroid/view/ViewGroup;

.field public final hideAllBarsAnimator:Landroid/animation/AnimatorSet;

.field public final hideAllBarsRunnable:Ljava/lang/Runnable;

.field public final hideControllerRunnable:Ljava/lang/Runnable;

.field public final hideMainBarAnimator:Landroid/animation/AnimatorSet;

.field public final hideMainBarRunnable:Ljava/lang/Runnable;

.field public final hideProgressBarAnimator:Landroid/animation/AnimatorSet;

.field public final hideProgressBarRunnable:Ljava/lang/Runnable;

.field public isMinimalMode:Z

.field public final minimalControls:Landroid/view/ViewGroup;

.field public needToShowBars:Z

.field public final onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field public final overflowHideAnimator:Landroid/animation/ValueAnimator;

.field public final overflowShowAnimator:Landroid/animation/ValueAnimator;

.field public final overflowShowButton:Landroid/view/View;

.field public final playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

.field public final showAllBarsAnimator:Landroid/animation/AnimatorSet;

.field public final showAllBarsRunnable:Ljava/lang/Runnable;

.field public final showMainBarAnimator:Landroid/animation/AnimatorSet;

.field public final shownButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final timeBar:Landroid/view/View;

.field public final timeView:Landroid/view/ViewGroup;

.field public uxState:I


# direct methods
.method public static synthetic $r8$lambda$-vmVpjY_OPPXgRiLVQWlGppZ_V8(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->onLayoutWidthChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$CmpBPAg3fTWuC84LOeVseeMqR4g(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->showAllBars()V

    return-void
.end method

.method public static synthetic $r8$lambda$F7n-8KfSSqMjeBYJ8jmvOz1XvzQ(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->onOverflowButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ODw5wAAjldCP5Irgt8opgRUfeuU(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 167
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 168
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 170
    :cond_14
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    .line 171
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 173
    :cond_1b
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    if-eqz p0, :cond_22

    .line 174
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_22
    return-void
.end method

.method public static synthetic $r8$lambda$TRlPQ6PBB1LFuRQnGbET-DsoqxI(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->animateOverflow(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$blqrQg_3fnONigNSngnHlRb3RZU(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->updateLayoutForSizeChange()V

    return-void
.end method

.method public static synthetic $r8$lambda$cPsj-t3SDxqw93Z4M3nlL10Lunk(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$eDLlvUHx0btj1BH_A7ROp1nl-AA(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideController()V

    return-void
.end method

.method public static synthetic $r8$lambda$eFWGKt5YGK_0fm-unOOJiAfcS3U(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideMainBar()V

    return-void
.end method

.method public static synthetic $r8$lambda$l16Ozl88sZlDWuezxC5YvgnTxUE(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideAllBars()V

    return-void
.end method

.method public static synthetic $r8$lambda$l2Bp-yt6qksroOd7wv7NVjltDfY(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->animateOverflow(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$uMAbanpRoyE7lkeHi8GRsPil0Fo(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 129
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 130
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 132
    :cond_14
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    .line 133
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 135
    :cond_1b
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    if-eqz p0, :cond_22

    .line 136
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_22
    return-void
.end method

.method public static synthetic $r8$lambda$xyZc5OEUlIAPBsH-j9_azXUoCzA(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideProgressBar()V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 14

    const/4 v0, 0x2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 89
    new-instance v1, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    iput-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->showAllBarsRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v1, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    iput-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideAllBarsRunnable:Ljava/lang/Runnable;

    .line 91
    new-instance v1, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    iput-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideProgressBarRunnable:Ljava/lang/Runnable;

    .line 92
    new-instance v1, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    iput-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideMainBarRunnable:Ljava/lang/Runnable;

    .line 93
    new-instance v1, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda6;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    iput-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideControllerRunnable:Ljava/lang/Runnable;

    .line 94
    new-instance v1, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda7;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    iput-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v1, 0x1

    .line 95
    iput-boolean v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->animationEnabled:Z

    const/4 v1, 0x0

    .line 96
    iput v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->shownButtons:Ljava/util/List;

    .line 100
    sget v1, Lio/bidmachine/media3/ui/R$id;->exo_controls_background:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;

    .line 101
    sget v1, Lio/bidmachine/media3/ui/R$id;->exo_center_controls:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    .line 104
    sget v1, Lio/bidmachine/media3/ui/R$id;->exo_minimal_controls:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    .line 107
    sget v1, Lio/bidmachine/media3/ui/R$id;->exo_bottom_bar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->bottomBar:Landroid/view/ViewGroup;

    .line 110
    sget v2, Lio/bidmachine/media3/ui/R$id;->exo_time:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    .line 111
    sget v2, Lio/bidmachine/media3/ui/R$id;->exo_progress:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    .line 114
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_basic_controls:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    .line 115
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_extra_controls:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    .line 116
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_extra_controls_scroll_view:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    .line 117
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_overflow_show:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    .line 118
    sget v4, Lio/bidmachine/media3/ui/R$id;->exo_overflow_hide:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v3, :cond_b5

    if-eqz v4, :cond_b5

    .line 120
    new-instance v5, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda8;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v3, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda8;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b5
    const/4 v3, 0x0

    .line 124
    new-array v4, v0, [F

    fill-array-data v4, :array_204

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 125
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    new-instance v5, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda9;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 139
    new-instance v5, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$1;

    invoke-direct {v5, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$1;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 162
    new-array v5, v0, [F

    fill-array-data v5, :array_20c

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 163
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    new-instance v6, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda10;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 177
    new-instance v6, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$2;

    invoke-direct {v6, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$2;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 197
    sget v7, Lio/bidmachine/media3/ui/R$dimen;->exo_styled_bottom_bar_height:I

    .line 198
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sget v8, Lio/bidmachine/media3/ui/R$dimen;->exo_styled_progress_bar_height:I

    .line 199
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    sub-float/2addr v7, v8

    .line 200
    sget v8, Lio/bidmachine/media3/ui/R$dimen;->exo_styled_bottom_bar_height:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 202
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideMainBarAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v9, 0xfa

    .line 203
    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 204
    new-instance v11, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$3;

    invoke-direct {v11, p0, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$3;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Lio/bidmachine/media3/ui/PlayerControlView;)V

    invoke-virtual {v8, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 221
    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    .line 222
    invoke-static {v3, v7, v2}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    .line 223
    invoke-static {v3, v7, v1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 225
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideProgressBarAnimator:Landroid/animation/AnimatorSet;

    .line 226
    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 227
    new-instance v11, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$4;

    invoke-direct {v11, p0, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$4;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Lio/bidmachine/media3/ui/PlayerControlView;)V

    invoke-virtual {v8, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 244
    invoke-static {v7, v6, v2}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    .line 245
    invoke-static {v7, v6, v1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 247
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideAllBarsAnimator:Landroid/animation/AnimatorSet;

    .line 248
    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 249
    new-instance v11, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$5;

    invoke-direct {v11, p0, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$5;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Lio/bidmachine/media3/ui/PlayerControlView;)V

    invoke-virtual {v8, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 267
    invoke-static {v3, v6, v2}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 268
    invoke-static {v3, v6, v1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 270
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->showMainBarAnimator:Landroid/animation/AnimatorSet;

    .line 271
    invoke-virtual {p1, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 272
    new-instance v4, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$6;

    invoke-direct {v4, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$6;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    invoke-virtual {p1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 285
    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 286
    invoke-static {v7, v3, v2}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 287
    invoke-static {v7, v3, v1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 289
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->showAllBarsAnimator:Landroid/animation/AnimatorSet;

    .line 290
    invoke-virtual {p1, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 291
    new-instance v4, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$7;

    invoke-direct {v4, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$7;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    invoke-virtual {p1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 305
    invoke-static {v6, v3, v2}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 306
    invoke-static {v6, v3, v1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 308
    new-array p1, v0, [F

    fill-array-data p1, :array_214

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    .line 309
    invoke-virtual {p1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 310
    new-instance v1, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 312
    new-instance v1, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$8;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$8;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 331
    new-array p1, v0, [F

    fill-array-data p1, :array_21c

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    .line 332
    invoke-virtual {p1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 333
    new-instance v0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 335
    new-instance v0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$9;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$9;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_204
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_20c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_214
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_21c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/View;
    .registers 1

    .line 34
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    return p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/View;
    .registers 1

    .line 34
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;
    .registers 1

    .line 34
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;
    .registers 1

    .line 34
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;I)V
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    return-void
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->needToShowBars:Z

    return p0
.end method

.method public static synthetic access$602(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->needToShowBars:Z

    return p1
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Ljava/lang/Runnable;
    .registers 1

    .line 34
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->showAllBarsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;
    .registers 1

    .line 34
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$900(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;
    .registers 1

    .line 34
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static getHeightWithMargins(Landroid/view/View;)I
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 727
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 728
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 729
    instance-of v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_18

    .line 730
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 731
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    :cond_18
    return v0
.end method

.method public static getWidthWithMargins(Landroid/view/View;)I
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 714
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 715
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 716
    instance-of v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_18

    .line 717
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 718
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    :cond_18
    return v0
.end method

.method public static ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;
    .registers 6

    .line 547
    const-string v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final animateOverflow(F)V
    .registers 5

    .line 557
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_15

    .line 559
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v2, v1, p1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 560
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 563
    :cond_15
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    sub-float v2, v1, p1

    .line 564
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 566
    :cond_1e
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    if-eqz v0, :cond_26

    sub-float/2addr v1, p1

    .line 567
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_26
    return-void
.end method

.method public getShowButton(Landroid/view/View;)Z
    .registers 3

    if-eqz p1, :cond_c

    .line 446
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->shownButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public hide()V
    .registers 3

    .line 363
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    goto :goto_20

    .line 366
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 367
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->animationEnabled:Z

    if-nez v0, :cond_14

    .line 368
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideController()V

    return-void

    .line 369
    :cond_14
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 370
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideProgressBar()V

    return-void

    .line 372
    :cond_1d
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideAllBars()V

    :cond_20
    :goto_20
    return-void
.end method

.method public final hideAllBars()V
    .registers 2

    .line 530
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final hideController()V
    .registers 2

    const/4 v0, 0x2

    .line 543
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    return-void
.end method

.method public hideImmediately()V
    .registers 3

    .line 377
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    goto :goto_f

    .line 380
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 381
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideController()V

    :cond_f
    :goto_f
    return-void
.end method

.method public final hideMainBar()V
    .registers 4

    .line 538
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideMainBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 539
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideProgressBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final hideProgressBar()V
    .registers 2

    .line 534
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideProgressBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public isFullyVisible()Z
    .registers 2

    .line 425
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 3

    .line 417
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 421
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 465
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;

    if-eqz p1, :cond_a

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    .line 469
    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_a
    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 484
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->useMinimalMode()Z

    move-result p3

    .line 485
    iget-boolean p5, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eq p5, p3, :cond_12

    .line 486
    iput-boolean p3, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    .line 487
    new-instance p3, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda11;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_12
    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-eq p4, p8, :cond_18

    const/4 p2, 0x1

    goto :goto_19

    :cond_18
    const/4 p2, 0x0

    .line 490
    :goto_19
    iget-boolean p3, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-nez p3, :cond_27

    if-eqz p2, :cond_27

    .line 491
    new-instance p2, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda12;-><init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_27
    return-void
.end method

.method public final onLayoutWidthChanged()V
    .registers 10

    .line 645
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    if-eqz v0, :cond_da

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    goto/16 :goto_da

    .line 649
    :cond_a
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 650
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 651
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 652
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 656
    :goto_1e
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_41

    .line 657
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 658
    iget-object v3, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 659
    iget-object v4, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 660
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1e

    .line 662
    :cond_41
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    if-eqz v1, :cond_4a

    const/16 v4, 0x8

    .line 663
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 668
    :cond_4a
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v1

    .line 669
    iget-object v4, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    move v5, v2

    :goto_58
    if-ge v5, v4, :cond_68

    .line 671
    iget-object v6, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 672
    invoke-static {v6}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_68
    if-le v1, v0, :cond_be

    .line 677
    iget-object v5, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    if-eqz v5, :cond_78

    .line 678
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v5, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    invoke-static {v5}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v1, v5

    .line 681
    :cond_78
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v2

    :goto_7e
    if-ge v6, v4, :cond_94

    .line 684
    iget-object v7, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 685
    invoke-static {v7}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v1, v8

    .line 686
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gt v1, v0, :cond_91

    goto :goto_94

    :cond_91
    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    .line 691
    :cond_94
    :goto_94
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_da

    .line 692
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 693
    :goto_a3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_da

    .line 695
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    .line 696
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    .line 701
    :cond_be
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_da

    .line 702
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_da

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    .line 703
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_da

    .line 704
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 705
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_da
    :goto_da
    return-void
.end method

.method public final onOverflowButtonClick(Landroid/view/View;)V
    .registers 4

    .line 496
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    .line 497
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lio/bidmachine/media3/ui/R$id;->exo_overflow_show:I

    if-ne v0, v1, :cond_11

    .line 498
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 499
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lio/bidmachine/media3/ui/R$id;->exo_overflow_hide:I

    if-ne p1, v0, :cond_1e

    .line 500
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1e
    return-void
.end method

.method public final postDelayedRunnable(Ljava/lang/Runnable;J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_b

    .line 552
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    return-void
.end method

.method public removeHideCallbacks()V
    .registers 3

    .line 410
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 411
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideAllBarsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 412
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideMainBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 413
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetHideCallbacks()V
    .registers 5

    .line 393
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    goto :goto_2f

    .line 396
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 397
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-lez v0, :cond_2f

    .line 399
    iget-boolean v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->animationEnabled:Z

    if-nez v1, :cond_1c

    .line 400
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideControllerRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    return-void

    .line 401
    :cond_1c
    iget v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 402
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideProgressBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    return-void

    .line 404
    :cond_29
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideMainBarRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .registers 2

    .line 385
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->animationEnabled:Z

    return-void
.end method

.method public setShowButton(Landroid/view/View;Z)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_10

    const/16 p2, 0x8

    .line 433
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->shownButtons:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 437
    :cond_10
    iget-boolean p2, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz p2, :cond_1f

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->shouldHideInMinimalMode(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1f

    const/4 p2, 0x4

    .line 438
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_23

    :cond_1f
    const/4 p2, 0x0

    .line 440
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 442
    :goto_23
    iget-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->shownButtons:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setUxState(I)V
    .registers 5

    .line 450
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    .line 451
    iput p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_f

    .line 453
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17

    :cond_f
    if-ne v0, v1, :cond_17

    .line 455
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    :goto_17
    if-eq v0, p1, :cond_1e

    .line 460
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->notifyOnVisibilityChange()V

    :cond_1e
    return-void
.end method

.method public final shouldHideInMinimalMode(Landroid/view/View;)Z
    .registers 3

    .line 634
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 635
    sget v0, Lio/bidmachine/media3/ui/R$id;->exo_bottom_bar:I

    if-eq p1, v0, :cond_23

    sget v0, Lio/bidmachine/media3/ui/R$id;->exo_prev:I

    if-eq p1, v0, :cond_23

    sget v0, Lio/bidmachine/media3/ui/R$id;->exo_next:I

    if-eq p1, v0, :cond_23

    sget v0, Lio/bidmachine/media3/ui/R$id;->exo_rew:I

    if-eq p1, v0, :cond_23

    sget v0, Lio/bidmachine/media3/ui/R$id;->exo_rew_with_amount:I

    if-eq p1, v0, :cond_23

    sget v0, Lio/bidmachine/media3/ui/R$id;->exo_ffwd:I

    if-eq p1, v0, :cond_23

    sget v0, Lio/bidmachine/media3/ui/R$id;->exo_ffwd_with_amount:I

    if-ne p1, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    return p1

    :cond_23
    :goto_23
    const/4 p1, 0x1

    return p1
.end method

.method public show()V
    .registers 3

    .line 354
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_18

    .line 355
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateAll()V

    .line 357
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->requestPlayPauseFocus()V

    .line 359
    :cond_18
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->showAllBars()V

    return-void
.end method

.method public final showAllBars()V
    .registers 4

    .line 505
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->animationEnabled:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 506
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    .line 507
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    return-void

    .line 511
    :cond_c
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    goto :goto_2a

    :cond_1b
    return-void

    .line 519
    :cond_1c
    iput-boolean v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->needToShowBars:Z

    goto :goto_2a

    .line 513
    :cond_1f
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->showAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2a

    .line 516
    :cond_25
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->showMainBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 526
    :goto_2a
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    return-void
.end method

.method public final updateLayoutForSizeChange()V
    .registers 6

    .line 602
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 603
    iget-boolean v3, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v3, :cond_c

    move v3, v2

    goto :goto_d

    :cond_c
    move v3, v1

    :goto_d
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 606
    :cond_10
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    if-eqz v0, :cond_55

    .line 607
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 609
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lio/bidmachine/media3/ui/R$dimen;->exo_styled_progress_margin_bottom:I

    .line 610
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 611
    iget-object v3, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_36

    .line 613
    iget-boolean v4, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v4, :cond_2f

    move v0, v2

    :cond_2f
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 614
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    :cond_36
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    instance-of v3, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;

    if-eqz v3, :cond_55

    .line 617
    check-cast v0, Lio/bidmachine/media3/ui/DefaultTimeBar;

    .line 618
    iget-boolean v3, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_47

    .line 619
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/ui/DefaultTimeBar;->hideScrubber(Z)V

    goto :goto_55

    .line 620
    :cond_47
    iget v3, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    if-ne v3, v4, :cond_4f

    .line 621
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/ui/DefaultTimeBar;->hideScrubber(Z)V

    goto :goto_55

    :cond_4f
    const/4 v4, 0x3

    if-eq v3, v4, :cond_55

    .line 623
    invoke-virtual {v0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->showScrubber()V

    .line 628
    :cond_55
    :goto_55
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->shownButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 629
    iget-boolean v4, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v4, :cond_73

    invoke-virtual {p0, v3}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->shouldHideInMinimalMode(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_73

    move v4, v1

    goto :goto_74

    :cond_73
    move v4, v2

    :goto_74
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5b

    :cond_78
    return-void
.end method

.method public final useMinimalMode()Z
    .registers 8

    .line 572
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 573
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 574
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 575
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 576
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 577
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 578
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 579
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 581
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    .line 582
    invoke-static {v2}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v2

    .line 583
    iget-object v3, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_3f

    .line 584
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object v5, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_40

    :cond_3f
    move v3, v4

    :goto_40
    sub-int/2addr v2, v3

    .line 586
    iget-object v3, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    .line 587
    invoke-static {v3}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->getHeightWithMargins(Landroid/view/View;)I

    move-result v3

    .line 588
    iget-object v5, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    if-eqz v5, :cond_57

    .line 589
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_58

    :cond_57
    move v5, v4

    :goto_58
    sub-int/2addr v3, v5

    .line 592
    iget-object v5, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    .line 595
    invoke-static {v5}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    invoke-static {v6}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    .line 593
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 596
    iget-object v5, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->bottomBar:Landroid/view/ViewGroup;

    invoke-static {v5}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->getHeightWithMargins(Landroid/view/View;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    if-le v0, v2, :cond_79

    if-gt v1, v3, :cond_78

    goto :goto_79

    :cond_78
    return v4

    :cond_79
    :goto_79
    const/4 v0, 0x1

    return v0
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager.AnonymousClass1 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$1)
.class public Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerControlViewLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 150
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$200(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_12

    .line 151
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$200(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_12
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$300(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 154
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$300(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :cond_23
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$400(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 157
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$400(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_34
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 143
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$000(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lio/bidmachine/media3/ui/DefaultTimeBar;

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$100(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 144
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$000(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/ui/DefaultTimeBar;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->hideScrubber(J)V

    :cond_1f
    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager.AnonymousClass2 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$2)
.class public Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerControlViewLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$2;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 181
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$2;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$200(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 182
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$2;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$200(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_12
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$2;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$300(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 185
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$2;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$300(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_23
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$2;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$400(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 188
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$2;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$400(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$2;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$100(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x4

    :goto_3b
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_3e
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$2;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$000(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lio/bidmachine/media3/ui/DefaultTimeBar;

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$2;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$100(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Z

    move-result p1

    if-nez p1, :cond_5d

    .line 191
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$2;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$000(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/ui/DefaultTimeBar;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->showScrubber(J)V

    :cond_5d
    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager.AnonymousClass3 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$3)
.class public Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerControlViewLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

.field public final synthetic val$playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 3

    .line 205
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    iput-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$3;->val$playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 213
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$500(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;I)V

    .line 214
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$600(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 215
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$3;->val$playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$700(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 216
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$602(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Z)Z

    :cond_1f
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 208
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$500(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;I)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager.AnonymousClass4 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$4)
.class public Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerControlViewLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

.field public final synthetic val$playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 3

    .line 228
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$4;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    iput-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$4;->val$playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 236
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$4;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$500(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;I)V

    .line 237
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$4;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$600(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 238
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$4;->val$playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$4;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$700(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 239
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$4;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$602(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Z)Z

    :cond_1f
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 231
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$4;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$500(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;I)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager.AnonymousClass5 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$5)
.class public Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerControlViewLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

.field public final synthetic val$playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 3

    .line 250
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$5;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    iput-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$5;->val$playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 258
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$5;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$500(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;I)V

    .line 259
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$5;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$600(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 260
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$5;->val$playerControlView:Lio/bidmachine/media3/ui/PlayerControlView;

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$5;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$700(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 261
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$5;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$602(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Z)Z

    :cond_1f
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 253
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$5;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$500(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;I)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager.AnonymousClass6 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$6)
.class public Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerControlViewLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$6;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 281
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$6;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$500(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 276
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$6;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$500(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;I)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager.AnonymousClass7 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$7)
.class public Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerControlViewLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 292
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$7;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 300
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$7;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$500(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 295
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$7;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$500(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;I)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager.AnonymousClass8 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$8)
.class public Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerControlViewLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 325
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$900(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 326
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$900(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 316
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$800(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 317
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$800(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$800(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$800(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 319
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$800(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$8;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$800(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->scrollTo(II)V

    :cond_39
    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager.AnonymousClass9 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$9)
.class public Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerControlViewLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 336
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$9;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 346
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$9;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$800(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 347
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$9;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$800(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 339
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$9;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$900(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 340
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$9;->this$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->access$900(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda0 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->$r8$lambda$CmpBPAg3fTWuC84LOeVseeMqR4g(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda1 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->$r8$lambda$TRlPQ6PBB1LFuRQnGbET-DsoqxI(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Landroid/animation/ValueAnimator;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda10 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda10)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda10;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda10;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->$r8$lambda$ODw5wAAjldCP5Irgt8opgRUfeuU(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Landroid/animation/ValueAnimator;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda11 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda11)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda11;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda11;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->$r8$lambda$blqrQg_3fnONigNSngnHlRb3RZU(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda12 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda12)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda12;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda12;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->$r8$lambda$-vmVpjY_OPPXgRiLVQWlGppZ_V8(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda2 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->$r8$lambda$l2Bp-yt6qksroOd7wv7NVjltDfY(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Landroid/animation/ValueAnimator;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda3 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->$r8$lambda$l16Ozl88sZlDWuezxC5YvgnTxUE(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda4 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->$r8$lambda$xyZc5OEUlIAPBsH-j9_azXUoCzA(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda5 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->$r8$lambda$eFWGKt5YGK_0fm-unOOJiAfcS3U(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda6 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->$r8$lambda$eDLlvUHx0btj1BH_A7ROp1nl-AA(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda7 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda7)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 20

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->$r8$lambda$cPsj-t3SDxqw93Z4M3nlL10Lunk(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Landroid/view/View;IIIIIIII)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda8 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda8)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->$r8$lambda$F7n-8KfSSqMjeBYJ8jmvOz1XvzQ(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda9 (io.bidmachine.media3.ui.PlayerControlViewLayoutManager$$ExternalSyntheticLambda9)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-static {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->$r8$lambda$uMAbanpRoyE7lkeHi8GRsPil0Fo(Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;Landroid/animation/ValueAnimator;)V

    return-void
.end method
