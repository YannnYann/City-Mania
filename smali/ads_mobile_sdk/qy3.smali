###### Class ads_mobile_sdk.qy3 (ads_mobile_sdk.qy3)
.class public final Lads_mobile_sdk/qy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/bt3;
.implements Lads_mobile_sdk/pc1;


# static fields
.field public static final h:[Ljava/lang/String;


# instance fields
.field public final a:Lads_mobile_sdk/tx;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public d:J

.field public e:J

.field public f:J

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    const-string v0, "android:establish_vpn_service"

    const-string v1, "android:establish_vpn_manager"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/qy3;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/tx;Ljava/util/concurrent/ExecutorService;[Ljava/lang/String;)V
    .registers 7

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lads_mobile_sdk/qy3;->d:J

    .line 53
    iput-wide v0, p0, Lads_mobile_sdk/qy3;->e:J

    const-wide/16 v0, -0x1

    .line 54
    iput-wide v0, p0, Lads_mobile_sdk/qy3;->f:J

    const/4 p4, 0x0

    .line 55
    iput-boolean p4, p0, Lads_mobile_sdk/qy3;->g:Z

    .line 64
    iput-object p2, p0, Lads_mobile_sdk/qy3;->a:Lads_mobile_sdk/tx;

    .line 65
    iput-object p1, p0, Lads_mobile_sdk/qy3;->b:Landroid/content/Context;

    .line 66
    iput-object p3, p0, Lads_mobile_sdk/qy3;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_b

    .line 15
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 17
    :cond_b
    new-instance v0, Lads_mobile_sdk/qy3$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lads_mobile_sdk/qy3$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/qy3;)V

    iget-object v1, p0, Lads_mobile_sdk/qy3;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/HashMap;)V
    .registers 7

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/qy3;->c()V

    .line 3
    const-string v0, "vs"

    .line 4
    monitor-enter p0

    .line 5
    :try_start_6
    iget-boolean v1, p0, Lads_mobile_sdk/qy3;->g:Z

    if-eqz v1, :cond_13

    .line 6
    iget-wide v1, p0, Lads_mobile_sdk/qy3;->e:J

    iget-wide v3, p0, Lads_mobile_sdk/qy3;->d:J

    sub-long/2addr v1, v3

    monitor-exit p0

    goto :goto_16

    :catchall_11
    move-exception p1

    goto :goto_2b

    .line 8
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_11

    const-wide/16 v1, -0x1

    .line 9
    :goto_16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lads_mobile_sdk/qy3;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "vf"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 11
    :goto_2b
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_11

    throw p1
.end method

.method public final a(Ljava/util/HashMap;Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .line 13
    invoke-virtual {p0}, Lads_mobile_sdk/qy3;->c()V

    return-void
.end method

.method public final b()J
    .registers 5

    .line 141
    monitor-enter p0

    .line 142
    :try_start_1
    iget-wide v0, p0, Lads_mobile_sdk/qy3;->f:J

    const-wide/16 v2, -0x1

    .line 143
    iput-wide v2, p0, Lads_mobile_sdk/qy3;->f:J

    .line 144
    monitor-exit p0

    return-wide v0

    :catchall_9
    move-exception v0

    .line 145
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public final b(Ljava/util/HashMap;)V
    .registers 2

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/qy3;->c()V

    return-void
.end method

.method public final c()V
    .registers 3

    .line 116
    monitor-enter p0

    .line 117
    :try_start_1
    iget-boolean v0, p0, Lads_mobile_sdk/qy3;->g:Z

    if-eqz v0, :cond_13

    .line 118
    iget-object v0, p0, Lads_mobile_sdk/qy3;->a:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 120
    iput-wide v0, p0, Lads_mobile_sdk/qy3;->e:J

    goto :goto_13

    :catchall_11
    move-exception v0

    goto :goto_15

    .line 122
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    .line 123
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_11

    throw v0
.end method

.method public final d()V
    .registers 5

    .line 68
    new-instance v0, Lads_mobile_sdk/py3;

    invoke-direct {v0, p0}, Lads_mobile_sdk/py3;-><init>(Lads_mobile_sdk/qy3;)V

    .line 90
    :try_start_5
    iget-object v1, p0, Lads_mobile_sdk/qy3;->b:Landroid/content/Context;

    const-string v2, "appops"

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 92
    sget-object v2, Lads_mobile_sdk/qy3;->h:[Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/qy3;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v2, v3, v0}, Lads_mobile_sdk/qy3$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/AppOpsManager;[Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1a

    :catchall_1a
    return-void
.end method

###### Class ads_mobile_sdk.qy3$$ExternalSyntheticLambda1 (ads_mobile_sdk.qy3$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/qy3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/qy3;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/qy3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/qy3$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/qy3;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/qy3$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/qy3;

    invoke-virtual {v0}, Lads_mobile_sdk/qy3;->d()V

    return-void
.end method
