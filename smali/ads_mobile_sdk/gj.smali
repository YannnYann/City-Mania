###### Class ads_mobile_sdk.gj (ads_mobile_sdk.gj)
.class public final Lads_mobile_sdk/gj;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lads_mobile_sdk/sj;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/sj;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/gj;->d:Lads_mobile_sdk/sj;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/gj;

    iget-object v0, p0, Lads_mobile_sdk/gj;->d:Lads_mobile_sdk/sj;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/gj;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/gj;

    iget-object v0, p0, Lads_mobile_sdk/gj;->d:Lads_mobile_sdk/sj;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/gj;-><init>(Lads_mobile_sdk/sj;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/gj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 139
    iget v1, p0, Lads_mobile_sdk/gj;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    if-ne v1, v2, :cond_14

    iget-object v0, p0, Lads_mobile_sdk/gj;->b:Lads_mobile_sdk/sj;

    iget-object v1, p0, Lads_mobile_sdk/gj;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_31

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    iget-object p1, p0, Lads_mobile_sdk/gj;->d:Lads_mobile_sdk/sj;

    .line 141
    iget-object v1, p1, Lads_mobile_sdk/sj;->w:Lkotlinx/coroutines/sync/Mutex;

    .line 142
    iput-object v1, p0, Lads_mobile_sdk/gj;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p1, p0, Lads_mobile_sdk/gj;->b:Lads_mobile_sdk/sj;

    iput v2, p0, Lads_mobile_sdk/gj;->c:I

    invoke-interface {v1, v3, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_30

    return-object v0

    :cond_30
    move-object v0, p1

    .line 143
    :goto_31
    :try_start_31
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 144
    iget-object p1, v0, Lads_mobile_sdk/sj;->f:Lads_mobile_sdk/tx;

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 147
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v4, v5, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v4

    .line 148
    iput-wide v4, v0, Lads_mobile_sdk/sj;->x:J

    .line 149
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_46
    .catchall {:try_start_31 .. :try_end_46} :catchall_57

    .line 305
    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lads_mobile_sdk/gj;->d:Lads_mobile_sdk/sj;

    .line 307
    iget-object v1, v0, Lads_mobile_sdk/sj;->s:Lads_mobile_sdk/aj;

    .line 308
    sget-object v2, Lads_mobile_sdk/aj;->a:Lads_mobile_sdk/aj;

    if-eq v1, v2, :cond_56

    .line 309
    iget-object v0, v0, Lads_mobile_sdk/sj;->y:Lkotlinx/coroutines/channels/Channel;

    .line 310
    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    return-object p1

    :catchall_57
    move-exception p1

    .line 463
    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
