###### Class ads_mobile_sdk.pv0 (ads_mobile_sdk.pv0)
.class public final Lads_mobile_sdk/pv0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/rv0;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/rv0;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/pv0;->b:Lads_mobile_sdk/rv0;

    iput-object p2, p0, Lads_mobile_sdk/pv0;->c:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/pv0;

    iget-object v0, p0, Lads_mobile_sdk/pv0;->b:Lads_mobile_sdk/rv0;

    iget-object v1, p0, Lads_mobile_sdk/pv0;->c:Landroid/view/View;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/pv0;-><init>(Lads_mobile_sdk/rv0;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/pv0;

    iget-object v0, p0, Lads_mobile_sdk/pv0;->b:Lads_mobile_sdk/rv0;

    iget-object v1, p0, Lads_mobile_sdk/pv0;->c:Landroid/view/View;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/pv0;-><init>(Lads_mobile_sdk/rv0;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/pv0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 251
    iget v2, v0, Lads_mobile_sdk/pv0;->a:I

    const/4 v3, 0x3

    const-string v4, "key"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_29

    if-eq v2, v7, :cond_24

    if-eq v2, v5, :cond_1f

    if-ne v2, v3, :cond_17

    goto :goto_29

    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1dd

    :cond_24
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_198

    :cond_29
    :goto_29
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 253
    :cond_2c
    iget-object v2, v0, Lads_mobile_sdk/pv0;->b:Lads_mobile_sdk/rv0;

    .line 254
    iget-object v2, v2, Lads_mobile_sdk/rv0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 255
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_ba

    .line 257
    iget-object v2, v0, Lads_mobile_sdk/pv0;->b:Lads_mobile_sdk/rv0;

    iget-object v8, v0, Lads_mobile_sdk/pv0;->c:Landroid/view/View;

    .line 258
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    if-nez v9, :cond_45

    goto/16 :goto_ba

    .line 262
    :cond_45
    new-array v9, v5, [I

    .line 263
    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 265
    new-instance v10, Landroid/graphics/Rect;

    aget v11, v9, v6

    aget v12, v9, v7

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v13, v11

    aget v9, v9, v7

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v14, v9

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 267
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 272
    new-instance v9, Landroid/graphics/Rect;

    iget v11, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v11, v7

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v8, v7

    invoke-direct {v9, v6, v6, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 275
    iget v8, v10, Landroid/graphics/Rect;->left:I

    iget v11, v9, Landroid/graphics/Rect;->left:I

    if-lt v8, v11, :cond_8a

    .line 276
    iget v8, v10, Landroid/graphics/Rect;->top:I

    if-ltz v8, :cond_8a

    .line 277
    iget v8, v10, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->right:I

    if-gt v8, v11, :cond_8a

    .line 278
    iget v8, v10, Landroid/graphics/Rect;->bottom:I

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-gt v8, v9, :cond_8a

    move v8, v7

    goto :goto_8b

    :cond_8a
    move v8, v6

    .line 280
    :goto_8b
    iget-object v9, v2, Lads_mobile_sdk/rv0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v9

    if-eqz v8, :cond_ba

    if-nez v9, :cond_ba

    .line 282
    iget-object v8, v2, Lads_mobile_sdk/rv0;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v8

    if-ne v8, v7, :cond_ae

    .line 283
    iget-boolean v8, v2, Lads_mobile_sdk/rv0;->x:Z

    if-eqz v8, :cond_ae

    .line 284
    iget-object v8, v2, Lads_mobile_sdk/rv0;->A:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdEventCallback;

    if-eqz v8, :cond_ae

    .line 285
    invoke-interface {v8}, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdEventCallback;->onAdScreenHoldTimerStarted()V

    .line 286
    :cond_ae
    iget-object v8, v2, Lads_mobile_sdk/rv0;->t:Ljava/lang/String;

    if-eqz v8, :cond_b5

    .line 287
    invoke-virtual {v2, v8}, Lads_mobile_sdk/rv0;->a(Ljava/lang/String;)V

    .line 288
    :cond_b5
    sget-object v8, Lads_mobile_sdk/s11;->E1:Lads_mobile_sdk/s11;

    .line 289
    invoke-virtual {v2, v8, v6}, Lads_mobile_sdk/rv0;->a(Lads_mobile_sdk/s11;Z)V

    .line 290
    :cond_ba
    :goto_ba
    iget-object v2, v0, Lads_mobile_sdk/pv0;->b:Lads_mobile_sdk/rv0;

    .line 291
    iget-boolean v8, v2, Lads_mobile_sdk/rv0;->q:Z

    if-nez v8, :cond_198

    .line 292
    iget-object v8, v2, Lads_mobile_sdk/rv0;->r:Lads_mobile_sdk/qb3;

    .line 293
    sget-object v9, Lads_mobile_sdk/qb3;->b:Lads_mobile_sdk/qb3;

    if-ne v8, v9, :cond_ce

    .line 294
    iget-object v2, v2, Lads_mobile_sdk/rv0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 295
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_198

    .line 297
    :cond_ce
    iget-object v2, v0, Lads_mobile_sdk/pv0;->b:Lads_mobile_sdk/rv0;

    .line 298
    iget-object v8, v2, Lads_mobile_sdk/rv0;->e:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    .line 299
    instance-of v9, v8, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    const/4 v10, 0x0

    if-eqz v9, :cond_da

    check-cast v8, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    goto :goto_db

    :cond_da
    move-object v8, v10

    :goto_db
    if-eqz v8, :cond_18d

    .line 300
    invoke-virtual {v8}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_e5

    goto/16 :goto_18d

    .line 302
    :cond_e5
    sget-object v9, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    invoke-static {v8}, Lads_mobile_sdk/m21;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "defaultValue"

    if-eqz v9, :cond_112

    .line 305
    iget-object v12, v2, Lads_mobile_sdk/rv0;->j:Lads_mobile_sdk/ex0;

    .line 306
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    const-string v13, ""

    invoke-static {v13}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 308
    const-string v14, "gads:swipeable_interstitial_obscuration_check_required_admob_wp"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    sget-object v15, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {v12, v14, v13, v15}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 354
    invoke-interface {v12, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_112

    goto/16 :goto_185

    .line 355
    :cond_112
    const-string v9, "adUnitId"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    sget-object v9, Lads_mobile_sdk/o21;->j:Lkotlin/text/Regex;

    .line 357
    invoke-static {v9, v8, v6, v5, v10}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v8

    if-eqz v8, :cond_143

    invoke-interface {v8}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v8

    if-eqz v8, :cond_143

    invoke-interface {v8, v7}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v8

    if-eqz v8, :cond_143

    invoke-virtual {v8}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_143

    const-string v8, ","

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_147

    :cond_143
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 358
    :cond_147
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_18d

    .line 360
    iget-object v2, v2, Lads_mobile_sdk/rv0;->j:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    const-string v9, "7214"

    invoke-static {v9}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 363
    const-string v10, "gads:swipeable_interstitial_obscuration_check_required_gam_network_codes"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    sget-object v11, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {v2, v10, v9, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 409
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_16f

    goto :goto_18d

    .line 410
    :cond_16f
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_173
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 411
    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_173

    .line 412
    :goto_185
    iget-object v2, v0, Lads_mobile_sdk/pv0;->b:Lads_mobile_sdk/rv0;

    .line 413
    invoke-virtual {v2}, Lads_mobile_sdk/rv0;->f()Z

    move-result v2

    if-nez v2, :cond_198

    .line 414
    :cond_18d
    :goto_18d
    iget-object v2, v0, Lads_mobile_sdk/pv0;->b:Lads_mobile_sdk/rv0;

    iput v7, v0, Lads_mobile_sdk/pv0;->a:I

    .line 415
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rv0;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_198

    goto :goto_20b

    .line 416
    :cond_198
    :goto_198
    iget-object v2, v0, Lads_mobile_sdk/pv0;->b:Lads_mobile_sdk/rv0;

    iget-object v8, v0, Lads_mobile_sdk/pv0;->c:Landroid/view/View;

    .line 417
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    new-array v2, v5, [I

    .line 419
    invoke-virtual {v8, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 420
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 423
    new-instance v10, Landroid/graphics/Rect;

    iget v11, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v11, v7

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v9, v7

    invoke-direct {v10, v6, v6, v11, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 425
    new-instance v9, Landroid/graphics/Rect;

    aget v11, v2, v6

    aget v12, v2, v7

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v13, v11

    aget v2, v2, v7

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-direct {v9, v11, v12, v13, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 426
    invoke-static {v9, v10}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1e0

    .line 427
    iget-object v2, v0, Lads_mobile_sdk/pv0;->b:Lads_mobile_sdk/rv0;

    iput v5, v0, Lads_mobile_sdk/pv0;->a:I

    .line 428
    invoke-virtual {v2, v7, v0}, Lads_mobile_sdk/rv0;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1dd

    goto :goto_20b

    .line 429
    :cond_1dd
    :goto_1dd
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 430
    :cond_1e0
    iget-object v2, v0, Lads_mobile_sdk/pv0;->b:Lads_mobile_sdk/rv0;

    .line 431
    iget-object v2, v2, Lads_mobile_sdk/rv0;->j:Lads_mobile_sdk/ex0;

    .line 432
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    sget-object v8, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v8, 0xc8

    sget-object v9, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 434
    const-string v10, "gads:swipeable_interstitial_ad_status_polling_interval_ms"

    invoke-static {v8, v9, v10, v4}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v8

    .line 435
    sget-object v9, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v2, v10, v8, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/time/Duration;

    invoke-virtual {v2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v8

    .line 436
    invoke-static {v8, v9}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v8

    iput v3, v0, Lads_mobile_sdk/pv0;->a:I

    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2c

    :goto_20b
    return-object v1
.end method
