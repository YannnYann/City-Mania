###### Class ads_mobile_sdk.ad0 (ads_mobile_sdk.ad0)
.class public final Lads_mobile_sdk/ad0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/bd0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/bd0;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ad0;->a:Lads_mobile_sdk/bd0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/ad0;

    iget-object v0, p0, Lads_mobile_sdk/ad0;->a:Lads_mobile_sdk/bd0;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/ad0;-><init>(Lads_mobile_sdk/bd0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/ad0;

    iget-object v0, p0, Lads_mobile_sdk/ad0;->a:Lads_mobile_sdk/bd0;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/ad0;-><init>(Lads_mobile_sdk/bd0;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ad0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/ad0;->a:Lads_mobile_sdk/bd0;

    .line 67
    iget-object p1, p1, Lads_mobile_sdk/bd0;->c:Lads_mobile_sdk/zc0;

    .line 68
    iget-object v0, p1, Lads_mobile_sdk/zc0;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 70
    iget-object v0, p1, Lads_mobile_sdk/zc0;->a:Landroid/content/Context;

    .line 71
    iget-object v1, p1, Lads_mobile_sdk/zc0;->f:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v1, :cond_17

    goto :goto_2d

    :cond_17
    const/4 v1, 0x0

    .line 77
    invoke-static {v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_2d

    .line 83
    :cond_1f
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_2d

    .line 85
    :cond_2a
    invoke-static {v0, v1, p1}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    .line 86
    :goto_2d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
