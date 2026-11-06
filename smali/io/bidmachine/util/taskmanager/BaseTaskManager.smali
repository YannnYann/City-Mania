###### Class io.bidmachine.util.taskmanager.BaseTaskManager (io.bidmachine.util.taskmanager.BaseTaskManager)
.class public abstract Lio/bidmachine/util/taskmanager/BaseTaskManager;
.super Ljava/lang/Object;
.source "BaseTaskManager.kt"

# interfaces
.implements Lio/bidmachine/util/taskmanager/TaskManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseTaskManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseTaskManager.kt\nio/bidmachine/util/taskmanager/BaseTaskManager\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,31:1\n846#2,4:32\n846#2,4:36\n*S KotlinDebug\n*F\n+ 1 BaseTaskManager.kt\nio/bidmachine/util/taskmanager/BaseTaskManager\n*L\n23#1:32,4\n26#1:36,4\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/Runnable;)V
    .registers 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/util/taskmanager/BaseTaskManager;->cancel(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final cancel(Ljava/lang/Runnable;Z)V
    .registers 4

    .line 23
    instance-of v0, p1, Lio/bidmachine/util/Cancelable;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lio/bidmachine/util/Cancelable;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_10

    .line 24
    :try_start_b
    invoke-interface {v0, p2}, Lio/bidmachine/util/Cancelable;->setCancel(Z)V

    .line 25
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_10

    .line 27
    :catchall_10
    :cond_10
    :try_start_10
    invoke-virtual {p0, p1}, Lio/bidmachine/util/taskmanager/BaseTaskManager;->cancelTask(Ljava/lang/Runnable;)V

    .line 28
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_15

    :catchall_15
    return-void
.end method

.method public abstract cancelTask(Ljava/lang/Runnable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public schedule(Ljava/lang/Runnable;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/util/taskmanager/BaseTaskManager;->cancel(Ljava/lang/Runnable;Z)V

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/util/taskmanager/BaseTaskManager;->scheduleTask(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public abstract scheduleTask(Ljava/lang/Runnable;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
