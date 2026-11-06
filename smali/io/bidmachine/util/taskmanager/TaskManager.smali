###### Class io.bidmachine.util.taskmanager.TaskManager (io.bidmachine.util.taskmanager.TaskManager)
.class public interface abstract Lio/bidmachine/util/taskmanager/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskManager.kt\nio/bidmachine/util/taskmanager/TaskManager\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,84:1\n846#2,4:85\n846#2,4:89\n846#2,4:93\n*S KotlinDebug\n*F\n+ 1 TaskManager.kt\nio/bidmachine/util/taskmanager/TaskManager\n*L\n23#1:85,4\n46#1:89,4\n71#1:93,4\n*E\n"
.end annotation


# virtual methods
.method public abstract cancel(Ljava/lang/Runnable;)V
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 14
    invoke-interface {p0, p1, v0, v1}, Lio/bidmachine/util/taskmanager/TaskManager;->schedule(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public executeSafely(Ljava/lang/Runnable;)Z
    .registers 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    :try_start_5
    invoke-interface {p0, p1}, Lio/bidmachine/util/taskmanager/TaskManager;->execute(Ljava/lang/Runnable;)V

    .line 25
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_c

    :catchall_b
    const/4 p1, 0x0

    .line 26
    :goto_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract schedule(Ljava/lang/Runnable;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public scheduleSafely(Ljava/lang/Runnable;J)Z
    .registers 5

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    :try_start_5
    invoke-interface {p0, p1, p2, p3}, Lio/bidmachine/util/taskmanager/TaskManager;->schedule(Ljava/lang/Runnable;J)V

    .line 48
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_c

    :catchall_b
    const/4 p1, 0x0

    .line 49
    :goto_c
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
