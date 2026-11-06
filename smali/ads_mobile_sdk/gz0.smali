###### Class ads_mobile_sdk.gz0 (ads_mobile_sdk.gz0)
.class public abstract Lads_mobile_sdk/gz0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/fh;
    .registers 4

    .line 1
    new-instance v0, Lads_mobile_sdk/fz0;

    invoke-direct {v0, p0, p1, p2}, Lads_mobile_sdk/fz0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_5
    iget-object p0, v0, Lads_mobile_sdk/fz0;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 p1, 0x1388

    int-to-long p1, p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/fh;
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    const/4 p0, 0x0

    :goto_14
    if-nez p0, :cond_27

    .line 3
    invoke-static {}, Lads_mobile_sdk/fh;->D()Lads_mobile_sdk/xf;

    move-result-object p0

    const-wide/32 p1, 0x8000

    .line 4
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/xf;->t(J)Lads_mobile_sdk/xf;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/fh;

    :cond_27
    return-object p0
.end method
