###### Class ads_mobile_sdk.ls1 (ads_mobile_sdk.ls1)
.class public final Lads_mobile_sdk/ls1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ja3;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lads_mobile_sdk/tx;

.field public final c:Ljava/util/PriorityQueue;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lads_mobile_sdk/tx;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/ls1;->c:Ljava/util/PriorityQueue;

    .line 35
    iput-object p1, p0, Lads_mobile_sdk/ls1;->a:Ljava/util/concurrent/Executor;

    .line 36
    iput-object p2, p0, Lads_mobile_sdk/ls1;->b:Lads_mobile_sdk/tx;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    .line 67
    iget-object v0, p0, Lads_mobile_sdk/ls1;->c:Ljava/util/PriorityQueue;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/ls1;->c:Ljava/util/PriorityQueue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 69
    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    goto :goto_5b

    .line 72
    :cond_f
    new-instance v1, Ljava/util/PriorityQueue;

    invoke-direct {v1}, Ljava/util/PriorityQueue;-><init>()V

    .line 73
    iget-object v2, p0, Lads_mobile_sdk/ls1;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 75
    iget-object v4, p0, Lads_mobile_sdk/ls1;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/ia3;

    :goto_25
    if-eqz v4, :cond_41

    .line 78
    iget-wide v5, v4, Lads_mobile_sdk/ia3;->b:J

    cmp-long v5, v5, v2

    if-gtz v5, :cond_41

    .line 80
    invoke-virtual {v1, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v4, p0, Lads_mobile_sdk/ls1;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/ia3;

    .line 83
    iget-object v4, p0, Lads_mobile_sdk/ls1;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/ia3;

    goto :goto_25

    .line 85
    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_d

    .line 88
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_46
    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/ia3;

    .line 91
    :try_start_52
    iget-object v2, p0, Lads_mobile_sdk/ls1;->a:Ljava/util/concurrent/Executor;

    iget-object v1, v1, Lads_mobile_sdk/ia3;->a:Ljava/lang/Runnable;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_59} :catch_46

    goto :goto_46

    :cond_5a
    return-void

    .line 92
    :goto_5b
    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_d

    throw v1
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_c

    .line 137
    iget-object p2, p0, Lads_mobile_sdk/ls1;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 141
    :cond_c
    iget-object v0, p0, Lads_mobile_sdk/ls1;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 143
    new-instance p2, Lads_mobile_sdk/ia3;

    invoke-direct {p2, p1, v0, v1}, Lads_mobile_sdk/ia3;-><init>(Ljava/lang/Runnable;J)V

    .line 146
    iget-object p1, p0, Lads_mobile_sdk/ls1;->c:Ljava/util/PriorityQueue;

    monitor-enter p1

    .line 147
    :try_start_1e
    iget-object p3, p0, Lads_mobile_sdk/ls1;->c:Ljava/util/PriorityQueue;

    invoke-virtual {p3, p2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 148
    monitor-exit p1

    return-void

    :catchall_25
    move-exception p2

    .line 149
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_25

    throw p2
.end method
