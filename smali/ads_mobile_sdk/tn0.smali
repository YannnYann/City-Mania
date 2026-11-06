###### Class ads_mobile_sdk.tn0 (ads_mobile_sdk.tn0)
.class public final Lads_mobile_sdk/tn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/oy3;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/hl3;

.field public final c:Lads_mobile_sdk/ts3;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/na;Lads_mobile_sdk/hl3;Lads_mobile_sdk/ts3;)V
    .registers 7

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lads_mobile_sdk/tn0;->a:Landroid/content/Context;

    .line 48
    invoke-virtual {p2}, Lads_mobile_sdk/na;->M()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/tn0;->d:Ljava/lang/String;

    .line 49
    invoke-virtual {p2}, Lads_mobile_sdk/na;->K()J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/tn0;->e:J

    .line 50
    invoke-virtual {p2}, Lads_mobile_sdk/na;->O()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/tn0;->f:J

    .line 51
    iput-object p3, p0, Lads_mobile_sdk/tn0;->b:Lads_mobile_sdk/hl3;

    .line 52
    iput-object p4, p0, Lads_mobile_sdk/tn0;->c:Lads_mobile_sdk/ts3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .registers 14

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/tn0;->d:Ljava/lang/String;

    const-string v1, "v"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "t"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v0, "E"

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    .line 14
    :try_start_16
    const-string v4, "gs"

    .line 15
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v4, :cond_ca

    .line 17
    iget-object v5, p0, Lads_mobile_sdk/tn0;->c:Lads_mobile_sdk/ts3;

    sget-object v6, Lads_mobile_sdk/lq0;->l2:Lads_mobile_sdk/lq0;

    invoke-virtual {v5, v6}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object v5
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_28} :catch_db
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_16 .. :try_end_28} :catch_cf
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_28} :catch_ca
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_28} :catch_ca

    .line 19
    :try_start_28
    invoke-virtual {v5}, Lads_mobile_sdk/qr3;->b()V

    .line 20
    iget-wide v6, p0, Lads_mobile_sdk/tn0;->e:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/fh;

    if-eqz v4, :cond_be

    .line 22
    invoke-virtual {v4}, Lads_mobile_sdk/fh;->C()Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 23
    invoke-virtual {v4}, Lads_mobile_sdk/fh;->y()Lads_mobile_sdk/xh;

    move-result-object v6

    .line 24
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->y()Z

    move-result v7

    if-eqz v7, :cond_69

    .line 26
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->v()Lads_mobile_sdk/du;

    move-result-object v7

    invoke-virtual {v7}, Lads_mobile_sdk/du;->i()[B

    move-result-object v7
    :try_end_4f
    .catchall {:try_start_28 .. :try_end_4f} :catchall_62

    .line 28
    :try_start_4f
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->v()Lads_mobile_sdk/du;

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Lads_mobile_sdk/du;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_5a

    goto :goto_6b

    :catchall_5a
    move-exception v4

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    :goto_5e
    move-object v3, v7

    :goto_5f
    move-object v7, v0

    goto/16 :goto_c6

    :catchall_62
    move-exception v4

    move-object v7, v0

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    goto/16 :goto_c6

    :cond_69
    move-object v7, v3

    move-object v8, v7

    .line 30
    :goto_6b
    :try_start_6b
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->A()Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 31
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->x()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9
    :try_end_79
    .catchall {:try_start_6b .. :try_end_79} :catchall_7a

    goto :goto_7f

    :catchall_7a
    move-exception v4

    move-object v6, v3

    move-object v9, v6

    goto :goto_5e

    :cond_7e
    move-object v9, v3

    .line 33
    :goto_7f
    :try_start_7f
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->z()Z

    move-result v10

    if-eqz v10, :cond_89

    .line 34
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->w()Ljava/lang/String;

    move-result-object v3
    :try_end_89
    .catchall {:try_start_7f .. :try_end_89} :catchall_8c

    :cond_89
    move-object v6, v3

    move-object v3, v7

    goto :goto_92

    :catchall_8c
    move-exception v4

    move-object v6, v3

    goto :goto_5e

    :cond_8f
    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    .line 38
    :goto_92
    :try_start_92
    invoke-virtual {v4}, Lads_mobile_sdk/fh;->w()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x1

    if-le v7, v10, :cond_b0

    .line 39
    invoke-virtual {v4}, Lads_mobile_sdk/fh;->w()Ljava/lang/String;

    move-result-object v7

    const-string v10, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b0

    .line 40
    invoke-virtual {v4}, Lads_mobile_sdk/fh;->w()Ljava/lang/String;

    move-result-object v7
    :try_end_ad
    .catchall {:try_start_92 .. :try_end_ad} :catchall_ae

    goto :goto_b1

    :catchall_ae
    move-exception v4

    goto :goto_5f

    :cond_b0
    move-object v7, v0

    .line 42
    :goto_b1
    :try_start_b1
    invoke-virtual {v4}, Lads_mobile_sdk/fh;->A()Z

    move-result v10

    if-eqz v10, :cond_c2

    .line 43
    invoke-virtual {v4}, Lads_mobile_sdk/fh;->v()J

    move-result-wide v1
    :try_end_bb
    .catchall {:try_start_b1 .. :try_end_bb} :catchall_bc

    goto :goto_c2

    :catchall_bc
    move-exception v4

    goto :goto_c6

    :cond_be
    move-object v7, v0

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    .line 47
    :cond_c2
    :goto_c2
    :try_start_c2
    invoke-virtual {v5}, Lads_mobile_sdk/qr3;->a()V

    goto :goto_e6

    :goto_c6
    invoke-virtual {v5}, Lads_mobile_sdk/qr3;->a()V

    .line 48
    throw v4
    :try_end_ca
    .catch Ljava/lang/InterruptedException; {:try_start_c2 .. :try_end_ca} :catch_df
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c2 .. :try_end_ca} :catch_d3
    .catch Ljava/lang/ClassCastException; {:try_start_c2 .. :try_end_ca} :catch_e6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c2 .. :try_end_ca} :catch_e6

    :catch_ca
    :cond_ca
    move-object v7, v0

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    goto :goto_e6

    :catch_cf
    move-object v7, v0

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    .line 53
    :catch_d3
    iget-object v4, p0, Lads_mobile_sdk/tn0;->c:Lads_mobile_sdk/ts3;

    sget-object v5, Lads_mobile_sdk/lq0;->n2:Lads_mobile_sdk/lq0;

    invoke-virtual {v4, v5}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    goto :goto_e6

    :catch_db
    move-object v7, v0

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    .line 54
    :catch_df
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 62
    :catch_e6
    :goto_e6
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 64
    :try_start_ec
    const-string v0, "ai"

    .line 65
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_12a

    .line 67
    iget-object v4, p0, Lads_mobile_sdk/tn0;->c:Lads_mobile_sdk/ts3;

    sget-object v5, Lads_mobile_sdk/lq0;->m2:Lads_mobile_sdk/lq0;

    .line 68
    invoke-virtual {v4, v5}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object v4
    :try_end_fe
    .catch Ljava/lang/InterruptedException; {:try_start_ec .. :try_end_fe} :catch_123
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_ec .. :try_end_fe} :catch_11b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_ec .. :try_end_fe} :catch_12a
    .catch Ljava/lang/ClassCastException; {:try_start_ec .. :try_end_fe} :catch_12a

    .line 70
    :try_start_fe
    invoke-virtual {v4}, Lads_mobile_sdk/qr3;->b()V

    .line 71
    iget-wide v10, p0, Lads_mobile_sdk/tn0;->f:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v10, v11, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5
    :try_end_10f
    .catchall {:try_start_fe .. :try_end_10f} :catchall_116

    if-nez v5, :cond_112

    move-object v7, v0

    .line 76
    :cond_112
    :try_start_112
    invoke-virtual {v4}, Lads_mobile_sdk/qr3;->a()V

    goto :goto_12a

    :catchall_116
    move-exception v0

    invoke-virtual {v4}, Lads_mobile_sdk/qr3;->a()V

    .line 77
    throw v0
    :try_end_11b
    .catch Ljava/lang/InterruptedException; {:try_start_112 .. :try_end_11b} :catch_123
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_112 .. :try_end_11b} :catch_11b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_112 .. :try_end_11b} :catch_12a
    .catch Ljava/lang/ClassCastException; {:try_start_112 .. :try_end_11b} :catch_12a

    .line 82
    :catch_11b
    iget-object v0, p0, Lads_mobile_sdk/tn0;->c:Lads_mobile_sdk/ts3;

    sget-object v4, Lads_mobile_sdk/lq0;->o2:Lads_mobile_sdk/lq0;

    invoke-virtual {v0, v4}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    goto :goto_12a

    .line 83
    :catch_123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 91
    :catch_12a
    :cond_12a
    :goto_12a
    const-string v0, "int"

    invoke-virtual {p1, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_136

    .line 93
    const-string v0, "attb"

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_136
    if-eqz v8, :cond_13d

    .line 96
    const-string v0, "att"

    invoke-virtual {p1, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13d
    if-eqz v9, :cond_144

    .line 99
    const-string v0, "attts"

    invoke-virtual {p1, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_144
    if-eqz v6, :cond_14b

    .line 102
    const-string v0, "attkid"

    invoke-virtual {p1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_14b
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "gv"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
