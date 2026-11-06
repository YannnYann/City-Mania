###### Class ads_mobile_sdk.uk1 (ads_mobile_sdk.uk1)
.class public final Lads_mobile_sdk/uk1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/r31;

.field public final b:Lads_mobile_sdk/ks3;

.field public final c:Lads_mobile_sdk/eo2;

.field public final d:Lads_mobile_sdk/t91;

.field public final e:Lads_mobile_sdk/g83;

.field public final f:Lads_mobile_sdk/rb;

.field public final g:Lads_mobile_sdk/ex0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r31;Lads_mobile_sdk/ks3;Lads_mobile_sdk/eo2;Lads_mobile_sdk/t91;Lads_mobile_sdk/g83;Lads_mobile_sdk/rb;Lads_mobile_sdk/ex0;)V
    .registers 9

    .line 1
    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSpamClient"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    .line 25
    iput-object p2, p0, Lads_mobile_sdk/uk1;->b:Lads_mobile_sdk/ks3;

    .line 26
    iput-object p3, p0, Lads_mobile_sdk/uk1;->c:Lads_mobile_sdk/eo2;

    .line 27
    iput-object p4, p0, Lads_mobile_sdk/uk1;->d:Lads_mobile_sdk/t91;

    .line 28
    iput-object p5, p0, Lads_mobile_sdk/uk1;->e:Lads_mobile_sdk/g83;

    .line 29
    iput-object p6, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    .line 30
    iput-object p7, p0, Lads_mobile_sdk/uk1;->g:Lads_mobile_sdk/ex0;

    return-void
.end method


# virtual methods
.method public final getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "clickString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 70
    const-string p1, ""

    return-object p1

    .line 73
    :cond_e
    iget-object v0, p0, Lads_mobile_sdk/uk1;->e:Lads_mobile_sdk/g83;

    .line 74
    sget-object v1, Lads_mobile_sdk/s11;->h0:Lads_mobile_sdk/s11;

    .line 75
    iget-object v2, p0, Lads_mobile_sdk/uk1;->b:Lads_mobile_sdk/ks3;

    .line 278
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 279
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 280
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v5, 0x0

    if-nez v4, :cond_71

    .line 281
    invoke-static {v0, v1, v3, v2}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 282
    :try_start_25
    iget-object v1, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v1, v2, p1}, Lads_mobile_sdk/rb;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_31

    .line 501
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_31
    move-exception p1

    .line 509
    :try_start_32
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 513
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_6a

    .line 515
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_47

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_47

    .line 521
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_47

    :catchall_45
    move-exception p1

    goto :goto_6b

    .line 527
    :cond_47
    :goto_47
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_62

    .line 528
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_5a

    .line 529
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_54

    throw p1

    .line 530
    :cond_54
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 531
    :cond_5a
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 532
    :cond_62
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 533
    :cond_6a
    throw p1
    :try_end_6b
    .catchall {:try_start_32 .. :try_end_6b} :catchall_45

    .line 534
    :goto_6b
    :try_start_6b
    throw p1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 568
    :cond_71
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 569
    :try_start_7a
    iget-object v1, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v1, v2, p1}, Lads_mobile_sdk/rb;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_86

    .line 825
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_86
    move-exception p1

    .line 833
    :try_start_87
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 837
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_bf

    .line 839
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_9c

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_9c

    .line 845
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_9c

    :catchall_9a
    move-exception p1

    goto :goto_c0

    .line 851
    :cond_9c
    :goto_9c
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_b7

    .line 852
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_af

    .line 853
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_a9

    throw p1

    .line 854
    :cond_a9
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 855
    :cond_af
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 856
    :cond_b7
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 857
    :cond_bf
    throw p1
    :try_end_c0
    .catchall {:try_start_87 .. :try_end_c0} :catchall_9a

    .line 858
    :goto_c0
    :try_start_c0
    throw p1
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_c1

    :catchall_c1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getViewSignals()Ljava/lang/String;
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 47
    iget-object v0, p0, Lads_mobile_sdk/uk1;->e:Lads_mobile_sdk/g83;

    .line 48
    sget-object v1, Lads_mobile_sdk/s11;->f0:Lads_mobile_sdk/s11;

    .line 49
    iget-object v2, p0, Lads_mobile_sdk/uk1;->b:Lads_mobile_sdk/ks3;

    .line 102
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 103
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 104
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v5, 0x0

    if-nez v4, :cond_63

    .line 105
    invoke-static {v0, v1, v3, v2}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 106
    :try_start_17
    iget-object v1, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v1, v2}, Lads_mobile_sdk/rb;->a(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_23

    .line 175
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_23
    move-exception v1

    .line 183
    :try_start_24
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 187
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_5c

    .line 189
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_39

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_39

    .line 195
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_39

    :catchall_37
    move-exception v1

    goto :goto_5d

    .line 201
    :cond_39
    :goto_39
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_54

    .line 202
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_4c

    .line 203
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_46

    throw v1

    .line 204
    :cond_46
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 205
    :cond_4c
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 206
    :cond_54
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 207
    :cond_5c
    throw v1
    :try_end_5d
    .catchall {:try_start_24 .. :try_end_5d} :catchall_37

    .line 208
    :goto_5d
    :try_start_5d
    throw v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 242
    :cond_63
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 243
    :try_start_6c
    iget-object v1, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v1, v2}, Lads_mobile_sdk/rb;->a(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_78

    .line 349
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_78
    move-exception v1

    .line 357
    :try_start_79
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 361
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_b1

    .line 363
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_8e

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_8e

    .line 369
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_8e

    :catchall_8c
    move-exception v1

    goto :goto_b2

    .line 375
    :cond_8e
    :goto_8e
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_a9

    .line 376
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_a1

    .line 377
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_9b

    throw v1

    .line 378
    :cond_9b
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 379
    :cond_a1
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 380
    :cond_a9
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 381
    :cond_b1
    throw v1
    :try_end_b2
    .catchall {:try_start_79 .. :try_end_b2} :catchall_8c

    .line 382
    :goto_b2
    :try_start_b2
    throw v1
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b3

    :catchall_b3
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final getViewSignalsJson()Ljava/lang/String;
    .registers 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 56
    iget-object v0, p0, Lads_mobile_sdk/uk1;->e:Lads_mobile_sdk/g83;

    .line 57
    sget-object v1, Lads_mobile_sdk/s11;->f0:Lads_mobile_sdk/s11;

    .line 58
    iget-object v2, p0, Lads_mobile_sdk/uk1;->b:Lads_mobile_sdk/ks3;

    .line 190
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 191
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 192
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v5, "key"

    const-string v6, "gads:add_placement_id_in_view_signals:enabled"

    const/4 v7, 0x0

    if-nez v4, :cond_90

    .line 193
    invoke-static {v0, v1, v3, v2}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 194
    :try_start_1b
    iget-object v1, p0, Lads_mobile_sdk/uk1;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v6, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_41

    .line 213
    iget-object v1, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v1, v2}, Lads_mobile_sdk/rb;->a(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_3f

    invoke-static {v0, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_3f
    move-exception v1

    goto :goto_51

    .line 215
    :cond_41
    :try_start_41
    iget-object v1, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    iget-object v3, p0, Lads_mobile_sdk/uk1;->c:Lads_mobile_sdk/eo2;

    iget-object v4, p0, Lads_mobile_sdk/uk1;->d:Lads_mobile_sdk/t91;

    invoke-virtual {v1, v2, v3, v4}, Lads_mobile_sdk/rb;->a(Lads_mobile_sdk/r31;Lads_mobile_sdk/eo2;Lads_mobile_sdk/t91;)Ljava/lang/String;

    move-result-object v1
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_3f

    invoke-static {v0, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 362
    :goto_51
    :try_start_51
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 366
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_89

    .line 368
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_66

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_66

    .line 374
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_66

    :catchall_64
    move-exception v1

    goto :goto_8a

    .line 380
    :cond_66
    :goto_66
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_81

    .line 381
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_79

    .line 382
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_73

    throw v1

    .line 383
    :cond_73
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 384
    :cond_79
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 385
    :cond_81
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 386
    :cond_89
    throw v1
    :try_end_8a
    .catchall {:try_start_51 .. :try_end_8a} :catchall_64

    .line 403
    :goto_8a
    :try_start_8a
    throw v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 408
    :cond_90
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 409
    :try_start_99
    iget-object v1, p0, Lads_mobile_sdk/uk1;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v6, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_bf

    .line 428
    iget-object v1, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v1, v2}, Lads_mobile_sdk/rb;->a(Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1
    :try_end_b9
    .catchall {:try_start_99 .. :try_end_b9} :catchall_bd

    invoke-static {v0, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_bd
    move-exception v1

    goto :goto_cf

    .line 430
    :cond_bf
    :try_start_bf
    iget-object v1, p0, Lads_mobile_sdk/uk1;->f:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    iget-object v3, p0, Lads_mobile_sdk/uk1;->c:Lads_mobile_sdk/eo2;

    iget-object v4, p0, Lads_mobile_sdk/uk1;->d:Lads_mobile_sdk/t91;

    invoke-virtual {v1, v2, v3, v4}, Lads_mobile_sdk/rb;->a(Lads_mobile_sdk/r31;Lads_mobile_sdk/eo2;Lads_mobile_sdk/t91;)Ljava/lang/String;

    move-result-object v1
    :try_end_cb
    .catchall {:try_start_bf .. :try_end_cb} :catchall_bd

    invoke-static {v0, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 614
    :goto_cf
    :try_start_cf
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 618
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_107

    .line 620
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_e4

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_e4

    .line 626
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_e4

    :catchall_e2
    move-exception v1

    goto :goto_108

    .line 632
    :cond_e4
    :goto_e4
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_ff

    .line 633
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_f7

    .line 634
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_f1

    throw v1

    .line 635
    :cond_f1
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 636
    :cond_f7
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 637
    :cond_ff
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 638
    :cond_107
    throw v1
    :try_end_108
    .catchall {:try_start_cf .. :try_end_108} :catchall_e2

    .line 655
    :goto_108
    :try_start_108
    throw v1
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_109

    :catchall_109
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final notify(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 37
    :cond_c
    iget-object v0, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v0}, Lads_mobile_sdk/r31;->b()Lads_mobile_sdk/g41;

    move-result-object v0

    .line 96
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    const-string v1, "uri"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    new-instance v1, Lads_mobile_sdk/w31;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lads_mobile_sdk/w31;-><init>(Lads_mobile_sdk/g41;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x1

    invoke-static {v2, v1, p1, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final notifyResult(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "resultJsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lads_mobile_sdk/uk1;->a:Lads_mobile_sdk/r31;

    invoke-virtual {v1}, Lads_mobile_sdk/r31;->b()Lads_mobile_sdk/g41;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    new-instance v0, Lads_mobile_sdk/x31;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lads_mobile_sdk/x31;-><init>(Lads_mobile_sdk/g41;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x1

    invoke-static {v2, v0, p1, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
