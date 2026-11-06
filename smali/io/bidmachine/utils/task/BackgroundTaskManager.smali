###### Class io.bidmachine.utils.task.BackgroundTaskManager (io.bidmachine.utils.task.BackgroundTaskManager)
.class public Lio/bidmachine/utils/task/BackgroundTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/utils/task/TaskManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/utils/task/BackgroundTaskManager$a;
    }
.end annotation


# static fields
.field public static final CORE_POOL_SIZE:I

.field public static final CPU_COUNT:I


# instance fields
.field public final executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final futureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lio/bidmachine/utils/task/BackgroundTaskManager;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lio/bidmachine/utils/task/BackgroundTaskManager;->CORE_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget v1, Lio/bidmachine/utils/task/BackgroundTaskManager;->CORE_POOL_SIZE:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lio/bidmachine/utils/task/BackgroundTaskManager;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/utils/task/BackgroundTaskManager;->futureMap:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/utils/task/BackgroundTaskManager;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/utils/task/BackgroundTaskManager;->removeFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancel(Lio/bidmachine/utils/task/CancelableTask;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    :try_start_1
    invoke-virtual {p1, v0}, Lio/bidmachine/utils/task/CancelableTask;->setCancel(Z)V

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/utils/task/BackgroundTaskManager;->removeFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_f

    :cond_b
    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    :catchall_f
    :goto_f
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/utils/task/BackgroundTaskManager;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    return-void
.end method

.method public final removeFuture(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/utils/task/BackgroundTaskManager;->futureMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object p1

    :catchall_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public schedule(Lio/bidmachine/utils/task/CancelableTask;JLjava/util/concurrent/TimeUnit;)V
    .registers 7

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p1, v0}, Lio/bidmachine/utils/task/CancelableTask;->setCancel(Z)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/utils/task/BackgroundTaskManager;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lio/bidmachine/utils/task/BackgroundTaskManager$a;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/utils/task/BackgroundTaskManager$a;-><init>(Lio/bidmachine/utils/task/BackgroundTaskManager;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    .line 4
    iget-object p3, p0, Lio/bidmachine/utils/task/BackgroundTaskManager;->futureMap:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_14

    :catchall_14
    return-void
.end method

###### Class io.bidmachine.utils.task.BackgroundTaskManager.a (io.bidmachine.utils.task.BackgroundTaskManager$a)
.class public Lio/bidmachine/utils/task/BackgroundTaskManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/utils/task/BackgroundTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final synthetic b:Lio/bidmachine/utils/task/BackgroundTaskManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/utils/task/BackgroundTaskManager;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/utils/task/BackgroundTaskManager$a;->b:Lio/bidmachine/utils/task/BackgroundTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/bidmachine/utils/task/BackgroundTaskManager$a;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/utils/task/BackgroundTaskManager$a;->b:Lio/bidmachine/utils/task/BackgroundTaskManager;

    iget-object v1, p0, Lio/bidmachine/utils/task/BackgroundTaskManager$a;->a:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lio/bidmachine/utils/task/BackgroundTaskManager;->access$000(Lio/bidmachine/utils/task/BackgroundTaskManager;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2
    iget-object v0, p0, Lio/bidmachine/utils/task/BackgroundTaskManager$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
