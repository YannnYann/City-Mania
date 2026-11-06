###### Class io.bidmachine.rendering.internal.detector.brokencreative.a (io.bidmachine.rendering.internal.detector.brokencreative.a)
.class public final Lio/bidmachine/rendering/internal/detector/brokencreative/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;,
        Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;

.field public final d:Lio/bidmachine/rendering/internal/detector/brokencreative/b;

.field public final e:Lkotlin/Lazy;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/lang/Object;

.field public volatile k:J

.field public l:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;Lio/bidmachine/rendering/internal/detector/brokencreative/b;)V
    .registers 6

    const-string v0, "adElementName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brokenCreativeDetectorParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brokenCreativeDetectorListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->a:I

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c:Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;

    .line 5
    iput-object p4, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->d:Lio/bidmachine/rendering/internal/detector/brokencreative/b;

    .line 6
    sget-object p1, Lio/bidmachine/rendering/internal/detector/brokencreative/a$c;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/a$c;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->e:Lkotlin/Lazy;

    .line 7
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->f:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->j:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/detector/brokencreative/a;Ljava/util/List;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->g()Z

    move-result v0

    if-nez v0, :cond_81

    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->e()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_81

    .line 5
    :cond_12
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_15
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_4c

    if-nez v0, :cond_21

    .line 7
    monitor-exit v1

    return-void

    .line 9
    :cond_21
    :try_start_21
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c:Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->getAlgorithms()Ljava/util/List;

    move-result-object v0

    .line 257
    new-instance v7, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 259
    check-cast v2, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;

    .line 260
    sget-object v3, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/b;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/b;

    invoke-virtual {v3, v2}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/b;->a(Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;)Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;

    move-result-object v2

    .line 509
    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :catchall_4c
    move-exception v0

    move-object p1, v0

    goto :goto_7f

    .line 510
    :cond_4f
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_53
    .catchall {:try_start_21 .. :try_end_53} :catchall_4c

    if-eqz v0, :cond_57

    .line 511
    monitor-exit v1

    return-void

    .line 514
    :cond_57
    :try_start_57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->k:J

    .line 515
    new-instance v2, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    .line 517
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->d()Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 518
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c:Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->getDownscaleFactor()D

    move-result-wide v5

    .line 519
    new-instance v8, Lio/bidmachine/rendering/internal/detector/brokencreative/a$d;

    invoke-direct {v8, p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$d;-><init>(Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;-><init>(Landroid/view/View;Landroid/os/Handler;DLjava/util/List;Lkotlin/jvm/functions/Function1;)V

    iput-object v2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->l:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    .line 527
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->h()V

    .line 528
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7d
    .catchall {:try_start_57 .. :try_end_7d} :catchall_4c

    .line 529
    monitor-exit v1

    return-void

    .line 530
    :goto_7f
    monitor-exit v1

    throw p1

    :cond_81
    :goto_81
    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V
    .registers 5

    .line 762
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 765
    :cond_7
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "BrokenCreativeDetector"

    const-string v2, "Notify detector result: %s"

    invoke-static {v1, v2, v0}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 767
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->d:Lio/bidmachine/rendering/internal/detector/brokencreative/b;

    invoke-interface {v0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/b;->a(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 14

    .line 532
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 722
    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;

    .line 723
    invoke-virtual {v7}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;->getAlgorithmParams()Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;

    move-result-object v8

    invoke-virtual {v8}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;->getWeight()F

    move-result v8

    .line 724
    invoke-virtual {v7}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;->isBroken()Z

    move-result v7

    if-eqz v7, :cond_2b

    float-to-double v9, v8

    add-double/2addr v5, v9

    :cond_2b
    float-to-double v7, v8

    add-double/2addr v3, v7

    goto :goto_f

    :cond_2e
    cmpg-double v0, v3, v1

    if-nez v0, :cond_33

    goto :goto_35

    :cond_33
    div-double v1, v5, v3

    .line 734
    :goto_35
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c:Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->getWeightThreshold()D

    move-result-wide v3

    cmpl-double v0, v1, v3

    const/4 v1, 0x1

    if-ltz v0, :cond_42

    move v0, v1

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    .line 736
    :goto_43
    iget-object v2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c:Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;

    invoke-virtual {v2}, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->isErrorOnly()Z

    move-result v2

    if-eqz v2, :cond_4d

    if-eqz v0, :cond_7c

    .line 737
    :cond_4d
    new-instance v3, Lio/bidmachine/rendering/model/BrokenCreativeEvent;

    .line 738
    sget-object v2, Lio/bidmachine/rendering/internal/detector/brokencreative/c;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/c;

    invoke-virtual {v2, v0}, Lio/bidmachine/rendering/internal/detector/brokencreative/c;->a(Z)D

    move-result-wide v4

    .line 739
    iget v6, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->a:I

    .line 740
    iget-object v7, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->b:Ljava/lang/String;

    .line 741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->k:J

    sub-long/2addr v8, v10

    move-object v10, p1

    .line 742
    invoke-direct/range {v3 .. v10}, Lio/bidmachine/rendering/model/BrokenCreativeEvent;-><init>(DILjava/lang/String;JLjava/util/List;)V

    .line 749
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c:Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->isAllowDuplicate()Z

    move-result p1

    if-nez p1, :cond_74

    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->f:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7c

    .line 750
    :cond_74
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->f:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    invoke-virtual {p0, v3}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->a(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V

    .line 755
    :cond_7c
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c:Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->getStopAfter()Lio/bidmachine/rendering/model/StopDetectorAfter;

    move-result-object p1

    .line 756
    sget-object v2, Lio/bidmachine/rendering/model/StopDetectorAfter;->ValidCreative:Lio/bidmachine/rendering/model/StopDetectorAfter;

    if-ne p1, v2, :cond_88

    if-nez v0, :cond_92

    .line 757
    :cond_88
    sget-object v2, Lio/bidmachine/rendering/model/StopDetectorAfter;->BrokenCreative:Lio/bidmachine/rendering/model/StopDetectorAfter;

    if-ne p1, v2, :cond_8e

    if-eqz v0, :cond_92

    .line 758
    :cond_8e
    sget-object v0, Lio/bidmachine/rendering/model/StopDetectorAfter;->Never:Lio/bidmachine/rendering/model/StopDetectorAfter;

    if-ne p1, v0, :cond_96

    .line 759
    :cond_92
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->h()V

    return-void

    .line 761
    :cond_96
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final a()Z
    .registers 2

    .line 531
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->g()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->e()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->l:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    if-eqz v1, :cond_11

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->d()Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/bidmachine/util/taskmanager/BaseTaskManager;->cancel(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_13

    .line 4
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    .line 5
    :goto_13
    monitor-exit v0

    throw v1
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->i()V

    return-void
.end method

.method public final d()Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final h()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->b()V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->a()Z

    move-result v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_20

    if-nez v1, :cond_e

    .line 4
    monitor-exit v0

    return-void

    .line 6
    :cond_e
    :try_start_e
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->l:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    if-eqz v1, :cond_22

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->d()Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->c:Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;

    invoke-virtual {v3}, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->getTimeout()J

    move-result-wide v3

    invoke-interface {v2, v1, v3, v4}, Lio/bidmachine/util/taskmanager/TaskManager;->scheduleSafely(Ljava/lang/Runnable;J)Z
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_20

    goto :goto_22

    :catchall_20
    move-exception v1

    goto :goto_24

    .line 8
    :cond_22
    :goto_22
    monitor-exit v0

    return-void

    .line 9
    :goto_24
    monitor-exit v0

    throw v1
.end method

.method public final i()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->b()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->l:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    .line 5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 6
    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    .line 7
    monitor-exit v0

    throw v1
.end method

###### Class io.bidmachine.rendering.internal.detector.brokencreative.a.C1182a (io.bidmachine.rendering.internal.detector.brokencreative.a$a)
.class public final Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;
.super Lio/bidmachine/util/taskmanager/CancelableTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/detector/brokencreative/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;

.field public final b:Landroid/graphics/Bitmap;

.field public final c:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)V
    .registers 5

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "image"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lio/bidmachine/util/taskmanager/CancelableTask;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;->b:Landroid/graphics/Bitmap;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;->c:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public runTask()V
    .registers 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->b(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 4
    iget-object v3, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;->c:Lkotlin/jvm/functions/Function2;

    .line 6
    new-instance v4, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 8
    iget-object v5, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;

    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->a()Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;

    move-result-object v5

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    .line 10
    invoke-direct {v4, v2, v5, v6, v7}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;-><init>(ZLio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;J)V

    .line 11
    invoke-interface {v3, p0, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 20
    :cond_28
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;->c:Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.bidmachine.rendering.internal.detector.brokencreative.a.b (io.bidmachine.rendering.internal.detector.brokencreative.a$b)
.class public final Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;
.super Lio/bidmachine/util/taskmanager/CancelableTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/detector/brokencreative/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:D

.field public final c:Ljava/util/List;

.field public final d:Lkotlin/jvm/functions/Function1;

.field public final e:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

.field public final f:Ljava/lang/ref/WeakReference;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Handler;DLjava/util/List;Lkotlin/jvm/functions/Function1;)V
    .registers 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenshotCallbackHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithms"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lio/bidmachine/util/taskmanager/CancelableTask;-><init>()V

    .line 2
    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->a:Landroid/os/Handler;

    .line 3
    iput-wide p3, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->b:D

    .line 4
    iput-object p5, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->c:Ljava/util/List;

    .line 5
    iput-object p6, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->d:Lkotlin/jvm/functions/Function1;

    .line 9
    new-instance p2, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    new-instance p3, Lkotlinx/coroutines/CoroutineName;

    const-string p4, "DetectorTaskManager"

    invoke-direct {p3, p4}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    const/4 p4, 0x0

    const/4 p5, 0x1

    invoke-static {p4, p5, p4}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p4

    invoke-virtual {p3, p4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p3

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    invoke-interface {p3, p4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p3

    invoke-direct {p2, p3}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->e:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    .line 10
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->f:Ljava/lang/ref/WeakReference;

    .line 11
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->g:Ljava/util/List;

    .line 12
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->h:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;)V
    .registers 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->c()V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->a(Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .registers 7

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 6
    invoke-static {p1}, Lio/bidmachine/util/ImageUtilsKt;->recycleSafely(Landroid/graphics/Bitmap;)V

    return-void

    .line 9
    :cond_a
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->b:D

    invoke-static {p1, v0, v1}, Lio/bidmachine/util/ImageUtilsKt;->createDownscaledBitmapSafely(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 11
    invoke-static {p1}, Lio/bidmachine/util/ImageUtilsKt;->recycleSafely(Landroid/graphics/Bitmap;)V

    .line 13
    :cond_19
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->a()Z

    move-result v1

    if-nez v1, :cond_23

    .line 14
    invoke-static {p1}, Lio/bidmachine/util/ImageUtilsKt;->recycleSafely(Landroid/graphics/Bitmap;)V

    return-void

    .line 17
    :cond_23
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->c:Ljava/util/List;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 104
    check-cast v2, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;

    .line 105
    new-instance v3, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;

    new-instance v4, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$b;

    invoke-direct {v4, p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$b;-><init>(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;)V

    invoke-direct {v3, v2, v0, v4}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;-><init>(Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)V

    .line 191
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 192
    :cond_4e
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->g:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 276
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_57
    :goto_57
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;

    .line 277
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->e:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    invoke-interface {v1, v0}, Lio/bidmachine/util/taskmanager/TaskManager;->executeSafely(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 278
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->a(Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;)V

    goto :goto_57

    :cond_6f
    return-void
.end method

.method public final a(Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;)V
    .registers 3

    .line 282
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 283
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    return-void

    .line 286
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->b()V

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;)V
    .registers 4

    if-eqz p2, :cond_7

    .line 279
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_7
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->a(Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;)V

    return-void
.end method

.method public final a()Z
    .registers 2

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/util/taskmanager/CancelableTask;->isCanceled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final b()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->d:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->b()V

    return-void
.end method

.method public runTask()V
    .registers 6

    .line 1
    sget-object v0, Lio/bidmachine/rendering/internal/screenshot/a;->a:Lio/bidmachine/rendering/internal/screenshot/a;

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_d

    return-void

    .line 3
    :cond_d
    iget-object v2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->a:Landroid/os/Handler;

    .line 4
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 5
    new-instance v4, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$a;

    invoke-direct {v4, p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$a;-><init>(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;)V

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Lio/bidmachine/rendering/internal/screenshot/a;->a(Landroid/view/View;Landroid/os/Handler;Landroid/graphics/Bitmap$Config;Lio/bidmachine/rendering/internal/screenshot/b;)V

    return-void
.end method

.method public setCancel(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/util/taskmanager/CancelableTask;->setCancel(Z)V

    if-eqz p1, :cond_22

    .line 4
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->g:Ljava/util/List;

    .line 109
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;

    .line 110
    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->e:Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    invoke-virtual {v1, v0}, Lio/bidmachine/util/taskmanager/BaseTaskManager;->cancel(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 112
    :cond_1d
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_22
    return-void
.end method

###### Class io.bidmachine.rendering.internal.detector.brokencreative.a.b.C1183a (io.bidmachine.rendering.internal.detector.brokencreative.a$b$a)
.class public final Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/screenshot/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$a;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$a;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->a(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$a;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    invoke-static {v0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->a(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;Landroid/graphics/Bitmap;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.detector.brokencreative.a.b.C1184b (io.bidmachine.rendering.internal.detector.brokencreative.a$b$b)
.class public final Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$b;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;)V
    .registers 4

    const-string v0, "algorithmTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$b;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;

    invoke-static {v0, p1, p2}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;->a(Lio/bidmachine/rendering/internal/detector/brokencreative/a$b;Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;

    check-cast p2, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$b$b;->a(Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.detector.brokencreative.a.c (io.bidmachine.rendering.internal.detector.brokencreative.a$c)
.class public final Lio/bidmachine/rendering/internal/detector/brokencreative/a$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/detector/brokencreative/a;-><init>(ILjava/lang/String;Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;Lio/bidmachine/rendering/internal/detector/brokencreative/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/detector/brokencreative/a$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$c;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$c;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$c;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/a$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;
    .registers 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BrokenCreativeDetectorTaskManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    new-instance v0, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;

    invoke-direct {v0, v1}, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$c;->a()Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.detector.brokencreative.a.d (io.bidmachine.rendering.internal.detector.brokencreative.a$d)
.class public final Lio/bidmachine/rendering/internal/detector/brokencreative/a$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/detector/brokencreative/a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/detector/brokencreative/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$d;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$d;->a:Lio/bidmachine/rendering/internal/detector/brokencreative/a;

    invoke-static {v0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->a(Lio/bidmachine/rendering/internal/detector/brokencreative/a;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/a$d;->a(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
