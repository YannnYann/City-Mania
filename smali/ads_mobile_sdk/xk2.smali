###### Class ads_mobile_sdk.xk2 (ads_mobile_sdk.xk2)
.class public final Lads_mobile_sdk/xk2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/al2;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lads_mobile_sdk/ec3;

.field public final synthetic e:Lads_mobile_sdk/i2;

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/al2;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xk2;->b:Lads_mobile_sdk/al2;

    iput-object p2, p0, Lads_mobile_sdk/xk2;->c:Ljava/util/List;

    iput-object p3, p0, Lads_mobile_sdk/xk2;->d:Lads_mobile_sdk/ec3;

    iput-object p4, p0, Lads_mobile_sdk/xk2;->e:Lads_mobile_sdk/i2;

    iput p5, p0, Lads_mobile_sdk/xk2;->f:I

    iput-object p6, p0, Lads_mobile_sdk/xk2;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 11

    .line 1
    new-instance v0, Lads_mobile_sdk/xk2;

    iget-object v1, p0, Lads_mobile_sdk/xk2;->b:Lads_mobile_sdk/al2;

    iget-object v2, p0, Lads_mobile_sdk/xk2;->c:Ljava/util/List;

    iget-object v3, p0, Lads_mobile_sdk/xk2;->d:Lads_mobile_sdk/ec3;

    iget-object v4, p0, Lads_mobile_sdk/xk2;->e:Lads_mobile_sdk/i2;

    iget v5, p0, Lads_mobile_sdk/xk2;->f:I

    iget-object v6, p0, Lads_mobile_sdk/xk2;->g:Ljava/lang/String;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lads_mobile_sdk/xk2;-><init>(Lads_mobile_sdk/al2;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/xk2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/xk2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/xk2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v13, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v15

    .line 474
    iget v0, v13, Lads_mobile_sdk/xk2;->a:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    if-ne v0, v1, :cond_13

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_51

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 476
    iget-object v0, v13, Lads_mobile_sdk/xk2;->b:Lads_mobile_sdk/al2;

    .line 477
    iget-object v0, v0, Lads_mobile_sdk/al2;->h:Lads_mobile_sdk/du1;

    .line 478
    iget-object v2, v13, Lads_mobile_sdk/xk2;->c:Ljava/util/List;

    move-object v3, v2

    .line 479
    iget-object v2, v13, Lads_mobile_sdk/xk2;->d:Lads_mobile_sdk/ec3;

    move-object v4, v3

    .line 480
    iget-object v3, v13, Lads_mobile_sdk/xk2;->e:Lads_mobile_sdk/i2;

    .line 481
    iget v5, v13, Lads_mobile_sdk/xk2;->f:I

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v4

    move-object v4, v5

    .line 482
    iget-object v5, v13, Lads_mobile_sdk/xk2;->g:Ljava/lang/String;

    .line 483
    sget-object v7, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v7}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v7

    .line 484
    iput v1, v13, Lads_mobile_sdk/xk2;->a:I

    const/4 v12, 0x0

    const/16 v14, 0xfc0

    move-object v1, v6

    move-object v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v0 .. v14}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_51

    return-object v15

    .line 485
    :cond_51
    :goto_51
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 495
    iget-object v3, v13, Lads_mobile_sdk/xk2;->e:Lads_mobile_sdk/i2;

    if-eqz v3, :cond_6a

    .line 496
    iget-object v0, v13, Lads_mobile_sdk/xk2;->b:Lads_mobile_sdk/al2;

    .line 497
    iget-object v1, v0, Lads_mobile_sdk/al2;->i:Lads_mobile_sdk/c63;

    .line 498
    iget-object v0, v13, Lads_mobile_sdk/xk2;->d:Lads_mobile_sdk/ec3;

    iget-object v0, v0, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v4, v0, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v5, 0x0

    .line 499
    invoke-static/range {v1 .. v7}, Lads_mobile_sdk/c63;->a(Lads_mobile_sdk/c63;Ljava/util/List;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;I)V

    goto :goto_71

    .line 505
    :cond_6a
    iget-object v0, v13, Lads_mobile_sdk/xk2;->b:Lads_mobile_sdk/al2;

    .line 506
    iget-object v0, v0, Lads_mobile_sdk/al2;->i:Lads_mobile_sdk/c63;

    .line 507
    invoke-virtual {v0, v2}, Lads_mobile_sdk/c63;->a(Ljava/util/List;)V

    .line 509
    :goto_71
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
