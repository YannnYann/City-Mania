###### Class ads_mobile_sdk.mf3 (ads_mobile_sdk.mf3)
.class public final Lads_mobile_sdk/mf3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/hf3;


# instance fields
.field public final a:Lads_mobile_sdk/rj3;

.field public final b:Lads_mobile_sdk/cw2;

.field public final c:Lads_mobile_sdk/vv2;

.field public final d:Lads_mobile_sdk/lh2;

.field public final e:Ljava/util/concurrent/ExecutorService;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Lads_mobile_sdk/hl3;

.field public final h:Lads_mobile_sdk/ts3;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/String;

.field public final k:J

.field public final l:J

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public p:Lads_mobile_sdk/lf3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/rj3;Lads_mobile_sdk/dw2;Lads_mobile_sdk/vv2;Lads_mobile_sdk/lh2;Lads_mobile_sdk/hl3;Lads_mobile_sdk/ts3;Lads_mobile_sdk/na;Ljava/util/concurrent/ExecutorService;)V
    .registers 10

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/mf3;->i:Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Lads_mobile_sdk/mf3;->a:Lads_mobile_sdk/rj3;

    .line 26
    iput-object p2, p0, Lads_mobile_sdk/mf3;->b:Lads_mobile_sdk/cw2;

    .line 27
    iput-object p3, p0, Lads_mobile_sdk/mf3;->c:Lads_mobile_sdk/vv2;

    .line 28
    iput-object p4, p0, Lads_mobile_sdk/mf3;->d:Lads_mobile_sdk/lh2;

    .line 29
    iput-object p8, p0, Lads_mobile_sdk/mf3;->e:Ljava/util/concurrent/ExecutorService;

    .line 30
    iput-object p5, p0, Lads_mobile_sdk/mf3;->g:Lads_mobile_sdk/hl3;

    .line 31
    iput-object p6, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    .line 32
    invoke-virtual {p7}, Lads_mobile_sdk/na;->M()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/mf3;->j:Ljava/lang/String;

    .line 33
    invoke-virtual {p7}, Lads_mobile_sdk/na;->O()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/mf3;->k:J

    .line 34
    invoke-virtual {p7}, Lads_mobile_sdk/na;->K()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/mf3;->l:J

    .line 35
    invoke-virtual {p7}, Lads_mobile_sdk/na;->w()Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/mf3;->m:Z

    .line 36
    invoke-virtual {p7}, Lads_mobile_sdk/na;->J()Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/mf3;->n:Z

    .line 37
    invoke-virtual {p7}, Lads_mobile_sdk/na;->C()Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/mf3;->o:Z

    if-eqz p1, :cond_42

    .line 39
    invoke-static {p8}, Lcom/google/common/util/concurrent/MoreExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p8

    :cond_42
    iput-object p8, p0, Lads_mobile_sdk/mf3;->f:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;)Lads_mobile_sdk/iv2;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 1201
    iget-boolean v0, p0, Lads_mobile_sdk/mf3;->n:Z

    if-eqz v0, :cond_9

    .line 1202
    invoke-virtual {p0}, Lads_mobile_sdk/mf3;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 1205
    :cond_9
    iget-object v0, p0, Lads_mobile_sdk/mf3;->d:Lads_mobile_sdk/lh2;

    invoke-interface {v0}, Lads_mobile_sdk/wl3;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/FluentFuture;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda7;-><init>()V

    iget-object v2, p0, Lads_mobile_sdk/mf3;->e:Ljava/util/concurrent/ExecutorService;

    .line 1206
    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/util/concurrent/FluentFuture;->catching(Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda8;-><init>(Lads_mobile_sdk/mf3;)V

    iget-object v2, p0, Lads_mobile_sdk/mf3;->e:Ljava/util/concurrent/ExecutorService;

    .line 1207
    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/FluentFuture;->transformAsync(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda9;-><init>(Lads_mobile_sdk/mf3;)V

    .line 1208
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/util/concurrent/FluentFuture;->catchingAsync(Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/iv2;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    if-eqz p1, :cond_17

    .line 2640
    iget-object v0, p0, Lads_mobile_sdk/mf3;->a:Lads_mobile_sdk/rj3;

    invoke-virtual {p1}, Lads_mobile_sdk/iv2;->v()Lads_mobile_sdk/yh1$c;

    move-result-object v1

    check-cast v0, Lads_mobile_sdk/st1;

    .line 2641
    iget-object v2, v0, Lads_mobile_sdk/st1;->n:Ljava/lang/Object;

    .line 2642
    monitor-enter v2

    .line 2643
    :try_start_d
    iget-object v0, v0, Lads_mobile_sdk/st1;->q:Lads_mobile_sdk/wa;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/wa;->a(Lads_mobile_sdk/yh1$c;)V

    .line 2644
    monitor-exit v2

    goto :goto_17

    :catchall_14
    move-exception p1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw p1

    .line 2645
    :cond_17
    :goto_17
    iget-object v0, p0, Lads_mobile_sdk/mf3;->c:Lads_mobile_sdk/vv2;

    invoke-interface {v0, p1}, Lads_mobile_sdk/vv2;->b(Lads_mobile_sdk/iv2;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 2650
    iget-object p1, p0, Lads_mobile_sdk/mf3;->d:Lads_mobile_sdk/lh2;

    .line 2651
    invoke-interface {p1}, Lads_mobile_sdk/lh2;->b()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda11;-><init>(Lads_mobile_sdk/mf3;)V

    .line 2656
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 2657
    invoke-static {p1, v0, v1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 2658
    :cond_33
    iget-object p1, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->f3:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    .line 2659
    new-instance p1, Lads_mobile_sdk/kf3;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lads_mobile_sdk/kf3;-><init>(I)V

    throw p1
.end method

.method public final a(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 896
    new-instance v0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda2;-><init>(Lads_mobile_sdk/mf3;Landroid/content/Context;)V

    iget-object p1, p0, Lads_mobile_sdk/mf3;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 11

    .line 1064
    new-instance v0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/mf3;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V

    iget-object p1, v1, Lads_mobile_sdk/mf3;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 6

    .line 711
    iget-object v0, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->m3:Lads_mobile_sdk/lq0;

    .line 712
    new-instance v2, Lads_mobile_sdk/qr3;

    .line 713
    iget-object v3, v0, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    .line 714
    iget-object v0, v0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v2, v1, v3, v0}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V

    .line 715
    :try_start_d
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->b()V

    .line 716
    iget-object v0, p0, Lads_mobile_sdk/mf3;->i:Ljava/lang/Object;

    monitor-enter v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_32

    .line 717
    :try_start_13
    iget-object v1, p0, Lads_mobile_sdk/mf3;->p:Lads_mobile_sdk/lf3;

    if-nez v1, :cond_27

    .line 719
    iget-object p1, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->l3:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    .line 720
    const-string p1, ""

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_25

    .line 728
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    return-object p1

    :catchall_25
    move-exception p1

    goto :goto_30

    .line 729
    :cond_27
    :try_start_27
    invoke-virtual {v1, p1}, Lads_mobile_sdk/lf3;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_25

    .line 735
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    return-object p1

    .line 736
    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_25

    :try_start_31
    throw p1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p1

    .line 738
    :try_start_33
    invoke-virtual {v2, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 739
    throw p1
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p1

    .line 741
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    .line 742
    throw p1
.end method

.method public final synthetic a([B)Ljava/lang/Void;
    .registers 4

    .line 2408
    iget-object v0, p0, Lads_mobile_sdk/mf3;->b:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/iy3;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lads_mobile_sdk/mf3;->a(Lads_mobile_sdk/iy3;[BZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/iy3;[BZ)V
    .registers 8

    .line 1475
    iget-object v0, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->e3:Lads_mobile_sdk/lq0;

    .line 1476
    new-instance v2, Lads_mobile_sdk/qr3;

    .line 1477
    iget-object v3, v0, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    .line 1478
    iget-object v0, v0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v2, v1, v3, v0}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V

    .line 1479
    :try_start_d
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->b()V

    .line 1480
    iget-object v0, p0, Lads_mobile_sdk/mf3;->i:Ljava/lang/Object;

    monitor-enter v0
    :try_end_13
    .catch Lads_mobile_sdk/my3; {:try_start_d .. :try_end_13} :catch_25
    .catch Lads_mobile_sdk/lp1; {:try_start_d .. :try_end_13} :catch_23
    .catchall {:try_start_d .. :try_end_13} :catchall_21

    .line 1481
    :try_start_13
    invoke-static {p1, p2, p3}, Lads_mobile_sdk/lf3;->a(Lads_mobile_sdk/iy3;[BZ)Lads_mobile_sdk/lf3;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/mf3;->p:Lads_mobile_sdk/lf3;

    .line 1482
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1e

    .line 1490
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    return-void

    :catchall_1e
    move-exception p1

    .line 1491
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw p1
    :try_end_21
    .catch Lads_mobile_sdk/my3; {:try_start_20 .. :try_end_21} :catch_25
    .catch Lads_mobile_sdk/lp1; {:try_start_20 .. :try_end_21} :catch_23
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p1

    goto :goto_27

    :catch_23
    move-exception p1

    goto :goto_2d

    :catch_25
    move-exception p1

    goto :goto_2d

    .line 1496
    :goto_27
    :try_start_27
    invoke-virtual {v2, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 1497
    throw p1

    :catchall_2b
    move-exception p1

    goto :goto_36

    .line 1498
    :goto_2d
    invoke-virtual {v2, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 1499
    new-instance p2, Lads_mobile_sdk/kf3;

    invoke-direct {p2, p1}, Lads_mobile_sdk/kf3;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_2b

    .line 1504
    :goto_36
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    .line 1505
    throw p1
.end method

.method public final a(Landroid/view/InputEvent;)V
    .registers 4

    .line 695
    iget-boolean v0, p0, Lads_mobile_sdk/mf3;->o:Z

    if-eqz v0, :cond_19

    .line 697
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 698
    :cond_e
    iget-object v0, p0, Lads_mobile_sdk/mf3;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/mf3;Landroid/view/InputEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 709
    :cond_19
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mf3;->b(Landroid/view/InputEvent;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 14

    .line 375
    iget-object v0, p0, Lads_mobile_sdk/mf3;->j:Ljava/lang/String;

    const-string v1, "v"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v0, "gs"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 386
    const-string v1, "ai"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    const-string v2, "E"

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_10c

    .line 389
    iget-object v6, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v7, Lads_mobile_sdk/lq0;->j3:Lads_mobile_sdk/lq0;

    .line 390
    new-instance v8, Lads_mobile_sdk/qr3;

    .line 391
    iget-object v9, v6, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    .line 392
    iget-object v6, v6, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v8, v7, v9, v6}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V

    .line 393
    :try_start_2b
    invoke-virtual {v8}, Lads_mobile_sdk/qr3;->b()V

    .line 394
    iget-wide v6, p0, Lads_mobile_sdk/mf3;->l:J

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v9}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/fh;

    if-eqz v0, :cond_d8

    .line 396
    invoke-virtual {v0}, Lads_mobile_sdk/fh;->C()Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 397
    invoke-virtual {v0}, Lads_mobile_sdk/fh;->y()Lads_mobile_sdk/xh;

    move-result-object v6

    .line 398
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->y()Z

    move-result v7

    if-eqz v7, :cond_64

    .line 400
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->v()Lads_mobile_sdk/du;

    move-result-object v7

    sget-object v9, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v9}, Lads_mobile_sdk/du;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_54} :catch_fa
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2b .. :try_end_54} :catch_ef
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_54} :catch_5e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2b .. :try_end_54} :catch_58
    .catchall {:try_start_2b .. :try_end_54} :catchall_55

    goto :goto_65

    :catchall_55
    move-exception p1

    goto/16 :goto_108

    :catch_58
    move-exception v0

    move-object v7, v2

    move-object v6, v5

    move-object v9, v6

    goto/16 :goto_df

    :catch_5e
    move-exception v0

    move-object v7, v2

    move-object v6, v5

    move-object v9, v6

    goto/16 :goto_eb

    :cond_64
    move-object v7, v5

    .line 402
    :goto_65
    :try_start_65
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->A()Z

    move-result v9

    if-eqz v9, :cond_82

    .line 403
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->x()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_73} :catch_a3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_65 .. :try_end_73} :catch_a0
    .catch Ljava/lang/ClassCastException; {:try_start_65 .. :try_end_73} :catch_7b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_65 .. :try_end_73} :catch_74
    .catchall {:try_start_65 .. :try_end_73} :catchall_55

    goto :goto_83

    :catch_74
    move-exception v0

    move-object v6, v5

    move-object v9, v6

    :goto_77
    move-object v5, v7

    :goto_78
    move-object v7, v2

    goto/16 :goto_df

    :catch_7b
    move-exception v0

    move-object v6, v5

    move-object v9, v6

    :goto_7e
    move-object v5, v7

    :goto_7f
    move-object v7, v2

    goto/16 :goto_eb

    :cond_82
    move-object v9, v5

    .line 405
    :goto_83
    :try_start_83
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->z()Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 406
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->w()Ljava/lang/String;

    move-result-object v5
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_83 .. :try_end_8d} :catch_9b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_83 .. :try_end_8d} :catch_96
    .catch Ljava/lang/ClassCastException; {:try_start_83 .. :try_end_8d} :catch_93
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_83 .. :try_end_8d} :catch_90
    .catchall {:try_start_83 .. :try_end_8d} :catchall_55

    :cond_8d
    move-object v6, v5

    move-object v5, v7

    goto :goto_a8

    :catch_90
    move-exception v0

    move-object v6, v5

    goto :goto_77

    :catch_93
    move-exception v0

    move-object v6, v5

    goto :goto_7e

    :catch_96
    move-object v6, v5

    :goto_97
    move-object v5, v7

    :catch_98
    move-object v7, v2

    goto/16 :goto_f2

    :catch_9b
    move-object v6, v5

    :goto_9c
    move-object v5, v7

    :catch_9d
    move-object v7, v2

    goto/16 :goto_fd

    :catch_a0
    move-object v6, v5

    move-object v9, v6

    goto :goto_97

    :catch_a3
    move-object v6, v5

    move-object v9, v6

    goto :goto_9c

    :cond_a6
    move-object v6, v5

    move-object v9, v6

    .line 410
    :goto_a8
    :try_start_a8
    invoke-virtual {v0}, Lads_mobile_sdk/fh;->w()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x1

    if-le v7, v10, :cond_c8

    .line 411
    invoke-virtual {v0}, Lads_mobile_sdk/fh;->w()Ljava/lang/String;

    move-result-object v7

    const-string v10, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c8

    .line 412
    invoke-virtual {v0}, Lads_mobile_sdk/fh;->w()Ljava/lang/String;

    move-result-object v7
    :try_end_c3
    .catch Ljava/lang/InterruptedException; {:try_start_a8 .. :try_end_c3} :catch_9d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a8 .. :try_end_c3} :catch_98
    .catch Ljava/lang/ClassCastException; {:try_start_a8 .. :try_end_c3} :catch_c6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a8 .. :try_end_c3} :catch_c4
    .catchall {:try_start_a8 .. :try_end_c3} :catchall_55

    goto :goto_c9

    :catch_c4
    move-exception v0

    goto :goto_78

    :catch_c6
    move-exception v0

    goto :goto_7f

    :cond_c8
    move-object v7, v2

    .line 414
    :goto_c9
    :try_start_c9
    invoke-virtual {v0}, Lads_mobile_sdk/fh;->A()Z

    move-result v10

    if-eqz v10, :cond_db

    .line 415
    invoke-virtual {v0}, Lads_mobile_sdk/fh;->v()J

    move-result-wide v3
    :try_end_d3
    .catch Ljava/lang/InterruptedException; {:try_start_c9 .. :try_end_d3} :catch_fd
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c9 .. :try_end_d3} :catch_f2
    .catch Ljava/lang/ClassCastException; {:try_start_c9 .. :try_end_d3} :catch_d6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c9 .. :try_end_d3} :catch_d4
    .catchall {:try_start_c9 .. :try_end_d3} :catchall_55

    goto :goto_db

    :catch_d4
    move-exception v0

    goto :goto_df

    :catch_d6
    move-exception v0

    goto :goto_eb

    :cond_d8
    move-object v7, v2

    move-object v6, v5

    move-object v9, v6

    .line 428
    :cond_db
    :goto_db
    invoke-virtual {v8}, Lads_mobile_sdk/qr3;->a()V

    goto :goto_10f

    .line 429
    :goto_df
    :try_start_df
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    if-nez v10, :cond_e6

    goto :goto_e7

    :cond_e6
    move-object v0, v10

    .line 430
    :goto_e7
    invoke-virtual {v8, v0}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    goto :goto_104

    .line 433
    :goto_eb
    invoke-virtual {v8, v0}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    goto :goto_104

    :catch_ef
    move-object v7, v2

    move-object v6, v5

    move-object v9, v6

    .line 434
    :catch_f2
    :goto_f2
    iget-object v0, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v10, Lads_mobile_sdk/lq0;->n3:Lads_mobile_sdk/lq0;

    invoke-virtual {v0, v10}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    goto :goto_104

    :catch_fa
    move-object v7, v2

    move-object v6, v5

    move-object v9, v6

    .line 435
    :catch_fd
    :goto_fd
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_104
    .catchall {:try_start_df .. :try_end_104} :catchall_55

    .line 432
    :goto_104
    invoke-virtual {v8}, Lads_mobile_sdk/qr3;->a()V

    goto :goto_10f

    .line 444
    :goto_108
    invoke-virtual {v8}, Lads_mobile_sdk/qr3;->a()V

    .line 445
    throw p1

    :cond_10c
    move-object v7, v2

    move-object v6, v5

    move-object v9, v6

    .line 449
    :goto_10f
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_169

    if-eqz v1, :cond_169

    .line 451
    iget-object v0, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v2, Lads_mobile_sdk/lq0;->k3:Lads_mobile_sdk/lq0;

    .line 452
    new-instance v8, Lads_mobile_sdk/qr3;

    .line 453
    iget-object v10, v0, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    .line 454
    iget-object v0, v0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v8, v2, v10, v0}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V

    .line 455
    :try_start_124
    invoke-virtual {v8}, Lads_mobile_sdk/qr3;->b()V

    .line 456
    iget-wide v10, p0, Lads_mobile_sdk/mf3;->k:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v10, v11, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1
    :try_end_135
    .catch Ljava/lang/InterruptedException; {:try_start_124 .. :try_end_135} :catch_15a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_124 .. :try_end_135} :catch_152
    .catch Ljava/lang/ClassCastException; {:try_start_124 .. :try_end_135} :catch_140
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_124 .. :try_end_135} :catch_13e
    .catchall {:try_start_124 .. :try_end_135} :catchall_13c

    if-nez v1, :cond_138

    move-object v7, v0

    .line 470
    :cond_138
    invoke-virtual {v8}, Lads_mobile_sdk/qr3;->a()V

    goto :goto_169

    :catchall_13c
    move-exception p1

    goto :goto_165

    :catch_13e
    move-exception v0

    goto :goto_142

    :catch_140
    move-exception v0

    goto :goto_14e

    .line 471
    :goto_142
    :try_start_142
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_149

    goto :goto_14a

    :cond_149
    move-object v0, v1

    .line 472
    :goto_14a
    invoke-virtual {v8, v0}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    goto :goto_161

    .line 475
    :goto_14e
    invoke-virtual {v8, v0}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    goto :goto_161

    .line 476
    :catch_152
    iget-object v0, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->o3:Lads_mobile_sdk/lq0;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    goto :goto_161

    .line 477
    :catch_15a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_161
    .catchall {:try_start_142 .. :try_end_161} :catchall_13c

    .line 474
    :goto_161
    invoke-virtual {v8}, Lads_mobile_sdk/qr3;->a()V

    goto :goto_169

    .line 486
    :goto_165
    invoke-virtual {v8}, Lads_mobile_sdk/qr3;->a()V

    .line 487
    throw p1

    .line 491
    :cond_169
    :goto_169
    const-string v0, "int"

    invoke-interface {p1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_175

    .line 493
    const-string v0, "att"

    invoke-interface {p1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_175
    if-eqz v9, :cond_17c

    .line 496
    const-string v0, "attts"

    invoke-interface {p1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17c
    if-eqz v6, :cond_183

    .line 499
    const-string v0, "attkid"

    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_183
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "gv"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map;Landroid/content/Context;)V
    .registers 6

    .line 2140
    iget-object v0, p0, Lads_mobile_sdk/mf3;->g:Lads_mobile_sdk/hl3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2142
    iget-object v0, v0, Lads_mobile_sdk/hl3;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/bt3;

    .line 2143
    invoke-interface {v2, v1}, Lads_mobile_sdk/bt3;->a(Ljava/util/HashMap;)V

    goto :goto_10

    .line 2144
    :cond_20
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2145
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mf3;->a(Ljava/util/Map;)V

    .line 2146
    const-string v0, "f"

    const-string v1, "q"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    const-string v0, "ctx"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 9

    .line 1840
    iget-object v0, p0, Lads_mobile_sdk/mf3;->g:Lads_mobile_sdk/hl3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1841
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1842
    iget-object v0, v0, Lads_mobile_sdk/hl3;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/bt3;

    .line 1843
    invoke-interface {v2, v1}, Lads_mobile_sdk/bt3;->b(Ljava/util/HashMap;)V

    goto :goto_10

    .line 1844
    :cond_20
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1845
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mf3;->a(Ljava/util/Map;)V

    .line 1846
    const-string v0, "f"

    const-string v1, "c"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    const-string v0, "ctx"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    const-string p2, "view"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    const-string p2, "act"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    const-string p2, "bds"

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 11

    .line 183
    new-instance v0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda3;-><init>(Lads_mobile_sdk/mf3;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V

    iget-object p1, v1, Lads_mobile_sdk/mf3;->f:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 874
    iget-boolean v0, p0, Lads_mobile_sdk/mf3;->m:Z

    if-eqz v0, :cond_9

    .line 875
    invoke-virtual {p0}, Lads_mobile_sdk/mf3;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 877
    :cond_9
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    .line 316
    iget-object v0, p0, Lads_mobile_sdk/mf3;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/mf3;->p:Lads_mobile_sdk/lf3;

    if-eqz v1, :cond_d

    .line 319
    iget-object v1, v1, Lads_mobile_sdk/lf3;->d:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    goto :goto_11

    .line 321
    :cond_d
    const-string v1, "3.975916745.-1"

    monitor-exit v0

    return-object v1

    .line 323
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw v1
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 186
    iget-object v1, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v2, Lads_mobile_sdk/lq0;->i3:Lads_mobile_sdk/lq0;

    new-instance v3, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v0, p1}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda6;-><init>(Lads_mobile_sdk/mf3;Ljava/util/Map;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;Ljava/lang/Runnable;)V

    .line 195
    invoke-virtual {p0, v0}, Lads_mobile_sdk/mf3;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-object p1
.end method

.method public final synthetic b([B)Ljava/lang/Void;
    .registers 4

    .line 1119
    iget-object v0, p0, Lads_mobile_sdk/mf3;->b:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/iy3;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lads_mobile_sdk/mf3;->a(Lads_mobile_sdk/iy3;[BZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Landroid/view/InputEvent;)V
    .registers 8

    .line 537
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/mf3;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Lads_mobile_sdk/my3; {:try_start_0 .. :try_end_3} :catch_26
    .catch Lads_mobile_sdk/lp1; {:try_start_0 .. :try_end_3} :catch_23

    .line 538
    :try_start_3
    iget-object v0, p0, Lads_mobile_sdk/mf3;->p:Lads_mobile_sdk/lf3;

    if-eqz v0, :cond_18

    .line 540
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 541
    const-string v3, "evt"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    invoke-virtual {v0, v2}, Lads_mobile_sdk/lf3;->b(Ljava/util/HashMap;)V

    goto :goto_1f

    :catchall_15
    move-exception v0

    move-object p1, v0

    goto :goto_21

    .line 544
    :cond_18
    iget-object p1, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->h3:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    .line 546
    :goto_1f
    monitor-exit v1

    return-void

    .line 547
    :goto_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_15

    :try_start_22
    throw p1
    :try_end_23
    .catch Lads_mobile_sdk/my3; {:try_start_22 .. :try_end_23} :catch_26
    .catch Lads_mobile_sdk/lp1; {:try_start_22 .. :try_end_23} :catch_23

    :catch_23
    move-exception v0

    :goto_24
    move-object p1, v0

    goto :goto_28

    :catch_26
    move-exception v0

    goto :goto_24

    :goto_28
    move-object v4, p1

    .line 549
    iget-object p1, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->b:Lads_mobile_sdk/lq0;

    .line 550
    iget-object p1, p1, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    .line 551
    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/st1;

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    const/16 v1, 0x4e87

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 9

    .line 862
    iget-object v0, p0, Lads_mobile_sdk/mf3;->g:Lads_mobile_sdk/hl3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 863
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 864
    iget-object v0, v0, Lads_mobile_sdk/hl3;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/bt3;

    .line 865
    invoke-interface {v2, v1, p2, p3}, Lads_mobile_sdk/bt3;->a(Ljava/util/HashMap;Landroid/content/Context;Landroid/view/View;)V

    goto :goto_10

    .line 866
    :cond_20
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 867
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mf3;->a(Ljava/util/Map;)V

    .line 868
    const-string v0, "f"

    const-string v1, "v"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    const-string v0, "ctx"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    const-string p2, "view"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    const-string p2, "act"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    const-string p2, "bds"

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()Lads_mobile_sdk/kb;
    .registers 2

    .line 378
    sget-object v0, Lads_mobile_sdk/kb;->e:Lads_mobile_sdk/kb;

    return-object v0
.end method

.method public final synthetic c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 377
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mf3;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 14

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v7, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v8, Lads_mobile_sdk/lq0;->i3:Lads_mobile_sdk/lq0;

    new-instance v0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;-><init>(Lads_mobile_sdk/mf3;Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {p0, v2}, Lads_mobile_sdk/mf3;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    return-object p1
.end method

.method public final synthetic c(Landroid/view/InputEvent;)V
    .registers 4

    .line 216
    :try_start_0
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mf3;->b(Landroid/view/InputEvent;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_d

    .line 218
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_c

    .line 219
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    .line 220
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_17

    .line 221
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 223
    :cond_17
    throw v0
.end method

.method public final d()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4

    .line 273
    iget-object v0, p0, Lads_mobile_sdk/mf3;->d:Lads_mobile_sdk/lh2;

    .line 274
    invoke-interface {v0}, Lads_mobile_sdk/lh2;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda10;-><init>(Lads_mobile_sdk/mf3;)V

    .line 279
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 280
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 14

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v7, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v8, Lads_mobile_sdk/lq0;->i3:Lads_mobile_sdk/lq0;

    new-instance v0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;-><init>(Lads_mobile_sdk/mf3;Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {p0, v2}, Lads_mobile_sdk/mf3;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    return-object p1
.end method

.method public final synthetic e(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 5

    .line 184
    invoke-virtual {p0, p1, p2, p3, p4}, Lads_mobile_sdk/mf3;->c(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic f(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 5

    .line 169
    invoke-virtual {p0, p1, p2, p3, p4}, Lads_mobile_sdk/mf3;->d(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.mf3$$ExternalSyntheticLambda0 (ads_mobile_sdk.mf3$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/mf3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/mf3;

.field public final synthetic f$1:Landroid/view/InputEvent;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/mf3;Landroid/view/InputEvent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/mf3;

    iput-object p2, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda0;->f$1:Landroid/view/InputEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/mf3;

    iget-object v1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda0;->f$1:Landroid/view/InputEvent;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/mf3;->c(Landroid/view/InputEvent;)V

    return-void
.end method

###### Class ads_mobile_sdk.mf3$$ExternalSyntheticLambda1 (ads_mobile_sdk.mf3$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/mf3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/mf3;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/mf3;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/mf3;

    iput-object p2, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    iput-object p5, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda1;->f$4:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/mf3;

    iget-object v1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    iget-object v4, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda1;->f$4:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lads_mobile_sdk/mf3;->f(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.mf3$$ExternalSyntheticLambda10 (ads_mobile_sdk.mf3$$ExternalSyntheticLambda10)
.class public final synthetic Lads_mobile_sdk/mf3$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/mf3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/mf3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda10;->f$0:Lads_mobile_sdk/mf3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda10;->f$0:Lads_mobile_sdk/mf3;

    check-cast p1, [B

    invoke-virtual {v0, p1}, Lads_mobile_sdk/mf3;->a([B)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.mf3$$ExternalSyntheticLambda11 (ads_mobile_sdk.mf3$$ExternalSyntheticLambda11)
.class public final synthetic Lads_mobile_sdk/mf3$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/mf3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/mf3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda11;->f$0:Lads_mobile_sdk/mf3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda11;->f$0:Lads_mobile_sdk/mf3;

    check-cast p1, [B

    invoke-virtual {v0, p1}, Lads_mobile_sdk/mf3;->b([B)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.mf3$$ExternalSyntheticLambda2 (ads_mobile_sdk.mf3$$ExternalSyntheticLambda2)
.class public final synthetic Lads_mobile_sdk/mf3$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/mf3;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/mf3;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/mf3;

    iput-object p2, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/mf3;

    iget-object v1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/mf3;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.mf3$$ExternalSyntheticLambda3 (ads_mobile_sdk.mf3$$ExternalSyntheticLambda3)
.class public final synthetic Lads_mobile_sdk/mf3$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/mf3;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/mf3;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda3;->f$0:Lads_mobile_sdk/mf3;

    iput-object p2, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda3;->f$3:Landroid/view/View;

    iput-object p5, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda3;->f$4:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda3;->f$0:Lads_mobile_sdk/mf3;

    iget-object v1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda3;->f$3:Landroid/view/View;

    iget-object v4, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda3;->f$4:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lads_mobile_sdk/mf3;->e(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.mf3$$ExternalSyntheticLambda4 (ads_mobile_sdk.mf3$$ExternalSyntheticLambda4)
.class public final synthetic Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/mf3;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Landroid/app/Activity;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/mf3;Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;->f$0:Lads_mobile_sdk/mf3;

    iput-object p2, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;->f$3:Landroid/view/View;

    iput-object p5, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;->f$4:Landroid/app/Activity;

    iput-object p6, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;->f$0:Lads_mobile_sdk/mf3;

    iget-object v1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;->f$1:Ljava/util/Map;

    iget-object v2, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;->f$3:Landroid/view/View;

    iget-object v4, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;->f$4:Landroid/app/Activity;

    iget-object v5, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;->f$5:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/mf3;->b(Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

###### Class ads_mobile_sdk.mf3$$ExternalSyntheticLambda5 (ads_mobile_sdk.mf3$$ExternalSyntheticLambda5)
.class public final synthetic Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/mf3;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Landroid/app/Activity;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/mf3;Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;->f$0:Lads_mobile_sdk/mf3;

    iput-object p2, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;->f$3:Landroid/view/View;

    iput-object p5, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;->f$4:Landroid/app/Activity;

    iput-object p6, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;->f$0:Lads_mobile_sdk/mf3;

    iget-object v1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;->f$1:Ljava/util/Map;

    iget-object v2, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;->f$3:Landroid/view/View;

    iget-object v4, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;->f$4:Landroid/app/Activity;

    iget-object v5, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;->f$5:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/mf3;->a(Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

###### Class ads_mobile_sdk.mf3$$ExternalSyntheticLambda6 (ads_mobile_sdk.mf3$$ExternalSyntheticLambda6)
.class public final synthetic Lads_mobile_sdk/mf3$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/mf3;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/mf3;Ljava/util/Map;Landroid/content/Context;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda6;->f$0:Lads_mobile_sdk/mf3;

    iput-object p2, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda6;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda6;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda6;->f$0:Lads_mobile_sdk/mf3;

    iget-object v1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda6;->f$1:Ljava/util/Map;

    iget-object v2, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda6;->f$2:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/mf3;->a(Ljava/util/Map;Landroid/content/Context;)V

    return-void
.end method

###### Class ads_mobile_sdk.mf3$$ExternalSyntheticLambda7 (ads_mobile_sdk.mf3$$ExternalSyntheticLambda7)
.class public final synthetic Lads_mobile_sdk/mf3$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lads_mobile_sdk/mf3;->a(Ljava/lang/Throwable;)Lads_mobile_sdk/iv2;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.mf3$$ExternalSyntheticLambda8 (ads_mobile_sdk.mf3$$ExternalSyntheticLambda8)
.class public final synthetic Lads_mobile_sdk/mf3$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/mf3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/mf3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda8;->f$0:Lads_mobile_sdk/mf3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda8;->f$0:Lads_mobile_sdk/mf3;

    check-cast p1, Lads_mobile_sdk/iv2;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/mf3;->a(Lads_mobile_sdk/iv2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.mf3$$ExternalSyntheticLambda9 (ads_mobile_sdk.mf3$$ExternalSyntheticLambda9)
.class public final synthetic Lads_mobile_sdk/mf3$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/mf3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/mf3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda9;->f$0:Lads_mobile_sdk/mf3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda9;->f$0:Lads_mobile_sdk/mf3;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/mf3;->b(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
