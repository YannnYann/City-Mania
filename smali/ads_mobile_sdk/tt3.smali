###### Class ads_mobile_sdk.tt3 (ads_mobile_sdk.tt3)
.class public final Lads_mobile_sdk/tt3;
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
    iput-object p1, p0, Lads_mobile_sdk/tt3;->a:Lads_mobile_sdk/wt3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/tt3;

    iget-object v0, p0, Lads_mobile_sdk/tt3;->a:Lads_mobile_sdk/wt3;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/tt3;-><init>(Lads_mobile_sdk/wt3;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/tt3;

    iget-object v0, p0, Lads_mobile_sdk/tt3;->a:Lads_mobile_sdk/wt3;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/tt3;-><init>(Lads_mobile_sdk/wt3;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/tt3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 75
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/tt3;->a:Lads_mobile_sdk/wt3;

    .line 76
    iget-object v0, p1, Lads_mobile_sdk/wt3;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 78
    iget-object v0, p1, Lads_mobile_sdk/wt3;->d:Lads_mobile_sdk/ut3;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p1, Lads_mobile_sdk/wt3;->d:Lads_mobile_sdk/ut3;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 79
    :cond_1e
    iget-object p1, p1, Lads_mobile_sdk/wt3;->d:Lads_mobile_sdk/ut3;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 81
    :cond_23
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 82
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
