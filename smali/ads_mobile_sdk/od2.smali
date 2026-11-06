###### Class ads_mobile_sdk.od2 (ads_mobile_sdk.od2)
.class public final Lads_mobile_sdk/od2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ld2;


# instance fields
.field public final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final b:Ljava/util/ArrayDeque;

.field public c:Lads_mobile_sdk/nd2;


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/od2;->b:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lads_mobile_sdk/od2;->c:Lads_mobile_sdk/nd2;

    .line 26
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 27
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    const/4 v2, 0x1

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lads_mobile_sdk/od2;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 35
    iget-object v0, p0, Lads_mobile_sdk/od2;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/nd2;

    iput-object v0, p0, Lads_mobile_sdk/od2;->c:Lads_mobile_sdk/nd2;

    if-eqz v0, :cond_11

    .line 37
    iget-object v1, p0, Lads_mobile_sdk/od2;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/nd2;->a(Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_11
    return-void
.end method

.method public final a(Lads_mobile_sdk/nd2;)V
    .registers 3

    .line 39
    iput-object p0, p1, Lads_mobile_sdk/nd2;->a:Lads_mobile_sdk/ld2;

    .line 40
    iget-object v0, p0, Lads_mobile_sdk/od2;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object p1, p0, Lads_mobile_sdk/od2;->c:Lads_mobile_sdk/nd2;

    if-nez p1, :cond_e

    .line 42
    invoke-virtual {p0}, Lads_mobile_sdk/od2;->a()V

    :cond_e
    return-void
.end method
