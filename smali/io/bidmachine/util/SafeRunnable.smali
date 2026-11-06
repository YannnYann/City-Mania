###### Class io.bidmachine.util.SafeRunnable (io.bidmachine.util.SafeRunnable)
.class public interface abstract Lio/bidmachine/util/SafeRunnable;
.super Ljava/lang/Object;
.source "SafeRunnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeRunnable.kt\nio/bidmachine/util/SafeRunnable\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,26:1\n846#2,4:27\n*S KotlinDebug\n*F\n+ 1 SafeRunnable.kt\nio/bidmachine/util/SafeRunnable\n*L\n12#1:27,4\n*E\n"
.end annotation


# virtual methods
.method public abstract onRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public onThrows(Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 0
    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .registers 2

    .line 10
    :try_start_0
    invoke-interface {p0}, Lio/bidmachine/util/SafeRunnable;->onRun()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    .line 13
    :try_start_5
    invoke-interface {p0, v0}, Lio/bidmachine/util/SafeRunnable;->onThrows(Ljava/lang/Throwable;)V

    .line 14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_a

    :catchall_a
    return-void
.end method
