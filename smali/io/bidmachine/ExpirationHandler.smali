###### Class io.bidmachine.ExpirationHandler (io.bidmachine.ExpirationHandler)
.class public Lio/bidmachine/ExpirationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ExpirationHandler$b;,
        Lio/bidmachine/ExpirationHandler$Listener;,
        Lio/bidmachine/ExpirationHandler$TaskScheduler;,
        Lio/bidmachine/ExpirationHandler$c;
    }
.end annotation


# instance fields
.field private final expirationTimeMs:J

.field private final expiredTask:Lio/bidmachine/ExpirationHandler$c;

.field private final isExpireTrackerSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final taskScheduler:Lio/bidmachine/ExpirationHandler$TaskScheduler;


# direct methods
.method public constructor <init>(JLio/bidmachine/ExpirationHandler$Listener;)V
    .registers 6

    .line 1
    new-instance v0, Lio/bidmachine/ExpirationHandler$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/ExpirationHandler$b;-><init>(Lio/bidmachine/ExpirationHandler$a;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/bidmachine/ExpirationHandler;-><init>(JLio/bidmachine/ExpirationHandler$Listener;Lio/bidmachine/ExpirationHandler$TaskScheduler;)V

    return-void
.end method

.method public constructor <init>(JLio/bidmachine/ExpirationHandler$Listener;Lio/bidmachine/ExpirationHandler$TaskScheduler;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/bidmachine/ExpirationHandler$c;

    invoke-direct {v0, p3}, Lio/bidmachine/ExpirationHandler$c;-><init>(Lio/bidmachine/ExpirationHandler$Listener;)V

    iput-object v0, p0, Lio/bidmachine/ExpirationHandler;->expiredTask:Lio/bidmachine/ExpirationHandler$c;

    .line 4
    iput-wide p1, p0, Lio/bidmachine/ExpirationHandler;->expirationTimeMs:J

    .line 5
    iput-object p4, p0, Lio/bidmachine/ExpirationHandler;->taskScheduler:Lio/bidmachine/ExpirationHandler$TaskScheduler;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/ExpirationHandler;->isExpireTrackerSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public getTaskScheduler()Lio/bidmachine/ExpirationHandler$TaskScheduler;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ExpirationHandler;->taskScheduler:Lio/bidmachine/ExpirationHandler$TaskScheduler;

    return-object v0
.end method

.method public start()V
    .registers 5

    .line 1
    iget-wide v0, p0, Lio/bidmachine/ExpirationHandler;->expirationTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    iget-object v0, p0, Lio/bidmachine/ExpirationHandler;->isExpireTrackerSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1c

    .line 4
    :cond_13
    iget-object v0, p0, Lio/bidmachine/ExpirationHandler;->taskScheduler:Lio/bidmachine/ExpirationHandler$TaskScheduler;

    iget-object v1, p0, Lio/bidmachine/ExpirationHandler;->expiredTask:Lio/bidmachine/ExpirationHandler$c;

    iget-wide v2, p0, Lio/bidmachine/ExpirationHandler;->expirationTimeMs:J

    invoke-interface {v0, v1, v2, v3}, Lio/bidmachine/ExpirationHandler$TaskScheduler;->scheduleTask(Lio/bidmachine/utils/task/CancelableTask;J)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public stop()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/ExpirationHandler;->isExpireTrackerSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/ExpirationHandler;->taskScheduler:Lio/bidmachine/ExpirationHandler$TaskScheduler;

    iget-object v1, p0, Lio/bidmachine/ExpirationHandler;->expiredTask:Lio/bidmachine/ExpirationHandler$c;

    invoke-interface {v0, v1}, Lio/bidmachine/ExpirationHandler$TaskScheduler;->cancelTask(Lio/bidmachine/utils/task/CancelableTask;)V

    return-void
.end method

###### Class io.bidmachine.ExpirationHandler.Listener (io.bidmachine.ExpirationHandler$Listener)
.class public interface abstract Lio/bidmachine/ExpirationHandler$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ExpirationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onExpired()V
.end method

###### Class io.bidmachine.ExpirationHandler.TaskScheduler (io.bidmachine.ExpirationHandler$TaskScheduler)
.class public interface abstract Lio/bidmachine/ExpirationHandler$TaskScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ExpirationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskScheduler"
.end annotation


# virtual methods
.method public abstract cancelTask(Lio/bidmachine/utils/task/CancelableTask;)V
.end method

.method public abstract scheduleTask(Lio/bidmachine/utils/task/CancelableTask;J)V
.end method

###### Class io.bidmachine.ExpirationHandler.a (io.bidmachine.ExpirationHandler$a)
.class public abstract synthetic Lio/bidmachine/ExpirationHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ExpirationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.ExpirationHandler.b (io.bidmachine.ExpirationHandler$b)
.class public Lio/bidmachine/ExpirationHandler$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/ExpirationHandler$TaskScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ExpirationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/ExpirationHandler$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lio/bidmachine/ExpirationHandler$b;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTask(Lio/bidmachine/utils/task/CancelableTask;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lio/bidmachine/utils/task/CancelableTask;->setCancel(Z)V

    .line 2
    invoke-static {p1}, Lio/bidmachine/core/Utils;->cancelBackgroundThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scheduleTask(Lio/bidmachine/utils/task/CancelableTask;J)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lio/bidmachine/utils/task/CancelableTask;->setCancel(Z)V

    .line 2
    invoke-static {p1, p2, p3}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;J)V

    return-void
.end method

###### Class io.bidmachine.ExpirationHandler.c (io.bidmachine.ExpirationHandler$c)
.class public Lio/bidmachine/ExpirationHandler$c;
.super Lio/bidmachine/utils/task/CancelableTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ExpirationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lio/bidmachine/ExpirationHandler$Listener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/utils/task/CancelableTask;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/ExpirationHandler$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public runTask()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ExpirationHandler$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/ExpirationHandler$Listener;

    if-eqz v0, :cond_d

    .line 3
    invoke-interface {v0}, Lio/bidmachine/ExpirationHandler$Listener;->onExpired()V

    :cond_d
    return-void
.end method
