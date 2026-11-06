###### Class ads_mobile_sdk.n8 (ads_mobile_sdk.n8)
.class public final Lads_mobile_sdk/n8;
.super Lads_mobile_sdk/fp2;
.source "SourceFile"


# instance fields
.field public final c:Lads_mobile_sdk/ex0;

.field public final d:Lads_mobile_sdk/e01;

.field public final e:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Lads_mobile_sdk/e01;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 5

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lads_mobile_sdk/fp2;-><init>()V

    .line 26
    iput-object p1, p0, Lads_mobile_sdk/n8;->c:Lads_mobile_sdk/ex0;

    .line 27
    iput-object p2, p0, Lads_mobile_sdk/n8;->d:Lads_mobile_sdk/e01;

    .line 28
    iput-object p3, p0, Lads_mobile_sdk/n8;->e:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static a(Lads_mobile_sdk/n8;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/m8;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/m8;

    iget v1, v0, Lads_mobile_sdk/m8;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/m8;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/m8;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/m8;-><init>(Lads_mobile_sdk/n8;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/m8;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 27
    iget v2, v0, Lads_mobile_sdk/m8;->d:I

    const/4 v3, 0x1

    const-string v4, "key"

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object p0, v0, Lads_mobile_sdk/m8;->a:Lads_mobile_sdk/n8;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_93

    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lads_mobile_sdk/n8;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    const-string v2, "gads:ad_request_http_client_enabled"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v2, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_93

    .line 47
    iget-object p1, p0, Lads_mobile_sdk/n8;->d:Lads_mobile_sdk/e01;

    .line 48
    iget-object v2, p0, Lads_mobile_sdk/n8;->c:Lads_mobile_sdk/ex0;

    .line 50
    const-string v5, "gads:ad_request_http_client_max_idle_connections"

    const/4 v6, 0x5

    invoke-static {v2, v5, v4, v6}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    .line 51
    sget-object v8, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v2, v5, v7, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 52
    iget-object v5, p0, Lads_mobile_sdk/n8;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    sget-object v7, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v7, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    .line 54
    const-string v8, "gads:ad_request_http_client_connection_pool_keep_alive_minutes"

    invoke-static {v6, v7, v8, v4}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v6

    .line 55
    sget-object v7, Lads_mobile_sdk/yr;->m:Lads_mobile_sdk/tr;

    invoke-virtual {v5, v8, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/time/Duration;

    invoke-virtual {v5}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v5

    .line 56
    invoke-static {v5, v6}, Lkotlin/time/Duration;->getInWholeMinutes-impl(J)J

    move-result-wide v5

    .line 57
    iput-object p0, v0, Lads_mobile_sdk/m8;->a:Lads_mobile_sdk/n8;

    iput v3, v0, Lads_mobile_sdk/m8;->d:I

    invoke-interface {p1, v2, v5, v6, v0}, Lads_mobile_sdk/e01;->a(IJLads_mobile_sdk/m8;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_93

    return-object v1

    .line 62
    :cond_93
    :goto_93
    iget-object p1, p0, Lads_mobile_sdk/n8;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    const-string v0, "gads:preconnect_initialization_task_enabled"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v0, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 81
    invoke-virtual {p0}, Lads_mobile_sdk/n8;->g()V

    .line 83
    :cond_b0
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final g()V
    .registers 9

    .line 42
    iget-object v0, p0, Lads_mobile_sdk/n8;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    const-string v1, "https://googleads.g.doubleclick.net"

    const-string v2, "https://pubads.g.doubleclick.net"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 45
    const-string v2, "key"

    const-string v3, "gads:preconnect_urls"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultValue"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v2, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {v0, v3, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lads_mobile_sdk/n8;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lads_mobile_sdk/l8;

    const/4 v3, 0x0

    invoke-direct {v5, p0, v1, v3}, Lads_mobile_sdk/l8;-><init>(Lads_mobile_sdk/n8;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_29

    :cond_44
    return-void
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/n8;->a(Lads_mobile_sdk/n8;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
