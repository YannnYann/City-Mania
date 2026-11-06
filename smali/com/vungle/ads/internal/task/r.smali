###### Class com.vungle.ads.internal.task.r (com.vungle.ads.internal.task.r)
.class public final Lcom/vungle/ads/internal/task/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/task/g;


# static fields
.field public static final g:Landroid/os/Handler;

.field public static final h:Ljava/lang/String;


# instance fields
.field public final a:Lcom/vungle/ads/internal/task/d;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lcom/vungle/ads/internal/task/m;

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final e:Lcom/vungle/ads/internal/task/q;

.field public f:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vungle/ads/internal/task/r;->g:Landroid/os/Handler;

    .line 2
    const-class v0, Lcom/vungle/ads/internal/task/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/task/r;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/task/d;Lcom/vungle/ads/internal/executor/j;Lcom/vungle/ads/internal/task/h;)V
    .registers 5

    const-string v0, "creator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/task/r;->a:Lcom/vungle/ads/internal/task/d;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/task/r;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/vungle/ads/internal/task/r;->c:Lcom/vungle/ads/internal/task/m;

    const-wide p1, 0x7fffffffffffffffL

    .line 9
    iput-wide p1, p0, Lcom/vungle/ads/internal/task/r;->f:J

    .line 85
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/task/r;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 86
    new-instance p1, Lcom/vungle/ads/internal/task/q;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/task/q;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/task/r;->e:Lcom/vungle/ads/internal/task/q;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 13

    monitor-enter p0

    .line 18
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 20
    iget-object v2, p0, Lcom/vungle/ads/internal/task/r;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide v3, 0x7fffffffffffffffL

    move-wide v5, v3

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vungle/ads/internal/task/p;

    .line 21
    iget-wide v8, v7, Lcom/vungle/ads/internal/task/p;->a:J

    cmp-long v10, v0, v8

    if-ltz v10, :cond_3d

    .line 22
    iget-object v8, p0, Lcom/vungle/ads/internal/task/r;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    iget-object v7, v7, Lcom/vungle/ads/internal/task/p;->b:Lcom/vungle/ads/internal/task/e;

    if-eqz v7, :cond_11

    .line 24
    iget-object v8, p0, Lcom/vungle/ads/internal/task/r;->b:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/vungle/ads/internal/task/f;

    iget-object v10, p0, Lcom/vungle/ads/internal/task/r;->a:Lcom/vungle/ads/internal/task/d;

    iget-object v11, p0, Lcom/vungle/ads/internal/task/r;->c:Lcom/vungle/ads/internal/task/m;

    invoke-direct {v9, v7, v10, p0, v11}, Lcom/vungle/ads/internal/task/f;-><init>(Lcom/vungle/ads/internal/task/e;Lcom/vungle/ads/internal/task/d;Lcom/vungle/ads/internal/task/g;Lcom/vungle/ads/internal/task/m;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_11

    :catchall_3b
    move-exception v0

    goto :goto_5e

    .line 27
    :cond_3d
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    goto :goto_11

    :cond_42
    cmp-long v0, v5, v3

    if-eqz v0, :cond_5a

    .line 30
    iget-wide v0, p0, Lcom/vungle/ads/internal/task/r;->f:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_5a

    .line 31
    sget-object v0, Lcom/vungle/ads/internal/task/r;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vungle/ads/internal/task/r;->e:Lcom/vungle/ads/internal/task/q;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    iget-object v1, p0, Lcom/vungle/ads/internal/task/r;->e:Lcom/vungle/ads/internal/task/q;

    sget-object v2, Lcom/vungle/ads/internal/task/r;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 34
    :cond_5a
    iput-wide v5, p0, Lcom/vungle/ads/internal/task/r;->f:J
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_3b

    monitor-exit p0

    return-void

    :goto_5e
    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_3b

    throw v0
.end method

.method public final declared-synchronized a(Lcom/vungle/ads/internal/task/e;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v0, "jobInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/vungle/ads/internal/task/e;->a()Lcom/vungle/ads/internal/task/e;

    move-result-object p1

    if-eqz p1, :cond_78

    .line 3
    invoke-virtual {p1}, Lcom/vungle/ads/internal/task/e;->d()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/vungle/ads/internal/task/e;->b()J

    move-result-wide v1

    .line 7
    invoke-virtual {p1}, Lcom/vungle/ads/internal/task/e;->g()V

    .line 8
    invoke-virtual {p1}, Lcom/vungle/ads/internal/task/e;->f()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 9
    iget-object v3, p0, Lcom/vungle/ads/internal/task/r;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/ads/internal/task/p;

    .line 10
    invoke-virtual {v4}, Lcom/vungle/ads/internal/task/p;->a()Lcom/vungle/ads/internal/task/e;

    move-result-object v5

    if-eqz v5, :cond_3c

    invoke-virtual {v5}, Lcom/vungle/ads/internal/task/e;->d()Ljava/lang/String;

    move-result-object v5

    goto :goto_3d

    :catchall_3a
    move-exception p1

    goto :goto_7a

    :cond_3c
    const/4 v5, 0x0

    :goto_3d
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 11
    sget-boolean v5, Lcom/vungle/ads/internal/util/v;->a:Z

    sget-object v5, Lcom/vungle/ads/internal/task/r;->h:Ljava/lang/String;

    const-string v6, "TAG"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replacing pending job with new "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v5, p0, Lcom/vungle/ads/internal/task/r;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_23

    .line 16
    :cond_66
    iget-object v0, p0, Lcom/vungle/ads/internal/task/r;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Lcom/vungle/ads/internal/task/p;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v1

    invoke-direct {v3, v4, v5, p1}, Lcom/vungle/ads/internal/task/p;-><init>(JLcom/vungle/ads/internal/task/e;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p0}, Lcom/vungle/ads/internal/task/r;->a()V
    :try_end_78
    .catchall {:try_start_1 .. :try_end_78} :catchall_3a

    :cond_78
    monitor-exit p0

    return-void

    :goto_7a
    :try_start_7a
    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_3a

    throw p1
.end method
