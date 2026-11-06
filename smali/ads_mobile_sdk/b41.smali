###### Class ads_mobile_sdk.b41 (ads_mobile_sdk.b41)
.class public final Lads_mobile_sdk/b41;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/g41;

.field public final synthetic c:Landroid/webkit/WebResourceRequest;

.field public final synthetic d:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/webkit/WebResourceRequest;Lads_mobile_sdk/g41;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 2
    iput-object p3, p0, Lads_mobile_sdk/b41;->b:Lads_mobile_sdk/g41;

    iput-object p2, p0, Lads_mobile_sdk/b41;->c:Landroid/webkit/WebResourceRequest;

    iput-object p1, p0, Lads_mobile_sdk/b41;->d:Landroid/net/Uri;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/b41;

    iget-object v0, p0, Lads_mobile_sdk/b41;->b:Lads_mobile_sdk/g41;

    iget-object v1, p0, Lads_mobile_sdk/b41;->c:Landroid/webkit/WebResourceRequest;

    iget-object v2, p0, Lads_mobile_sdk/b41;->d:Landroid/net/Uri;

    invoke-direct {p1, v2, v1, v0, p2}, Lads_mobile_sdk/b41;-><init>(Landroid/net/Uri;Landroid/webkit/WebResourceRequest;Lads_mobile_sdk/g41;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/b41;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/b41;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/b41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 359
    iget v1, p0, Lads_mobile_sdk/b41;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1a

    if-ne v1, v3, :cond_12

    :try_start_c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_32

    :catch_10
    move-exception p1

    goto :goto_36

    .line 360
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 362
    :try_start_1d
    iget-object p1, p0, Lads_mobile_sdk/b41;->b:Lads_mobile_sdk/g41;

    invoke-virtual {p1}, Lads_mobile_sdk/g41;->c()Lads_mobile_sdk/p24;

    move-result-object p1

    if-eqz p1, :cond_35

    iget-object v1, p0, Lads_mobile_sdk/b41;->c:Landroid/webkit/WebResourceRequest;

    iput v3, p0, Lads_mobile_sdk/b41;->a:I

    check-cast p1, Lads_mobile_sdk/s24;

    invoke-virtual {p1, v1, p0}, Lads_mobile_sdk/s24;->a(Landroid/webkit/WebResourceRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_32

    return-object v0

    .line 363
    :cond_32
    :goto_32
    check-cast p1, Landroid/webkit/WebResourceResponse;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_34} :catch_10

    return-object p1

    :cond_35
    return-object v2

    .line 366
    :goto_36
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    .line 367
    iget-object v0, p0, Lads_mobile_sdk/b41;->d:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to intercept request using WebViewFirebaseAnalyticsEventsHandler: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0, p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method
