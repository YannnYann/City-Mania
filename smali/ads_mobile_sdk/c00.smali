###### Class ads_mobile_sdk.c00 (ads_mobile_sdk.c00)
.class public final Lads_mobile_sdk/c00;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/o00;

.field public final synthetic c:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/o00;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/c00;->b:Lads_mobile_sdk/o00;

    iput-object p2, p0, Lads_mobile_sdk/c00;->c:Lcom/google/gson/JsonObject;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance v0, Lads_mobile_sdk/c00;

    iget-object v1, p0, Lads_mobile_sdk/c00;->b:Lads_mobile_sdk/o00;

    iget-object v2, p0, Lads_mobile_sdk/c00;->c:Lcom/google/gson/JsonObject;

    invoke-direct {v0, v1, v2, p1}, Lads_mobile_sdk/c00;-><init>(Lads_mobile_sdk/o00;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/c00;

    iget-object v1, p0, Lads_mobile_sdk/c00;->b:Lads_mobile_sdk/o00;

    iget-object v2, p0, Lads_mobile_sdk/c00;->c:Lcom/google/gson/JsonObject;

    invoke-direct {v0, v1, v2, p1}, Lads_mobile_sdk/c00;-><init>(Lads_mobile_sdk/o00;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/c00;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 633
    iget v1, p0, Lads_mobile_sdk/c00;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_39

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 634
    iget-object p1, p0, Lads_mobile_sdk/c00;->b:Lads_mobile_sdk/o00;

    .line 635
    iget-object p1, p1, Lads_mobile_sdk/o00;->h:Lads_mobile_sdk/jb3;

    .line 636
    iget-object v1, p0, Lads_mobile_sdk/c00;->c:Lcom/google/gson/JsonObject;

    iput v2, p0, Lads_mobile_sdk/c00;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 637
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/rp0;

    const-string v2, "google.afma.config.fetchAppSettings"

    invoke-virtual {p1, v2, v1, p0}, Lads_mobile_sdk/rp0;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_39

    return-object v0

    .line 638
    :cond_39
    :goto_39
    check-cast p1, Lads_mobile_sdk/v01;

    .line 640
    instance-of v0, p1, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_46

    check-cast p1, Lads_mobile_sdk/q01;

    .line 641
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 642
    check-cast p1, Lcom/google/gson/JsonObject;

    return-object p1

    .line 643
    :cond_46
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_52

    .line 644
    check-cast p1, Lads_mobile_sdk/i01;

    const/4 v0, 0x0

    .line 645
    invoke-static {p1, v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    const/4 p1, 0x0

    return-object p1

    .line 646
    :cond_52
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
