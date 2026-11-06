###### Class ads_mobile_sdk.f1 (ads_mobile_sdk.f1)
.class public final Lads_mobile_sdk/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/cf3;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Lads_mobile_sdk/xf;

.field public final c:Lads_mobile_sdk/ts3;

.field public final d:Lads_mobile_sdk/qr3;

.field public final e:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xf;Ljava/util/Map;Lads_mobile_sdk/na;Lads_mobile_sdk/ts3;)V
    .registers 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lads_mobile_sdk/f1;->a:Ljava/util/Map;

    .line 34
    iput-object p1, p0, Lads_mobile_sdk/f1;->b:Lads_mobile_sdk/xf;

    .line 35
    iput-object p4, p0, Lads_mobile_sdk/f1;->c:Lads_mobile_sdk/ts3;

    .line 36
    sget-object p1, Lads_mobile_sdk/lq0;->q:Lads_mobile_sdk/lq0;

    invoke-virtual {p4, p1}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/f1;->d:Lads_mobile_sdk/qr3;

    .line 37
    invoke-virtual {p3}, Lads_mobile_sdk/na;->K()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/f1;->e:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 6

    .line 2
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/f1;->d:Lads_mobile_sdk/qr3;

    invoke-virtual {v0}, Lads_mobile_sdk/qr3;->b()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/f1;->a:Ljava/util/Map;

    const-string v1, "gs"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_3d

    .line 6
    iget-wide v1, p0, Lads_mobile_sdk/f1;->e:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/fh;

    if-eqz v0, :cond_3d

    .line 8
    iget-object v1, p0, Lads_mobile_sdk/f1;->b:Lads_mobile_sdk/xf;

    monitor-enter v1
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_20} :catch_5f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_20} :catch_57
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_20} :catch_3b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_20} :catch_39
    .catchall {:try_start_0 .. :try_end_20} :catchall_37

    .line 9
    :try_start_20
    iget-object v2, p0, Lads_mobile_sdk/f1;->b:Lads_mobile_sdk/xf;

    invoke-virtual {v0}, Lads_mobile_sdk/fh;->y()Lads_mobile_sdk/xh;

    move-result-object v3

    invoke-virtual {v2, v3}, Lads_mobile_sdk/xf;->a(Lads_mobile_sdk/xh;)V

    .line 10
    iget-object v2, p0, Lads_mobile_sdk/f1;->b:Lads_mobile_sdk/xf;

    invoke-virtual {v0}, Lads_mobile_sdk/fh;->v()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lads_mobile_sdk/xf;->m(J)V

    .line 11
    monitor-exit v1

    goto :goto_3d

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_34

    :try_start_36
    throw v0
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_37} :catch_5f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_36 .. :try_end_37} :catch_57
    .catch Ljava/lang/ClassCastException; {:try_start_36 .. :try_end_37} :catch_3b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_36 .. :try_end_37} :catch_39
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v0

    goto :goto_6d

    :catch_39
    move-exception v0

    goto :goto_43

    :catch_3b
    move-exception v0

    goto :goto_51

    .line 24
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lads_mobile_sdk/f1;->d:Lads_mobile_sdk/qr3;

    invoke-virtual {v0}, Lads_mobile_sdk/qr3;->a()V

    goto :goto_6b

    .line 25
    :goto_43
    :try_start_43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 26
    iget-object v2, p0, Lads_mobile_sdk/f1;->d:Lads_mobile_sdk/qr3;

    if-nez v1, :cond_4c

    goto :goto_4d

    :cond_4c
    move-object v0, v1

    :goto_4d
    invoke-virtual {v2, v0}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    goto :goto_66

    .line 29
    :goto_51
    iget-object v1, p0, Lads_mobile_sdk/f1;->d:Lads_mobile_sdk/qr3;

    invoke-virtual {v1, v0}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    goto :goto_66

    .line 30
    :catch_57
    iget-object v0, p0, Lads_mobile_sdk/f1;->c:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->F:Lads_mobile_sdk/lq0;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    goto :goto_66

    .line 31
    :catch_5f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_66
    .catchall {:try_start_43 .. :try_end_66} :catchall_37

    .line 28
    :goto_66
    iget-object v0, p0, Lads_mobile_sdk/f1;->d:Lads_mobile_sdk/qr3;

    invoke-virtual {v0}, Lads_mobile_sdk/qr3;->a()V

    :goto_6b
    const/4 v0, 0x0

    return-object v0

    .line 40
    :goto_6d
    iget-object v1, p0, Lads_mobile_sdk/f1;->d:Lads_mobile_sdk/qr3;

    invoke-virtual {v1}, Lads_mobile_sdk/qr3;->a()V

    .line 41
    throw v0
.end method
