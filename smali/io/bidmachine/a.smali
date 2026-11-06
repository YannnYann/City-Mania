###### Class io.bidmachine.C4102a (io.bidmachine.a)
.class public Lio/bidmachine/a;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# static fields
.field public static volatile a:Lio/bidmachine/a;


# direct methods
.method public constructor <init>(I)V
    .registers 9

    .line 1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x0

    move v2, p1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public static a()Lio/bidmachine/a;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/a;->a:Lio/bidmachine/a;

    if-nez v0, :cond_23

    .line 2
    const-class v0, Lio/bidmachine/a;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lio/bidmachine/a;->a:Lio/bidmachine/a;

    if-nez v1, :cond_1f

    .line 4
    new-instance v1, Lio/bidmachine/a;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Lio/bidmachine/a;-><init>(I)V

    sput-object v1, Lio/bidmachine/a;->a:Lio/bidmachine/a;

    goto :goto_1f

    :catchall_1d
    move-exception v1

    goto :goto_21

    .line 6
    :cond_1f
    :goto_1f
    monitor-exit v0

    goto :goto_23

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_1d

    throw v1

    .line 8
    :cond_23
    :goto_23
    sget-object v0, Lio/bidmachine/a;->a:Lio/bidmachine/a;

    return-object v0
.end method
