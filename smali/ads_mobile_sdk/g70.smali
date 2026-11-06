###### Class ads_mobile_sdk.g70 (ads_mobile_sdk.g70)
.class public final Lads_mobile_sdk/g70;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/k70;

.field public final synthetic c:Lads_mobile_sdk/f81;

.field public final synthetic d:Lorg/chromium/net/CronetEngine;

.field public final synthetic e:Z

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/k70;Lads_mobile_sdk/f81;Lorg/chromium/net/CronetEngine;ZZLkotlin/coroutines/Continuation;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/g70;->b:Lads_mobile_sdk/k70;

    iput-object p2, p0, Lads_mobile_sdk/g70;->c:Lads_mobile_sdk/f81;

    iput-object p3, p0, Lads_mobile_sdk/g70;->d:Lorg/chromium/net/CronetEngine;

    iput-boolean p4, p0, Lads_mobile_sdk/g70;->e:Z

    iput-boolean p5, p0, Lads_mobile_sdk/g70;->f:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10

    .line 1
    new-instance v0, Lads_mobile_sdk/g70;

    iget-object v1, p0, Lads_mobile_sdk/g70;->b:Lads_mobile_sdk/k70;

    iget-object v2, p0, Lads_mobile_sdk/g70;->c:Lads_mobile_sdk/f81;

    iget-object v3, p0, Lads_mobile_sdk/g70;->d:Lorg/chromium/net/CronetEngine;

    iget-boolean v4, p0, Lads_mobile_sdk/g70;->e:Z

    iget-boolean v5, p0, Lads_mobile_sdk/g70;->f:Z

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/g70;-><init>(Lads_mobile_sdk/k70;Lads_mobile_sdk/f81;Lorg/chromium/net/CronetEngine;ZZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/g70;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/g70;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/g70;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 259
    iget v1, p0, Lads_mobile_sdk/g70;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 260
    iget-object v1, p0, Lads_mobile_sdk/g70;->b:Lads_mobile_sdk/k70;

    move p1, v2

    iget-object v2, p0, Lads_mobile_sdk/g70;->c:Lads_mobile_sdk/f81;

    iget-object v3, p0, Lads_mobile_sdk/g70;->d:Lorg/chromium/net/CronetEngine;

    iget-boolean v4, p0, Lads_mobile_sdk/g70;->e:Z

    iget-boolean v5, p0, Lads_mobile_sdk/g70;->f:Z

    iput p1, p0, Lads_mobile_sdk/g70;->a:I

    move-object v6, p0

    .line 261
    invoke-virtual/range {v1 .. v6}, Lads_mobile_sdk/k70;->a(Lads_mobile_sdk/f81;Lorg/chromium/net/CronetEngine;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2f

    return-object v0

    :cond_2f
    return-object p1
.end method
