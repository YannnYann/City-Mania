###### Class ads_mobile_sdk.ts3 (ads_mobile_sdk.ts3)
.class public final Lads_mobile_sdk/ts3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/qt1;

.field public final b:Lads_mobile_sdk/tx;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    .line 66
    iput-object p1, p0, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;
    .registers 5

    .line 20
    new-instance v0, Lads_mobile_sdk/qr3;

    iget-object v1, p0, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    iget-object v2, p0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v0, p1, v1, v2}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/lq0;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6

    .line 2
    new-instance v0, Lads_mobile_sdk/qr3;

    iget-object v1, p0, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    iget-object v2, p0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v0, p1, v1, v2}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V

    .line 3
    invoke-virtual {v0}, Lads_mobile_sdk/qr3;->b()V

    .line 4
    new-instance p1, Lads_mobile_sdk/ss3;

    invoke-direct {p1, v0}, Lads_mobile_sdk/ss3;-><init>(Lads_mobile_sdk/qr3;)V

    .line 18
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 19
    invoke-static {p2, p1, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-object p2
.end method

.method public final a(Lads_mobile_sdk/lq0;Ljava/lang/Runnable;)V
    .registers 6

    .line 21
    new-instance v0, Lads_mobile_sdk/qr3;

    iget-object v1, p0, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    iget-object v2, p0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v0, p1, v1, v2}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V

    .line 22
    :try_start_9
    invoke-virtual {v0}, Lads_mobile_sdk/qr3;->b()V

    .line 23
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_13

    .line 28
    invoke-virtual {v0}, Lads_mobile_sdk/qr3;->a()V

    return-void

    :catchall_13
    move-exception p1

    .line 29
    :try_start_14
    invoke-virtual {v0, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 30
    throw p1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception p1

    .line 32
    invoke-virtual {v0}, Lads_mobile_sdk/qr3;->a()V

    .line 33
    throw p1
.end method

.method public final b(Lads_mobile_sdk/lq0;)V
    .registers 9

    .line 76
    iget-object v0, p0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    .line 77
    iget v2, p1, Lads_mobile_sdk/lq0;->a:I

    .line 78
    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/st1;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v3, -0x1

    invoke-virtual/range {v1 .. v6}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
