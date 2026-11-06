###### Class ads_mobile_sdk.iy1 (ads_mobile_sdk.iy1)
.class public final Lads_mobile_sdk/iy1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/jy1;

.field public final synthetic c:Lads_mobile_sdk/r31;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/jy1;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/iy1;->b:Lads_mobile_sdk/jy1;

    iput-object p2, p0, Lads_mobile_sdk/iy1;->c:Lads_mobile_sdk/r31;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/iy1;

    iget-object v0, p0, Lads_mobile_sdk/iy1;->b:Lads_mobile_sdk/jy1;

    iget-object v1, p0, Lads_mobile_sdk/iy1;->c:Lads_mobile_sdk/r31;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/iy1;-><init>(Lads_mobile_sdk/jy1;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/iy1;

    iget-object v0, p0, Lads_mobile_sdk/iy1;->b:Lads_mobile_sdk/jy1;

    iget-object v1, p0, Lads_mobile_sdk/iy1;->c:Lads_mobile_sdk/r31;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/iy1;-><init>(Lads_mobile_sdk/jy1;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/iy1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 39
    iget v1, p0, Lads_mobile_sdk/iy1;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_43

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/iy1;->b:Lads_mobile_sdk/jy1;

    .line 40
    iget-object v1, p1, Lads_mobile_sdk/jy1;->c:Lads_mobile_sdk/ix1;

    .line 41
    iget-object v3, p0, Lads_mobile_sdk/iy1;->c:Lads_mobile_sdk/r31;

    .line 42
    iget-object p1, p1, Lads_mobile_sdk/jy1;->d:Ljava/lang/String;

    .line 43
    iput v2, p0, Lads_mobile_sdk/iy1;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "js"

    invoke-virtual {v1, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string p1, "onReadyEventReceived"

    invoke-virtual {v3, v1, p1, p0}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_3e

    goto :goto_40

    :cond_3e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_40
    if-ne p1, v0, :cond_43

    return-object v0

    .line 46
    :cond_43
    :goto_43
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
