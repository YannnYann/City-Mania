###### Class info.flowersoft.theotown.components.traffic.PathfindingThread (info.flowersoft.theotown.components.traffic.PathfindingThread)
.class Linfo/flowersoft/theotown/components/traffic/PathfindingThread;
.super Ljava/lang/Thread;
.source "PathfindingThread.java"


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final context:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingContext;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingContext;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/PathfindingThread;->city:Linfo/flowersoft/theotown/city/City;

    .line 16
    iput-object p2, p0, Linfo/flowersoft/theotown/components/traffic/PathfindingThread;->context:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingContext;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 21
    new-instance v0, Linfo/flowersoft/theotown/city/Pathfinding;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/PathfindingThread;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/city/Pathfinding;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 27
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/PathfindingThread;->context:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingContext;

    invoke-interface {v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingContext;->getTasks()Ljava/util/ArrayDeque;

    move-result-object v1

    .line 30
    :goto_d
    :try_start_d
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/PathfindingThread;->context:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingContext;

    invoke-interface {v2}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingContext;->shouldBeStopped()Z

    move-result v2

    if-nez v2, :cond_52

    .line 32
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    .line 34
    monitor-enter v1
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_19} :catch_4b

    .line 35
    :goto_19
    :try_start_19
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/PathfindingThread;->context:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingContext;

    invoke-interface {v2}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingContext;->shouldBeStopped()Z

    move-result v2

    if-nez v2, :cond_2f

    const-wide/16 v2, 0x3e8

    .line 36
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_19

    :catchall_2d
    move-exception v0

    goto :goto_4d

    .line 38
    :cond_2f
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/PathfindingThread;->context:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingContext;

    invoke-interface {v2}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingContext;->shouldBeStopped()Z

    move-result v2

    if-eqz v2, :cond_39

    monitor-exit v1

    return-void

    .line 40
    :cond_39
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingTask;

    .line 41
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_19 .. :try_end_40} :catchall_2d

    .line 43
    :try_start_40
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    const/4 v3, 0x1

    .line 44
    invoke-interface {v2, v0, v3}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingTask;->work(Linfo/flowersoft/theotown/city/Pathfinding;Z)V

    .line 45
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_4a} :catch_4b

    goto :goto_d

    :catch_4b
    move-exception v0

    goto :goto_4f

    .line 41
    :goto_4d
    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_2d

    :try_start_4e
    throw v0
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_4f} :catch_4b

    .line 54
    :goto_4f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_52
    return-void
.end method
