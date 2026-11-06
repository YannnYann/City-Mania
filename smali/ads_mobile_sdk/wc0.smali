###### Class ads_mobile_sdk.wc0 (ads_mobile_sdk.wc0)
.class public final Lads_mobile_sdk/wc0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/zc0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/zc0;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/wc0;->a:Lads_mobile_sdk/zc0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/wc0;

    iget-object v0, p0, Lads_mobile_sdk/wc0;->a:Lads_mobile_sdk/zc0;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/wc0;-><init>(Lads_mobile_sdk/zc0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/wc0;

    iget-object v0, p0, Lads_mobile_sdk/wc0;->a:Lads_mobile_sdk/zc0;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/wc0;-><init>(Lads_mobile_sdk/zc0;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/wc0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 85
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/wc0;->a:Lads_mobile_sdk/zc0;

    .line 86
    iget-object v0, p1, Lads_mobile_sdk/zc0;->a:Landroid/content/Context;

    .line 87
    iget-object v1, p1, Lads_mobile_sdk/zc0;->f:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v1, :cond_f

    goto :goto_25

    :cond_f
    const/4 v1, 0x0

    .line 93
    invoke-static {v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_25

    .line 99
    :cond_17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_25

    .line 101
    :cond_22
    invoke-static {v0, v1, p1}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    .line 102
    :goto_25
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
