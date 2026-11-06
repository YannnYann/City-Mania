###### Class ads_mobile_sdk.o71 (ads_mobile_sdk.o71)
.class public final Lads_mobile_sdk/o71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/e01;


# instance fields
.field public final a:Lads_mobile_sdk/ex0;

.field public final b:Lads_mobile_sdk/zw3;

.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lads_mobile_sdk/rz;

.field public e:Lads_mobile_sdk/uv;

.field public f:Lads_mobile_sdk/vk0;

.field public final g:Lkotlinx/coroutines/sync/Mutex;

.field public volatile h:Lokhttp3/OkHttpClient;

.field public i:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/ex0;Lads_mobile_sdk/sz;Lads_mobile_sdk/zw3;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 6

    .line 1
    const-string v0, "concurrencyObjects"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lads_mobile_sdk/o71;->a:Lads_mobile_sdk/ex0;

    .line 62
    iput-object p3, p0, Lads_mobile_sdk/o71;->b:Lads_mobile_sdk/zw3;

    .line 63
    iput-object p4, p0, Lads_mobile_sdk/o71;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 65
    invoke-virtual {p2}, Lads_mobile_sdk/sz;->a()Lads_mobile_sdk/rz;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/o71;->d:Lads_mobile_sdk/rz;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 71
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/o71;->g:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method


# virtual methods
.method public final a(IJLads_mobile_sdk/m8;)Ljava/lang/Object;
    .registers 8

    .line 601
    new-instance p4, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p4}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 602
    new-instance v0, Lokhttp3/Dispatcher;

    iget-object v1, p0, Lads_mobile_sdk/o71;->d:Lads_mobile_sdk/rz;

    invoke-direct {v0, v1}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {p4, v0}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p4

    .line 603
    iget-object v0, p0, Lads_mobile_sdk/o71;->a:Lads_mobile_sdk/ex0;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->C()J

    move-result-wide v0

    goto :goto_23

    :cond_19
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    .line 604
    :goto_23
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p4

    .line 606
    new-instance v0, Lokhttp3/ConnectionPool;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, p2, p3, v1}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 607
    invoke-virtual {p4, v0}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 610
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 611
    iput-object p1, p0, Lads_mobile_sdk/o71;->i:Lokhttp3/OkHttpClient;

    .line 619
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/f81;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/a71;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/a71;

    iget v1, v0, Lads_mobile_sdk/a71;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/a71;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/a71;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/a71;-><init>(Lads_mobile_sdk/o71;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/a71;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 341
    iget v2, v0, Lads_mobile_sdk/a71;->g:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p1, v0, Lads_mobile_sdk/a71;->d:Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/a71;->c:Lads_mobile_sdk/e81;

    iget-object v1, v0, Lads_mobile_sdk/a71;->b:Ljava/util/Map;

    iget-object v0, v0, Lads_mobile_sdk/a71;->a:Ljava/util/Map;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p2

    move-object p2, v0

    goto :goto_77

    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 346
    iget-object p3, p0, Lads_mobile_sdk/o71;->e:Lads_mobile_sdk/uv;

    if-eqz p3, :cond_56

    .line 347
    iget-object v2, p1, Lads_mobile_sdk/f81;->a:Ljava/net/URL;

    .line 348
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "toString(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 569
    invoke-virtual {p3, v2}, Lads_mobile_sdk/uv;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p3

    goto :goto_57

    :cond_56
    const/4 p3, 0x0

    .line 571
    :goto_57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 572
    new-instance v2, Lads_mobile_sdk/e81;

    invoke-direct {v2, p1}, Lads_mobile_sdk/e81;-><init>(Lads_mobile_sdk/f81;)V

    .line 573
    iget-object p1, p0, Lads_mobile_sdk/o71;->b:Lads_mobile_sdk/zw3;

    iput-object p2, v0, Lads_mobile_sdk/a71;->a:Ljava/util/Map;

    iput-object p3, v0, Lads_mobile_sdk/a71;->b:Ljava/util/Map;

    iput-object v2, v0, Lads_mobile_sdk/a71;->c:Lads_mobile_sdk/e81;

    const-string v4, "User-Agent"

    iput-object v4, v0, Lads_mobile_sdk/a71;->d:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/a71;->g:I

    invoke-interface {p1, v0}, Lads_mobile_sdk/zw3;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_74

    return-object v1

    :cond_74
    move-object v1, p3

    move-object p3, p1

    move-object p1, v4

    .line 574
    :goto_77
    check-cast p3, Ljava/lang/String;

    invoke-virtual {v2, p1, p3}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object p1

    if-eqz p2, :cond_a3

    .line 577
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_87
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 578
    invoke-virtual {p1, v0, p3}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    goto :goto_87

    :cond_a3
    if-eqz v1, :cond_c9

    .line 582
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_ad
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 583
    invoke-virtual {p1, v0, p3}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    goto :goto_ad

    .line 587
    :cond_c9
    invoke-virtual {p1}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/f81;Lkotlin/time/Duration;Lads_mobile_sdk/ja2;)Ljava/lang/Object;
    .registers 10

    const/4 v3, 0x1

    const/16 v5, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 2421
    invoke-static/range {v0 .. v5}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/f81;Lkotlin/time/Duration;Ljava/util/Map;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15

    .line 2799
    instance-of v0, p6, Lads_mobile_sdk/i71;

    if-eqz v0, :cond_14

    move-object v0, p6

    check-cast v0, Lads_mobile_sdk/i71;

    iget v1, v0, Lads_mobile_sdk/i71;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_14

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/i71;->h:I

    :goto_12
    move-object v7, v0

    goto :goto_1a

    :cond_14
    new-instance v0, Lads_mobile_sdk/i71;

    invoke-direct {v0, p0, p6}, Lads_mobile_sdk/i71;-><init>(Lads_mobile_sdk/o71;Lkotlin/coroutines/Continuation;)V

    goto :goto_12

    :goto_1a
    iget-object p6, v7, Lads_mobile_sdk/i71;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 2947
    iget v1, v7, Lads_mobile_sdk/i71;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_58

    if-eq v1, v4, :cond_40

    if-ne v1, v3, :cond_38

    iget-object p1, v7, Lads_mobile_sdk/i71;->b:Ljava/lang/Object;

    check-cast p1, Lokhttp3/Request;

    iget-object p2, v7, Lads_mobile_sdk/i71;->a:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e3

    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    iget-boolean p5, v7, Lads_mobile_sdk/i71;->e:Z

    iget-boolean p4, v7, Lads_mobile_sdk/i71;->d:Z

    iget-object p1, v7, Lads_mobile_sdk/i71;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, v7, Lads_mobile_sdk/i71;->b:Ljava/lang/Object;

    check-cast p2, Lads_mobile_sdk/f81;

    iget-object p3, v7, Lads_mobile_sdk/i71;->a:Ljava/lang/Object;

    check-cast p3, Lads_mobile_sdk/o71;

    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p2

    move-object v1, p3

    move-object p2, p1

    :goto_54
    move v4, p4

    move v6, p5

    goto/16 :goto_bd

    :cond_58
    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p4, :cond_66

    .line 2954
    iget-object p6, p0, Lads_mobile_sdk/o71;->i:Lokhttp3/OkHttpClient;

    if-nez p6, :cond_71

    .line 2955
    iget-object p6, p0, Lads_mobile_sdk/o71;->h:Lokhttp3/OkHttpClient;

    if-eqz p6, :cond_6b

    goto :goto_71

    .line 2956
    :cond_66
    iget-object p6, p0, Lads_mobile_sdk/o71;->h:Lokhttp3/OkHttpClient;

    if-eqz p6, :cond_6b

    goto :goto_71

    .line 2955
    :cond_6b
    const-string p6, "okHttpClient"

    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p6, v2

    .line 2957
    :cond_71
    :goto_71
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-nez p2, :cond_79

    goto :goto_8f

    .line 2962
    :cond_79
    invoke-virtual {p6}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p6

    .line 2963
    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v5

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p6, v5, v6, p2}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    .line 2964
    invoke-virtual {p2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p6

    .line 2965
    :goto_8f
    iput-object p6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p5, :cond_a6

    .line 2977
    invoke-virtual {p6}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    const/4 p6, 0x0

    invoke-virtual {p2, p6}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    invoke-virtual {p2, p6}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    .line 2978
    iput-object p2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2982
    :cond_a6
    iput-object p0, v7, Lads_mobile_sdk/i71;->a:Ljava/lang/Object;

    iput-object p1, v7, Lads_mobile_sdk/i71;->b:Ljava/lang/Object;

    iput-object v1, v7, Lads_mobile_sdk/i71;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p4, v7, Lads_mobile_sdk/i71;->d:Z

    iput-boolean p5, v7, Lads_mobile_sdk/i71;->e:Z

    iput v4, v7, Lads_mobile_sdk/i71;->h:I

    invoke-virtual {p0, p1, p3, v7}, Lads_mobile_sdk/o71;->a(Lads_mobile_sdk/f81;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v0, :cond_b9

    goto :goto_e1

    :cond_b9
    move-object v5, p1

    move-object p2, v1

    move-object v1, p0

    goto :goto_54

    .line 2983
    :goto_bd
    check-cast p6, Lads_mobile_sdk/f81;

    .line 3008
    invoke-virtual {p6}, Lads_mobile_sdk/f81;->h()Lokhttp3/Request;

    move-result-object p1

    .line 3010
    sget-object p3, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p3, Lads_mobile_sdk/j71;

    invoke-direct {p3, p2, p1}, Lads_mobile_sdk/j71;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;)V

    invoke-static {p3}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 3015
    iget-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lokhttp3/OkHttpClient;

    iput-object p2, v7, Lads_mobile_sdk/i71;->a:Ljava/lang/Object;

    iput-object p1, v7, Lads_mobile_sdk/i71;->b:Ljava/lang/Object;

    iput-object v2, v7, Lads_mobile_sdk/i71;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v3, v7, Lads_mobile_sdk/i71;->h:I

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v1 .. v7}, Lads_mobile_sdk/o71;->a(Lokhttp3/Request;Lokhttp3/OkHttpClient;ZLads_mobile_sdk/f81;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v0, :cond_e2

    :goto_e1
    return-object v0

    :cond_e2
    move-object p1, v2

    .line 3016
    :goto_e3
    check-cast p6, Lads_mobile_sdk/v01;

    .line 3050
    sget-object p3, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p3, Lads_mobile_sdk/k71;

    invoke-direct {p3, p2, p1}, Lads_mobile_sdk/k71;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;)V

    invoke-static {p3}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    return-object p6
.end method

.method public final a(Lads_mobile_sdk/sl1;)Ljava/lang/Object;
    .registers 5

    .line 589
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 590
    new-instance v0, Lokhttp3/Dispatcher;

    iget-object v1, p0, Lads_mobile_sdk/o71;->d:Lads_mobile_sdk/rz;

    invoke-direct {v0, v1}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 591
    iget-object v0, p0, Lads_mobile_sdk/o71;->a:Lads_mobile_sdk/ex0;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->C()J

    move-result-wide v0

    goto :goto_23

    :cond_19
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    .line 592
    :goto_23
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 593
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 594
    iput-object p1, p0, Lads_mobile_sdk/o71;->h:Lokhttp3/OkHttpClient;

    .line 599
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1848
    instance-of v0, p3, Lads_mobile_sdk/d71;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/d71;

    iget v1, v0, Lads_mobile_sdk/d71;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/d71;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/d71;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/d71;-><init>(Lads_mobile_sdk/o71;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/d71;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2179
    iget v2, v0, Lads_mobile_sdk/d71;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_41

    if-eq v2, v4, :cond_35

    if-ne v2, v3, :cond_2d

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c7

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    iget-object p1, v0, Lads_mobile_sdk/d71;->d:Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/d71;->c:Lokhttp3/Request$Builder;

    iget-object v2, v0, Lads_mobile_sdk/d71;->b:Lokhttp3/Request$Builder;

    iget-object v4, v0, Lads_mobile_sdk/d71;->a:Lads_mobile_sdk/o71;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_91

    :cond_41
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2180
    new-instance p3, Lokhttp3/Request$Builder;

    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p3, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    if-eqz p2, :cond_77

    .line 2411
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_77

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 2412
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, v2, p3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_5b

    .line 2413
    :cond_77
    iget-object p2, p0, Lads_mobile_sdk/o71;->b:Lads_mobile_sdk/zw3;

    iput-object p0, v0, Lads_mobile_sdk/d71;->a:Lads_mobile_sdk/o71;

    iput-object p1, v0, Lads_mobile_sdk/d71;->b:Lokhttp3/Request$Builder;

    iput-object p1, v0, Lads_mobile_sdk/d71;->c:Lokhttp3/Request$Builder;

    const-string p3, "User-Agent"

    iput-object p3, v0, Lads_mobile_sdk/d71;->d:Ljava/lang/String;

    iput v4, v0, Lads_mobile_sdk/d71;->g:I

    invoke-interface {p2, v0}, Lads_mobile_sdk/zw3;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8c

    goto :goto_c6

    :cond_8c
    move-object v4, p0

    move-object v2, p1

    move-object p1, p3

    move-object p3, p2

    move-object p2, v2

    .line 2414
    :goto_91
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 2417
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    const-string p3, "randomUUID(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    iput-object p3, v0, Lads_mobile_sdk/d71;->a:Lads_mobile_sdk/o71;

    iput-object p3, v0, Lads_mobile_sdk/d71;->b:Lokhttp3/Request$Builder;

    iput-object p3, v0, Lads_mobile_sdk/d71;->c:Lokhttp3/Request$Builder;

    iput-object p3, v0, Lads_mobile_sdk/d71;->d:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/d71;->g:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2418
    invoke-static {p1}, Lads_mobile_sdk/y61;->a(Lokhttp3/Request;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string p3, "onNetworkRequest"

    invoke-virtual {v4, p3, p2, p1, v0}, Lads_mobile_sdk/o71;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_c2

    goto :goto_c4

    :cond_c2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_c4
    if-ne p1, v1, :cond_c7

    :goto_c6
    return-object v1

    .line 2419
    :cond_c7
    :goto_c7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/UUID;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 620
    const-string v0, "GoogleMobileAdsNetwork"

    .line 621
    instance-of v1, p4, Lads_mobile_sdk/b71;

    if-eqz v1, :cond_15

    move-object v1, p4

    check-cast v1, Lads_mobile_sdk/b71;

    iget v2, v1, Lads_mobile_sdk/b71;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_15

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/b71;->e:I

    goto :goto_1a

    :cond_15
    new-instance v1, Lads_mobile_sdk/b71;

    invoke-direct {v1, p0, p4}, Lads_mobile_sdk/b71;-><init>(Lads_mobile_sdk/o71;Lkotlin/coroutines/Continuation;)V

    :goto_1a
    iget-object p4, v1, Lads_mobile_sdk/b71;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 985
    iget v3, v1, Lads_mobile_sdk/b71;->e:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_38

    if-ne v3, v4, :cond_30

    iget-object p1, v1, Lads_mobile_sdk/b71;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v1, Lads_mobile_sdk/b71;->a:Lcom/google/gson/JsonObject;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_87

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 987
    new-instance p4, Lcom/google/gson/JsonObject;

    invoke-direct {p4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 988
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    const-string v6, "timestamp"

    invoke-virtual {p4, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 989
    const-string v3, "event"

    invoke-virtual {p4, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    new-instance p1, Lcom/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/google/gson/JsonArray;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "network_request_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p2, "components"

    invoke-virtual {p4, p2, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 991
    const-string p1, "params"

    invoke-virtual {p4, p1, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 995
    iget-object p1, p0, Lads_mobile_sdk/o71;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 1193
    iput-object p4, v1, Lads_mobile_sdk/b71;->a:Lcom/google/gson/JsonObject;

    iput-object p1, v1, Lads_mobile_sdk/b71;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v1, Lads_mobile_sdk/b71;->e:I

    invoke-interface {p1, v5, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_86

    return-object v2

    :cond_86
    move-object p2, p4

    .line 1194
    :goto_87
    :try_start_87
    const-string p3, "GMA Debug BEGIN"

    const/4 p4, 0x2

    invoke-static {p3, v5, v0, p4}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    .line 1195
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMA Debug CONTENT "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5, v0, p4}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    .line 1196
    const-string p2, "GMA Debug FINISH"

    invoke-static {p2, v5, v0, p4}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    .line 1197
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a8
    .catchall {:try_start_87 .. :try_end_a8} :catchall_ac

    .line 1395
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :catchall_ac
    move-exception p2

    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final a(Ljava/net/URL;Lads_mobile_sdk/ss0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 2422
    instance-of v3, v2, Lads_mobile_sdk/e71;

    if-eqz v3, :cond_1a

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/e71;

    iget v4, v3, Lads_mobile_sdk/e71;->f:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_1a

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/e71;->f:I

    :goto_18
    move-object v10, v3

    goto :goto_20

    :cond_1a
    new-instance v3, Lads_mobile_sdk/e71;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/e71;-><init>(Lads_mobile_sdk/o71;Lkotlin/coroutines/Continuation;)V

    goto :goto_18

    :goto_20
    iget-object v2, v10, Lads_mobile_sdk/e71;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 2423
    iget v4, v10, Lads_mobile_sdk/e71;->f:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_57

    if-eq v4, v6, :cond_45

    if-ne v4, v5, :cond_3d

    iget-object v1, v10, Lads_mobile_sdk/e71;->b:Ljava/lang/Object;

    check-cast v1, Lokhttp3/Request;

    iget-object v3, v10, Lads_mobile_sdk/e71;->a:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_147

    :cond_3d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    iget-boolean v1, v10, Lads_mobile_sdk/e71;->c:Z

    iget-object v4, v10, Lads_mobile_sdk/e71;->b:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v10, Lads_mobile_sdk/e71;->a:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/o71;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v9, v1

    move-object v1, v4

    move-object v4, v6

    goto/16 :goto_121

    :cond_57
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2428
    iget-object v2, v0, Lads_mobile_sdk/o71;->a:Lads_mobile_sdk/ex0;

    const/4 v4, 0x0

    if-eqz v2, :cond_67

    .line 2429
    new-instance v7, Lads_mobile_sdk/ts0;

    move-object/from16 v8, p2

    invoke-direct {v7, v8, v2}, Lads_mobile_sdk/ts0;-><init>(Lads_mobile_sdk/ss0;Lads_mobile_sdk/ex0;)V

    goto :goto_68

    :cond_67
    move-object v7, v4

    .line 2432
    :goto_68
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v8, "okHttpClient"

    if-eqz v7, :cond_87

    .line 2433
    iget-object v9, v0, Lads_mobile_sdk/o71;->h:Lokhttp3/OkHttpClient;

    if-eqz v9, :cond_76

    goto :goto_7a

    :cond_76
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v4

    .line 2434
    :goto_7a
    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v7

    goto :goto_90

    .line 2435
    :cond_87
    iget-object v7, v0, Lads_mobile_sdk/o71;->h:Lokhttp3/OkHttpClient;

    if-eqz v7, :cond_8c

    goto :goto_90

    :cond_8c
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v4

    .line 2436
    :goto_90
    iput-object v7, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2446
    invoke-virtual {v7}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v7

    const/4 v8, 0x0

    .line 2447
    invoke-virtual {v7, v8}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v7

    .line 2448
    invoke-virtual {v7, v8}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v7

    .line 2449
    invoke-virtual {v7}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v7

    .line 2450
    iput-object v7, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2452
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2456
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2457
    const-string v11, "url"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_154

    .line 2458
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_fc

    .line 2459
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "toString(...)"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2501
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2502
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 2503
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_ed

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/Pair;

    invoke-virtual {v11}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2504
    invoke-virtual {v1, v12, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_d1

    .line 2506
    :cond_ed
    new-instance v9, Ljava/net/URL;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v12, v9

    goto :goto_fd

    :cond_fc
    move-object v12, v1

    .line 2508
    :goto_fd
    new-instance v11, Lads_mobile_sdk/f81;

    .line 2511
    invoke-static {v7}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    .line 2512
    const-string v13, "GET"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v11 .. v17}, Lads_mobile_sdk/f81;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[BLads_mobile_sdk/ss0;Lads_mobile_sdk/g9;)V

    .line 2513
    iput-object v0, v10, Lads_mobile_sdk/e71;->a:Ljava/lang/Object;

    iput-object v2, v10, Lads_mobile_sdk/e71;->b:Ljava/lang/Object;

    iput-boolean v8, v10, Lads_mobile_sdk/e71;->c:Z

    iput v6, v10, Lads_mobile_sdk/e71;->f:I

    invoke-virtual {v0, v11, v4, v10}, Lads_mobile_sdk/o71;->a(Lads_mobile_sdk/f81;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_11c

    goto :goto_144

    :cond_11c
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object v4, v0

    move v9, v8

    .line 2514
    :goto_121
    check-cast v2, Lads_mobile_sdk/f81;

    .line 2541
    invoke-virtual {v2}, Lads_mobile_sdk/f81;->h()Lokhttp3/Request;

    move-result-object v2

    .line 2543
    sget-object v6, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v6, Lads_mobile_sdk/f71;

    invoke-direct {v6, v1, v2}, Lads_mobile_sdk/f71;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;)V

    invoke-static {v6}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 2550
    iget-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lokhttp3/OkHttpClient;

    .line 2551
    iput-object v1, v10, Lads_mobile_sdk/e71;->a:Ljava/lang/Object;

    iput-object v2, v10, Lads_mobile_sdk/e71;->b:Ljava/lang/Object;

    iput v5, v10, Lads_mobile_sdk/e71;->f:I

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v5, v2

    .line 2552
    invoke-virtual/range {v4 .. v10}, Lads_mobile_sdk/o71;->a(Lokhttp3/Request;Lokhttp3/OkHttpClient;ZLads_mobile_sdk/f81;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_145

    :goto_144
    return-object v3

    :cond_145
    move-object v3, v1

    move-object v1, v5

    .line 2553
    :goto_147
    check-cast v2, Lads_mobile_sdk/v01;

    .line 2593
    sget-object v4, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v4, Lads_mobile_sdk/g71;

    invoke-direct {v4, v3, v1}, Lads_mobile_sdk/g71;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;)V

    invoke-static {v4}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    return-object v2

    .line 2594
    :cond_154
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "HttpRequest.Builder: URL must be set before calling build()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Ljava/net/URL;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 2595
    instance-of v0, p2, Lads_mobile_sdk/h71;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/h71;

    iget v1, v0, Lads_mobile_sdk/h71;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_14

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/h71;->f:I

    :goto_12
    move-object v7, v0

    goto :goto_1a

    :cond_14
    new-instance v0, Lads_mobile_sdk/h71;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/h71;-><init>(Lads_mobile_sdk/o71;Lkotlin/coroutines/Continuation;)V

    goto :goto_12

    :goto_1a
    iget-object p2, v7, Lads_mobile_sdk/h71;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 2787
    iget v1, v7, Lads_mobile_sdk/h71;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_40

    if-eq v1, v3, :cond_36

    if-ne v1, v2, :cond_2e

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    iget-object p1, v7, Lads_mobile_sdk/h71;->c:Ljava/lang/String;

    iget-object v1, v7, Lads_mobile_sdk/h71;->b:Lokhttp3/Request$Builder;

    iget-object v3, v7, Lads_mobile_sdk/h71;->a:Lads_mobile_sdk/o71;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_63

    :cond_40
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2789
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    .line 2790
    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 2791
    iget-object p1, p0, Lads_mobile_sdk/o71;->b:Lads_mobile_sdk/zw3;

    iput-object p0, v7, Lads_mobile_sdk/h71;->a:Lads_mobile_sdk/o71;

    iput-object v1, v7, Lads_mobile_sdk/h71;->b:Lokhttp3/Request$Builder;

    const-string p2, "User-Agent"

    iput-object p2, v7, Lads_mobile_sdk/h71;->c:Ljava/lang/String;

    iput v3, v7, Lads_mobile_sdk/h71;->f:I

    invoke-interface {p1, v7}, Lads_mobile_sdk/zw3;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5f

    goto :goto_95

    :cond_5f
    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    move-object v3, p0

    .line 2792
    :goto_63
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 2793
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 2794
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 2795
    iget-object p2, v3, Lads_mobile_sdk/o71;->i:Lokhttp3/OkHttpClient;

    const/4 v1, 0x0

    if-nez p2, :cond_81

    .line 2796
    iget-object p2, v3, Lads_mobile_sdk/o71;->h:Lokhttp3/OkHttpClient;

    if-eqz p2, :cond_7b

    goto :goto_81

    :cond_7b
    const-string p2, "okHttpClient"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    .line 2797
    :cond_81
    :goto_81
    iput-object v1, v7, Lads_mobile_sdk/h71;->a:Lads_mobile_sdk/o71;

    iput-object v1, v7, Lads_mobile_sdk/h71;->b:Lokhttp3/Request$Builder;

    iput-object v1, v7, Lads_mobile_sdk/h71;->c:Ljava/lang/String;

    iput v2, v7, Lads_mobile_sdk/h71;->f:I

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    move-object v1, v3

    move-object v3, p2

    .line 2798
    invoke-virtual/range {v1 .. v7}, Lads_mobile_sdk/o71;->a(Lokhttp3/Request;Lokhttp3/OkHttpClient;ZLads_mobile_sdk/f81;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_96

    :goto_95
    return-object v0

    :cond_96
    return-object p1
.end method

.method public final a(Ljava/net/URL;Lkotlin/time/Duration;Ljava/util/Map;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 18

    .line 3053
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3057
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3058
    const-string v2, "url"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3059
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_55

    .line 3060
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "toString(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3102
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3103
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 3104
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3105
    invoke-virtual {p1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2a

    .line 3107
    :cond_46
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_56

    :cond_55
    move-object v3, p1

    .line 3109
    :goto_56
    new-instance v2, Lads_mobile_sdk/f81;

    .line 3112
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 3113
    const-string v4, "GET"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lads_mobile_sdk/f81;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[BLads_mobile_sdk/ss0;Lads_mobile_sdk/g9;)V

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object v5, v2

    .line 3114
    invoke-virtual/range {v4 .. v10}, Lads_mobile_sdk/o71;->a(Lads_mobile_sdk/f81;Lkotlin/time/Duration;Ljava/util/Map;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lokhttp3/Request;Lokhttp3/OkHttpClient;ZLads_mobile_sdk/f81;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v0, p6

    .line 3115
    instance-of v2, v0, Lads_mobile_sdk/l71;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/l71;

    iget v3, v2, Lads_mobile_sdk/l71;->k:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/l71;->k:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/l71;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/l71;-><init>(Lads_mobile_sdk/o71;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/l71;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 3386
    iget v4, v2, Lads_mobile_sdk/l71;->k:I

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v4, :cond_b7

    if-eq v4, v12, :cond_9f

    if-eq v4, v9, :cond_84

    if-eq v4, v8, :cond_6a

    if-eq v4, v7, :cond_51

    if-ne v4, v6, :cond_49

    iget-boolean v3, v2, Lads_mobile_sdk/l71;->g:Z

    iget-boolean v4, v2, Lads_mobile_sdk/l71;->f:Z

    iget-object v6, v2, Lads_mobile_sdk/l71;->c:Ljava/lang/Object;

    check-cast v6, Lokhttp3/Response;

    iget-object v7, v2, Lads_mobile_sdk/l71;->b:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/f81;

    iget-object v2, v2, Lads_mobile_sdk/l71;->a:Lads_mobile_sdk/o71;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2cb

    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    iget v4, v2, Lads_mobile_sdk/l71;->h:I

    iget-boolean v7, v2, Lads_mobile_sdk/l71;->g:Z

    iget-boolean v8, v2, Lads_mobile_sdk/l71;->f:Z

    iget-object v13, v2, Lads_mobile_sdk/l71;->d:Ljava/lang/Object;

    check-cast v13, Lokhttp3/Response;

    iget-object v14, v2, Lads_mobile_sdk/l71;->c:Ljava/lang/Object;

    check-cast v14, Ljava/util/UUID;

    iget-object v15, v2, Lads_mobile_sdk/l71;->b:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/f81;

    iget-object v10, v2, Lads_mobile_sdk/l71;->a:Lads_mobile_sdk/o71;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_269

    :cond_6a
    iget v4, v2, Lads_mobile_sdk/l71;->h:I

    iget-boolean v8, v2, Lads_mobile_sdk/l71;->g:Z

    iget-boolean v10, v2, Lads_mobile_sdk/l71;->f:Z

    iget-object v13, v2, Lads_mobile_sdk/l71;->c:Ljava/lang/Object;

    check-cast v13, Ljava/util/UUID;

    iget-object v14, v2, Lads_mobile_sdk/l71;->b:Ljava/lang/Object;

    check-cast v14, Lads_mobile_sdk/f81;

    iget-object v15, v2, Lads_mobile_sdk/l71;->a:Lads_mobile_sdk/o71;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v7, v8

    move v8, v10

    move-object v10, v15

    move-object v15, v14

    move-object v14, v13

    goto/16 :goto_1b8

    :cond_84
    iget v4, v2, Lads_mobile_sdk/l71;->h:I

    iget-boolean v10, v2, Lads_mobile_sdk/l71;->g:Z

    iget-boolean v13, v2, Lads_mobile_sdk/l71;->f:Z

    iget-object v14, v2, Lads_mobile_sdk/l71;->e:Ljava/util/UUID;

    iget-object v15, v2, Lads_mobile_sdk/l71;->d:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/f81;

    iget-object v6, v2, Lads_mobile_sdk/l71;->c:Ljava/lang/Object;

    check-cast v6, Lokhttp3/OkHttpClient;

    iget-object v5, v2, Lads_mobile_sdk/l71;->b:Ljava/lang/Object;

    check-cast v5, Lokhttp3/Request;

    iget-object v7, v2, Lads_mobile_sdk/l71;->a:Lads_mobile_sdk/o71;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_171

    :cond_9f
    iget-boolean v4, v2, Lads_mobile_sdk/l71;->g:Z

    iget-boolean v5, v2, Lads_mobile_sdk/l71;->f:Z

    iget-object v6, v2, Lads_mobile_sdk/l71;->e:Ljava/util/UUID;

    iget-object v7, v2, Lads_mobile_sdk/l71;->d:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/f81;

    iget-object v10, v2, Lads_mobile_sdk/l71;->c:Ljava/lang/Object;

    check-cast v10, Lokhttp3/OkHttpClient;

    iget-object v13, v2, Lads_mobile_sdk/l71;->b:Ljava/lang/Object;

    check-cast v13, Lokhttp3/Request;

    iget-object v14, v2, Lads_mobile_sdk/l71;->a:Lads_mobile_sdk/o71;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_104

    :cond_b7
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3393
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    .line 3395
    iget-object v0, v1, Lads_mobile_sdk/o71;->a:Lads_mobile_sdk/ex0;

    if-eqz v0, :cond_d5

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->E()Z

    move-result v0

    if-ne v0, v12, :cond_d5

    move-object/from16 v13, p1

    move-object/from16 v10, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move/from16 v4, p5

    move-object v14, v1

    goto/16 :goto_12d

    .line 3396
    :cond_d5
    iget-object v0, v1, Lads_mobile_sdk/o71;->f:Lads_mobile_sdk/vk0;

    if-eqz v0, :cond_110

    iput-object v1, v2, Lads_mobile_sdk/l71;->a:Lads_mobile_sdk/o71;

    move-object/from16 v4, p1

    iput-object v4, v2, Lads_mobile_sdk/l71;->b:Ljava/lang/Object;

    move-object/from16 v5, p2

    iput-object v5, v2, Lads_mobile_sdk/l71;->c:Ljava/lang/Object;

    move-object/from16 v7, p4

    iput-object v7, v2, Lads_mobile_sdk/l71;->d:Ljava/lang/Object;

    iput-object v6, v2, Lads_mobile_sdk/l71;->e:Ljava/util/UUID;

    move/from16 v10, p3

    iput-boolean v10, v2, Lads_mobile_sdk/l71;->f:Z

    move/from16 v13, p5

    iput-boolean v13, v2, Lads_mobile_sdk/l71;->g:Z

    iput v12, v2, Lads_mobile_sdk/l71;->k:I

    check-cast v0, Lads_mobile_sdk/if1;

    .line 3397
    invoke-static {v0, v2}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_fd

    goto/16 :goto_2c6

    :cond_fd
    move v14, v13

    move-object v13, v4

    move v4, v14

    move v14, v10

    move-object v10, v5

    move v5, v14

    move-object v14, v1

    .line 3398
    :goto_104
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v12, :cond_10e

    move v0, v12

    goto :goto_122

    :cond_10e
    :goto_10e
    const/4 v0, 0x0

    goto :goto_122

    :cond_110
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v10, p3

    move-object/from16 v7, p4

    move/from16 v13, p5

    move v0, v13

    move-object v13, v4

    move v4, v0

    move v0, v10

    move-object v10, v5

    move v5, v0

    move-object v14, v1

    goto :goto_10e

    :goto_122
    if-nez v0, :cond_137

    .line 3399
    const-string v0, "GoogleMobileAdsNetwork"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12d

    goto :goto_137

    :cond_12d
    :goto_12d
    move-object v15, v13

    move v13, v5

    move-object v5, v15

    move-object v15, v7

    move-object v7, v14

    move-object v14, v6

    move-object v6, v10

    move v10, v4

    const/4 v4, 0x0

    goto :goto_140

    :cond_137
    :goto_137
    move-object v15, v13

    move v13, v5

    move-object v5, v15

    move-object v15, v7

    move-object v7, v14

    move-object v14, v6

    move-object v6, v10

    move v10, v4

    move v4, v12

    :goto_140
    if-eqz v4, :cond_171

    .line 3401
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v7, v2, Lads_mobile_sdk/l71;->a:Lads_mobile_sdk/o71;

    iput-object v5, v2, Lads_mobile_sdk/l71;->b:Ljava/lang/Object;

    iput-object v6, v2, Lads_mobile_sdk/l71;->c:Ljava/lang/Object;

    iput-object v15, v2, Lads_mobile_sdk/l71;->d:Ljava/lang/Object;

    iput-object v14, v2, Lads_mobile_sdk/l71;->e:Ljava/util/UUID;

    iput-boolean v13, v2, Lads_mobile_sdk/l71;->f:Z

    iput-boolean v10, v2, Lads_mobile_sdk/l71;->g:Z

    iput v4, v2, Lads_mobile_sdk/l71;->h:I

    iput v9, v2, Lads_mobile_sdk/l71;->k:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3402
    invoke-static {v5}, Lads_mobile_sdk/y61;->a(Lokhttp3/Request;)Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v9, "onNetworkRequest"

    invoke-virtual {v7, v9, v14, v0, v2}, Lads_mobile_sdk/o71;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    if-ne v0, v9, :cond_16b

    goto :goto_16d

    :cond_16b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_16d
    if-ne v0, v3, :cond_171

    goto/16 :goto_2c6

    .line 3403
    :cond_171
    :goto_171
    invoke-virtual {v6, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v7, v2, Lads_mobile_sdk/l71;->a:Lads_mobile_sdk/o71;

    iput-object v15, v2, Lads_mobile_sdk/l71;->b:Ljava/lang/Object;

    iput-object v14, v2, Lads_mobile_sdk/l71;->c:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/l71;->d:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/l71;->e:Ljava/util/UUID;

    iput-boolean v13, v2, Lads_mobile_sdk/l71;->f:Z

    iput-boolean v10, v2, Lads_mobile_sdk/l71;->g:Z

    iput v4, v2, Lads_mobile_sdk/l71;->h:I

    iput v8, v2, Lads_mobile_sdk/l71;->k:I

    .line 3404
    new-instance v5, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    invoke-direct {v5, v6, v12}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 3410
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 3411
    new-instance v6, Lads_mobile_sdk/u71;

    invoke-direct {v6, v0}, Lads_mobile_sdk/u71;-><init>(Lokhttp3/Call;)V

    invoke-virtual {v5, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 3419
    new-instance v6, Lads_mobile_sdk/x71;

    invoke-direct {v6, v5}, Lads_mobile_sdk/x71;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 3420
    invoke-interface {v0, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 3451
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 3452
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v0, v5, :cond_1b0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1b0
    if-ne v0, v3, :cond_1b4

    goto/16 :goto_2c6

    :cond_1b4
    move v8, v10

    move-object v10, v7

    move v7, v8

    move v8, v13

    .line 3453
    :goto_1b8
    check-cast v0, Lads_mobile_sdk/v01;

    .line 3734
    instance-of v5, v0, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_1c1

    check-cast v0, Lads_mobile_sdk/i01;

    return-object v0

    .line 3735
    :cond_1c1
    const-string v5, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/q01;

    .line 3736
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 3737
    move-object v13, v0

    check-cast v13, Lokhttp3/Response;

    if-eqz v15, :cond_269

    .line 3738
    iget-object v0, v15, Lads_mobile_sdk/f81;->f:Lads_mobile_sdk/g9;

    if-eqz v0, :cond_269

    .line 3739
    invoke-virtual {v13}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v5

    .line 3998
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 3999
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 4000
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1f0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_24b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 4001
    check-cast v9, Ljava/util/Map$Entry;

    .line 4002
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    .line 4003
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Ljava/lang/CharSequence;

    const-string v9, ","

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x6

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 4265
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v0, 0xa

    invoke-static {v9, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4266
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_243

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 4267
    check-cast v9, Ljava/lang/String;

    .line 4268
    invoke-static {v9}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4532
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22b

    .line 4533
    :cond_243
    invoke-interface {v6, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v18

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_1f0

    :cond_24b
    move-object/from16 v18, v0

    .line 4534
    iput-object v10, v2, Lads_mobile_sdk/l71;->a:Lads_mobile_sdk/o71;

    iput-object v15, v2, Lads_mobile_sdk/l71;->b:Ljava/lang/Object;

    iput-object v14, v2, Lads_mobile_sdk/l71;->c:Ljava/lang/Object;

    iput-object v13, v2, Lads_mobile_sdk/l71;->d:Ljava/lang/Object;

    iput-boolean v8, v2, Lads_mobile_sdk/l71;->f:Z

    iput-boolean v7, v2, Lads_mobile_sdk/l71;->g:Z

    iput v4, v2, Lads_mobile_sdk/l71;->h:I

    const/4 v0, 0x4

    iput v0, v2, Lads_mobile_sdk/l71;->k:I

    move-object/from16 v0, v18

    check-cast v0, Lads_mobile_sdk/ej1;

    invoke-virtual {v0, v6, v2}, Lads_mobile_sdk/ej1;->a(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_269

    goto :goto_2c6

    :cond_269
    :goto_269
    move-object v6, v13

    if-eqz v4, :cond_2c8

    .line 4541
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_2ac

    .line 4546
    :try_start_272
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v4
    :try_end_276
    .catch Ljava/lang/Exception; {:try_start_272 .. :try_end_276} :catch_2a3

    .line 4555
    invoke-virtual {v6}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v5

    sget-object v9, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v11

    invoke-virtual {v9, v4, v11}, Lokhttp3/ResponseBody$Companion;->create([BLokhttp3/MediaType;)Lokhttp3/ResponseBody;

    move-result-object v11

    invoke-virtual {v5, v11}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v5

    .line 4556
    invoke-virtual {v6}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v6

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Lokhttp3/ResponseBody$Companion;->create([BLokhttp3/MediaType;)Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v6, v0}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    move-object v6, v5

    :goto_2a1
    const/4 v4, 0x0

    goto :goto_2ae

    :catch_2a3
    move-exception v0

    .line 4557
    new-instance v2, Lads_mobile_sdk/j01;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v4, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    return-object v2

    :cond_2ac
    move-object v0, v6

    goto :goto_2a1

    .line 4568
    :goto_2ae
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v10, v2, Lads_mobile_sdk/l71;->a:Lads_mobile_sdk/o71;

    iput-object v15, v2, Lads_mobile_sdk/l71;->b:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/l71;->c:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/l71;->d:Ljava/lang/Object;

    iput-boolean v8, v2, Lads_mobile_sdk/l71;->f:Z

    iput-boolean v7, v2, Lads_mobile_sdk/l71;->g:Z

    const/4 v4, 0x5

    iput v4, v2, Lads_mobile_sdk/l71;->k:I

    invoke-virtual {v10, v6, v14, v2}, Lads_mobile_sdk/o71;->a(Lokhttp3/Response;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_2c7

    :goto_2c6
    return-object v3

    :cond_2c7
    move-object v6, v0

    :cond_2c8
    move v3, v7

    move v4, v8

    move-object v2, v10

    .line 4571
    :goto_2cb
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4572
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v5, 0x12c

    if-gt v5, v0, :cond_2dc

    const/16 v5, 0x190

    if-ge v0, v5, :cond_2dc

    const/4 v0, 0x1

    goto :goto_2dd

    :cond_2dc
    const/4 v0, 0x0

    .line 4573
    :goto_2dd
    invoke-virtual {v6}, Lokhttp3/Response;->isSuccessful()Z

    move-result v5

    if-nez v5, :cond_2f8

    if-eqz v0, :cond_2e7

    if-eqz v3, :cond_2f8

    .line 4574
    :cond_2e7
    invoke-virtual {v6}, Lokhttp3/Response;->close()V

    .line 4575
    new-instance v0, Lads_mobile_sdk/k01;

    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v6}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lads_mobile_sdk/k01;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 4578
    :cond_2f8
    invoke-virtual {v6}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v3

    .line 4580
    new-instance v5, Lads_mobile_sdk/g81;

    invoke-direct {v5}, Lads_mobile_sdk/g81;-><init>()V

    .line 4582
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v7

    .line 4583
    iput v7, v5, Lads_mobile_sdk/g81;->a:I

    .line 4584
    invoke-virtual {v6}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v7

    .line 4585
    iput-object v7, v5, Lads_mobile_sdk/g81;->b:Ljava/lang/String;

    .line 4586
    invoke-virtual {v6}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    if-eqz v0, :cond_324

    .line 4588
    const-string v0, "Location"

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v6, v0, v8, v7, v8}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4589
    iput-object v0, v5, Lads_mobile_sdk/g81;->f:Ljava/lang/String;

    .line 4590
    :cond_324
    iget-object v0, v2, Lads_mobile_sdk/o71;->a:Lads_mobile_sdk/ex0;

    const-string v7, "key"

    if-eqz v0, :cond_33f

    .line 4592
    const-string v8, "gads:html_body_header"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "defaultValue"

    const-string v10, "X-Afma-Is-Html-Response"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4634
    sget-object v9, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v0, v8, v10, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_340

    :cond_33f
    const/4 v0, 0x0

    :goto_340
    if-eqz v0, :cond_387

    .line 4635
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_349

    goto :goto_387

    :cond_349
    if-eqz v4, :cond_387

    .line 4637
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_387

    .line 4770
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_358

    goto :goto_387

    .line 4771
    :cond_358
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_360
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_387

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 4772
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static {v9, v0, v10}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_360

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_360

    const/4 v10, 0x1

    goto :goto_388

    :cond_387
    :goto_387
    const/4 v10, 0x0

    :goto_388
    if-eqz v10, :cond_395

    .line 4906
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 4907
    iget-object v0, v0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 4908
    iget-object v0, v0, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    const/4 v4, 0x1

    .line 4909
    iput-boolean v4, v0, Lads_mobile_sdk/tn1;->g:Z

    :cond_395
    if-eqz v10, :cond_3da

    .line 4915
    iget-object v0, v2, Lads_mobile_sdk/o71;->a:Lads_mobile_sdk/ex0;

    if-eqz v0, :cond_3da

    .line 4917
    const-string v4, "gads:enable_normalization_before_body"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4933
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v8, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v4, v7, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_3da

    .line 4934
    iget-object v11, v2, Lads_mobile_sdk/o71;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/m71;

    const/4 v4, 0x0

    invoke-direct {v0, v6, v4}, Lads_mobile_sdk/m71;-><init>(Lokhttp3/Response;Lkotlin/coroutines/Continuation;)V

    .line 4935
    sget-object v12, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 4936
    const-string v2, "<this>"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5184
    new-instance v14, Lads_mobile_sdk/vs3;

    invoke-direct {v14, v0, v4}, Lads_mobile_sdk/vs3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    .line 5185
    iput-object v0, v5, Lads_mobile_sdk/g81;->e:Lkotlinx/coroutines/Deferred;

    goto :goto_3f3

    .line 5186
    :cond_3da
    :try_start_3da
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_3e6

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    if-nez v0, :cond_3ec

    :cond_3e6
    const/4 v0, 0x0

    goto :goto_3ea

    :catch_3e8
    move-exception v0

    goto :goto_40c

    :goto_3ea
    new-array v0, v0, [B
    :try_end_3ec
    .catch Ljava/lang/Exception; {:try_start_3da .. :try_end_3ec} :catch_3e8

    .line 5187
    :cond_3ec
    new-instance v2, Lads_mobile_sdk/p53;

    invoke-direct {v2, v0}, Lads_mobile_sdk/p53;-><init>([B)V

    iput-object v2, v5, Lads_mobile_sdk/g81;->d:Lads_mobile_sdk/p53;

    .line 5188
    :goto_3f3
    const-string v0, "headers"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5276
    iget-object v0, v5, Lads_mobile_sdk/g81;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5277
    iget-object v0, v5, Lads_mobile_sdk/g81;->c:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5278
    invoke-virtual {v5}, Lads_mobile_sdk/g81;->a()Lads_mobile_sdk/h81;

    move-result-object v0

    .line 5280
    new-instance v2, Lads_mobile_sdk/q01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 5281
    :goto_40c
    new-instance v2, Lads_mobile_sdk/j01;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v4, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    return-object v2
.end method

.method public final a(Lokhttp3/Response;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 1396
    instance-of v0, p3, Lads_mobile_sdk/c71;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/c71;

    iget v1, v0, Lads_mobile_sdk/c71;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/c71;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/c71;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/c71;-><init>(Lads_mobile_sdk/o71;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/c71;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1783
    iget v2, v0, Lads_mobile_sdk/c71;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4e

    if-eq v2, v5, :cond_43

    if-eq v2, v4, :cond_38

    if-ne v2, v3, :cond_30

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_15a

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    iget-object p1, v0, Lads_mobile_sdk/c71;->c:Ljava/util/UUID;

    iget-object p2, v0, Lads_mobile_sdk/c71;->b:Lokhttp3/Response;

    iget-object v2, v0, Lads_mobile_sdk/c71;->a:Lads_mobile_sdk/o71;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_f8

    :cond_43
    iget-object p2, v0, Lads_mobile_sdk/c71;->c:Ljava/util/UUID;

    iget-object p1, v0, Lads_mobile_sdk/c71;->b:Lokhttp3/Response;

    iget-object v2, v0, Lads_mobile_sdk/c71;->a:Lads_mobile_sdk/o71;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c7

    :cond_4e
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1785
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1786
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "code"

    invoke-virtual {v2, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v6, "firstline"

    invoke-virtual {p3, v6, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1787
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    .line 1788
    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    move-result v6

    if-lez v6, :cond_b4

    .line 1791
    new-instance v6, Lcom/google/gson/JsonArray;

    invoke-direct {v6}, Lcom/google/gson/JsonArray;-><init>()V

    .line 1792
    invoke-virtual {v2}, Lokhttp3/Headers;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    .line 1794
    new-instance v8, Lcom/google/gson/JsonObject;

    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1795
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "name"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "value"

    invoke-virtual {v8, v9, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    invoke-virtual {v6, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_82

    .line 1804
    :cond_ad
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1805
    const-string v2, "headers"

    invoke-virtual {p3, v2, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1806
    :cond_b4
    iput-object p0, v0, Lads_mobile_sdk/c71;->a:Lads_mobile_sdk/o71;

    iput-object p1, v0, Lads_mobile_sdk/c71;->b:Lokhttp3/Response;

    iput-object p2, v0, Lads_mobile_sdk/c71;->c:Ljava/util/UUID;

    iput v5, v0, Lads_mobile_sdk/c71;->f:I

    const-string v2, "onNetworkResponse"

    invoke-virtual {p0, v2, p2, p3, v0}, Lads_mobile_sdk/o71;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_c6

    goto/16 :goto_159

    :cond_c6
    move-object v2, p0

    .line 1808
    :goto_c7
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p3

    const/16 v5, 0xc8

    if-gt v5, p3, :cond_d4

    const/16 v5, 0x12c

    if-ge p3, v5, :cond_d4

    goto :goto_f5

    .line 1812
    :cond_d4
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v5

    const-string v6, "error_description"

    invoke-virtual {p3, v6, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1813
    iput-object v2, v0, Lads_mobile_sdk/c71;->a:Lads_mobile_sdk/o71;

    iput-object p1, v0, Lads_mobile_sdk/c71;->b:Lokhttp3/Response;

    iput-object p2, v0, Lads_mobile_sdk/c71;->c:Ljava/util/UUID;

    iput v4, v0, Lads_mobile_sdk/c71;->f:I

    const-string v4, "onNetworkRequestError"

    invoke-virtual {v2, v4, p2, p3, v0}, Lads_mobile_sdk/o71;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_f5

    goto :goto_159

    :cond_f5
    :goto_f5
    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    .line 1820
    :goto_f8
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    if-eqz p2, :cond_160

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_105

    goto :goto_160

    .line 1821
    :cond_105
    invoke-static {p2}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_15d

    .line 1825
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1826
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "bodylength"

    invoke-virtual {p3, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1827
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_13b

    .line 1828
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v4, "getBytes(...)"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string v4, "body"

    invoke-virtual {p3, v4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_146

    .line 1830
    :cond_13b
    sget-object v4, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    invoke-static {p2}, Lads_mobile_sdk/m21;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "bodydigest"

    invoke-virtual {p3, v4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    :goto_146
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p2, 0x0

    .line 1833
    iput-object p2, v0, Lads_mobile_sdk/c71;->a:Lads_mobile_sdk/o71;

    iput-object p2, v0, Lads_mobile_sdk/c71;->b:Lokhttp3/Response;

    iput-object p2, v0, Lads_mobile_sdk/c71;->c:Ljava/util/UUID;

    iput v3, v0, Lads_mobile_sdk/c71;->f:I

    const-string p2, "onNetworkResponseBody"

    invoke-virtual {v2, p2, p1, p3, v0}, Lads_mobile_sdk/o71;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_15a

    :goto_159
    return-object v1

    .line 1846
    :cond_15a
    :goto_15a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_15d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1847
    :cond_160
    :goto_160
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/uv;)V
    .registers 3

    .line 5282
    const-string v0, "chromeVariationsProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5387
    iput-object p1, p0, Lads_mobile_sdk/o71;->e:Lads_mobile_sdk/uv;

    return-void
.end method

.method public final a(Lads_mobile_sdk/vk0;)V
    .registers 3

    .line 5388
    const-string v0, "debugModeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5489
    iput-object p1, p0, Lads_mobile_sdk/o71;->f:Lads_mobile_sdk/vk0;

    return-void
.end method
