###### Class ads_mobile_sdk.r42 (ads_mobile_sdk.r42)
.class public final Lads_mobile_sdk/r42;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/v42;

.field public final synthetic c:Lcom/google/gson/JsonElement;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/v42;Lcom/google/gson/JsonElement;ZLkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/r42;->b:Lads_mobile_sdk/v42;

    iput-object p2, p0, Lads_mobile_sdk/r42;->c:Lcom/google/gson/JsonElement;

    iput-boolean p3, p0, Lads_mobile_sdk/r42;->d:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/r42;

    iget-object v0, p0, Lads_mobile_sdk/r42;->b:Lads_mobile_sdk/v42;

    iget-object v1, p0, Lads_mobile_sdk/r42;->c:Lcom/google/gson/JsonElement;

    iget-boolean v2, p0, Lads_mobile_sdk/r42;->d:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/r42;-><init>(Lads_mobile_sdk/v42;Lcom/google/gson/JsonElement;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/r42;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/r42;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/r42;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 190
    iget v1, p0, Lads_mobile_sdk/r42;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/r42;->b:Lads_mobile_sdk/v42;

    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    iget-object v1, p0, Lads_mobile_sdk/r42;->c:Lcom/google/gson/JsonElement;

    invoke-static {v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;

    move-result-object v1

    iget-boolean v3, p0, Lads_mobile_sdk/r42;->d:Z

    iput v2, p0, Lads_mobile_sdk/r42;->a:I

    sget v2, Lads_mobile_sdk/v42;->h:I

    .line 191
    invoke-virtual {p1, v1, v3, p0}, Lads_mobile_sdk/v42;->a(Lcom/google/gson/JsonObject;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_31

    return-object v0

    :cond_31
    return-object p1
.end method
