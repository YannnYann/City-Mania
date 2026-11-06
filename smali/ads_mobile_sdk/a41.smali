###### Class ads_mobile_sdk.a41 (ads_mobile_sdk.a41)
.class public final Lads_mobile_sdk/a41;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/g41;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:Landroid/webkit/WebResourceRequest;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/webkit/WebResourceRequest;Lads_mobile_sdk/g41;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 2
    iput-object p3, p0, Lads_mobile_sdk/a41;->b:Lads_mobile_sdk/g41;

    iput-object p1, p0, Lads_mobile_sdk/a41;->c:Landroid/net/Uri;

    iput-object p2, p0, Lads_mobile_sdk/a41;->d:Landroid/webkit/WebResourceRequest;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/a41;

    iget-object v0, p0, Lads_mobile_sdk/a41;->b:Lads_mobile_sdk/g41;

    iget-object v1, p0, Lads_mobile_sdk/a41;->c:Landroid/net/Uri;

    iget-object v2, p0, Lads_mobile_sdk/a41;->d:Landroid/webkit/WebResourceRequest;

    invoke-direct {p1, v1, v2, v0, p2}, Lads_mobile_sdk/a41;-><init>(Landroid/net/Uri;Landroid/webkit/WebResourceRequest;Lads_mobile_sdk/g41;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/a41;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/a41;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/a41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 342
    iget v1, p0, Lads_mobile_sdk/a41;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_42

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 343
    iget-object p1, p0, Lads_mobile_sdk/a41;->b:Lads_mobile_sdk/g41;

    .line 344
    iget-object p1, p1, Lads_mobile_sdk/g41;->u:Lads_mobile_sdk/s93;

    if-eqz p1, :cond_42

    .line 345
    iget-object v1, p0, Lads_mobile_sdk/a41;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "toString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    sget-object v3, Lads_mobile_sdk/w90;->c:Lads_mobile_sdk/w90;

    .line 347
    iget-object v4, p0, Lads_mobile_sdk/a41;->d:Landroid/webkit/WebResourceRequest;

    invoke-interface {v4}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_39

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 348
    :cond_39
    iput v2, p0, Lads_mobile_sdk/a41;->a:I

    .line 349
    invoke-static {p1, v1, v3, v4, p0}, Lads_mobile_sdk/s93;->a(Lads_mobile_sdk/s93;Ljava/lang/String;Lads_mobile_sdk/w90;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_42

    return-object v0

    .line 350
    :cond_42
    :goto_42
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
