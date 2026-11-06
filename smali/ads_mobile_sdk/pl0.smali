###### Class ads_mobile_sdk.pl0 (ads_mobile_sdk.pl0)
.class public final Lads_mobile_sdk/pl0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/fm0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lads_mobile_sdk/fm0;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p2, p0, Lads_mobile_sdk/pl0;->a:Lads_mobile_sdk/fm0;

    iput-object p3, p0, Lads_mobile_sdk/pl0;->b:Ljava/lang/String;

    iput-object p4, p0, Lads_mobile_sdk/pl0;->c:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/pl0;

    iget-object v0, p0, Lads_mobile_sdk/pl0;->a:Lads_mobile_sdk/fm0;

    iget-object v1, p0, Lads_mobile_sdk/pl0;->b:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/pl0;->c:Ljava/lang/String;

    invoke-direct {p1, p2, v0, v1, v2}, Lads_mobile_sdk/pl0;-><init>(Lkotlin/coroutines/Continuation;Lads_mobile_sdk/fm0;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/pl0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/pl0;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/pl0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 618
    iget-object p1, p0, Lads_mobile_sdk/pl0;->a:Lads_mobile_sdk/fm0;

    .line 619
    monitor-enter p1

    .line 620
    :try_start_9
    iget-object v0, p1, Lads_mobile_sdk/fm0;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/OnAppEventListener;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_18

    monitor-exit p1

    if-eqz v0, :cond_15

    .line 621
    iget-object p1, p0, Lads_mobile_sdk/pl0;->b:Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/pl0;->c:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/OnAppEventListener;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_18
    move-exception v0

    .line 623
    monitor-exit p1

    throw v0
.end method
