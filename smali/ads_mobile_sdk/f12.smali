###### Class ads_mobile_sdk.f12 (ads_mobile_sdk.f12)
.class public final Lads_mobile_sdk/f12;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/q41;

.field public final synthetic c:Lads_mobile_sdk/s02;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/q41;Lads_mobile_sdk/s02;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/f12;->b:Lads_mobile_sdk/q41;

    iput-object p2, p0, Lads_mobile_sdk/f12;->c:Lads_mobile_sdk/s02;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/f12;

    iget-object v0, p0, Lads_mobile_sdk/f12;->b:Lads_mobile_sdk/q41;

    iget-object v1, p0, Lads_mobile_sdk/f12;->c:Lads_mobile_sdk/s02;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/f12;-><init>(Lads_mobile_sdk/q41;Lads_mobile_sdk/s02;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/f12;

    iget-object v0, p0, Lads_mobile_sdk/f12;->b:Lads_mobile_sdk/q41;

    iget-object v1, p0, Lads_mobile_sdk/f12;->c:Lads_mobile_sdk/s02;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/f12;-><init>(Lads_mobile_sdk/q41;Lads_mobile_sdk/s02;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/f12;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 223
    iget v1, p0, Lads_mobile_sdk/f12;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_27

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 226
    iget-object p1, p0, Lads_mobile_sdk/f12;->b:Lads_mobile_sdk/q41;

    iput v2, p0, Lads_mobile_sdk/f12;->a:I

    .line 227
    iget-object p1, p1, Lads_mobile_sdk/q41;->e:Lkotlinx/coroutines/CompletableDeferred;

    .line 228
    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_27

    return-object v0

    .line 229
    :cond_27
    :goto_27
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_37

    .line 233
    iget-object v0, p0, Lads_mobile_sdk/f12;->c:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->r:Landroid/os/Bundle;

    const-string v1, "mediaUrl"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 235
    :cond_37
    new-instance p1, Lads_mobile_sdk/w01;

    .line 236
    new-instance v0, Lads_mobile_sdk/m01;

    const-string v1, "Immersive video media data does not exist."

    .line 237
    sget-object v2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 238
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    .line 239
    invoke-direct {p1, v0}, Lads_mobile_sdk/w01;-><init>(Lads_mobile_sdk/i01;)V

    throw p1
.end method
