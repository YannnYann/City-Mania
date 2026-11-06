###### Class ads_mobile_sdk.e24 (ads_mobile_sdk.e24)
.class public final Lads_mobile_sdk/e24;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/r31;

.field public final synthetic c:Lcom/google/gson/JsonObject;

.field public final synthetic d:Z

.field public final synthetic e:Lads_mobile_sdk/f24;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r31;Lcom/google/gson/JsonObject;ZLads_mobile_sdk/f24;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/e24;->b:Lads_mobile_sdk/r31;

    iput-object p2, p0, Lads_mobile_sdk/e24;->c:Lcom/google/gson/JsonObject;

    iput-boolean p3, p0, Lads_mobile_sdk/e24;->d:Z

    iput-object p4, p0, Lads_mobile_sdk/e24;->e:Lads_mobile_sdk/f24;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 1
    new-instance v0, Lads_mobile_sdk/e24;

    iget-object v1, p0, Lads_mobile_sdk/e24;->b:Lads_mobile_sdk/r31;

    iget-object v2, p0, Lads_mobile_sdk/e24;->c:Lcom/google/gson/JsonObject;

    iget-boolean v3, p0, Lads_mobile_sdk/e24;->d:Z

    iget-object v4, p0, Lads_mobile_sdk/e24;->e:Lads_mobile_sdk/f24;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/e24;-><init>(Lads_mobile_sdk/r31;Lcom/google/gson/JsonObject;ZLads_mobile_sdk/f24;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/e24;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/e24;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/e24;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 37
    iget v1, p0, Lads_mobile_sdk/e24;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4b

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_30

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lads_mobile_sdk/e24;->b:Lads_mobile_sdk/r31;

    iget-object v1, p0, Lads_mobile_sdk/e24;->c:Lcom/google/gson/JsonObject;

    iput v3, p0, Lads_mobile_sdk/e24;->a:I

    const-string v3, "onAdVisibilityChanged"

    invoke-virtual {p1, v1, v3, p0}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_30

    goto :goto_4a

    .line 40
    :cond_30
    :goto_30
    iget-boolean p1, p0, Lads_mobile_sdk/e24;->d:Z

    if-eqz p1, :cond_4b

    .line 41
    iget-object p1, p0, Lads_mobile_sdk/e24;->e:Lads_mobile_sdk/f24;

    .line 42
    iget-object v1, p1, Lads_mobile_sdk/f24;->c:Lads_mobile_sdk/zy;

    .line 43
    iget-object v1, v1, Lads_mobile_sdk/zy;->v:Lads_mobile_sdk/yy;

    .line 44
    sget-object v3, Lads_mobile_sdk/yy;->e:Lads_mobile_sdk/yy;

    if-ne v1, v3, :cond_4b

    .line 46
    iget-object v1, p0, Lads_mobile_sdk/e24;->b:Lads_mobile_sdk/r31;

    .line 47
    iget-object p1, p1, Lads_mobile_sdk/f24;->d:Ljava/lang/String;

    .line 48
    iput v2, p0, Lads_mobile_sdk/e24;->a:I

    invoke-virtual {v1, p1, p0}, Lads_mobile_sdk/r31;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4b

    :goto_4a
    return-object v0

    .line 50
    :cond_4b
    :goto_4b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
