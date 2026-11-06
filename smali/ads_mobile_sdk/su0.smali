###### Class ads_mobile_sdk.su0 (ads_mobile_sdk.su0)
.class public final Lads_mobile_sdk/su0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/bv0;

.field public final synthetic e:Lads_mobile_sdk/g32;

.field public final synthetic f:Lcom/google/gson/JsonObject;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/bv0;Lads_mobile_sdk/g32;Lcom/google/gson/JsonObject;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/su0;->d:Lads_mobile_sdk/bv0;

    iput-object p2, p0, Lads_mobile_sdk/su0;->e:Lads_mobile_sdk/g32;

    iput-object p3, p0, Lads_mobile_sdk/su0;->f:Lcom/google/gson/JsonObject;

    iput-object p4, p0, Lads_mobile_sdk/su0;->g:Ljava/lang/String;

    iput-boolean p5, p0, Lads_mobile_sdk/su0;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10

    .line 1
    new-instance v0, Lads_mobile_sdk/su0;

    iget-object v1, p0, Lads_mobile_sdk/su0;->d:Lads_mobile_sdk/bv0;

    iget-object v2, p0, Lads_mobile_sdk/su0;->e:Lads_mobile_sdk/g32;

    iget-object v3, p0, Lads_mobile_sdk/su0;->f:Lcom/google/gson/JsonObject;

    iget-object v4, p0, Lads_mobile_sdk/su0;->g:Ljava/lang/String;

    iget-boolean v5, p0, Lads_mobile_sdk/su0;->h:Z

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/su0;-><init>(Lads_mobile_sdk/bv0;Lads_mobile_sdk/g32;Lcom/google/gson/JsonObject;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/su0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/su0;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/su0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 556
    iget v1, p0, Lads_mobile_sdk/su0;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_30

    if-eq v1, v3, :cond_24

    if-ne v1, v2, :cond_1c

    iget-object v0, p0, Lads_mobile_sdk/su0;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/su0;->a:Lads_mobile_sdk/rr3;

    :try_start_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    goto/16 :goto_170

    :catchall_19
    move-exception p1

    goto/16 :goto_183

    .line 557
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    iget-object v0, p0, Lads_mobile_sdk/su0;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/su0;->a:Lads_mobile_sdk/rr3;

    :try_start_28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2d

    goto/16 :goto_f8

    :catchall_2d
    move-exception p1

    goto/16 :goto_10a

    .line 558
    :cond_30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 563
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v1, p0, Lads_mobile_sdk/su0;->d:Lads_mobile_sdk/bv0;

    iget-object v6, p0, Lads_mobile_sdk/su0;->e:Lads_mobile_sdk/g32;

    iget-object v7, p0, Lads_mobile_sdk/su0;->f:Lcom/google/gson/JsonObject;

    iget-object v8, p0, Lads_mobile_sdk/su0;->g:Ljava/lang/String;

    iget-boolean v9, p0, Lads_mobile_sdk/su0;->h:Z

    .line 565
    iget-object v10, v1, Lads_mobile_sdk/bv0;->g:Lcom/google/gson/JsonObject;

    .line 566
    const-string v11, "ad"

    invoke-virtual {p1, v11, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    if-eqz v6, :cond_6e

    .line 568
    iget-object v10, v6, Lads_mobile_sdk/g32;->a:Lcom/google/gson/JsonObject;

    const-string v11, "asset_view_signal"

    invoke-virtual {p1, v11, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 569
    iget-object v10, v6, Lads_mobile_sdk/g32;->b:Lcom/google/gson/JsonObject;

    const-string v11, "ad_view_signal"

    invoke-virtual {p1, v11, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 570
    iget-object v10, v6, Lads_mobile_sdk/g32;->c:Lcom/google/gson/JsonObject;

    const-string v11, "scroll_view_signal"

    invoke-virtual {p1, v11, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 571
    iget-object v10, v6, Lads_mobile_sdk/g32;->d:Lcom/google/gson/JsonObject;

    const-string v11, "lock_screen_signal"

    invoke-virtual {p1, v11, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 572
    iget-object v6, v6, Lads_mobile_sdk/g32;->e:Lcom/google/gson/JsonObject;

    const-string v10, "screen"

    invoke-virtual {p1, v10, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_6e
    if-eqz v7, :cond_75

    .line 574
    const-string v6, "provided_signals"

    invoke-virtual {p1, v6, v7}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_75
    if-eqz v8, :cond_7c

    .line 575
    const-string v6, "view_signals"

    invoke-virtual {p1, v6, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_7c
    const-string v6, "policy_validator_enabled"

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 577
    iget-object v6, v1, Lads_mobile_sdk/bv0;->y:Lads_mobile_sdk/ex0;

    .line 578
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 580
    const-string v7, "key"

    const-string v8, "gads:enable_placement_id:enabled"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v6, v8, v7, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c0

    .line 597
    iget-object v6, v1, Lads_mobile_sdk/bv0;->C:Lads_mobile_sdk/eo2;

    .line 598
    iget-object v6, v6, Lads_mobile_sdk/eo2;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 599
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_c0

    .line 601
    iget-object v1, v1, Lads_mobile_sdk/bv0;->C:Lads_mobile_sdk/eo2;

    .line 602
    iget-object v1, v1, Lads_mobile_sdk/eo2;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 603
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    const-string v6, "placement_id"

    invoke-virtual {p1, v6, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 607
    :cond_c0
    iget-object v1, p0, Lads_mobile_sdk/su0;->d:Lads_mobile_sdk/bv0;

    .line 608
    iget-object v6, v1, Lads_mobile_sdk/bv0;->n:Lads_mobile_sdk/g83;

    .line 609
    sget-object v7, Lads_mobile_sdk/s11;->j0:Lads_mobile_sdk/s11;

    .line 610
    iget-object v8, v1, Lads_mobile_sdk/bv0;->o:Lads_mobile_sdk/ks3;

    .line 611
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 612
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v10

    .line 613
    iget-object v10, v10, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v11, "toString(...)"

    const-string v12, "google.afma.nativeAds.handleImpression"

    if-nez v10, :cond_14d

    .line 614
    invoke-static {v6, v7, v9, v8}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 615
    :try_start_dc
    iget-object v1, v1, Lads_mobile_sdk/bv0;->q:Lads_mobile_sdk/q52;

    .line 616
    iput-object v2, p0, Lads_mobile_sdk/su0;->a:Lads_mobile_sdk/rr3;

    iput-object v2, p0, Lads_mobile_sdk/su0;->b:Lads_mobile_sdk/rr3;

    iput v3, p0, Lads_mobile_sdk/su0;->c:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v12, p1, p0}, Lads_mobile_sdk/eq1;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_f2
    .catchall {:try_start_dc .. :try_end_f2} :catchall_10c

    if-ne p1, v0, :cond_f6

    goto/16 :goto_16d

    :cond_f6
    move-object v0, v2

    move-object v1, v0

    .line 618
    :goto_f8
    :try_start_f8
    check-cast p1, Lads_mobile_sdk/v01;

    .line 645
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_103

    .line 646
    check-cast p1, Lads_mobile_sdk/i01;

    .line 647
    invoke-static {p1, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 648
    :cond_103
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_105
    .catchall {:try_start_f8 .. :try_end_105} :catchall_2d

    .line 966
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_180

    :goto_10a
    move-object v2, v1

    goto :goto_10e

    :catchall_10c
    move-exception p1

    move-object v0, v2

    .line 974
    :goto_10e
    :try_start_10e
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 978
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_146

    .line 980
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_123

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_123

    .line 986
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_123

    :catchall_121
    move-exception p1

    goto :goto_147

    .line 992
    :cond_123
    :goto_123
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_13e

    .line 993
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_136

    .line 994
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_130

    throw p1

    .line 995
    :cond_130
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 996
    :cond_136
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 997
    :cond_13e
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 998
    :cond_146
    throw p1
    :try_end_147
    .catchall {:try_start_10e .. :try_end_147} :catchall_121

    .line 999
    :goto_147
    :try_start_147
    throw p1
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_148

    :catchall_148
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 1033
    :cond_14d
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v7, v6, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 1034
    :try_start_155
    iget-object v1, v1, Lads_mobile_sdk/bv0;->q:Lads_mobile_sdk/q52;

    .line 1035
    iput-object v3, p0, Lads_mobile_sdk/su0;->a:Lads_mobile_sdk/rr3;

    iput-object v3, p0, Lads_mobile_sdk/su0;->b:Lads_mobile_sdk/rr3;

    iput v2, p0, Lads_mobile_sdk/su0;->c:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1036
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v12, p1, p0}, Lads_mobile_sdk/eq1;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_16b
    .catchall {:try_start_155 .. :try_end_16b} :catchall_185

    if-ne p1, v0, :cond_16e

    :goto_16d
    return-object v0

    :cond_16e
    move-object v0, v3

    move-object v1, v0

    .line 1037
    :goto_170
    :try_start_170
    check-cast p1, Lads_mobile_sdk/v01;

    .line 1064
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_17b

    .line 1065
    check-cast p1, Lads_mobile_sdk/i01;

    .line 1066
    invoke-static {p1, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 1067
    :cond_17b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_17d
    .catchall {:try_start_170 .. :try_end_17d} :catchall_19

    .line 1422
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1423
    :goto_180
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :goto_183
    move-object v3, v1

    goto :goto_187

    :catchall_185
    move-exception p1

    move-object v0, v3

    .line 1779
    :goto_187
    :try_start_187
    invoke-virtual {v3, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1783
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_1bf

    .line 1785
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_19c

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_19c

    .line 1791
    invoke-virtual {v3, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_19c

    :catchall_19a
    move-exception p1

    goto :goto_1c0

    .line 1797
    :cond_19c
    :goto_19c
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1b7

    .line 1798
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1af

    .line 1799
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_1a9

    throw p1

    .line 1800
    :cond_1a9
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1801
    :cond_1af
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1802
    :cond_1b7
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1803
    :cond_1bf
    throw p1
    :try_end_1c0
    .catchall {:try_start_187 .. :try_end_1c0} :catchall_19a

    .line 1804
    :goto_1c0
    :try_start_1c0
    throw p1
    :try_end_1c1
    .catchall {:try_start_1c0 .. :try_end_1c1} :catchall_1c1

    :catchall_1c1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
