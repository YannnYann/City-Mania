###### Class ads_mobile_sdk.a14 (ads_mobile_sdk.a14)
.class public final Lads_mobile_sdk/a14;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/r14;

.field public b:I

.field public final synthetic c:Lads_mobile_sdk/r14;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/a14;->c:Lads_mobile_sdk/r14;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/a14;

    iget-object v0, p0, Lads_mobile_sdk/a14;->c:Lads_mobile_sdk/r14;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/a14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/a14;

    iget-object v0, p0, Lads_mobile_sdk/a14;->c:Lads_mobile_sdk/r14;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/a14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/a14;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 85
    iget v1, p0, Lads_mobile_sdk/a14;->b:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1d

    if-ne v1, v3, :cond_15

    iget-object v0, p0, Lads_mobile_sdk/a14;->a:Lads_mobile_sdk/r14;

    :try_start_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_5d

    :catchall_13
    move-exception p1

    goto :goto_63

    .line 86
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lads_mobile_sdk/a14;->c:Lads_mobile_sdk/r14;

    invoke-static {p1}, Lads_mobile_sdk/r14;->b(Lads_mobile_sdk/r14;)Lads_mobile_sdk/rz3;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/rz3;->a()Z

    move-result p1

    if-nez p1, :cond_37

    .line 88
    const-string p1, "MultiProfile is not supported"

    invoke-static {p1, v4, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 89
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 94
    :cond_37
    :try_start_37
    iget-object p1, p0, Lads_mobile_sdk/a14;->c:Lads_mobile_sdk/r14;

    invoke-virtual {p1}, Lads_mobile_sdk/r14;->g()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 95
    const-string p1, "GMA_WEBVIEW_PROFILE"

    goto :goto_44

    .line 97
    :cond_42
    const-string p1, "Default"

    .line 100
    :goto_44
    iget-object v1, p0, Lads_mobile_sdk/a14;->c:Lads_mobile_sdk/r14;

    .line 101
    invoke-static {v1}, Lads_mobile_sdk/r14;->a(Lads_mobile_sdk/r14;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    new-instance v6, Lads_mobile_sdk/z04;

    iget-object v7, p0, Lads_mobile_sdk/a14;->c:Lads_mobile_sdk/r14;

    invoke-direct {v6, v7, p1, v4}, Lads_mobile_sdk/z04;-><init>(Lads_mobile_sdk/r14;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Lads_mobile_sdk/a14;->a:Lads_mobile_sdk/r14;

    iput v3, p0, Lads_mobile_sdk/a14;->b:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5c

    return-object v0

    :cond_5c
    move-object v0, v1

    .line 102
    :goto_5d
    check-cast p1, Landroidx/webkit/Profile;

    .line 116
    invoke-static {v0, p1}, Lads_mobile_sdk/r14;->a(Lads_mobile_sdk/r14;Landroidx/webkit/Profile;)V
    :try_end_62
    .catchall {:try_start_37 .. :try_end_62} :catchall_13

    goto :goto_7b

    .line 119
    :goto_63
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to initialize Profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 121
    :goto_7b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
