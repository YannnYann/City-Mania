###### Class ads_mobile_sdk.kx2 (ads_mobile_sdk.kx2)
.class public final Lads_mobile_sdk/kx2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/ei1;

.field public final synthetic c:Lads_mobile_sdk/sx2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ei1;Lads_mobile_sdk/sx2;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 2
    iput-object p1, p0, Lads_mobile_sdk/kx2;->b:Lads_mobile_sdk/ei1;

    iput-object p2, p0, Lads_mobile_sdk/kx2;->c:Lads_mobile_sdk/sx2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/kx2;

    iget-object v0, p0, Lads_mobile_sdk/kx2;->b:Lads_mobile_sdk/ei1;

    iget-object v1, p0, Lads_mobile_sdk/kx2;->c:Lads_mobile_sdk/sx2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/kx2;-><init>(Lads_mobile_sdk/ei1;Lads_mobile_sdk/sx2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/kx2;

    iget-object v0, p0, Lads_mobile_sdk/kx2;->b:Lads_mobile_sdk/ei1;

    iget-object v1, p0, Lads_mobile_sdk/kx2;->c:Lads_mobile_sdk/sx2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/kx2;-><init>(Lads_mobile_sdk/ei1;Lads_mobile_sdk/sx2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/kx2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lads_mobile_sdk/kx2;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 618
    iget-object p1, p0, Lads_mobile_sdk/kx2;->b:Lads_mobile_sdk/ei1;

    iget-object v1, p0, Lads_mobile_sdk/kx2;->c:Lads_mobile_sdk/sx2;

    check-cast v1, Lads_mobile_sdk/rx2;

    .line 619
    iget-object v1, v1, Lads_mobile_sdk/rx2;->a:Ljava/lang/Object;

    .line 620
    check-cast v1, Lads_mobile_sdk/zh1;

    iput v2, p0, Lads_mobile_sdk/kx2;->a:I

    invoke-virtual {p1, v1, p0}, Lads_mobile_sdk/ei1;->a(Lads_mobile_sdk/zh1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2d

    return-object v0

    .line 621
    :cond_2d
    :goto_2d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
