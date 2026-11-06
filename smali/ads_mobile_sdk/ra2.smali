###### Class ads_mobile_sdk.ra2 (ads_mobile_sdk.ra2)
.class public final Lads_mobile_sdk/ra2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/bt3;
.implements Lads_mobile_sdk/pc1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public c:Landroid/net/NetworkCapabilities;

.field public d:Landroid/net/Network;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lads_mobile_sdk/ra2;->c:Landroid/net/NetworkCapabilities;

    .line 43
    iput-object v0, p0, Lads_mobile_sdk/ra2;->d:Landroid/net/Network;

    .line 47
    iput-object p1, p0, Lads_mobile_sdk/ra2;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lads_mobile_sdk/ra2;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 12
    new-instance v0, Lads_mobile_sdk/ra2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lads_mobile_sdk/ra2$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/ra2;)V

    iget-object v1, p0, Lads_mobile_sdk/ra2;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/HashMap;)V
    .registers 4

    .line 2
    const-string v0, "ntc"

    .line 3
    monitor-enter p0

    .line 4
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/ra2;->c:Landroid/net/NetworkCapabilities;

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lads_mobile_sdk/ra2;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "nt"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_17
    move-exception p1

    .line 7
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public final a(Ljava/util/HashMap;Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .line 0
    return-void
.end method

.method public final b()J
    .registers 3

    .line 116
    monitor-enter p0

    .line 117
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/ra2;->c:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_2c

    const/4 v1, 0x4

    .line 118
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-wide/16 v0, 0x2

    .line 119
    monitor-exit p0

    return-wide v0

    :catchall_10
    move-exception v0

    goto :goto_30

    .line 120
    :cond_12
    iget-object v0, p0, Lads_mobile_sdk/ra2;->c:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-wide/16 v0, 0x1

    .line 121
    monitor-exit p0

    return-wide v0

    .line 122
    :cond_1f
    iget-object v0, p0, Lads_mobile_sdk/ra2;->c:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-wide/16 v0, 0x0

    .line 123
    monitor-exit p0

    return-wide v0

    .line 126
    :cond_2c
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 127
    :goto_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_10

    throw v0
.end method

.method public final b(Ljava/util/HashMap;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final c()V
    .registers 4

    .line 4
    new-instance v0, Lads_mobile_sdk/qa2;

    invoke-direct {v0, p0}, Lads_mobile_sdk/qa2;-><init>(Lads_mobile_sdk/ra2;)V

    .line 27
    :try_start_5
    iget-object v1, p0, Lads_mobile_sdk/ra2;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 29
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 30
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_16

    :catchall_16
    return-void
.end method

###### Class ads_mobile_sdk.ra2$$ExternalSyntheticLambda0 (ads_mobile_sdk.ra2$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/ra2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ra2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ra2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ra2$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/ra2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/ra2$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/ra2;

    invoke-virtual {v0}, Lads_mobile_sdk/ra2;->c()V

    return-void
.end method
