###### Class ads_mobile_sdk.yk2 (ads_mobile_sdk.yk2)
.class public final Lads_mobile_sdk/yk2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lads_mobile_sdk/al2;

.field public c:Lkotlin/Pair;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/al2;

.field public final synthetic f:Lkotlin/Pair;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/al2;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/yk2;->e:Lads_mobile_sdk/al2;

    iput-object p2, p0, Lads_mobile_sdk/yk2;->f:Lkotlin/Pair;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/yk2;

    iget-object v0, p0, Lads_mobile_sdk/yk2;->e:Lads_mobile_sdk/al2;

    iget-object v1, p0, Lads_mobile_sdk/yk2;->f:Lkotlin/Pair;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/yk2;-><init>(Lads_mobile_sdk/al2;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/yk2;

    iget-object v0, p0, Lads_mobile_sdk/yk2;->e:Lads_mobile_sdk/al2;

    iget-object v1, p0, Lads_mobile_sdk/yk2;->f:Lkotlin/Pair;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/yk2;-><init>(Lads_mobile_sdk/al2;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/yk2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 104
    iget v1, p0, Lads_mobile_sdk/yk2;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    if-ne v1, v2, :cond_16

    iget-object v0, p0, Lads_mobile_sdk/yk2;->c:Lkotlin/Pair;

    iget-object v1, p0, Lads_mobile_sdk/yk2;->b:Lads_mobile_sdk/al2;

    iget-object v2, p0, Lads_mobile_sdk/yk2;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_38

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lads_mobile_sdk/yk2;->e:Lads_mobile_sdk/al2;

    .line 105
    iget-object p1, v1, Lads_mobile_sdk/al2;->m:Lkotlinx/coroutines/sync/Mutex;

    .line 106
    iget-object v4, p0, Lads_mobile_sdk/yk2;->f:Lkotlin/Pair;

    .line 562
    iput-object p1, p0, Lads_mobile_sdk/yk2;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v1, p0, Lads_mobile_sdk/yk2;->b:Lads_mobile_sdk/al2;

    iput-object v4, p0, Lads_mobile_sdk/yk2;->c:Lkotlin/Pair;

    iput v2, p0, Lads_mobile_sdk/yk2;->d:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_36

    return-object v0

    :cond_36
    move-object v2, p1

    move-object v0, v4

    .line 563
    :goto_38
    :try_start_38
    iget-object p1, v1, Lads_mobile_sdk/al2;->n:Ljava/util/LinkedHashSet;

    .line 564
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_46

    .line 1024
    invoke-interface {v2, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_46
    move-exception p1

    .line 1025
    invoke-interface {v2, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
