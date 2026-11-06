###### Class ads_mobile_sdk.j13 (ads_mobile_sdk.j13)
.class public final Lads_mobile_sdk/j13;
.super Lads_mobile_sdk/jj3;
.source "SourceFile"


# instance fields
.field public final f:Landroid/content/Context;

.field public final g:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Ljava/util/Map;Landroid/content/Context;Lads_mobile_sdk/ts3;)V
    .registers 13

    .line 37
    sget-object v0, Lads_mobile_sdk/lq0;->y:Lads_mobile_sdk/lq0;

    .line 40
    invoke-virtual {p5, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object v6

    .line 41
    const-string v2, "MK5HB0RzJr0QfmWzjZukeoRT6jTHxeECoyJyQ7EtPglrcuX6klE2FaowKKUZ16Uv"

    const-string v3, "iUEJvxPqNpsH5KEgFbTXuwnVvg/2CWGGR6SvekIk2ms="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/jj3;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/qr3;)V

    .line 47
    iput-object p4, v1, Lads_mobile_sdk/j13;->f:Landroid/content/Context;

    .line 48
    iput-object p3, v1, Lads_mobile_sdk/j13;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;Lads_mobile_sdk/xf;)V
    .registers 6

    const-wide/16 v0, -0x1

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 53
    :try_start_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_22

    .line 54
    const-string v1, ""

    iget-object v2, p0, Lads_mobile_sdk/j13;->f:Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_20
    move-object v0, p1

    goto :goto_4c

    .line 57
    :cond_22
    iget-object p1, p0, Lads_mobile_sdk/j13;->g:Ljava/util/Map;

    const-string v1, "gs"

    .line 58
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz p1, :cond_4c

    .line 59
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 60
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/fh;

    if-eqz p1, :cond_4c

    .line 62
    invoke-virtual {p1}, Lads_mobile_sdk/fh;->z()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_44} :catch_45
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_44} :catch_4c

    goto :goto_20

    .line 67
    :catch_45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 71
    :catch_4c
    :cond_4c
    :goto_4c
    monitor-enter p2

    .line 72
    :try_start_4d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->u(J)V

    .line 73
    monitor-exit p2

    return-void

    :catchall_56
    move-exception p1

    .line 74
    monitor-exit p2
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_56

    throw p1
.end method
