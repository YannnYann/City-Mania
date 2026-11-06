###### Class ads_mobile_sdk.rq0 (ads_mobile_sdk.rq0)
.class public final Lads_mobile_sdk/rq0;
.super Lads_mobile_sdk/b43;
.source "SourceFile"


# instance fields
.field public final k:Lads_mobile_sdk/ja1;

.field public l:J

.field public m:J


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
    iput-object p5, p0, Lads_mobile_sdk/rq0;->k:Lads_mobile_sdk/ja1;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 724
    new-instance v0, Lads_mobile_sdk/qq0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lads_mobile_sdk/qq0;-><init>(Lads_mobile_sdk/rq0;Lkotlin/coroutines/Continuation;)V

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
    .registers 6

    .line 716
    monitor-enter p0

    .line 717
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/b43;->j:Ljava/util/LinkedList;

    .line 718
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 719
    iget-object v1, p0, Lads_mobile_sdk/b43;->c:Lads_mobile_sdk/ex0;

    .line 720
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 721
    const-string v2, "gads:exception_buffer_size"

    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x3e8

    .line 722
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v1, v2, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2c

    if-lt v0, v1, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    .line 723
    :goto_2a
    monitor-exit p0

    return v0

    :catchall_2c
    move-exception v0

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

    const-string v4, "gads:exception_monitoring_interval_ms"

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
