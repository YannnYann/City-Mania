###### Class ads_mobile_sdk.ms3 (ads_mobile_sdk.ms3)
.class public final Lads_mobile_sdk/ms3;
.super Lads_mobile_sdk/b43;
.source "SourceFile"


# instance fields
.field public final k:Lads_mobile_sdk/ja1;

.field public l:D

.field public m:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/e01;Lads_mobile_sdk/ex0;Lads_mobile_sdk/zw3;Lads_mobile_sdk/ja1;)V
    .registers 7

    .line 1
    const-string v0, "consentManagerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lads_mobile_sdk/b43;-><init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/e01;Lads_mobile_sdk/ex0;Lads_mobile_sdk/zw3;)V

    .line 3
    iput-object p5, p0, Lads_mobile_sdk/ms3;->k:Lads_mobile_sdk/ja1;

    .line 13
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ms3;->m:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 516
    new-instance v0, Lads_mobile_sdk/ls3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lads_mobile_sdk/ls3;-><init>(Lads_mobile_sdk/ms3;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_11

    return-object p1

    :cond_11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a()Z
    .registers 7

    .line 507
    monitor-enter p0

    .line 508
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/b43;->j:Ljava/util/LinkedList;

    .line 509
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/os3;

    iget-object v3, v3, Lads_mobile_sdk/os3;->b:[Lads_mobile_sdk/uj2;

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_9

    :catchall_1a
    move-exception v0

    goto :goto_3f

    .line 510
    :cond_1c
    iget-object v0, p0, Lads_mobile_sdk/b43;->c:Lads_mobile_sdk/ex0;

    .line 511
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    const-string v3, "gads:cui_buffer_size"

    const-string v4, "key"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x3e8

    .line 513
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v0, v3, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_1a

    if-lt v2, v0, :cond_3d

    const/4 v1, 0x1

    .line 514
    :cond_3d
    monitor-exit p0

    return v1

    .line 515
    :goto_3f
    monitor-exit p0

    throw v0
.end method

.method public final b()J
    .registers 6

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/b43;->c:Lads_mobile_sdk/ex0;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v1, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    .line 5
    const-string v2, "key"

    const/4 v3, 0x5

    const-string v4, "gads:cui_monitoring_interval_ms"

    invoke-static {v3, v1, v4, v2}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v1

    .line 6
    sget-object v2, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v0, v4, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    return-wide v0
.end method
