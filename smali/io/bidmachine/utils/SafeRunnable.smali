###### Class io.bidmachine.utils.SafeRunnable (io.bidmachine.utils.SafeRunnable)
.class public interface abstract Lio/bidmachine/utils/SafeRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public abstract onRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract onThrows(Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public run()V
    .registers 2

    .line 1
    :try_start_0
    invoke-interface {p0}, Lio/bidmachine/utils/SafeRunnable;->onRun()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    .line 4
    :try_start_5
    invoke-interface {p0, v0}, Lio/bidmachine/utils/SafeRunnable;->onThrows(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_8

    :catchall_8
    return-void
.end method
