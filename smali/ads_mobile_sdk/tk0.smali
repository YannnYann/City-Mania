###### Class ads_mobile_sdk.tk0 (ads_mobile_sdk.tk0)
.class public final Lads_mobile_sdk/tk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/nr3;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/ok0;

.field public final c:Lads_mobile_sdk/ex0;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/google/gson/JsonObject;

.field public final g:Lads_mobile_sdk/ks3;

.field public h:Landroid/graphics/PointF;

.field public i:Landroid/graphics/PointF;

.field public j:Lads_mobile_sdk/qk0;

.field public final k:I

.field public l:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ok0;Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lads_mobile_sdk/ks3;)V
    .registers 10

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugDialogManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lads_mobile_sdk/tk0;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 37
    iput-object p3, p0, Lads_mobile_sdk/tk0;->b:Lads_mobile_sdk/ok0;

    .line 38
    iput-object p4, p0, Lads_mobile_sdk/tk0;->c:Lads_mobile_sdk/ex0;

    .line 39
    iput-object p5, p0, Lads_mobile_sdk/tk0;->d:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lads_mobile_sdk/tk0;->e:Ljava/lang/String;

    .line 41
    iput-object p7, p0, Lads_mobile_sdk/tk0;->f:Lcom/google/gson/JsonObject;

    .line 42
    iput-object p8, p0, Lads_mobile_sdk/tk0;->g:Lads_mobile_sdk/ks3;

    .line 65
    new-instance p2, Landroid/graphics/PointF;

    const/high16 p3, -0x40800000    # -1.0f

    invoke-direct {p2, p3, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lads_mobile_sdk/tk0;->h:Landroid/graphics/PointF;

    .line 66
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p3, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lads_mobile_sdk/tk0;->i:Landroid/graphics/PointF;

    .line 68
    sget-object p2, Lads_mobile_sdk/qk0;->d:Lads_mobile_sdk/qk0;

    iput-object p2, p0, Lads_mobile_sdk/tk0;->j:Lads_mobile_sdk/qk0;

    .line 69
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lads_mobile_sdk/tk0;->k:I

    return-void
.end method

.method public static final a(Lads_mobile_sdk/tk0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    instance-of v0, p1, Lads_mobile_sdk/sk0;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/sk0;

    iget v1, v0, Lads_mobile_sdk/sk0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_17

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/sk0;->d:I

    :goto_15
    move-object v6, v0

    goto :goto_1d

    :cond_17
    new-instance v0, Lads_mobile_sdk/sk0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/sk0;-><init>(Lads_mobile_sdk/tk0;Lkotlin/coroutines/Continuation;)V

    goto :goto_15

    :goto_1d
    iget-object p1, v6, Lads_mobile_sdk/sk0;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 170
    iget v1, v6, Lads_mobile_sdk/sk0;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_3f

    if-eq v1, v2, :cond_39

    if-ne v1, v3, :cond_31

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_88

    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    iget-object p0, v6, Lads_mobile_sdk/sk0;->a:Lads_mobile_sdk/tk0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6a

    :cond_3f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 171
    iget-object p1, p0, Lads_mobile_sdk/tk0;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 173
    const-string v4, "key"

    const-string v5, "gads:debug_hold_gesture:time_millis"

    invoke-static {v3, v1, v5, v4}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v1

    .line 174
    sget-object v4, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {p1, v5, v1, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v4

    .line 175
    iput-object p0, v6, Lads_mobile_sdk/sk0;->a:Lads_mobile_sdk/tk0;

    iput v2, v6, Lads_mobile_sdk/sk0;->d:I

    invoke-static {v4, v5, v6}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6a

    goto :goto_87

    .line 176
    :cond_6a
    :goto_6a
    sget-object p1, Lads_mobile_sdk/qk0;->c:Lads_mobile_sdk/qk0;

    iput-object p1, p0, Lads_mobile_sdk/tk0;->j:Lads_mobile_sdk/qk0;

    .line 177
    iget-object v1, p0, Lads_mobile_sdk/tk0;->b:Lads_mobile_sdk/ok0;

    iget-object v2, p0, Lads_mobile_sdk/tk0;->d:Ljava/lang/String;

    move p1, v3

    iget-object v3, p0, Lads_mobile_sdk/tk0;->e:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/tk0;->f:Lcom/google/gson/JsonObject;

    iget-object v5, p0, Lads_mobile_sdk/tk0;->g:Lads_mobile_sdk/ks3;

    const/4 p0, 0x0

    iput-object p0, v6, Lads_mobile_sdk/sk0;->a:Lads_mobile_sdk/tk0;

    iput p1, v6, Lads_mobile_sdk/sk0;->d:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    invoke-static/range {v1 .. v6}, Lads_mobile_sdk/ok0;->a(Lads_mobile_sdk/ok0;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_88

    :goto_87
    return-object v0

    .line 179
    :cond_88
    :goto_88
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .registers 14

    .line 319
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-nez v0, :cond_27

    .line 399
    sget-object v0, Lads_mobile_sdk/qk0;->a:Lads_mobile_sdk/qk0;

    iput-object v0, p0, Lads_mobile_sdk/tk0;->j:Lads_mobile_sdk/qk0;

    .line 400
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lads_mobile_sdk/tk0;->h:Landroid/graphics/PointF;

    return-void

    .line 401
    :cond_27
    iget-object v3, p0, Lads_mobile_sdk/tk0;->j:Lads_mobile_sdk/qk0;

    sget-object v4, Lads_mobile_sdk/qk0;->d:Lads_mobile_sdk/qk0;

    if-ne v3, v4, :cond_2f

    goto/16 :goto_bf

    .line 405
    :cond_2f
    sget-object v4, Lads_mobile_sdk/qk0;->a:Lads_mobile_sdk/qk0;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_72

    const/4 v4, 0x5

    if-ne v0, v4, :cond_72

    .line 408
    sget-object v0, Lads_mobile_sdk/qk0;->b:Lads_mobile_sdk/qk0;

    iput-object v0, p0, Lads_mobile_sdk/tk0;->j:Lads_mobile_sdk/qk0;

    .line 409
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lads_mobile_sdk/tk0;->i:Landroid/graphics/PointF;

    .line 410
    iget-object v6, p0, Lads_mobile_sdk/tk0;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/rk0;

    invoke-direct {p1, p0, v5}, Lads_mobile_sdk/rk0;-><init>(Lads_mobile_sdk/tk0;Lkotlin/coroutines/Continuation;)V

    .line 411
    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 412
    const-string v0, "<this>"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    new-instance v9, Lads_mobile_sdk/ws3;

    invoke-direct {v9, p1, v5}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 671
    iput-object p1, p0, Lads_mobile_sdk/tk0;->l:Lkotlinx/coroutines/Job;

    return-void

    .line 672
    :cond_72
    sget-object v4, Lads_mobile_sdk/qk0;->b:Lads_mobile_sdk/qk0;

    if-ne v3, v4, :cond_bf

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7a

    goto :goto_b4

    :cond_7a
    if-ne v0, v3, :cond_bf

    const/4 v0, 0x0

    move v2, v0

    :goto_7e
    if-ge v2, v1, :cond_9b

    .line 683
    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v3

    .line 684
    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v4

    .line 685
    invoke-virtual {p1, v6, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v7

    .line 686
    invoke-virtual {p1, v6, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v8

    .line 687
    invoke-virtual {p0, v3, v4, v7, v8}, Lads_mobile_sdk/tk0;->a(FFFF)Z

    move-result v3

    if-nez v3, :cond_98

    move v0, v6

    goto :goto_9b

    :cond_98
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    .line 699
    :cond_9b
    :goto_9b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, v1, v2, v3, p1}, Lads_mobile_sdk/tk0;->a(FFFF)Z

    move-result p1

    if-nez p1, :cond_b2

    goto :goto_b4

    :cond_b2
    if-eqz v0, :cond_bf

    .line 705
    :goto_b4
    iget-object p1, p0, Lads_mobile_sdk/tk0;->l:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_bb

    invoke-static {p1, v5, v6, v5}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 706
    :cond_bb
    sget-object p1, Lads_mobile_sdk/qk0;->d:Lads_mobile_sdk/qk0;

    iput-object p1, p0, Lads_mobile_sdk/tk0;->j:Lads_mobile_sdk/qk0;

    :cond_bf
    :goto_bf
    return-void
.end method

.method public final a(FFFF)Z
    .registers 6

    .line 315
    iget-object v0, p0, Lads_mobile_sdk/tk0;->h:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lads_mobile_sdk/tk0;->k:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_42

    .line 316
    iget-object p1, p0, Lads_mobile_sdk/tk0;->h:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lads_mobile_sdk/tk0;->k:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_42

    .line 317
    iget-object p1, p0, Lads_mobile_sdk/tk0;->i:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lads_mobile_sdk/tk0;->k:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_42

    .line 318
    iget-object p1, p0, Lads_mobile_sdk/tk0;->i:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lads_mobile_sdk/tk0;->k:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_42

    const/4 p1, 0x1

    return p1

    :cond_42
    const/4 p1, 0x0

    return p1
.end method
