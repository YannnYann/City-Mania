###### Class ads_mobile_sdk.fx3 (ads_mobile_sdk.fx3)
.class public final Lads_mobile_sdk/fx3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/bt3;
.implements Lads_mobile_sdk/pc1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lads_mobile_sdk/fx3;->c:Z

    .line 38
    iput-object p1, p0, Lads_mobile_sdk/fx3;->a:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lads_mobile_sdk/fx3;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 52
    new-instance v0, Lads_mobile_sdk/fx3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lads_mobile_sdk/fx3$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/fx3;)V

    iget-object v1, p0, Lads_mobile_sdk/fx3;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/HashMap;)V
    .registers 4

    .line 2
    const-string v0, "up"

    monitor-enter p0

    .line 3
    :try_start_3
    iget-boolean v1, p0, Lads_mobile_sdk/fx3;->c:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_e

    monitor-exit p0

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_e
    move-exception p1

    .line 5
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/util/HashMap;Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .line 7
    const-string p2, "up"

    monitor-enter p0

    .line 8
    :try_start_3
    iget-boolean p3, p0, Lads_mobile_sdk/fx3;->c:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_e

    monitor-exit p0

    .line 9
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_e
    move-exception p1

    .line 10
    monitor-exit p0

    throw p1
.end method

.method public final synthetic b()Ljava/lang/Void;
    .registers 3

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lads_mobile_sdk/fx3;->a:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/util/HashMap;)V
    .registers 4

    .line 2
    const-string v0, "up"

    monitor-enter p0

    .line 3
    :try_start_3
    iget-boolean v1, p0, Lads_mobile_sdk/fx3;->c:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_e

    monitor-exit p0

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_e
    move-exception p1

    .line 5
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_2
    iput-boolean v0, p0, Lads_mobile_sdk/fx3;->c:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 57
    monitor-enter p0

    const/4 p1, 0x1

    .line 58
    :try_start_e
    iput-boolean p1, p0, Lads_mobile_sdk/fx3;->c:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    .line 59
    monitor-exit p0

    throw p1

    .line 60
    :cond_15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 61
    invoke-virtual {p0}, Lads_mobile_sdk/fx3;->c()V

    :cond_24
    return-void
.end method

###### Class ads_mobile_sdk.fx3$$ExternalSyntheticLambda0 (ads_mobile_sdk.fx3$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/fx3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/fx3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/fx3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/fx3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/fx3;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/fx3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/fx3;

    invoke-virtual {v0}, Lads_mobile_sdk/fx3;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
