###### Class com.facebook.ads.redexgen.X.C1756Lx (com.facebook.ads.redexgen.X.Lx)
.class public final Lcom/facebook/ads/redexgen/X/Lx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/Lu;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53586
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lu;->A00:Lcom/facebook/ads/redexgen/X/Lu;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Lx;-><init>(Lcom/facebook/ads/redexgen/X/Lu;)V

    .line 53587
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lu;)V
    .registers 2

    .line 53588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53589
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Lx;->A01:Lcom/facebook/ads/redexgen/X/Lu;

    .line 53590
    return-void
.end method


# virtual methods
.method public final declared-synchronized A00()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 53591
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lx;->A00:Z

    if-nez v0, :cond_9

    .line 53592
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 53593
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Lx;
    :cond_9
    monitor-exit p0

    return-void

    .line 53594
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A01()V
    .registers 3

    monitor-enter p0

    .line 53595
    const/4 v1, 0x0

    .line 53596
    .local v0, "wasInterrupted":Z
    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lx;->A00:Z

    if-nez v0, :cond_c
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_17

    .line 53597
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_2
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_a} :catch_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_17

    .line 53598
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Lx;
    .local v1, "e":Ljava/lang/InterruptedException;
    :catch_a
    const/4 v1, 0x1

    .line 53599
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 53600
    :cond_c
    if-eqz v1, :cond_15

    .line 53601
    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_17

    .line 53602
    :cond_15
    monitor-exit p0

    return-void

    .line 53603
    .end local v0    # "wasInterrupted":Z
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02()Z
    .registers 3

    monitor-enter p0

    .line 53604
    :try_start_1
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Lx;->A00:Z

    .line 53605
    .local v0, "wasOpen":Z
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lx;->A00:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 53606
    monitor-exit p0

    return v1

    .line 53607
    .end local v0    # "wasOpen":Z
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Lx;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A03()Z
    .registers 2

    monitor-enter p0

    .line 53608
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lx;->A00:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Lx;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A04()Z
    .registers 2

    monitor-enter p0

    .line 53609
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lx;->A00:Z

    if-eqz v0, :cond_8
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_10

    .line 53610
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 53611
    :cond_8
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lx;->A00:Z

    .line 53612
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 53613
    monitor-exit p0

    return v0

    .line 53614
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Lx;
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A05(J)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 53615
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-gtz v0, :cond_b

    .line 53616
    :try_start_7
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lx;->A00:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_33

    monitor-exit p0

    return v0

    .line 53617
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Lx;
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lx;->A01:Lcom/facebook/ads/redexgen/X/Lu;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lu;->A6s()J

    move-result-wide v0

    .line 53618
    .local v0, "nowMs":J
    add-long v4, v0, p1

    .line 53619
    .local v2, "endMs":J
    cmp-long v2, v4, v0

    if-gez v2, :cond_1d

    .line 53620
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lx;->A00()V

    .line 53621
    :cond_1a
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lx;->A00:Z

    goto :goto_31

    .line 53622
    :cond_1d
    :goto_1d
    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Lx;->A00:Z

    if-nez v2, :cond_1a

    cmp-long v2, v0, v4

    if-gez v2, :cond_1a

    .line 53623
    sub-long v2, v4, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 53624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lx;->A01:Lcom/facebook/ads/redexgen/X/Lu;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lu;->A6s()J

    move-result-wide v0

    goto :goto_1d
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_33

    .line 53625
    :goto_31
    monitor-exit p0

    return v0

    .line 53626
    .end local v0    # "nowMs":J
    .end local v2    # "endMs":J
    .end local p1    # null:J
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method
