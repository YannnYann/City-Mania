###### Class ads_mobile_sdk.fs0 (ads_mobile_sdk.fs0)
.class public final Lads_mobile_sdk/fs0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/gs0;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/gs0;Landroid/os/Bundle;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/fs0;->b:Lads_mobile_sdk/gs0;

    iput-object p2, p0, Lads_mobile_sdk/fs0;->c:Landroid/os/Bundle;

    iput-object p3, p0, Lads_mobile_sdk/fs0;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/fs0;

    iget-object v0, p0, Lads_mobile_sdk/fs0;->b:Lads_mobile_sdk/gs0;

    iget-object v1, p0, Lads_mobile_sdk/fs0;->c:Landroid/os/Bundle;

    iget-object v2, p0, Lads_mobile_sdk/fs0;->d:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/fs0;-><init>(Lads_mobile_sdk/gs0;Landroid/os/Bundle;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/fs0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/fs0;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/fs0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 49
    iget v1, p0, Lads_mobile_sdk/fs0;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_30

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    iget-object p1, p0, Lads_mobile_sdk/fs0;->b:Lads_mobile_sdk/gs0;

    .line 51
    iget-object p1, p1, Lads_mobile_sdk/gs0;->b:Lads_mobile_sdk/ls0;

    .line 52
    sget-object v1, Lads_mobile_sdk/is0;->d:Lads_mobile_sdk/is0;

    .line 53
    iget-object v3, p0, Lads_mobile_sdk/fs0;->c:Landroid/os/Bundle;

    .line 54
    iget-object v4, p0, Lads_mobile_sdk/fs0;->d:Ljava/lang/String;

    .line 55
    iput v2, p0, Lads_mobile_sdk/fs0;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {p1, v1, v3, v4}, Lads_mobile_sdk/ls0;->a(Lads_mobile_sdk/ls0;Lads_mobile_sdk/is0;Landroid/os/Bundle;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v0, :cond_30

    return-object v0

    .line 57
    :cond_30
    :goto_30
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
