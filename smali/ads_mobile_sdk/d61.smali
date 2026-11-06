###### Class ads_mobile_sdk.d61 (ads_mobile_sdk.d61)
.class public final Lads_mobile_sdk/d61;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/e61;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/e61;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/d61;->a:Lads_mobile_sdk/e61;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/d61;

    iget-object v0, p0, Lads_mobile_sdk/d61;->a:Lads_mobile_sdk/e61;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/d61;-><init>(Lads_mobile_sdk/e61;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/d61;

    iget-object v0, p0, Lads_mobile_sdk/d61;->a:Lads_mobile_sdk/e61;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/d61;-><init>(Lads_mobile_sdk/e61;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/d61;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 29
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lads_mobile_sdk/d61;->a:Lads_mobile_sdk/e61;

    .line 31
    iget-object p1, p1, Lads_mobile_sdk/e61;->b:Lads_mobile_sdk/j12;

    .line 32
    iget-object p1, p1, Lads_mobile_sdk/j12;->d:Ljava/lang/ref/WeakReference;

    .line 33
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/r31;

    if-nez p1, :cond_15

    goto :goto_1a

    :cond_15
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    :goto_1a
    iget-object p1, p0, Lads_mobile_sdk/d61;->a:Lads_mobile_sdk/e61;

    .line 35
    iget-object p1, p1, Lads_mobile_sdk/e61;->c:Lads_mobile_sdk/j92;

    const/4 v0, 0x0

    .line 36
    iget-object p1, p1, Lads_mobile_sdk/j92;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 38
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
