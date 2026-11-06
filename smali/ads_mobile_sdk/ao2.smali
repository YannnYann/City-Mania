###### Class ads_mobile_sdk.ao2 (ads_mobile_sdk.ao2)
.class public final Lads_mobile_sdk/ao2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/n;


# instance fields
.field public final a:Lads_mobile_sdk/f0;

.field public final b:Lads_mobile_sdk/ao0;

.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lads_mobile_sdk/ur3;

.field public final e:Lads_mobile_sdk/g83;

.field public final f:Lads_mobile_sdk/ks3;

.field public final g:Lads_mobile_sdk/j53;

.field public final h:Lads_mobile_sdk/qn2;

.field public i:Lads_mobile_sdk/do2;

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m:Lkotlinx/coroutines/Job;

.field public final n:Landroid/view/View$OnLayoutChangeListener;

.field public final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/f0;Lads_mobile_sdk/ao0;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ur3;Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/j53;Lads_mobile_sdk/qn2;)V
    .registers 10

    .line 1
    const-string v0, "activityTracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayUtil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pipAdConfig"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lads_mobile_sdk/ao2;->a:Lads_mobile_sdk/f0;

    .line 49
    iput-object p2, p0, Lads_mobile_sdk/ao2;->b:Lads_mobile_sdk/ao0;

    .line 50
    iput-object p3, p0, Lads_mobile_sdk/ao2;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 51
    iput-object p4, p0, Lads_mobile_sdk/ao2;->d:Lads_mobile_sdk/ur3;

    .line 52
    iput-object p5, p0, Lads_mobile_sdk/ao2;->e:Lads_mobile_sdk/g83;

    .line 53
    iput-object p6, p0, Lads_mobile_sdk/ao2;->f:Lads_mobile_sdk/ks3;

    .line 54
    iput-object p7, p0, Lads_mobile_sdk/ao2;->g:Lads_mobile_sdk/j53;

    .line 55
    iput-object p8, p0, Lads_mobile_sdk/ao2;->h:Lads_mobile_sdk/qn2;

    .line 59
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ao2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/ao2;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/ao2;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance p1, Lads_mobile_sdk/ao2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lads_mobile_sdk/ao2$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/ao2;)V

    iput-object p1, p0, Lads_mobile_sdk/ao2;->n:Landroid/view/View$OnLayoutChangeListener;

    .line 81
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lads_mobile_sdk/ao2;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/ao2;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/ao2;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic a(Lads_mobile_sdk/ao2;)Lads_mobile_sdk/qn2;
    .registers 1

    .line 86
    iget-object p0, p0, Lads_mobile_sdk/ao2;->h:Lads_mobile_sdk/qn2;

    return-object p0
.end method

.method public static final synthetic a(Lads_mobile_sdk/ao2;Landroid/view/View;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;FFFFF)Lkotlin/Pair;
    .registers 8

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p7}, Lads_mobile_sdk/ao2;->a(Landroid/view/View;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;FFFFF)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;FFFFF)Lkotlin/Pair;
    .registers 11

    .line 88
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 89
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    const/4 v0, 0x0

    if-eqz p0, :cond_17

    .line 90
    iget v1, p0, Landroidx/core/graphics/Insets;->left:I

    int-to-float v1, v1

    goto :goto_18

    :cond_17
    move v1, v0

    :goto_18
    if-eqz p0, :cond_1e

    .line 91
    iget v2, p0, Landroidx/core/graphics/Insets;->top:I

    int-to-float v2, v2

    goto :goto_1f

    :cond_1e
    move v2, v0

    :goto_1f
    if-eqz p0, :cond_25

    .line 92
    iget v3, p0, Landroidx/core/graphics/Insets;->right:I

    int-to-float v3, v3

    goto :goto_26

    :cond_25
    move v3, v0

    :goto_26
    if-eqz p0, :cond_2b

    .line 93
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    int-to-float v0, p0

    .line 97
    :cond_2b
    sget-object p0, Lads_mobile_sdk/tn2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_59

    const/4 p1, 0x2

    if-eq p0, p1, :cond_53

    const/4 p1, 0x3

    if-eq p0, p1, :cond_50

    const/4 p1, 0x4

    if-eq p0, p1, :cond_49

    const/4 p1, 0x5

    if-ne p0, p1, :cond_43

    goto :goto_49

    .line 113
    :cond_43
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_49
    :goto_49
    sub-float/2addr p2, p4

    sub-float/2addr p2, v3

    sub-float/2addr p2, p6

    :goto_4c
    sub-float/2addr p3, p5

    sub-float/2addr p3, v0

    sub-float/2addr p3, p6

    goto :goto_5c

    :cond_50
    add-float p2, v1, p6

    goto :goto_4c

    :cond_53
    sub-float/2addr p2, p4

    sub-float/2addr p2, v3

    sub-float/2addr p2, p6

    :goto_56
    add-float p3, v2, p6

    goto :goto_5c

    :cond_59
    add-float p2, v1, p6

    goto :goto_56

    .line 116
    :goto_5c
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/ao2;Landroid/view/View;IIIIIIII)V
    .registers 21

    move/from16 v3, p6

    move/from16 v4, p7

    .line 686
    const-string v5, "this$0"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int v5, p4, p2

    sub-int v6, p8, v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_13

    move v6, v8

    goto :goto_14

    :cond_13
    move v6, v7

    :goto_14
    sub-int v9, p5, p3

    sub-int v10, p9, v4

    if-eq v9, v10, :cond_1b

    move v7, v8

    :cond_1b
    if-nez v6, :cond_23

    if-nez v7, :cond_23

    if-ne p2, v3, :cond_23

    if-eq p3, v4, :cond_af

    .line 762
    :cond_23
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 763
    iget-object v1, p0, Lads_mobile_sdk/ao2;->i:Lads_mobile_sdk/do2;

    if-nez v1, :cond_2c

    goto/16 :goto_af

    .line 764
    :cond_2c
    iget-object v2, p0, Lads_mobile_sdk/ao2;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_af

    if-lez v5, :cond_af

    if-gtz v9, :cond_3a

    goto/16 :goto_af

    .line 765
    :cond_3a
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_af

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_47

    goto :goto_af

    .line 767
    :cond_47
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 768
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 769
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "getContext(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lads_mobile_sdk/ao2;->h:Lads_mobile_sdk/qn2;

    invoke-virtual {v0}, Lads_mobile_sdk/qn2;->d()I

    move-result v0

    .line 770
    const-string v6, "<this>"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v0, v0

    .line 771
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const-string v6, "getDisplayMetrics(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 876
    invoke-static {v8, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v0, v6

    float-to-int v0, v0

    int-to-float v0, v0

    .line 877
    iget-object v4, v1, Lads_mobile_sdk/do2;->d:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    int-to-float v5, v5

    int-to-float v6, v9

    move-object p2, p1

    move/from16 p8, v0

    move/from16 p6, v2

    move/from16 p7, v3

    move-object p3, v4

    move p4, v5

    move/from16 p5, v6

    .line 878
    invoke-static/range {p2 .. p8}, Lads_mobile_sdk/ao2;->a(Landroid/view/View;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;FFFFF)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 879
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 890
    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 891
    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    :cond_af
    :goto_af
    return-void
.end method

.method public static final synthetic b(Lads_mobile_sdk/ao2;)Lads_mobile_sdk/g83;
    .registers 1

    .line 43
    iget-object p0, p0, Lads_mobile_sdk/ao2;->e:Lads_mobile_sdk/g83;

    return-object p0
.end method

.method public static final synthetic c(Lads_mobile_sdk/ao2;)Lads_mobile_sdk/ur3;
    .registers 1

    .line 43
    iget-object p0, p0, Lads_mobile_sdk/ao2;->d:Lads_mobile_sdk/ur3;

    return-object p0
.end method

.method public static final synthetic d(Lads_mobile_sdk/ao2;)Lads_mobile_sdk/ks3;
    .registers 1

    .line 43
    iget-object p0, p0, Lads_mobile_sdk/ao2;->f:Lads_mobile_sdk/ks3;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 10

    .line 422
    iget-object v0, p0, Lads_mobile_sdk/ao2;->m:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 423
    :cond_9
    iget-object v0, p0, Lads_mobile_sdk/ao2;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 424
    iget-object v0, p0, Lads_mobile_sdk/ao2;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 425
    iget-object v3, p0, Lads_mobile_sdk/ao2;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/wn2;

    invoke-direct {v0, p0, v1}, Lads_mobile_sdk/wn2;-><init>(Lads_mobile_sdk/ao2;Lkotlin/coroutines/Continuation;)V

    .line 426
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 427
    const-string v2, "<this>"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    new-instance v6, Lads_mobile_sdk/ws3;

    invoke-direct {v6, v0, v1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Lads_mobile_sdk/do2;)V
    .registers 4

    .line 893
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_b

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_13

    .line 894
    iget-object v1, p0, Lads_mobile_sdk/ao2;->n:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_13
    if-eqz v0, :cond_18

    .line 895
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_18
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;Z)V
    .registers 18

    .line 896
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "getName(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "AdActivity"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v0, v4, v5, v6, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_7f

    .line 898
    :cond_25
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;->getPresentationScope()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    move-result-object v0

    sget-object v4, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;->APPLICATION:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    const/4 v6, 0x1

    if-ne v0, v4, :cond_3c

    .line 899
    iget-object v0, p0, Lads_mobile_sdk/ao2;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 900
    iget-object v0, p0, Lads_mobile_sdk/ao2;->a:Lads_mobile_sdk/f0;

    invoke-virtual {v0, p0}, Lads_mobile_sdk/f0;->a(Lads_mobile_sdk/n;)V

    goto :goto_49

    .line 903
    :cond_3c
    iget-object v0, p0, Lads_mobile_sdk/ao2;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 904
    iget-object v0, p0, Lads_mobile_sdk/ao2;->a:Lads_mobile_sdk/f0;

    invoke-virtual {v0, p0}, Lads_mobile_sdk/f0;->b(Lads_mobile_sdk/n;)V

    .line 909
    :cond_49
    :goto_49
    iget-object v0, p0, Lads_mobile_sdk/ao2;->i:Lads_mobile_sdk/do2;

    if-nez v0, :cond_4e

    goto :goto_7f

    .line 915
    :cond_4e
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;->getPosition()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    move-result-object v4

    sget-object v5, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;->DEFAULT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    if-ne v4, v5, :cond_5f

    .line 916
    iget-object v2, v0, Lads_mobile_sdk/do2;->d:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    if-eq v2, v5, :cond_5c

    :goto_5a
    move-object v4, v2

    goto :goto_64

    .line 917
    :cond_5c
    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;->BOTTOM_RIGHT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    goto :goto_5a

    .line 920
    :cond_5f
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;->getPosition()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    move-result-object v2

    goto :goto_5a

    :goto_64
    const v2, 0x1020002

    .line 923
    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 924
    iget-object v5, p0, Lads_mobile_sdk/ao2;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 925
    iget-object v5, v0, Lads_mobile_sdk/do2;->d:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    if-ne v5, v4, :cond_80

    .line 926
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, v2, :cond_80

    :goto_7f
    return-void

    .line 930
    :cond_80
    iget-object v0, p0, Lads_mobile_sdk/ao2;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 931
    iget-object v0, p0, Lads_mobile_sdk/ao2;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 933
    iget-object v8, p0, Lads_mobile_sdk/ao2;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/zn2;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/zn2;-><init>(Lads_mobile_sdk/ao2;ILandroid/app/Activity;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;ZLkotlin/coroutines/Continuation;)V

    .line 934
    sget-object v9, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 935
    const-string v1, "<this>"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1193
    new-instance v11, Lads_mobile_sdk/ws3;

    invoke-direct {v11, v0, v7}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lads_mobile_sdk/ao2;->m:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_e
    const v0, 0x1020002

    .line 509
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 510
    iget-object v0, p0, Lads_mobile_sdk/ao2;->i:Lads_mobile_sdk/do2;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :cond_1f
    if-ne v1, p1, :cond_2e

    .line 511
    iget-object p1, p0, Lads_mobile_sdk/ao2;->i:Lads_mobile_sdk/do2;

    if-eqz p1, :cond_28

    invoke-virtual {p0, p1}, Lads_mobile_sdk/ao2;->a(Lads_mobile_sdk/do2;)V

    .line 512
    :cond_28
    iget-object p1, p0, Lads_mobile_sdk/ao2;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2e
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 7

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "AdActivity"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_44

    .line 3
    :cond_1e
    iget-object v0, p0, Lads_mobile_sdk/ao2;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 4
    iget-object v0, p0, Lads_mobile_sdk/ao2;->i:Lads_mobile_sdk/do2;

    if-eqz v0, :cond_44

    .line 5
    iget-object v0, v0, Lads_mobile_sdk/do2;->d:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    if-eqz v0, :cond_44

    .line 6
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;-><init>()V

    .line 7
    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;->APPLICATION:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;->setPresentationScope(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;)Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;->setPosition(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;)Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;

    move-result-object v0

    .line 10
    invoke-virtual {p0, p1, v0, v4}, Lads_mobile_sdk/ao2;->a(Landroid/app/Activity;Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;Z)V

    :cond_44
    :goto_44
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class ads_mobile_sdk.ao2$$ExternalSyntheticLambda0 (ads_mobile_sdk.ao2$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/ao2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ao2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ao2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ao2$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/ao2;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 20

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/ao2$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/ao2;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lads_mobile_sdk/ao2;->a(Lads_mobile_sdk/ao2;Landroid/view/View;IIIIIIII)V

    return-void
.end method
