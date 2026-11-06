###### Class io.blueflower.stapel2d.util.CyclicWorker (io.blueflower.stapel2d.util.CyclicWorker)
.class public Lio/blueflower/stapel2d/util/CyclicWorker;
.super Ljava/lang/Object;
.source "CyclicWorker.java"


# static fields
.field public static executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final allowSkipping:Z

.field public appendedTask:Z

.field public done:Z

.field public name:Ljava/lang/String;

.field public task:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$UuC51DZZ6ltU8W9goaGSaZzxNmY(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    .line 43
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 44
    const-string p0, "CyclicWorker"

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$i1pmCYfJCWwvWLovjX14AjicGus(Lio/blueflower/stapel2d/util/CyclicWorker;Ljava/lang/Runnable;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 63
    monitor-enter p0

    const/4 p1, 0x1

    .line 64
    :try_start_8
    iput-boolean p1, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->done:Z

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 66
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 35
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, p1, v0}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Z)V
    .registers 3

    .line 29
    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>(Z)V

    .line 31
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/CyclicWorker;->setTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->appendedTask:Z

    .line 39
    iput-boolean p1, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->allowSkipping:Z

    .line 41
    sget-object p1, Lio/blueflower/stapel2d/util/CyclicWorker;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_17

    .line 42
    new-instance p1, Lio/blueflower/stapel2d/util/CyclicWorker$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lio/blueflower/stapel2d/util/CyclicWorker$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    sput-object p1, Lio/blueflower/stapel2d/util/CyclicWorker;->executor:Ljava/util/concurrent/ExecutorService;

    :cond_17
    return-void
.end method

.method public static synthetic access$000(Lio/blueflower/stapel2d/util/CyclicWorker;)Z
    .registers 1

    .line 12
    iget-boolean p0, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->done:Z

    return p0
.end method

.method public static synthetic access$002(Lio/blueflower/stapel2d/util/CyclicWorker;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->done:Z

    return p1
.end method

.method public static synthetic access$102(Lio/blueflower/stapel2d/util/CyclicWorker;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->appendedTask:Z

    return p1
.end method

.method public static synthetic access$200(Lio/blueflower/stapel2d/util/CyclicWorker;)Ljava/lang/Runnable;
    .registers 1

    .line 12
    iget-object p0, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->task:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$300()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 12
    sget-object v0, Lio/blueflower/stapel2d/util/CyclicWorker;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static declared-synchronized dispose()V
    .registers 2

    const-class v0, Lio/blueflower/stapel2d/util/CyclicWorker;

    monitor-enter v0

    .line 128
    :try_start_3
    sget-object v1, Lio/blueflower/stapel2d/util/CyclicWorker;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_10

    .line 129
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v1, 0x0

    .line 130
    sput-object v1, Lio/blueflower/stapel2d/util/CyclicWorker;->executor:Ljava/util/concurrent/ExecutorService;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception v1

    goto :goto_12

    .line 132
    :cond_10
    :goto_10
    monitor-exit v0

    return-void

    :goto_12
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_e

    throw v1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized join()V
    .registers 2

    monitor-enter p0

    .line 119
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->done:Z

    if-nez v0, :cond_f

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_8} :catch_b
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_1

    :catchall_9
    move-exception v0

    goto :goto_11

    :catch_b
    move-exception v0

    .line 123
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_9

    .line 125
    :cond_f
    monitor-exit p0

    return-void

    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_9

    throw v0
.end method

.method public setTask(Ljava/lang/Runnable;)V
    .registers 3

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->name:Ljava/lang/String;

    .line 61
    new-instance v0, Lio/blueflower/stapel2d/util/CyclicWorker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/blueflower/stapel2d/util/CyclicWorker$$ExternalSyntheticLambda0;-><init>(Lio/blueflower/stapel2d/util/CyclicWorker;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->task:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->done:Z

    return-void
.end method

.method public skippingAllowed()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->allowSkipping:Z

    return v0
.end method

.method public declared-synchronized start()V
    .registers 7

    monitor-enter p0

    .line 99
    :try_start_1
    iget-boolean v0, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->allowSkipping:Z

    if-nez v0, :cond_48

    .line 100
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 101
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/CyclicWorker;->join()V

    .line 102
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x5

    cmp-long v0, v2, v0

    if-lez v0, :cond_48

    .line 104
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cyclic Worker "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Had to wait "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms for previous task"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :catchall_46
    move-exception v0

    goto :goto_75

    .line 108
    :cond_48
    :goto_48
    sget-object v0, Lio/blueflower/stapel2d/util/CyclicWorker;->executor:Ljava/util/concurrent/ExecutorService;

    .line 109
    iget-boolean v1, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->done:Z

    if-eqz v1, :cond_59

    if-eqz v0, :cond_59

    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->done:Z

    .line 111
    iget-object v1, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->task:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_73

    .line 113
    :cond_59
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cyclic Worker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Skipped due to overload"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_1 .. :try_end_73} :catchall_46

    .line 115
    :goto_73
    monitor-exit p0

    return-void

    :goto_75
    :try_start_75
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_46

    throw v0
.end method

.method public declared-synchronized startAnytime()V
    .registers 3

    monitor-enter p0

    .line 73
    :try_start_1
    iget-boolean v0, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->done:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->done:Z

    .line 75
    sget-object v0, Lio/blueflower/stapel2d/util/CyclicWorker;->executor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->task:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_23

    :catchall_10
    move-exception v0

    goto :goto_25

    .line 76
    :cond_12
    iget-boolean v0, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->appendedTask:Z

    if-nez v0, :cond_23

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lio/blueflower/stapel2d/util/CyclicWorker;->appendedTask:Z

    .line 78
    sget-object v0, Lio/blueflower/stapel2d/util/CyclicWorker;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/blueflower/stapel2d/util/CyclicWorker$1;

    invoke-direct {v1, p0}, Lio/blueflower/stapel2d/util/CyclicWorker$1;-><init>(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_10

    .line 96
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_10

    throw v0
.end method

###### Class io.blueflower.stapel2d.util.CyclicWorker.AnonymousClass1 (io.blueflower.stapel2d.util.CyclicWorker$1)
.class public Lio/blueflower/stapel2d/util/CyclicWorker$1;
.super Ljava/lang/Object;
.source "CyclicWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/blueflower/stapel2d/util/CyclicWorker;->startAnytime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/blueflower/stapel2d/util/CyclicWorker;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/util/CyclicWorker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lio/blueflower/stapel2d/util/CyclicWorker$1;->this$0:Lio/blueflower/stapel2d/util/CyclicWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 81
    iget-object v0, p0, Lio/blueflower/stapel2d/util/CyclicWorker$1;->this$0:Lio/blueflower/stapel2d/util/CyclicWorker;

    monitor-enter v0

    .line 83
    :goto_3
    :try_start_3
    iget-object v1, p0, Lio/blueflower/stapel2d/util/CyclicWorker$1;->this$0:Lio/blueflower/stapel2d/util/CyclicWorker;

    invoke-static {v1}, Lio/blueflower/stapel2d/util/CyclicWorker;->access$000(Lio/blueflower/stapel2d/util/CyclicWorker;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 84
    iget-object v1, p0, Lio/blueflower/stapel2d/util/CyclicWorker$1;->this$0:Lio/blueflower/stapel2d/util/CyclicWorker;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_10} :catch_13
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    goto :goto_3

    :catchall_11
    move-exception v1

    goto :goto_31

    :catch_13
    move-exception v1

    .line 87
    :try_start_14
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    :cond_17
    iget-object v1, p0, Lio/blueflower/stapel2d/util/CyclicWorker$1;->this$0:Lio/blueflower/stapel2d/util/CyclicWorker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/blueflower/stapel2d/util/CyclicWorker;->access$102(Lio/blueflower/stapel2d/util/CyclicWorker;Z)Z

    .line 90
    iget-object v1, p0, Lio/blueflower/stapel2d/util/CyclicWorker$1;->this$0:Lio/blueflower/stapel2d/util/CyclicWorker;

    invoke-static {v1, v2}, Lio/blueflower/stapel2d/util/CyclicWorker;->access$002(Lio/blueflower/stapel2d/util/CyclicWorker;Z)Z

    .line 91
    invoke-static {}, Lio/blueflower/stapel2d/util/CyclicWorker;->access$300()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lio/blueflower/stapel2d/util/CyclicWorker$1;->this$0:Lio/blueflower/stapel2d/util/CyclicWorker;

    invoke-static {v2}, Lio/blueflower/stapel2d/util/CyclicWorker;->access$200(Lio/blueflower/stapel2d/util/CyclicWorker;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 92
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_11

    throw v1
.end method

###### Class io.blueflower.stapel2d.util.CyclicWorker$$ExternalSyntheticLambda0 (io.blueflower.stapel2d.util.CyclicWorker$$ExternalSyntheticLambda0)
.class public final synthetic Lio/blueflower/stapel2d/util/CyclicWorker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/util/CyclicWorker;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/util/CyclicWorker;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/blueflower/stapel2d/util/CyclicWorker$$ExternalSyntheticLambda0;->f$0:Lio/blueflower/stapel2d/util/CyclicWorker;

    iput-object p2, p0, Lio/blueflower/stapel2d/util/CyclicWorker$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/util/CyclicWorker$$ExternalSyntheticLambda0;->f$0:Lio/blueflower/stapel2d/util/CyclicWorker;

    iget-object v1, p0, Lio/blueflower/stapel2d/util/CyclicWorker$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lio/blueflower/stapel2d/util/CyclicWorker;->$r8$lambda$i1pmCYfJCWwvWLovjX14AjicGus(Lio/blueflower/stapel2d/util/CyclicWorker;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.blueflower.stapel2d.util.CyclicWorker$$ExternalSyntheticLambda1 (io.blueflower.stapel2d.util.CyclicWorker$$ExternalSyntheticLambda1)
.class public final synthetic Lio/blueflower/stapel2d/util/CyclicWorker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    .line 0
    invoke-static {p1}, Lio/blueflower/stapel2d/util/CyclicWorker;->$r8$lambda$UuC51DZZ6ltU8W9goaGSaZzxNmY(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
