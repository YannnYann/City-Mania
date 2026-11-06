###### Class com.ironsource.C3766oe (com.ironsource.oe)
.class public final Lcom/ironsource/oe;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v2, v0, v1, v0}, Lcom/ironsource/oe;-><init>(ILjava/util/concurrent/ThreadFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .registers 4

    const-string v0, "threadFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/concurrent/ThreadFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_8

    .line 2
    invoke-static {}, Lcom/ironsource/pe;->a()I

    move-result p1

    :cond_8
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_11

    .line 3
    new-instance p2, Lcom/ironsource/ma;

    invoke-direct {p2}, Lcom/ironsource/ma;-><init>()V

    .line 4
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/ironsource/oe;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method public afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_6

    return-void

    .line 9
    :cond_6
    instance-of p2, p1, Ljava/util/concurrent/Future;

    if-eqz p2, :cond_3d

    move-object p2, p1

    check-cast p2, Ljava/util/concurrent/Future;

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 12
    :try_start_13
    check-cast p1, Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_18
    .catch Ljava/util/concurrent/CancellationException; {:try_start_13 .. :try_end_18} :catch_1d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_18} :catch_1b
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    goto :goto_1f

    :catch_1b
    move-exception p1

    goto :goto_2e

    :catch_1d
    move-exception p1

    goto :goto_36

    .line 20
    :goto_1f
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3d

    .line 24
    :goto_2e
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 25
    :goto_36
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    return-void
.end method
