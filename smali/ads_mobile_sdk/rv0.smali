###### Class ads_mobile_sdk.rv0 (ads_mobile_sdk.rv0)
.class public final Lads_mobile_sdk/rv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rm3;
.implements Lads_mobile_sdk/ld;
.implements Lads_mobile_sdk/ai1;


# instance fields
.field public final A:Ljava/util/concurrent/atomic/AtomicReference;

.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Ljava/lang/String;

.field public final d:Lads_mobile_sdk/rb;

.field public final e:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

.field public final f:Lads_mobile_sdk/f0;

.field public final g:Lads_mobile_sdk/g83;

.field public final h:Lads_mobile_sdk/d63;

.field public final i:Lads_mobile_sdk/tx;

.field public final j:Lads_mobile_sdk/ex0;

.field public final k:Lads_mobile_sdk/c24;

.field public l:Landroid/view/View;

.field public m:Lads_mobile_sdk/r31;

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field public p:Z

.field public q:Z

.field public final r:Lads_mobile_sdk/qb3;

.field public final s:Z

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:I

.field public final x:Z

.field public final y:Lads_mobile_sdk/nn3;

.field public z:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lads_mobile_sdk/h41;Lads_mobile_sdk/rb;Lads_mobile_sdk/i2;Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;Lads_mobile_sdk/f0;Lads_mobile_sdk/g83;Lads_mobile_sdk/d63;Lads_mobile_sdk/tx;Lads_mobile_sdk/ex0;Lads_mobile_sdk/c24;)V
    .registers 15

    .line 1
    const-string v0, "uiScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaVersion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSpamClient"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryingUrlPinger"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewViewabilityMonitor"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lads_mobile_sdk/rv0;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 66
    iput-object p2, p0, Lads_mobile_sdk/rv0;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 67
    iput-object p3, p0, Lads_mobile_sdk/rv0;->c:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lads_mobile_sdk/rv0;->d:Lads_mobile_sdk/rb;

    .line 71
    iput-object p7, p0, Lads_mobile_sdk/rv0;->e:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    .line 72
    iput-object p8, p0, Lads_mobile_sdk/rv0;->f:Lads_mobile_sdk/f0;

    .line 73
    iput-object p9, p0, Lads_mobile_sdk/rv0;->g:Lads_mobile_sdk/g83;

    .line 74
    iput-object p10, p0, Lads_mobile_sdk/rv0;->h:Lads_mobile_sdk/d63;

    .line 75
    iput-object p11, p0, Lads_mobile_sdk/rv0;->i:Lads_mobile_sdk/tx;

    .line 76
    iput-object p12, p0, Lads_mobile_sdk/rv0;->j:Lads_mobile_sdk/ex0;

    .line 77
    iput-object p13, p0, Lads_mobile_sdk/rv0;->k:Lads_mobile_sdk/c24;

    .line 84
    invoke-virtual {p4}, Lads_mobile_sdk/h41;->a()Lads_mobile_sdk/r31;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lads_mobile_sdk/rv0;->a(Landroid/view/View;Lads_mobile_sdk/r31;)V

    .line 94
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/rv0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lads_mobile_sdk/rv0;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 102
    iget-object p1, p6, Lads_mobile_sdk/i2;->v0:Lads_mobile_sdk/qm3;

    const/4 p3, 0x0

    if-eqz p1, :cond_78

    iget-object p4, p1, Lads_mobile_sdk/qm3;->b:Lads_mobile_sdk/qb3;

    goto :goto_79

    :cond_78
    move-object p4, p3

    :goto_79
    iput-object p4, p0, Lads_mobile_sdk/rv0;->r:Lads_mobile_sdk/qb3;

    const/4 p5, 0x1

    if-eqz p4, :cond_80

    move p7, p5

    goto :goto_81

    :cond_80
    move p7, p2

    .line 103
    :goto_81
    iput-boolean p7, p0, Lads_mobile_sdk/rv0;->s:Z

    if-eqz p1, :cond_90

    .line 106
    iget-object p1, p1, Lads_mobile_sdk/qm3;->d:Ljava/util/List;

    if-eqz p1, :cond_90

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_91

    :cond_90
    move-object p1, p3

    :goto_91
    iput-object p1, p0, Lads_mobile_sdk/rv0;->t:Ljava/lang/String;

    .line 108
    iget-object p1, p6, Lads_mobile_sdk/i2;->v0:Lads_mobile_sdk/qm3;

    if-eqz p1, :cond_a2

    iget-object p1, p1, Lads_mobile_sdk/qm3;->d:Ljava/util/List;

    if-eqz p1, :cond_a2

    invoke-static {p1, p5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_a3

    :cond_a2
    move-object p1, p3

    :goto_a3
    iput-object p1, p0, Lads_mobile_sdk/rv0;->u:Ljava/lang/String;

    .line 109
    iget-object p1, p6, Lads_mobile_sdk/i2;->v0:Lads_mobile_sdk/qm3;

    if-eqz p1, :cond_ac

    iget-object p6, p1, Lads_mobile_sdk/qm3;->c:Ljava/lang/String;

    goto :goto_ad

    :cond_ac
    move-object p6, p3

    :goto_ad
    iput-object p6, p0, Lads_mobile_sdk/rv0;->v:Ljava/lang/String;

    if-eqz p1, :cond_b4

    .line 111
    iget p1, p1, Lads_mobile_sdk/qm3;->a:I

    goto :goto_b5

    :cond_b4
    move p1, p2

    :goto_b5
    iput p1, p0, Lads_mobile_sdk/rv0;->w:I

    if-lez p1, :cond_ba

    move p2, p5

    .line 112
    :cond_ba
    iput-boolean p2, p0, Lads_mobile_sdk/rv0;->x:Z

    .line 113
    invoke-static {p4}, Lads_mobile_sdk/rv0;->a(Lads_mobile_sdk/qb3;)Lads_mobile_sdk/nn3;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/rv0;->y:Lads_mobile_sdk/nn3;

    .line 118
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lads_mobile_sdk/rv0;->A:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a(Lads_mobile_sdk/qb3;)Lads_mobile_sdk/nn3;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, -0x1

    goto :goto_c

    .line 2
    :cond_4
    sget-object v0, Lads_mobile_sdk/hv0;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_c
    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    .line 8
    sget-object p0, Lads_mobile_sdk/nn3;->b:Lads_mobile_sdk/nn3;

    return-object p0

    .line 9
    :cond_15
    sget-object p0, Lads_mobile_sdk/nn3;->d:Lads_mobile_sdk/nn3;

    return-object p0

    .line 10
    :cond_18
    sget-object p0, Lads_mobile_sdk/nn3;->c:Lads_mobile_sdk/nn3;

    return-object p0
.end method

.method public static a(Landroid/view/View;Landroid/view/View;Ljava/util/HashSet;)Z
    .registers 12

    const/4 v0, 0x1

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b4

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_b4

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 217
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto/16 :goto_b4

    .line 221
    :cond_1e
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 222
    invoke-virtual {p2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v1, :cond_95

    if-nez v3, :cond_95

    const/4 v1, 0x2

    .line 227
    new-array v3, v1, [I

    .line 228
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 230
    new-instance v4, Landroid/graphics/Rect;

    .line 231
    aget v5, v3, v2

    .line 232
    aget v6, v3, v0

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    .line 234
    aget v3, v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v3

    .line 235
    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 242
    new-array v1, v1, [I

    .line 243
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 245
    new-instance v3, Landroid/graphics/Rect;

    .line 246
    aget v5, v1, v2

    .line 247
    aget v6, v1, v0

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    .line 249
    aget v1, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v1

    .line 250
    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 257
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 258
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 260
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 262
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lt v4, v1, :cond_95

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt v1, v5, :cond_95

    .line 265
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Swipeable Interstitial ad view is fully obscured by "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    return v0

    .line 271
    :cond_95
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_b4

    .line 272
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v3, v2

    :goto_a0
    if-ge v3, v1, :cond_b4

    .line 273
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "getChildAt(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p1, p2}, Lads_mobile_sdk/rv0;->a(Landroid/view/View;Landroid/view/View;Ljava/util/HashSet;)Z

    move-result v4

    if-eqz v4, :cond_b2

    return v0

    :cond_b2
    add-int/2addr v3, v0

    goto :goto_a0

    :cond_b4
    :goto_b4
    return v2
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ey3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 288
    instance-of v0, p2, Lads_mobile_sdk/ov0;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/ov0;

    iget v1, v0, Lads_mobile_sdk/ov0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ov0;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ov0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ov0;-><init>(Lads_mobile_sdk/rv0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/ov0;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 446
    iget v2, v0, Lads_mobile_sdk/ov0;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3a

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_81

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    iget-object p1, v0, Lads_mobile_sdk/ov0;->a:Lads_mobile_sdk/rv0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_57

    :cond_3a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 447
    iget-boolean p1, p1, Lads_mobile_sdk/ey3;->b:Z

    .line 448
    iget-boolean p2, p0, Lads_mobile_sdk/rv0;->p:Z

    if-eqz p1, :cond_73

    if-nez p2, :cond_73

    .line 450
    iput-boolean v4, p0, Lads_mobile_sdk/rv0;->p:Z

    .line 451
    iget-boolean p1, p0, Lads_mobile_sdk/rv0;->s:Z

    if-nez p1, :cond_56

    .line 453
    iput-object p0, v0, Lads_mobile_sdk/ov0;->a:Lads_mobile_sdk/rv0;

    iput v4, v0, Lads_mobile_sdk/ov0;->d:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/rv0;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_56

    goto :goto_80

    :cond_56
    move-object p1, p0

    .line 454
    :goto_57
    iget-object p2, p1, Lads_mobile_sdk/rv0;->z:Lkotlinx/coroutines/Job;

    if-eqz p2, :cond_5c

    goto :goto_84

    .line 455
    :cond_5c
    iget-object p2, p1, Lads_mobile_sdk/rv0;->l:Landroid/view/View;

    if-nez p2, :cond_61

    goto :goto_84

    .line 456
    :cond_61
    iget-object v0, p1, Lads_mobile_sdk/rv0;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/pv0;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p2, v1}, Lads_mobile_sdk/pv0;-><init>(Lads_mobile_sdk/rv0;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p2

    iput-object p2, p1, Lads_mobile_sdk/rv0;->z:Lkotlinx/coroutines/Job;

    goto :goto_84

    :cond_73
    if-nez p1, :cond_84

    if-eqz p2, :cond_84

    .line 457
    iput v3, v0, Lads_mobile_sdk/ov0;->d:I

    const/4 p1, 0x0

    .line 458
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/rv0;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_81

    :goto_80
    return-object v1

    .line 459
    :cond_81
    :goto_81
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 460
    :cond_84
    :goto_84
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    const/4 p1, 0x0

    .line 275
    iput-object p1, p0, Lads_mobile_sdk/rv0;->l:Landroid/view/View;

    .line 276
    iput-object p1, p0, Lads_mobile_sdk/rv0;->m:Lads_mobile_sdk/r31;

    .line 277
    iget-object v0, p0, Lads_mobile_sdk/rv0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 279
    sget-object v0, Lads_mobile_sdk/s11;->F1:Lads_mobile_sdk/s11;

    .line 280
    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/rv0;->a(Lads_mobile_sdk/s11;Z)V

    .line 281
    iget-object v0, p0, Lads_mobile_sdk/rv0;->u:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 282
    invoke-virtual {p0, v0}, Lads_mobile_sdk/rv0;->a(Ljava/lang/String;)V

    .line 283
    :cond_1a
    iget-object v0, p0, Lads_mobile_sdk/rv0;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 284
    iput-boolean v1, p0, Lads_mobile_sdk/rv0;->q:Z

    .line 285
    iget-object v0, p0, Lads_mobile_sdk/rv0;->z:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_29

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 286
    :cond_29
    iput-object p1, p0, Lads_mobile_sdk/rv0;->z:Lkotlinx/coroutines/Job;

    .line 287
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 11
    instance-of v0, p2, Lads_mobile_sdk/nv0;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/nv0;

    iget v1, v0, Lads_mobile_sdk/nv0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/nv0;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/nv0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/nv0;-><init>(Lads_mobile_sdk/rv0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/nv0;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 190
    iget v2, v0, Lads_mobile_sdk/nv0;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_34

    if-ne v2, v4, :cond_2c

    iget-object p1, v0, Lads_mobile_sdk/nv0;->a:Lads_mobile_sdk/rv0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_55

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 191
    iget-boolean p2, p0, Lads_mobile_sdk/rv0;->p:Z

    if-nez p2, :cond_3e

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 192
    :cond_3e
    iput-boolean v3, p0, Lads_mobile_sdk/rv0;->p:Z

    if-eqz p1, :cond_49

    .line 197
    iget-object p1, p0, Lads_mobile_sdk/rv0;->k:Lads_mobile_sdk/c24;

    sget-object p2, Lads_mobile_sdk/gy3;->b:Lads_mobile_sdk/gy3;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ms;->b(Lads_mobile_sdk/gy3;)V

    .line 199
    :cond_49
    iput-object p0, v0, Lads_mobile_sdk/nv0;->a:Lads_mobile_sdk/rv0;

    iput v4, v0, Lads_mobile_sdk/nv0;->d:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/rv0;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_54

    return-object v1

    :cond_54
    move-object p1, p0

    .line 200
    :goto_55
    iput-boolean v3, p1, Lads_mobile_sdk/rv0;->q:Z

    .line 201
    iget-object p2, p1, Lads_mobile_sdk/rv0;->z:Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    if-eqz p2, :cond_5f

    invoke-static {p2, v0, v4, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 202
    :cond_5f
    iput-object v0, p1, Lads_mobile_sdk/rv0;->z:Lkotlinx/coroutines/Job;

    .line 203
    iget-object p2, p1, Lads_mobile_sdk/rv0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_7d

    .line 205
    iget-object p2, p1, Lads_mobile_sdk/rv0;->f:Lads_mobile_sdk/f0;

    invoke-virtual {p2}, Lads_mobile_sdk/f0;->i()Z

    move-result p2

    .line 206
    sget-object v0, Lads_mobile_sdk/s11;->F1:Lads_mobile_sdk/s11;

    invoke-virtual {p1, v0, p2}, Lads_mobile_sdk/rv0;->a(Lads_mobile_sdk/s11;Z)V

    if-nez p2, :cond_7d

    .line 207
    iget-object p2, p1, Lads_mobile_sdk/rv0;->u:Ljava/lang/String;

    if-eqz p2, :cond_7d

    .line 208
    invoke-virtual {p1, p2}, Lads_mobile_sdk/rv0;->a(Ljava/lang/String;)V

    .line 209
    :cond_7d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/s11;Z)V
    .registers 9

    .line 2171
    invoke-static {}, Lads_mobile_sdk/on3;->v()Lads_mobile_sdk/mn3;

    move-result-object v0

    .line 2172
    iget-object v1, p0, Lads_mobile_sdk/rv0;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lads_mobile_sdk/mn3;->b(I)Lads_mobile_sdk/mn3;

    move-result-object v0

    .line 2173
    iget v1, p0, Lads_mobile_sdk/rv0;->w:I

    invoke-virtual {v0, v1}, Lads_mobile_sdk/mn3;->a(I)Lads_mobile_sdk/mn3;

    move-result-object v0

    .line 2174
    iget-object v1, p0, Lads_mobile_sdk/rv0;->y:Lads_mobile_sdk/nn3;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/mn3;->a(Lads_mobile_sdk/nn3;)Lads_mobile_sdk/mn3;

    move-result-object v0

    .line 2175
    invoke-virtual {v0, p2}, Lads_mobile_sdk/mn3;->a(Z)Lads_mobile_sdk/mn3;

    move-result-object p2

    .line 2176
    invoke-virtual {p2}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/on3;

    .line 2178
    iget-object v0, p0, Lads_mobile_sdk/rv0;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/qv0;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, p2, v1}, Lads_mobile_sdk/qv0;-><init>(Lads_mobile_sdk/rv0;Lads_mobile_sdk/s11;Lads_mobile_sdk/on3;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Landroid/view/View;Lads_mobile_sdk/r31;)V
    .registers 4

    .line 1504
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaWebView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1644
    iput-object p1, p0, Lads_mobile_sdk/rv0;->l:Landroid/view/View;

    .line 1645
    iput-object p2, p0, Lads_mobile_sdk/rv0;->m:Lads_mobile_sdk/r31;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 16

    .line 1015
    iget-object v0, p0, Lads_mobile_sdk/rv0;->v:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 1016
    :cond_5
    iget-object v1, p0, Lads_mobile_sdk/rv0;->i:Lads_mobile_sdk/tx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x64

    int-to-long v3, v3

    .line 1018
    div-long v6, v1, v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 1020
    const-string v1, "@label@"

    const/4 v3, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "@shts@"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1037
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1038
    iget-object v0, p0, Lads_mobile_sdk/rv0;->h:Lads_mobile_sdk/d63;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lads_mobile_sdk/d63;->a(Lads_mobile_sdk/d63;Ljava/util/List;)V

    return-void
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/jv0;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/jv0;

    iget v3, v2, Lads_mobile_sdk/jv0;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/jv0;->e:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/jv0;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/jv0;-><init>(Lads_mobile_sdk/rv0;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/jv0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 235
    iget v4, v2, Lads_mobile_sdk/jv0;->e:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_41

    if-eq v4, v6, :cond_39

    if-ne v4, v5, :cond_31

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v1

    :cond_31
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    iget-object v4, v2, Lads_mobile_sdk/jv0;->b:Ljava/lang/String;

    iget-object v8, v2, Lads_mobile_sdk/jv0;->a:Lads_mobile_sdk/r31;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_81

    :cond_41
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 236
    iget-object v8, v0, Lads_mobile_sdk/rv0;->m:Lads_mobile_sdk/r31;

    if-nez v8, :cond_4b

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 237
    :cond_4b
    sget-object v1, Lads_mobile_sdk/ky;->a:Lads_mobile_sdk/ky;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 239
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 240
    const-string v9, "closetype"

    invoke-virtual {v1, v9, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v9, v0, Lads_mobile_sdk/rv0;->c:Ljava/lang/String;

    const-string v10, "version"

    invoke-virtual {v1, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v11, v0, Lads_mobile_sdk/rv0;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v14, Lads_mobile_sdk/kv0;

    invoke-direct {v14, v8, v1, v7}, Lads_mobile_sdk/kv0;-><init>(Lads_mobile_sdk/r31;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 244
    iput-object v8, v2, Lads_mobile_sdk/jv0;->a:Lads_mobile_sdk/r31;

    iput-object v4, v2, Lads_mobile_sdk/jv0;->b:Ljava/lang/String;

    iput v6, v2, Lads_mobile_sdk/jv0;->e:I

    const-string v1, "aeh2"

    invoke-virtual {v8, v1, v2}, Lads_mobile_sdk/r31;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_81

    goto :goto_9c

    .line 245
    :cond_81
    :goto_81
    iput-object v7, v2, Lads_mobile_sdk/jv0;->a:Lads_mobile_sdk/r31;

    iput-object v7, v2, Lads_mobile_sdk/jv0;->b:Ljava/lang/String;

    iput v5, v2, Lads_mobile_sdk/jv0;->e:I

    .line 246
    iget-object v1, v8, Lads_mobile_sdk/r31;->d:Lads_mobile_sdk/mb0;

    if-eqz v1, :cond_9a

    .line 247
    const-string v5, "close_type"

    invoke-virtual {v1, v5, v4, v6, v2}, Lads_mobile_sdk/mb0;->a(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .line 248
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v7, v1, :cond_98

    goto :goto_9a

    :cond_98
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_9a
    :goto_9a
    if-ne v7, v3, :cond_9d

    :goto_9c
    return-object v3

    :cond_9d
    return-object v7
.end method

.method public final f()Z
    .registers 6

    .line 396
    const-string v0, "Swipeable Interstitial ad checking for obscuration"

    invoke-static {v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lads_mobile_sdk/rv0;->l:Landroid/view/View;

    if-nez v0, :cond_10

    .line 400
    const-string v0, "Swipeable Interstitial ad view is null"

    invoke-static {v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 403
    :cond_10
    iget-object v1, p0, Lads_mobile_sdk/rv0;->f:Lads_mobile_sdk/f0;

    invoke-virtual {v1}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    const v3, 0x1020002

    .line 404
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_24

    return v2

    .line 405
    :cond_24
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 406
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_2d
    if-eqz v3, :cond_3b

    .line 408
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_36

    .line 409
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_36
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_2d

    .line 412
    :cond_3b
    invoke-static {v1, v0, v2}, Lads_mobile_sdk/rv0;->a(Landroid/view/View;Landroid/view/View;Ljava/util/HashSet;)Z

    move-result v0

    .line 413
    sget-object v1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Swipeable Interstitial ad view is fully obscured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    return v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/lv0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/lv0;

    iget v1, v0, Lads_mobile_sdk/lv0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/lv0;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/lv0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/lv0;-><init>(Lads_mobile_sdk/rv0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/lv0;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 223
    iget v2, v0, Lads_mobile_sdk/lv0;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3b

    if-eq v2, v5, :cond_35

    if-ne v2, v3, :cond_2d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_8f

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    iget-object v2, v0, Lads_mobile_sdk/lv0;->a:Lads_mobile_sdk/r31;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_75

    :cond_3b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 224
    iget-boolean p1, p0, Lads_mobile_sdk/rv0;->q:Z

    if-eqz p1, :cond_45

    .line 225
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 227
    :cond_45
    iput-boolean v5, p0, Lads_mobile_sdk/rv0;->q:Z

    .line 228
    iget-object v2, p0, Lads_mobile_sdk/rv0;->m:Lads_mobile_sdk/r31;

    if-nez v2, :cond_4e

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 229
    :cond_4e
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v6, p0, Lads_mobile_sdk/rv0;->c:Ljava/lang/String;

    const-string v7, "version"

    invoke-virtual {p1, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v8, p0, Lads_mobile_sdk/rv0;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v11, Lads_mobile_sdk/mv0;

    invoke-direct {v11, v2, p1, v4}, Lads_mobile_sdk/mv0;-><init>(Lads_mobile_sdk/r31;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 231
    iput-object v2, v0, Lads_mobile_sdk/lv0;->a:Lads_mobile_sdk/r31;

    iput v5, v0, Lads_mobile_sdk/lv0;->d:I

    const-string p1, "aes2"

    invoke-virtual {v2, p1, v0}, Lads_mobile_sdk/r31;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_75

    goto :goto_8e

    .line 232
    :cond_75
    :goto_75
    iput-object v4, v0, Lads_mobile_sdk/lv0;->a:Lads_mobile_sdk/r31;

    iput v3, v0, Lads_mobile_sdk/lv0;->d:I

    .line 233
    iget-object p1, v2, Lads_mobile_sdk/r31;->d:Lads_mobile_sdk/mb0;

    if-eqz p1, :cond_8c

    .line 234
    const-string v2, "native:view_show"

    invoke-static {p1, v2, v0}, Lads_mobile_sdk/mb0;->a(Lads_mobile_sdk/mb0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .line 235
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne v4, p1, :cond_8a

    goto :goto_8c

    :cond_8a
    check-cast v4, Lads_mobile_sdk/ir3;

    :cond_8c
    :goto_8c
    if-ne v4, v1, :cond_8f

    :goto_8e
    return-object v1

    .line 236
    :cond_8f
    :goto_8f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
