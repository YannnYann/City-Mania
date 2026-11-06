###### Class ads_mobile_sdk.bm3 (ads_mobile_sdk.bm3)
.class public final Lads_mobile_sdk/bm3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/vn0;


# instance fields
.field public final a:Lads_mobile_sdk/vu2;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Lads_mobile_sdk/ts3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vu2;Ljava/util/concurrent/ExecutorService;Lads_mobile_sdk/ts3;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lads_mobile_sdk/bm3;->a:Lads_mobile_sdk/vu2;

    .line 30
    iput-object p2, p0, Lads_mobile_sdk/bm3;->b:Ljava/util/concurrent/ExecutorService;

    .line 31
    iput-object p3, p0, Lads_mobile_sdk/bm3;->c:Lads_mobile_sdk/ts3;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 42
    iget-object v0, p0, Lads_mobile_sdk/bm3;->c:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->D2:Lads_mobile_sdk/lq0;

    new-instance v2, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda2;-><init>(Lads_mobile_sdk/bm3;)V

    iget-object v3, p0, Lads_mobile_sdk/bm3;->b:Ljava/util/concurrent/ExecutorService;

    .line 44
    invoke-static {v2, v3}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 45
    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/iv2;[B)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6

    .line 106
    iget-object v0, p0, Lads_mobile_sdk/bm3;->c:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->G2:Lads_mobile_sdk/lq0;

    new-instance v2, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/bm3;Lads_mobile_sdk/iv2;[B)V

    iget-object p1, p0, Lads_mobile_sdk/bm3;->b:Ljava/util/concurrent/ExecutorService;

    .line 108
    invoke-static {v2, p1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 109
    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/iv2;[B[B)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 7

    .line 183
    iget-object v0, p0, Lads_mobile_sdk/bm3;->c:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->W2:Lads_mobile_sdk/lq0;

    new-instance v2, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2, p3}, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/bm3;Lads_mobile_sdk/iv2;[B[B)V

    iget-object p1, p0, Lads_mobile_sdk/bm3;->b:Ljava/util/concurrent/ExecutorService;

    .line 185
    invoke-static {v2, p1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 186
    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lads_mobile_sdk/iv2;[B)Ljava/lang/Void;
    .registers 5

    .line 65
    iget-object v0, p0, Lads_mobile_sdk/bm3;->a:Lads_mobile_sdk/vu2;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lads_mobile_sdk/vu2;->a(Lads_mobile_sdk/iv2;[B[B)V

    return-object v1
.end method

.method public final synthetic b(Lads_mobile_sdk/iv2;[B[B)Ljava/lang/Void;
    .registers 5

    .line 143
    iget-object v0, p0, Lads_mobile_sdk/bm3;->a:Lads_mobile_sdk/vu2;

    invoke-virtual {v0, p1, p2, p3}, Lads_mobile_sdk/vu2;->a(Lads_mobile_sdk/iv2;[B[B)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 54
    iget-object v0, p0, Lads_mobile_sdk/bm3;->c:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->P2:Lads_mobile_sdk/lq0;

    new-instance v2, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda3;-><init>(Lads_mobile_sdk/bm3;)V

    iget-object v3, p0, Lads_mobile_sdk/bm3;->b:Ljava/util/concurrent/ExecutorService;

    .line 56
    invoke-static {v2, v3}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 57
    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lads_mobile_sdk/iv2;
    .registers 3

    .line 46
    iget-object v0, p0, Lads_mobile_sdk/bm3;->a:Lads_mobile_sdk/vu2;

    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Lads_mobile_sdk/vu2;->a(I)Lads_mobile_sdk/iv2;

    move-result-object v0

    if-nez v0, :cond_d

    .line 48
    invoke-static {}, Lads_mobile_sdk/iv2;->x()Lads_mobile_sdk/iv2;

    move-result-object v0

    :cond_d
    return-object v0
.end method

.method public final g()Lads_mobile_sdk/uu2;
    .registers 7

    .line 56
    iget-object v0, p0, Lads_mobile_sdk/bm3;->a:Lads_mobile_sdk/vu2;

    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Lads_mobile_sdk/vu2;->a(I)Lads_mobile_sdk/iv2;

    move-result-object v1

    if-nez v1, :cond_12

    .line 59
    iget-object v0, v0, Lads_mobile_sdk/vu2;->e:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->Q2:Lads_mobile_sdk/lq0;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_12
    invoke-virtual {v1}, Lads_mobile_sdk/iv2;->y()Lads_mobile_sdk/jv2;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/jv2;->y()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v0}, Lads_mobile_sdk/vu2;->a()Ljava/io/File;

    move-result-object v3

    const-string v4, "pcam.jar"

    invoke-static {v3, v2, v4}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 64
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_40

    .line 65
    invoke-virtual {v0}, Lads_mobile_sdk/vu2;->a()Ljava/io/File;

    move-result-object v3

    const-string v4, "pcam"

    invoke-static {v3, v2, v4}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 67
    :cond_40
    invoke-virtual {v0}, Lads_mobile_sdk/vu2;->a()Ljava/io/File;

    move-result-object v4

    const-string v5, "pcopt"

    invoke-static {v4, v2, v5}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 69
    invoke-virtual {v0}, Lads_mobile_sdk/vu2;->a()Ljava/io/File;

    move-result-object v0

    const-string v5, "pcbc"

    invoke-static {v0, v2, v5}, Lads_mobile_sdk/dv2;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 70
    new-instance v2, Lads_mobile_sdk/uu2;

    invoke-virtual {v1}, Lads_mobile_sdk/iv2;->y()Lads_mobile_sdk/jv2;

    move-result-object v1

    invoke-direct {v2, v1, v3, v0, v4}, Lads_mobile_sdk/uu2;-><init>(Lads_mobile_sdk/jv2;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-object v2
.end method

###### Class ads_mobile_sdk.bm3$$ExternalSyntheticLambda0 (ads_mobile_sdk.bm3$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/bm3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/bm3;

.field public final synthetic f$1:Lads_mobile_sdk/iv2;

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/bm3;Lads_mobile_sdk/iv2;[B)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/bm3;

    iput-object p2, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda0;->f$1:Lads_mobile_sdk/iv2;

    iput-object p3, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda0;->f$2:[B

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/bm3;

    iget-object v1, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda0;->f$1:Lads_mobile_sdk/iv2;

    iget-object v2, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda0;->f$2:[B

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/bm3;->b(Lads_mobile_sdk/iv2;[B)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.bm3$$ExternalSyntheticLambda1 (ads_mobile_sdk.bm3$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/bm3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/bm3;

.field public final synthetic f$1:Lads_mobile_sdk/iv2;

.field public final synthetic f$2:[B

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/bm3;Lads_mobile_sdk/iv2;[B[B)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/bm3;

    iput-object p2, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda1;->f$1:Lads_mobile_sdk/iv2;

    iput-object p3, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda1;->f$2:[B

    iput-object p4, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda1;->f$3:[B

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/bm3;

    iget-object v1, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda1;->f$1:Lads_mobile_sdk/iv2;

    iget-object v2, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda1;->f$2:[B

    iget-object v3, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda1;->f$3:[B

    invoke-virtual {v0, v1, v2, v3}, Lads_mobile_sdk/bm3;->b(Lads_mobile_sdk/iv2;[B[B)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.bm3$$ExternalSyntheticLambda2 (ads_mobile_sdk.bm3$$ExternalSyntheticLambda2)
.class public final synthetic Lads_mobile_sdk/bm3$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/bm3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/bm3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/bm3;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/bm3;

    invoke-virtual {v0}, Lads_mobile_sdk/bm3;->f()Lads_mobile_sdk/iv2;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.bm3$$ExternalSyntheticLambda3 (ads_mobile_sdk.bm3$$ExternalSyntheticLambda3)
.class public final synthetic Lads_mobile_sdk/bm3$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/bm3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/bm3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda3;->f$0:Lads_mobile_sdk/bm3;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/bm3$$ExternalSyntheticLambda3;->f$0:Lads_mobile_sdk/bm3;

    invoke-virtual {v0}, Lads_mobile_sdk/bm3;->g()Lads_mobile_sdk/uu2;

    move-result-object v0

    return-object v0
.end method
