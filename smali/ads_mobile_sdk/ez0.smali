###### Class ads_mobile_sdk.ez0 (ads_mobile_sdk.ez0)
.class public abstract Lads_mobile_sdk/ez0;
.super Lads_mobile_sdk/yx0;
.source "SourceFile"


# instance fields
.field public final P:Lads_mobile_sdk/f0;

.field public final Q:Lads_mobile_sdk/v3;

.field public R:Z

.field public S:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ur3;Ljava/lang/String;Lads_mobile_sdk/j53;Lads_mobile_sdk/zy;Lads_mobile_sdk/i2;Lads_mobile_sdk/f0;Lads_mobile_sdk/v3;Lads_mobile_sdk/df2;Lads_mobile_sdk/o21;Lads_mobile_sdk/j1;)V
    .registers 33

    move-object/from16 v0, p12

    move-object/from16 v1, p13

    .line 1
    const-string v2, "applicationContext"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "uiScope"

    move-object/from16 v4, p2

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "uiContext"

    move-object/from16 v5, p3

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "backgroundScope"

    move-object/from16 v6, p4

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "backgroundContext"

    move-object/from16 v7, p5

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "flags"

    move-object/from16 v8, p6

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "traceLogger"

    move-object/from16 v9, p7

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "afmaVersion"

    move-object/from16 v10, p8

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestType"

    move-object/from16 v11, p9

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "commonConfiguration"

    move-object/from16 v12, p10

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adConfiguration"

    move-object/from16 v13, p11

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "activityTracker"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adEventEmitter"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "omidMonitor"

    move-object/from16 v14, p14

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "gmaUtil"

    move-object/from16 v15, p15

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "backButtonStateDelegate"

    move-object/from16 v0, p16

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v15

    const-string v2, "empty(...)"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object/from16 v13, p15

    move-object v14, v0

    move-object/from16 v0, p0

    .line 67
    invoke-direct/range {v0 .. v15}, Lads_mobile_sdk/yx0;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ur3;Ljava/lang/String;Lads_mobile_sdk/j53;Lads_mobile_sdk/zy;Lads_mobile_sdk/i2;Lads_mobile_sdk/df2;Lads_mobile_sdk/o21;Lads_mobile_sdk/lo;Ljava/util/Optional;)V

    move-object/from16 v1, p12

    .line 68
    iput-object v1, v0, Lads_mobile_sdk/ez0;->P:Lads_mobile_sdk/f0;

    move-object/from16 v1, p13

    .line 69
    iput-object v1, v0, Lads_mobile_sdk/ez0;->Q:Lads_mobile_sdk/v3;

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, v0, Lads_mobile_sdk/ez0;->R:Z

    .line 99
    iput-boolean v1, v0, Lads_mobile_sdk/ez0;->S:Z

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/ez0;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 157
    instance-of v0, p2, Lads_mobile_sdk/dz0;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/dz0;

    iget v1, v0, Lads_mobile_sdk/dz0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/dz0;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/dz0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/dz0;-><init>(Lads_mobile_sdk/ez0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/dz0;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 234
    iget v2, v0, Lads_mobile_sdk/dz0;->d:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_43

    if-eq v2, v5, :cond_3d

    if-eq v2, v4, :cond_37

    if-ne v2, v3, :cond_2f

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_74

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    iget-object p0, v0, Lads_mobile_sdk/dz0;->a:Lads_mobile_sdk/ez0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_62

    :cond_3d
    iget-object p0, v0, Lads_mobile_sdk/dz0;->a:Lads_mobile_sdk/ez0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    :cond_43
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 235
    iput-object p0, v0, Lads_mobile_sdk/dz0;->a:Lads_mobile_sdk/ez0;

    iput v5, v0, Lads_mobile_sdk/dz0;->d:I

    invoke-super {p0, p1, v0}, Lads_mobile_sdk/yx0;->a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_51

    goto :goto_73

    .line 236
    :cond_51
    :goto_51
    iget-boolean p1, p0, Lads_mobile_sdk/ez0;->R:Z

    if-eqz p1, :cond_62

    .line 237
    iget-object p1, p0, Lads_mobile_sdk/ez0;->Q:Lads_mobile_sdk/v3;

    iput-object p0, v0, Lads_mobile_sdk/dz0;->a:Lads_mobile_sdk/ez0;

    iput v4, v0, Lads_mobile_sdk/dz0;->d:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/v3;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_62

    goto :goto_73

    .line 239
    :cond_62
    :goto_62
    iget-boolean p1, p0, Lads_mobile_sdk/ez0;->S:Z

    if-eqz p1, :cond_77

    .line 240
    iget-object p0, p0, Lads_mobile_sdk/ez0;->Q:Lads_mobile_sdk/v3;

    const/4 p1, 0x0

    iput-object p1, v0, Lads_mobile_sdk/dz0;->a:Lads_mobile_sdk/ez0;

    iput v3, v0, Lads_mobile_sdk/dz0;->d:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/v3;->p(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_74

    :goto_73
    return-object v1

    .line 242
    :cond_74
    :goto_74
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_77
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/ez0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/zy0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/zy0;

    iget v1, v0, Lads_mobile_sdk/zy0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/zy0;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/zy0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/zy0;-><init>(Lads_mobile_sdk/ez0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/zy0;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 123
    iget v2, v0, Lads_mobile_sdk/zy0;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3b

    if-eq v2, v5, :cond_35

    if-ne v2, v4, :cond_2d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_74

    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    iget-object p0, v0, Lads_mobile_sdk/zy0;->a:Lads_mobile_sdk/ez0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4d

    :cond_3b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 124
    iput-object p0, v0, Lads_mobile_sdk/zy0;->a:Lads_mobile_sdk/ez0;

    iput v5, v0, Lads_mobile_sdk/zy0;->d:I

    .line 125
    invoke-virtual {p0}, Lads_mobile_sdk/yx0;->j()Lads_mobile_sdk/r31;

    move-result-object p1

    .line 126
    iput-object v3, p1, Lads_mobile_sdk/r31;->p:Lads_mobile_sdk/ay0;

    .line 127
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-ne p1, v1, :cond_4d

    goto :goto_73

    .line 128
    :cond_4d
    :goto_4d
    iget-object p1, p0, Lads_mobile_sdk/yy0;->e:Lads_mobile_sdk/ex0;

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    const-string v2, "key"

    const-string v5, "gad:interstitial_notify_publisher_without_delay"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v5, v2, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_77

    .line 148
    iput-object v3, v0, Lads_mobile_sdk/zy0;->a:Lads_mobile_sdk/ez0;

    iput v4, v0, Lads_mobile_sdk/zy0;->d:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/ez0;->d(Lkotlin/coroutines/Continuation;)Lkotlin/Unit;

    move-result-object p0

    if-ne p0, v1, :cond_74

    :goto_73
    return-object v1

    .line 150
    :cond_74
    :goto_74
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_77
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static b(Lads_mobile_sdk/ez0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 2
    instance-of v0, p1, Lads_mobile_sdk/az0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/az0;

    iget v1, v0, Lads_mobile_sdk/az0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/az0;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/az0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/az0;-><init>(Lads_mobile_sdk/ez0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/az0;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 95
    iget v2, v0, Lads_mobile_sdk/az0;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p0, v0, Lads_mobile_sdk/az0;->a:Lads_mobile_sdk/ez0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_44

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 96
    iput-object p0, v0, Lads_mobile_sdk/az0;->a:Lads_mobile_sdk/ez0;

    iput v3, v0, Lads_mobile_sdk/az0;->d:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    invoke-static {p0, v0}, Lads_mobile_sdk/yy0;->a(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_44

    return-object v1

    .line 98
    :cond_44
    :goto_44
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_75

    .line 99
    iget-object v4, p0, Lads_mobile_sdk/yy0;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 100
    new-instance p1, Lads_mobile_sdk/bz0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lads_mobile_sdk/bz0;-><init>(Lads_mobile_sdk/ez0;Lkotlin/coroutines/Continuation;)V

    .line 101
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 102
    const-string p0, "<this>"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "block"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    new-instance v7, Lads_mobile_sdk/ws3;

    invoke-direct {v7, p1, v0}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 361
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_75
    const/4 p0, 0x0

    .line 363
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 156
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/ez0;->a(Lads_mobile_sdk/ez0;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 152
    iget-boolean v0, p0, Lads_mobile_sdk/ez0;->S:Z

    if-eqz v0, :cond_14

    .line 153
    iget-object v0, p0, Lads_mobile_sdk/ez0;->Q:Lads_mobile_sdk/v3;

    invoke-virtual {v0, p1, p2}, Lads_mobile_sdk/v3;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_11

    return-object p1

    :cond_11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 155
    :cond_14
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/ez0;->a(Lads_mobile_sdk/ez0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lkotlin/coroutines/Continuation;)Lkotlin/Unit;
    .registers 8

    .line 2
    iget-boolean p1, p0, Lads_mobile_sdk/ez0;->S:Z

    if-eqz p1, :cond_31

    .line 3
    iget-object p1, p0, Lads_mobile_sdk/yy0;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 5
    iget-object v0, p0, Lads_mobile_sdk/yy0;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 6
    new-instance p1, Lads_mobile_sdk/cz0;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/cz0;-><init>(Lads_mobile_sdk/ez0;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    .line 7
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 8
    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 267
    :cond_31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 2
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;

    .line 3
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;->INTERNAL_ERROR:Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;

    .line 4
    const-string v2, "There was an internal error when attempting to show fullscreen content."

    const/4 v3, 0x0

    .line 5
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;)V

    .line 6
    invoke-virtual {p0, v0, p1}, Lads_mobile_sdk/ez0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_15

    return-object p1

    :cond_15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final onStop()V
    .registers 1

    .line 90
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->o()V

    return-void
.end method
