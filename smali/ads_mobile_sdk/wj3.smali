###### Class ads_mobile_sdk.wj3 (ads_mobile_sdk.wj3)
.class public final Lads_mobile_sdk/wj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/pc1;


# instance fields
.field public final a:Lads_mobile_sdk/na;

.field public final b:Lads_mobile_sdk/tj3;

.field public final c:Lads_mobile_sdk/rj3;

.field public final d:Ljava/util/concurrent/ExecutorService;

.field public final e:Lads_mobile_sdk/ts3;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/na;Lads_mobile_sdk/tj3;Lads_mobile_sdk/rj3;Ljava/util/concurrent/ExecutorService;Lads_mobile_sdk/ts3;)V
    .registers 7

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/wj3;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 58
    iput-object p1, p0, Lads_mobile_sdk/wj3;->a:Lads_mobile_sdk/na;

    .line 59
    iput-object p2, p0, Lads_mobile_sdk/wj3;->b:Lads_mobile_sdk/tj3;

    .line 60
    iput-object p3, p0, Lads_mobile_sdk/wj3;->c:Lads_mobile_sdk/rj3;

    .line 61
    iput-object p4, p0, Lads_mobile_sdk/wj3;->d:Ljava/util/concurrent/ExecutorService;

    .line 62
    iput-object p5, p0, Lads_mobile_sdk/wj3;->e:Lads_mobile_sdk/ts3;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lads_mobile_sdk/qj3;)Lads_mobile_sdk/qj3;
    .registers 3

    .line 142
    iget-object v0, p0, Lads_mobile_sdk/wj3;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4

    .line 58
    iget-object v0, p0, Lads_mobile_sdk/wj3;->b:Lads_mobile_sdk/tj3;

    iget-object v1, p0, Lads_mobile_sdk/wj3;->a:Lads_mobile_sdk/na;

    .line 61
    invoke-virtual {v1}, Lads_mobile_sdk/na;->T()Lads_mobile_sdk/kb;

    move-result-object v1

    iget-object v2, p0, Lads_mobile_sdk/wj3;->a:Lads_mobile_sdk/na;

    invoke-virtual {v2}, Lads_mobile_sdk/na;->v()Z

    move-result v2

    .line 62
    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/tj3;->a(Lads_mobile_sdk/kb;Z)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/google/common/util/concurrent/FluentFuture;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/wj3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lads_mobile_sdk/wj3$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/wj3;)V

    .line 71
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/FluentFuture;->transform(Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    .line 78
    new-instance v1, Lads_mobile_sdk/vj3;

    invoke-direct {v1, p0}, Lads_mobile_sdk/vj3;-><init>(Lads_mobile_sdk/wj3;)V

    iget-object v2, p0, Lads_mobile_sdk/wj3;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

###### Class ads_mobile_sdk.wj3$$ExternalSyntheticLambda0 (ads_mobile_sdk.wj3$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/wj3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/wj3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/wj3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/wj3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/wj3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/wj3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/wj3;

    check-cast p1, Lads_mobile_sdk/qj3;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/wj3;->a(Lads_mobile_sdk/qj3;)Lads_mobile_sdk/qj3;

    move-result-object p1

    return-object p1
.end method
