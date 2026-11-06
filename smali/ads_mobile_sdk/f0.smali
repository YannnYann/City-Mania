###### Class ads_mobile_sdk.f0 (ads_mobile_sdk.f0)
.class public final Lads_mobile_sdk/f0;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final c:Landroid/app/Application;

.field public final d:Ljava/lang/ref/WeakReference;

.field public final e:Lkotlinx/coroutines/CoroutineScope;

.field public final f:Lads_mobile_sdk/ex0;

.field public final g:Lads_mobile_sdk/tx;

.field public final h:Ljava/util/LinkedHashSet;

.field public final i:Ljava/util/LinkedHashSet;

.field public j:Lads_mobile_sdk/r;

.field public k:Landroid/app/Activity;

.field public l:Z

.field public m:Lkotlinx/coroutines/Job;

.field public n:Z

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Application;Ljava/lang/ref/WeakReference;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;Lads_mobile_sdk/tx;)V
    .registers 9

    .line 1
    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "application"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firstContextReference"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lads_mobile_sdk/s11;->e:Lads_mobile_sdk/s11;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;I)V

    .line 70
    iput-object p2, p0, Lads_mobile_sdk/f0;->c:Landroid/app/Application;

    .line 71
    iput-object p3, p0, Lads_mobile_sdk/f0;->d:Ljava/lang/ref/WeakReference;

    .line 72
    iput-object p4, p0, Lads_mobile_sdk/f0;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 73
    iput-object p5, p0, Lads_mobile_sdk/f0;->f:Lads_mobile_sdk/ex0;

    .line 74
    iput-object p6, p0, Lads_mobile_sdk/f0;->g:Lads_mobile_sdk/tx;

    .line 90
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lads_mobile_sdk/f0;->h:Ljava/util/LinkedHashSet;

    .line 92
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lads_mobile_sdk/f0;->i:Ljava/util/LinkedHashSet;

    .line 94
    sget-object p2, Lads_mobile_sdk/r;->b:Lads_mobile_sdk/r;

    iput-object p2, p0, Lads_mobile_sdk/f0;->j:Lads_mobile_sdk/r;

    .line 107
    invoke-static {p1}, Lads_mobile_sdk/s;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/f0;->o:Z

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/f0;)Lads_mobile_sdk/q01;
    .registers 9

    .line 1353
    monitor-enter p0

    .line 1354
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/f0;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1a

    .line 1355
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1a

    .line 1356
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lads_mobile_sdk/f0;->k:Landroid/app/Activity;

    .line 1357
    sget-object v0, Lads_mobile_sdk/r;->f:Lads_mobile_sdk/r;

    iput-object v0, p0, Lads_mobile_sdk/f0;->j:Lads_mobile_sdk/r;

    goto :goto_1a

    :catchall_18
    move-exception v0

    goto :goto_81

    .line 1359
    :cond_1a
    :goto_1a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_18

    .line 1360
    monitor-exit p0

    .line 1368
    iget-object v0, p0, Lads_mobile_sdk/f0;->c:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1372
    invoke-virtual {p0}, Lads_mobile_sdk/f0;->i()Z

    move-result v2

    .line 1373
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    if-eqz v2, :cond_2d

    const-string v0, "backgrounded"

    goto :goto_2f

    :cond_2d
    const-string v0, "foregrounded"

    :goto_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App is initially "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    .line 1374
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, p0, Lads_mobile_sdk/f0;->g:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/tx;->b()J

    move-result-wide v0

    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v4

    .line 1375
    monitor-enter p0

    .line 1376
    :try_start_55
    iget-object v0, p0, Lads_mobile_sdk/f0;->h:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lads_mobile_sdk/ox0;

    .line 1377
    iget-object v7, p0, Lads_mobile_sdk/f0;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/e0;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/e0;-><init>(ZLads_mobile_sdk/ox0;JLkotlin/coroutines/Continuation;)V

    invoke-static {v7, v1}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    goto :goto_5b

    :catchall_74
    move-exception v0

    goto :goto_7f

    .line 1385
    :cond_76
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_78
    .catchall {:try_start_55 .. :try_end_78} :catchall_74

    .line 1386
    monitor-exit p0

    .line 1398
    new-instance p0, Lads_mobile_sdk/q01;

    invoke-direct {p0, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 1399
    :goto_7f
    monitor-exit p0

    throw v0

    .line 1400
    :goto_81
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/n;)V
    .registers 4

    .line 1
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lads_mobile_sdk/f0;->i:Ljava/util/LinkedHashSet;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    .line 152
    monitor-exit p0

    throw p1
.end method

.method public final a(Lads_mobile_sdk/ox0;)V
    .registers 3

    .line 1205
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1350
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lads_mobile_sdk/f0;->h:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    .line 1351
    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/app/Activity;Lads_mobile_sdk/r;)V
    .registers 12

    .line 443
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    monitor-enter p0

    .line 617
    :try_start_b
    iget-object v0, p0, Lads_mobile_sdk/f0;->k:Landroid/app/Activity;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 619
    iput-object p2, p0, Lads_mobile_sdk/f0;->j:Lads_mobile_sdk/r;

    goto :goto_26

    :catchall_16
    move-exception v0

    move-object p1, v0

    goto/16 :goto_c1

    .line 620
    :cond_1a
    iget v0, p2, Lads_mobile_sdk/r;->a:I

    .line 621
    iget-object v1, p0, Lads_mobile_sdk/f0;->j:Lads_mobile_sdk/r;

    .line 622
    iget v1, v1, Lads_mobile_sdk/r;->a:I

    if-lt v0, v1, :cond_bf

    .line 623
    iput-object p1, p0, Lads_mobile_sdk/f0;->k:Landroid/app/Activity;

    .line 624
    iput-object p2, p0, Lads_mobile_sdk/f0;->j:Lads_mobile_sdk/r;

    .line 638
    :goto_26
    sget-object p1, Lads_mobile_sdk/r;->h:Lads_mobile_sdk/r;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_8f

    const/4 p1, 0x0

    .line 639
    iput-boolean p1, p0, Lads_mobile_sdk/f0;->l:Z

    .line 640
    invoke-virtual {p0}, Lads_mobile_sdk/f0;->i()Z

    move-result p2

    if-eqz p2, :cond_bb

    .line 641
    const-string p2, "App is now foregrounded"

    .line 642
    invoke-static {p2, v1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 643
    iput-boolean p1, p0, Lads_mobile_sdk/f0;->o:Z

    .line 644
    iget-object p1, p0, Lads_mobile_sdk/f0;->m:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_43

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 645
    :cond_43
    iput-object v1, p0, Lads_mobile_sdk/f0;->m:Lkotlinx/coroutines/Job;

    .line 646
    iput-boolean v0, p0, Lads_mobile_sdk/f0;->n:Z

    .line 647
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object p1, p0, Lads_mobile_sdk/f0;->g:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 648
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 649
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p1, p2, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide p1

    .line 650
    iget-object v0, p0, Lads_mobile_sdk/f0;->h:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/ox0;

    .line 651
    iget-object v3, p0, Lads_mobile_sdk/f0;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lads_mobile_sdk/u;

    invoke-direct {v4, v2, p1, p2, v1}, Lads_mobile_sdk/u;-><init>(Lads_mobile_sdk/ox0;JLkotlin/coroutines/Continuation;)V

    move-object v2, v4

    .line 652
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 653
    const-string v5, "<this>"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "block"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 911
    new-instance v6, Lads_mobile_sdk/ws3;

    invoke-direct {v6, v2, v1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_5e

    .line 912
    :cond_8f
    sget-object p1, Lads_mobile_sdk/r;->c:Lads_mobile_sdk/r;

    if-ne p2, p1, :cond_bb

    .line 913
    iput-boolean v0, p0, Lads_mobile_sdk/f0;->l:Z

    .line 914
    iget-object v2, p0, Lads_mobile_sdk/f0;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/w;

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/w;-><init>(Lads_mobile_sdk/f0;Lkotlin/coroutines/Continuation;)V

    .line 915
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 916
    const-string p2, "<this>"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "block"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1174
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, p1, v1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 1175
    iput-object p1, p0, Lads_mobile_sdk/f0;->m:Lkotlinx/coroutines/Job;

    .line 1189
    :cond_bb
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_bd
    .catchall {:try_start_b .. :try_end_bd} :catchall_16

    .line 1190
    monitor-exit p0

    return-void

    .line 1203
    :cond_bf
    monitor-exit p0

    return-void

    .line 1204
    :goto_c1
    monitor-exit p0

    throw p1
.end method

.method public final a(Lkotlin/jvm/functions/Function1;)V
    .registers 5

    .line 428
    monitor-enter p0

    .line 429
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/f0;->i:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 430
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 431
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/n;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_23

    if-eqz v1, :cond_b

    .line 434
    :try_start_1f
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_25
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_b

    :catchall_23
    move-exception p1

    goto :goto_37

    :catch_25
    move-exception v1

    .line 436
    :try_start_26
    sget-object v2, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    const-string v2, "Failed to dispatch Activity lifecycle event"

    invoke-static {v2, v1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 440
    :cond_2e
    iget-object p1, p0, Lads_mobile_sdk/f0;->i:Ljava/util/LinkedHashSet;

    sget-object v0, Lads_mobile_sdk/t;->a:Lads_mobile_sdk/t;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_23

    .line 441
    monitor-exit p0

    return-void

    .line 442
    :goto_37
    monitor-exit p0

    throw p1
.end method

.method public final b(Lads_mobile_sdk/n;)V
    .registers 5

    .line 1
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    monitor-enter p0

    .line 157
    :try_start_6
    iget-object v0, p0, Lads_mobile_sdk/f0;->i:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 158
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 160
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_2b

    :catchall_29
    move-exception p1

    goto :goto_33

    .line 161
    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 164
    :cond_2f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_29

    .line 165
    monitor-exit p0

    return-void

    .line 166
    :goto_33
    monitor-exit p0

    throw p1
.end method

.method public final g()Landroid/app/Activity;
    .registers 2

    .line 104
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/f0;->k:Landroid/app/Activity;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i()Z
    .registers 2

    .line 101
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lads_mobile_sdk/f0;->o:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lads_mobile_sdk/r;->e:Lads_mobile_sdk/r;

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/f0;->a(Landroid/app/Activity;Lads_mobile_sdk/r;)V

    .line 243
    new-instance v0, Lads_mobile_sdk/x;

    invoke-direct {v0, p1, p2}, Lads_mobile_sdk/x;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lads_mobile_sdk/f0;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_6
    iget-object v0, p0, Lads_mobile_sdk/f0;->k:Landroid/app/Activity;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lads_mobile_sdk/f0;->k:Landroid/app/Activity;

    .line 5
    sget-object v0, Lads_mobile_sdk/r;->b:Lads_mobile_sdk/r;

    iput-object v0, p0, Lads_mobile_sdk/f0;->j:Lads_mobile_sdk/r;

    goto :goto_18

    :catchall_16
    move-exception p1

    goto :goto_24

    .line 7
    :cond_18
    :goto_18
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_16

    .line 8
    monitor-exit p0

    .line 9
    new-instance v0, Lads_mobile_sdk/y;

    invoke-direct {v0, p1}, Lads_mobile_sdk/y;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lads_mobile_sdk/f0;->a(Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 10
    :goto_24
    monitor-exit p0

    throw p1
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    sget-object v0, Lads_mobile_sdk/r;->d:Lads_mobile_sdk/r;

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/f0;->a(Landroid/app/Activity;Lads_mobile_sdk/r;)V

    .line 258
    new-instance v0, Lads_mobile_sdk/z;

    invoke-direct {v0, p1}, Lads_mobile_sdk/z;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lads_mobile_sdk/f0;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lads_mobile_sdk/r;->h:Lads_mobile_sdk/r;

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/f0;->a(Landroid/app/Activity;Lads_mobile_sdk/r;)V

    .line 253
    new-instance v0, Lads_mobile_sdk/a0;

    invoke-direct {v0, p1}, Lads_mobile_sdk/a0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lads_mobile_sdk/f0;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    new-instance v0, Lads_mobile_sdk/b0;

    invoke-direct {v0, p1, p2}, Lads_mobile_sdk/b0;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lads_mobile_sdk/f0;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    sget-object v0, Lads_mobile_sdk/r;->g:Lads_mobile_sdk/r;

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/f0;->a(Landroid/app/Activity;Lads_mobile_sdk/r;)V

    .line 248
    new-instance v0, Lads_mobile_sdk/c0;

    invoke-direct {v0, p1}, Lads_mobile_sdk/c0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lads_mobile_sdk/f0;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lads_mobile_sdk/r;->c:Lads_mobile_sdk/r;

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/f0;->a(Landroid/app/Activity;Lads_mobile_sdk/r;)V

    .line 263
    new-instance v0, Lads_mobile_sdk/d0;

    invoke-direct {v0, p1}, Lads_mobile_sdk/d0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lads_mobile_sdk/f0;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0}, Lads_mobile_sdk/f0;->a(Lads_mobile_sdk/f0;)Lads_mobile_sdk/q01;

    move-result-object p1

    return-object p1
.end method
