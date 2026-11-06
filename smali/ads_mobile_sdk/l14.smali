###### Class ads_mobile_sdk.l14 (ads_mobile_sdk.l14)
.class public final Lads_mobile_sdk/l14;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Landroidx/webkit/Profile;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lads_mobile_sdk/r14;


# direct methods
.method public constructor <init>(Landroidx/webkit/Profile;Ljava/lang/String;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/l14;->a:Landroidx/webkit/Profile;

    iput-object p2, p0, Lads_mobile_sdk/l14;->b:Ljava/lang/String;

    iput-object p3, p0, Lads_mobile_sdk/l14;->c:Lads_mobile_sdk/r14;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/l14;

    iget-object v0, p0, Lads_mobile_sdk/l14;->a:Landroidx/webkit/Profile;

    iget-object v1, p0, Lads_mobile_sdk/l14;->b:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/l14;->c:Lads_mobile_sdk/r14;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/l14;-><init>(Landroidx/webkit/Profile;Ljava/lang/String;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/l14;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/l14;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/l14;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 248
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 249
    sget-object p1, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 250
    iget-object p1, p0, Lads_mobile_sdk/l14;->a:Landroidx/webkit/Profile;

    .line 251
    iget-object v0, p0, Lads_mobile_sdk/l14;->b:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lads_mobile_sdk/l14;->c:Lads_mobile_sdk/r14;

    .line 253
    iget-object v1, v1, Lads_mobile_sdk/r14;->g:Lads_mobile_sdk/sz;

    .line 254
    iget-object v1, v1, Lads_mobile_sdk/sz;->d:Lads_mobile_sdk/rz;

    .line 255
    const-string v2, "profile"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "url"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "executor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    sget-object v2, Lads_mobile_sdk/az3;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_3a

    .line 414
    :cond_2a
    :try_start_2a
    new-instance v2, Lads_mobile_sdk/wy3;

    invoke-direct {v2}, Lads_mobile_sdk/wy3;-><init>()V

    const/4 v3, 0x0

    .line 415
    invoke-interface {p1, v0, v3, v1, v2}, Landroidx/webkit/Profile;->prefetchUrlAsync(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/webkit/OutcomeReceiverCompat;)V
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_34

    goto :goto_3a

    .line 432
    :catchall_34
    sget-object p1, Lads_mobile_sdk/az3;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 433
    :goto_3a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
