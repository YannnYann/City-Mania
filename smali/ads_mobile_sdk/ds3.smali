###### Class ads_mobile_sdk.ds3 (ads_mobile_sdk.ds3)
.class public final Lads_mobile_sdk/ds3;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .registers 5

    .line 1
    sget-object v0, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    .line 2
    new-instance v0, Lads_mobile_sdk/gs3;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 4
    invoke-direct {v0, v3, v1, v2, v3}, Lads_mobile_sdk/gs3;-><init>(Lads_mobile_sdk/rr3;JLads_mobile_sdk/fs3;)V

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 6
    sget-object v2, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    monitor-enter v2

    :try_start_13
    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/gs3;
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1b

    monitor-exit v2

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit v2

    throw v0
.end method
