###### Class ads_mobile_sdk.lh3 (ads_mobile_sdk.lh3)
.class public final Lads_mobile_sdk/lh3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field public final b:Lads_mobile_sdk/a;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/lang/String;

.field public final e:Lads_mobile_sdk/xf;

.field public final f:Lads_mobile_sdk/yw1;

.field public final g:Lads_mobile_sdk/ts3;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Lads_mobile_sdk/a;Lads_mobile_sdk/yw1;Lads_mobile_sdk/fl3;Ljava/lang/String;Lads_mobile_sdk/xf;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/ts3;)V
    .registers 11

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/lh3;->a:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/lh3;->b:Lads_mobile_sdk/a;

    .line 5
    iput-object p5, p0, Lads_mobile_sdk/lh3;->d:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lads_mobile_sdk/lh3;->f:Lads_mobile_sdk/yw1;

    .line 7
    iput-object p6, p0, Lads_mobile_sdk/lh3;->e:Lads_mobile_sdk/xf;

    .line 8
    iput-object p10, p0, Lads_mobile_sdk/lh3;->g:Lads_mobile_sdk/ts3;

    .line 9
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_33

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2a

    const/4 p2, 0x2

    if-ne p1, p2, :cond_24

    .line 17
    invoke-interface {p9}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lads_mobile_sdk/lh3;->c:Ljava/util/Set;

    return-void

    .line 20
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 21
    :cond_2a
    invoke-interface {p8}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lads_mobile_sdk/lh3;->c:Ljava/util/Set;

    return-void

    .line 22
    :cond_33
    invoke-interface {p7}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lads_mobile_sdk/lh3;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 6

    .line 98
    iget-object v0, p0, Lads_mobile_sdk/lh3;->g:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->o:Lads_mobile_sdk/lq0;

    new-instance v2, Lads_mobile_sdk/lh3$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lads_mobile_sdk/lh3$$ExternalSyntheticLambda2;-><init>(Lads_mobile_sdk/lh3;)V

    .line 99
    new-instance v3, Lads_mobile_sdk/qr3;

    .line 100
    iget-object v4, v0, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    .line 101
    iget-object v0, v0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v3, v1, v4, v0}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V

    .line 102
    :try_start_12
    invoke-virtual {v3}, Lads_mobile_sdk/qr3;->b()V

    .line 103
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1f

    .line 108
    invoke-virtual {v3}, Lads_mobile_sdk/qr3;->a()V

    .line 109
    check-cast v0, Ljava/lang/String;

    return-object v0

    :catchall_1f
    move-exception v0

    .line 110
    :try_start_20
    invoke-virtual {v3, v0}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 111
    throw v0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v0

    .line 113
    invoke-virtual {v3}, Lads_mobile_sdk/qr3;->a()V

    .line 114
    throw v0
.end method

.method public final b()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 78
    iget-object v0, p0, Lads_mobile_sdk/lh3;->b:Lads_mobile_sdk/a;

    monitor-enter v0

    .line 79
    :try_start_3
    iget-boolean v1, v0, Lads_mobile_sdk/a;->d:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_61

    monitor-exit v0

    if-nez v1, :cond_12

    const/4 v0, 0x7

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 82
    :cond_12
    iget-object v0, p0, Lads_mobile_sdk/lh3;->f:Lads_mobile_sdk/yw1;

    check-cast v0, Lads_mobile_sdk/zw1;

    invoke-virtual {v0}, Lads_mobile_sdk/zw1;->b()Z

    move-result v0

    if-nez v0, :cond_28

    .line 83
    new-instance v0, Lads_mobile_sdk/lh3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lads_mobile_sdk/lh3$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/lh3;)V

    iget-object v1, p0, Lads_mobile_sdk/lh3;->a:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 90
    :cond_28
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lads_mobile_sdk/lh3;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    iget-object v1, p0, Lads_mobile_sdk/lh3;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/cf3;

    .line 92
    iget-object v3, p0, Lads_mobile_sdk/lh3;->a:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-interface {v3, v2}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 95
    :cond_4f
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->whenAllComplete(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/lh3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lads_mobile_sdk/lh3$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/lh3;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :catchall_61
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final synthetic c()Ljava/lang/String;
    .registers 4

    .line 100
    iget-object v0, p0, Lads_mobile_sdk/lh3;->b:Lads_mobile_sdk/a;

    iget-object v1, p0, Lads_mobile_sdk/lh3;->e:Lads_mobile_sdk/xf;

    invoke-virtual {v1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/fh;

    iget-object v2, p0, Lads_mobile_sdk/lh3;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/a;->a(Lads_mobile_sdk/fh;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Ljava/lang/String;
    .registers 4

    .line 84
    iget-object v0, p0, Lads_mobile_sdk/lh3;->b:Lads_mobile_sdk/a;

    sget-object v1, Lads_mobile_sdk/ug;->c:Lads_mobile_sdk/ug;

    iget-object v2, p0, Lads_mobile_sdk/lh3;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/a;->a(Lads_mobile_sdk/ug;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.lh3$$ExternalSyntheticLambda0 (ads_mobile_sdk.lh3$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/lh3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/lh3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/lh3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/lh3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/lh3;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/lh3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/lh3;

    invoke-virtual {v0}, Lads_mobile_sdk/lh3;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.lh3$$ExternalSyntheticLambda1 (ads_mobile_sdk.lh3$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/lh3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/lh3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/lh3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/lh3$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/lh3;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/lh3$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/lh3;

    invoke-virtual {v0}, Lads_mobile_sdk/lh3;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.lh3$$ExternalSyntheticLambda2 (ads_mobile_sdk.lh3$$ExternalSyntheticLambda2)
.class public final synthetic Lads_mobile_sdk/lh3$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/lh3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/lh3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/lh3$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/lh3;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/lh3$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/lh3;

    invoke-virtual {v0}, Lads_mobile_sdk/lh3;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
