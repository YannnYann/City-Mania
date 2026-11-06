###### Class ads_mobile_sdk.pg2 (ads_mobile_sdk.pg2)
.class public final Lads_mobile_sdk/pg2;
.super Lads_mobile_sdk/ez0;
.source "SourceFile"


# instance fields
.field public final T:Ljava/util/Optional;

.field public U:Lads_mobile_sdk/i04;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ur3;Ljava/lang/String;Ljava/util/Optional;Lads_mobile_sdk/j53;Lads_mobile_sdk/zy;Lads_mobile_sdk/i2;Lads_mobile_sdk/f0;Lads_mobile_sdk/v3;Lads_mobile_sdk/df2;Lads_mobile_sdk/o21;Lads_mobile_sdk/j1;)V
    .registers 37

    move-object/from16 v0, p9

    .line 1
    const-string v1, "applicationContext"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "uiScope"

    move-object/from16 v4, p2

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "uiContext"

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "backgroundScope"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "backgroundContext"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "flags"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "traceLogger"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "afmaVersion"

    move-object/from16 v10, p8

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adWebViewContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "requestType"

    move-object/from16 v11, p10

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "commonConfiguration"

    move-object/from16 v12, p11

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adConfiguration"

    move-object/from16 v13, p12

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "activityTracker"

    move-object/from16 v14, p13

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adEventEmitter"

    move-object/from16 v15, p14

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "omidMonitor"

    move-object/from16 v2, p15

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "gmaUtil"

    move-object/from16 v2, p16

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "backButtonStateDelegate"

    move-object/from16 v2, p17

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, v2

    move-object/from16 v2, p0

    .line 67
    invoke-direct/range {v2 .. v18}, Lads_mobile_sdk/ez0;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ur3;Ljava/lang/String;Lads_mobile_sdk/j53;Lads_mobile_sdk/zy;Lads_mobile_sdk/i2;Lads_mobile_sdk/f0;Lads_mobile_sdk/v3;Lads_mobile_sdk/df2;Lads_mobile_sdk/o21;Lads_mobile_sdk/j1;)V

    .line 68
    iput-object v0, v2, Lads_mobile_sdk/pg2;->T:Ljava/util/Optional;

    return-void
.end method

.method public static a(Lads_mobile_sdk/pg2;Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 158
    instance-of v0, p2, Lads_mobile_sdk/ng2;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/ng2;

    iget v1, v0, Lads_mobile_sdk/ng2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ng2;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ng2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ng2;-><init>(Lads_mobile_sdk/pg2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/ng2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 287
    iget v2, v0, Lads_mobile_sdk/ng2;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3d

    if-eq v2, v4, :cond_35

    if-ne v2, v3, :cond_2d

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_61

    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    iget-object p1, v0, Lads_mobile_sdk/ng2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;

    iget-object p0, v0, Lads_mobile_sdk/ng2;->a:Lads_mobile_sdk/pg2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_54

    :cond_3d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 288
    iput-object p0, v0, Lads_mobile_sdk/ng2;->a:Lads_mobile_sdk/pg2;

    iput-object p1, v0, Lads_mobile_sdk/ng2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;

    iput v4, v0, Lads_mobile_sdk/ng2;->e:I

    .line 289
    iget-object p2, p0, Lads_mobile_sdk/yy0;->c:Lkotlin/coroutines/CoroutineContext;

    .line 290
    new-instance v2, Lads_mobile_sdk/mg2;

    invoke-direct {v2, p0, v5}, Lads_mobile_sdk/mg2;-><init>(Lads_mobile_sdk/pg2;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_54

    goto :goto_60

    .line 291
    :cond_54
    :goto_54
    iput-object v5, v0, Lads_mobile_sdk/ng2;->a:Lads_mobile_sdk/pg2;

    iput-object v5, v0, Lads_mobile_sdk/ng2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;

    iput v3, v0, Lads_mobile_sdk/ng2;->e:I

    invoke-super {p0, p1, v0}, Lads_mobile_sdk/ez0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_61

    :goto_60
    return-object v1

    .line 292
    :cond_61
    :goto_61
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/pg2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/lg2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/lg2;

    iget v1, v0, Lads_mobile_sdk/lg2;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/lg2;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/lg2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/lg2;-><init>(Lads_mobile_sdk/pg2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/lg2;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 146
    iget v2, v0, Lads_mobile_sdk/lg2;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3a

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_66

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    iget-object p0, v0, Lads_mobile_sdk/lg2;->a:Lads_mobile_sdk/pg2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4b

    :cond_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 147
    iput-object p0, v0, Lads_mobile_sdk/lg2;->a:Lads_mobile_sdk/pg2;

    iput v4, v0, Lads_mobile_sdk/lg2;->d:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    invoke-static {p0, v0}, Lads_mobile_sdk/ez0;->b(Lads_mobile_sdk/ez0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4b

    goto :goto_65

    .line 149
    :cond_4b
    :goto_4b
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6b

    const/4 p1, 0x0

    .line 151
    iput-object p1, v0, Lads_mobile_sdk/lg2;->a:Lads_mobile_sdk/pg2;

    iput v3, v0, Lads_mobile_sdk/lg2;->d:I

    .line 152
    iget-object v2, p0, Lads_mobile_sdk/yy0;->c:Lkotlin/coroutines/CoroutineContext;

    .line 153
    new-instance v3, Lads_mobile_sdk/mg2;

    invoke-direct {v3, p0, p1}, Lads_mobile_sdk/mg2;-><init>(Lads_mobile_sdk/pg2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_66

    :goto_65
    return-object v1

    .line 154
    :cond_66
    :goto_66
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6b
    const/4 p0, 0x0

    .line 156
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 157
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/pg2;->a(Lads_mobile_sdk/pg2;Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/pg2;->a(Lads_mobile_sdk/pg2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
