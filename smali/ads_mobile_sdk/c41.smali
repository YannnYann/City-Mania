###### Class ads_mobile_sdk.c41 (ads_mobile_sdk.c41)
.class public final Lads_mobile_sdk/c41;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Landroid/net/Uri;

.field public final synthetic c:Lads_mobile_sdk/g41;

.field public final synthetic d:Landroid/webkit/WebResourceRequest;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/webkit/WebResourceRequest;Lads_mobile_sdk/g41;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 2
    iput-object p1, p0, Lads_mobile_sdk/c41;->b:Landroid/net/Uri;

    iput-object p3, p0, Lads_mobile_sdk/c41;->c:Lads_mobile_sdk/g41;

    iput-object p2, p0, Lads_mobile_sdk/c41;->d:Landroid/webkit/WebResourceRequest;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/c41;

    iget-object v0, p0, Lads_mobile_sdk/c41;->b:Landroid/net/Uri;

    iget-object v1, p0, Lads_mobile_sdk/c41;->c:Lads_mobile_sdk/g41;

    iget-object v2, p0, Lads_mobile_sdk/c41;->d:Landroid/webkit/WebResourceRequest;

    invoke-direct {p1, v0, v2, v1, p2}, Lads_mobile_sdk/c41;-><init>(Landroid/net/Uri;Landroid/webkit/WebResourceRequest;Lads_mobile_sdk/g41;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/c41;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/c41;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/c41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 373
    iget v1, p0, Lads_mobile_sdk/c41;->a:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2a

    if-eq v1, v5, :cond_26

    if-eq v1, v4, :cond_22

    if-ne v1, v2, :cond_1a

    :try_start_12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_17

    goto/16 :goto_b5

    :catch_17
    move-exception p1

    goto/16 :goto_d5

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 374
    :cond_22
    :try_start_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_17

    goto :goto_92

    .line 375
    :cond_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_59

    :cond_2a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 378
    sget-object p1, Lads_mobile_sdk/g41;->v:Lads_mobile_sdk/s31;

    iget-object v1, p0, Lads_mobile_sdk/c41;->b:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lads_mobile_sdk/s31;->b(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_ed

    .line 380
    iget-object p1, p0, Lads_mobile_sdk/c41;->c:Lads_mobile_sdk/g41;

    invoke-virtual {p1}, Lads_mobile_sdk/g41;->b()Lads_mobile_sdk/ex0;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->G()Z

    move-result p1

    if-nez p1, :cond_ed

    .line 382
    iget-object p1, p0, Lads_mobile_sdk/c41;->c:Lads_mobile_sdk/g41;

    invoke-virtual {p1}, Lads_mobile_sdk/g41;->a()Lads_mobile_sdk/vk0;

    move-result-object p1

    if-eqz p1, :cond_62

    iput v5, p0, Lads_mobile_sdk/c41;->a:I

    check-cast p1, Lads_mobile_sdk/if1;

    invoke-virtual {p1, p0}, Lads_mobile_sdk/if1;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_59

    goto :goto_b4

    .line 383
    :cond_59
    :goto_59
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v5, :cond_62

    goto :goto_6a

    .line 384
    :cond_62
    const-string p1, "GoogleMobileAdsNetwork"

    invoke-static {p1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_ed

    .line 390
    :goto_6a
    :try_start_6a
    iget-object p1, p0, Lads_mobile_sdk/c41;->b:Landroid/net/Uri;

    invoke-static {p1}, Lads_mobile_sdk/p21;->a(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_93

    .line 391
    iget-object p1, p0, Lads_mobile_sdk/c41;->c:Lads_mobile_sdk/g41;

    invoke-static {p1}, Lads_mobile_sdk/g41;->a(Lads_mobile_sdk/g41;)Lads_mobile_sdk/e01;

    move-result-object p1

    iget-object v1, p0, Lads_mobile_sdk/c41;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lads_mobile_sdk/c41;->d:Landroid/webkit/WebResourceRequest;

    invoke-interface {v2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    iput v4, p0, Lads_mobile_sdk/c41;->a:I

    invoke-interface {p1, v1, v2, p0}, Lads_mobile_sdk/e01;->a(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_92

    goto :goto_b4

    :cond_92
    :goto_92
    return-object v3

    .line 395
    :cond_93
    iget-object p1, p0, Lads_mobile_sdk/c41;->c:Lads_mobile_sdk/g41;

    invoke-static {p1}, Lads_mobile_sdk/g41;->a(Lads_mobile_sdk/g41;)Lads_mobile_sdk/e01;

    move-result-object p1

    .line 396
    new-instance v1, Ljava/net/URL;

    iget-object v4, p0, Lads_mobile_sdk/c41;->b:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 397
    iget-object v4, p0, Lads_mobile_sdk/c41;->d:Landroid/webkit/WebResourceRequest;

    invoke-interface {v4}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v4

    .line 398
    iput v2, p0, Lads_mobile_sdk/c41;->a:I

    const/16 v2, 0xa

    invoke-static {p1, v1, v4, p0, v2}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Ljava/net/URL;Ljava/util/Map;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b5

    :goto_b4
    return-object v0

    .line 399
    :cond_b5
    :goto_b5
    check-cast p1, Lads_mobile_sdk/v01;

    .line 424
    instance-of v0, p1, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_ed

    .line 425
    check-cast p1, Lads_mobile_sdk/q01;

    invoke-virtual {p1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/h81;

    .line 426
    invoke-virtual {p1}, Lads_mobile_sdk/h81;->b()I

    move-result v0

    const/16 v1, 0x12c

    if-gt v1, v0, :cond_d0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_d0

    return-object v3

    .line 430
    :cond_d0
    invoke-static {p1}, Lads_mobile_sdk/i81;->a(Lads_mobile_sdk/h81;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_d4} :catch_17

    return-object p1

    .line 434
    :goto_d5
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    iget-object v0, p0, Lads_mobile_sdk/c41;->b:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to intercept request for network tracing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_ed
    return-object v3
.end method
