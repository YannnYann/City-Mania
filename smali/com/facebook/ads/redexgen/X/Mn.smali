###### Class com.facebook.ads.redexgen.X.AbstractRunnableFutureC1772Mn (com.facebook.ads.redexgen.X.Mn)
.class public abstract Lcom/facebook/ads/redexgen/X/Mn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public A00:Ljava/lang/Exception;

.field public A01:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public A02:Ljava/lang/Thread;

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/Lx;

.field public final A05:Lcom/facebook/ads/redexgen/X/Lx;

.field public final A06:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55170
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Mn;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55171
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lx;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lx;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mn;->A05:Lcom/facebook/ads/redexgen/X/Lx;

    .line 55172
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lx;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lx;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mn;->A04:Lcom/facebook/ads/redexgen/X/Lx;

    .line 55173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mn;->A06:Ljava/lang/Object;

    .line 55174
    return-void
.end method

.method private A00()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 55175
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Mn;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mn;->A03:Z

    if-nez v0, :cond_13

    .line 55176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mn;->A00:Ljava/lang/Exception;

    if-nez v0, :cond_b

    .line 55177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mn;->A01:Ljava/lang/Object;

    return-object v0

    .line 55178
    :cond_b
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mn;->A00:Ljava/lang/Exception;

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 55179
    :cond_13
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public abstract A01()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final A02()V
    .registers 2

    .line 55180
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Mn;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mn;->A04:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lx;->A01()V

    .line 55181
    return-void
.end method

.method public abstract A03()V
.end method

.method public final cancel(Z)Z
    .registers 5

    .line 55182
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Mn;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Mn;->A06:Ljava/lang/Object;

    monitor-enter v2

    .line 55183
    :try_start_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mn;->A03:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mn;->A04:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lx;->A03()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 55184
    .end local v2
    :cond_f
    monitor-exit v2

    const/4 v0, 0x0

    return v0

    .line 55185
    :cond_12
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Mn;->A03:Z

    .line 55186
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mn;->A03()V

    .line 55187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mn;->A02:Ljava/lang/Thread;

    .line 55188
    .local v2, "workThread":Ljava/lang/Thread;
    if-eqz v0, :cond_22

    .line 55189
    if-eqz p1, :cond_2c

    .line 55190
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2c

    .line 55191
    :cond_22
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mn;->A05:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lx;->A04()Z

    .line 55192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mn;->A04:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lx;->A04()Z

    .line 55193
    :cond_2c
    :goto_2c
    monitor-exit v2

    return v1

    .line 55194
    :catchall_2e
    move-exception v0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 55195
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Mn;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mn;->A04:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lx;->A00()V

    .line 55196
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mn;->A00()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 55197
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Mn;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 55198
    .local v0, "timeoutMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mn;->A04:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Lx;->A05(J)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 55199
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mn;->A00()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 55200
    :cond_13
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
.end method

.method public final isCancelled()Z
    .registers 2

    .line 55201
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Mn;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mn;->A03:Z

    return v0
.end method

.method public final isDone()Z
    .registers 2

    .line 55202
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Mn;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mn;->A04:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lx;->A03()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .registers 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oi;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v4, p0

    .line 55203
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Mn;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    :try_start_8
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Mn;->A06:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_69

    .line 55204
    :try_start_b
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Mn;->A03:Z

    if-eqz v0, :cond_14
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_66

    .line 55205
    :try_start_f
    monitor-exit v1

    goto :goto_13
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_11

    .line 55206
    :catchall_11
    move-exception v0

    goto :goto_67

    .line 55207
    :goto_13
    return-void

    .line 55208
    :cond_14
    :try_start_14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Mn;->A02:Ljava/lang/Thread;

    .line 55209
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_66

    .line 55210
    :try_start_1b
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Mn;->A05:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lx;->A04()Z

    .line 55211
    const/4 v3, 0x0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_69

    :try_start_21
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Mn;->A01()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Mn;->A01:Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_27} :catch_3b
    .catchall {:try_start_21 .. :try_end_27} :catchall_53

    .line 55212
    :try_start_27
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Mn;->A06:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_69

    .line 55213
    :try_start_2a
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Mn;->A04:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lx;->A04()Z

    .line 55214
    iput-object v3, v4, Lcom/facebook/ads/redexgen/X/Mn;->A02:Ljava/lang/Thread;

    .line 55215
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 55216
    monitor-exit v1

    goto :goto_4c
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v0

    :goto_37
    :try_start_37
    monitor-exit v1

    goto :goto_52
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_39

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Mn;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    :catchall_39
    move-exception v0

    goto :goto_37

    .line 55217
    :catch_3b
    move-exception v0

    .line 55218
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3c
    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Mn;->A00:Ljava/lang/Exception;
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_53

    .line 55219
    .end local v2    # "e":Ljava/lang/Exception;
    :try_start_3e
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Mn;->A06:Ljava/lang/Object;

    monitor-enter v1
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_69

    .line 55220
    :try_start_41
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Mn;->A04:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lx;->A04()Z

    .line 55221
    iput-object v3, v4, Lcom/facebook/ads/redexgen/X/Mn;->A02:Ljava/lang/Thread;

    .line 55222
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 55223
    monitor-exit v1

    .line 55224
    :goto_4c
    return-void
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_4d

    .line 55225
    .restart local v0    # "this":Lcom/facebook/ads/redexgen/X/Mn;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    :catchall_4d
    move-exception v0

    :goto_4e
    :try_start_4e
    monitor-exit v1

    goto :goto_52
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_50

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Mn;, "Lcom/facebook/ads/androidx/media3/common/util/RunnableFutureTask<TR;TE;>;"
    :catchall_50
    move-exception v0

    goto :goto_4e

    :goto_52
    :try_start_52
    throw v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_69

    .line 55226
    :catchall_53
    move-exception v2

    :try_start_54
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Mn;->A06:Ljava/lang/Object;

    monitor-enter v1
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_69

    .line 55227
    :try_start_57
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Mn;->A04:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lx;->A04()Z

    .line 55228
    iput-object v3, v4, Lcom/facebook/ads/redexgen/X/Mn;->A02:Ljava/lang/Thread;

    .line 55229
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 55230
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_57 .. :try_end_62} :catchall_63

    .line 55231
    :try_start_62
    throw v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_69

    .line 55232
    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    throw v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_69

    .line 55233
    :catchall_66
    move-exception v0

    :goto_67
    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    :try_start_68
    throw v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    .line 55234
    :catchall_69
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
