###### Class ads_mobile_sdk.vt3 (ads_mobile_sdk.vt3)
.class public final Lads_mobile_sdk/vt3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/wt3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/wt3;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/vt3;->a:Lads_mobile_sdk/wt3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/vt3;

    iget-object v0, p0, Lads_mobile_sdk/vt3;->a:Lads_mobile_sdk/wt3;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/vt3;-><init>(Lads_mobile_sdk/wt3;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/vt3;

    iget-object v0, p0, Lads_mobile_sdk/vt3;->a:Lads_mobile_sdk/wt3;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/vt3;-><init>(Lads_mobile_sdk/wt3;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/vt3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 82
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    :try_start_6
    iget-object p1, p0, Lads_mobile_sdk/vt3;->a:Lads_mobile_sdk/wt3;

    .line 85
    iget-object p1, p1, Lads_mobile_sdk/wt3;->d:Lads_mobile_sdk/ut3;

    .line 86
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 87
    const-string v0, "getService(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/o81;

    .line 88
    new-instance v0, Lads_mobile_sdk/dl0;

    iget-object v1, p0, Lads_mobile_sdk/vt3;->a:Lads_mobile_sdk/wt3;

    .line 89
    iget-object v1, v1, Lads_mobile_sdk/wt3;->b:Landroid/content/Context;

    .line 90
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPackageName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lads_mobile_sdk/dl0;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lads_mobile_sdk/vt3;->a:Lads_mobile_sdk/wt3;

    .line 92
    check-cast p1, Lads_mobile_sdk/m81;

    invoke-virtual {p1, v0, v1}, Lads_mobile_sdk/m81;->a(Lads_mobile_sdk/dl0;Lads_mobile_sdk/wt3;)V
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2f

    goto :goto_55

    :catchall_2f
    move-exception p1

    .line 97
    iget-object v0, p0, Lads_mobile_sdk/vt3;->a:Lads_mobile_sdk/wt3;

    new-instance v1, Lads_mobile_sdk/j01;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v3, v2}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    sget v2, Lads_mobile_sdk/wt3;->$r8$clinit:I

    .line 98
    iget-object v2, v0, Lads_mobile_sdk/wt3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    .line 99
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_45

    goto :goto_4a

    .line 101
    :cond_45
    iget-object v0, v0, Lads_mobile_sdk/wt3;->h:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 102
    :goto_4a
    iget-object v0, p0, Lads_mobile_sdk/vt3;->a:Lads_mobile_sdk/wt3;

    .line 103
    iget-object v0, v0, Lads_mobile_sdk/wt3;->c:Lads_mobile_sdk/ur3;

    .line 104
    check-cast v0, Lads_mobile_sdk/as3;

    const-string v1, "Throwable caught getting trustless token"

    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    :goto_55
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
