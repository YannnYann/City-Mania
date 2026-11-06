###### Class io.bidmachine.util.SafeExecutable (io.bidmachine.util.SafeExecutable)
.class public interface abstract Lio/bidmachine/util/SafeExecutable;
.super Ljava/lang/Object;
.source "SafeExecutable.kt"

# interfaces
.implements Lio/bidmachine/util/Executable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/util/Executable<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeExecutable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeExecutable.kt\nio/bidmachine/util/SafeExecutable\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,26:1\n846#2,4:27\n*S KotlinDebug\n*F\n+ 1 SafeExecutable.kt\nio/bidmachine/util/SafeExecutable\n*L\n12#1:27,4\n*E\n"
.end annotation


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 10
    :try_start_0
    invoke-interface {p0, p1}, Lio/bidmachine/util/SafeExecutable;->onExecute(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception p1

    .line 13
    :try_start_5
    invoke-interface {p0, p1}, Lio/bidmachine/util/SafeExecutable;->onThrows(Ljava/lang/Throwable;)V

    .line 14
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_a

    :catchall_a
    return-void
.end method

.method public abstract onExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

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
