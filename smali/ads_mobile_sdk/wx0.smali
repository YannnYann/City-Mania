###### Class ads_mobile_sdk.wx0 (ads_mobile_sdk.wx0)
.class public final Lads_mobile_sdk/wx0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/yx0;

.field public final synthetic c:Lads_mobile_sdk/dy;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/yx0;Lads_mobile_sdk/dy;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/wx0;->b:Lads_mobile_sdk/yx0;

    iput-object p2, p0, Lads_mobile_sdk/wx0;->c:Lads_mobile_sdk/dy;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/wx0;

    iget-object v0, p0, Lads_mobile_sdk/wx0;->b:Lads_mobile_sdk/yx0;

    iget-object v1, p0, Lads_mobile_sdk/wx0;->c:Lads_mobile_sdk/dy;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/wx0;-><init>(Lads_mobile_sdk/yx0;Lads_mobile_sdk/dy;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/wx0;

    iget-object v0, p0, Lads_mobile_sdk/wx0;->b:Lads_mobile_sdk/yx0;

    iget-object v1, p0, Lads_mobile_sdk/wx0;->c:Lads_mobile_sdk/dy;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/wx0;-><init>(Lads_mobile_sdk/yx0;Lads_mobile_sdk/dy;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/wx0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 73
    iget v1, p0, Lads_mobile_sdk/wx0;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lads_mobile_sdk/wx0;->b:Lads_mobile_sdk/yx0;

    .line 75
    iget-object p1, p1, Lads_mobile_sdk/yx0;->H:Lads_mobile_sdk/df2;

    .line 76
    iget-object v1, p0, Lads_mobile_sdk/wx0;->c:Lads_mobile_sdk/dy;

    sget-object v3, Lads_mobile_sdk/tx0;->a:Lads_mobile_sdk/tx0;

    iput v2, p0, Lads_mobile_sdk/wx0;->a:I

    const/4 v2, 0x0

    .line 77
    invoke-interface {p1, v1, v3, v2, p0}, Lads_mobile_sdk/df2;->a(Landroid/view/View;Lads_mobile_sdk/tx0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2c

    return-object v0

    .line 78
    :cond_2c
    :goto_2c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
