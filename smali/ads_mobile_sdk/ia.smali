###### Class ads_mobile_sdk.ia (ads_mobile_sdk.ia)
.class public final Lads_mobile_sdk/ia;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/qc1;

.field public final b:Lads_mobile_sdk/wj3;

.field public final c:Lads_mobile_sdk/hl3;

.field public final d:Lads_mobile_sdk/ts3;

.field public final e:Lads_mobile_sdk/ja3;

.field public final f:J

.field public final g:Lads_mobile_sdk/ks1;

.field public final h:J

.field public final i:J

.field public final j:Z

.field public final k:J

.field public final l:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/qc1;Lads_mobile_sdk/wj3;Lads_mobile_sdk/hl3;Lads_mobile_sdk/ts3;Lads_mobile_sdk/ja3;Lads_mobile_sdk/ks1;Lads_mobile_sdk/na;)V
    .registers 8

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lads_mobile_sdk/ia;->a:Lads_mobile_sdk/qc1;

    .line 63
    iput-object p2, p0, Lads_mobile_sdk/ia;->b:Lads_mobile_sdk/wj3;

    .line 64
    iput-object p3, p0, Lads_mobile_sdk/ia;->c:Lads_mobile_sdk/hl3;

    .line 65
    iput-object p4, p0, Lads_mobile_sdk/ia;->d:Lads_mobile_sdk/ts3;

    .line 66
    iput-object p5, p0, Lads_mobile_sdk/ia;->e:Lads_mobile_sdk/ja3;

    .line 67
    invoke-virtual {p7}, Lads_mobile_sdk/na;->U()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/ia;->f:J

    .line 68
    iput-object p6, p0, Lads_mobile_sdk/ia;->g:Lads_mobile_sdk/ks1;

    .line 69
    invoke-virtual {p7}, Lads_mobile_sdk/na;->x()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/ia;->h:J

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/ia;->i:J

    .line 71
    invoke-virtual {p7}, Lads_mobile_sdk/na;->F()Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/ia;->j:Z

    .line 72
    invoke-virtual {p7}, Lads_mobile_sdk/na;->y()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/ia;->k:J

    .line 73
    invoke-virtual {p7}, Lads_mobile_sdk/na;->z()Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/ia;->l:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6

    .line 761
    iget-object p5, p0, Lads_mobile_sdk/ia;->b:Lads_mobile_sdk/wj3;

    .line 762
    iget-object p5, p5, Lads_mobile_sdk/wj3;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 763
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lads_mobile_sdk/qj3;

    invoke-interface {p5, p1, p2, p3, p4}, Lads_mobile_sdk/qj3;->b(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 855
    iget-object p2, p0, Lads_mobile_sdk/ia;->b:Lads_mobile_sdk/wj3;

    .line 856
    iget-object p2, p2, Lads_mobile_sdk/wj3;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 857
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/qj3;

    invoke-interface {p2, p1}, Lads_mobile_sdk/qj3;->a(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 259
    iget-boolean v0, p0, Lads_mobile_sdk/ia;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lads_mobile_sdk/ia;->i:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lads_mobile_sdk/ia;->k:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    move v0, v1

    .line 261
    :goto_15
    iget-object v2, p0, Lads_mobile_sdk/ia;->d:Lads_mobile_sdk/ts3;

    sget-object v3, Lads_mobile_sdk/lq0;->d:Lads_mobile_sdk/lq0;

    .line 262
    new-instance v4, Lads_mobile_sdk/qr3;

    .line 263
    iget-object v5, v2, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    .line 264
    iget-object v2, v2, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v4, v3, v5, v2}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V

    .line 265
    iget-boolean v2, p0, Lads_mobile_sdk/ia;->l:Z

    if-eqz v2, :cond_3a

    .line 266
    iget-object v2, p0, Lads_mobile_sdk/ia;->a:Lads_mobile_sdk/qc1;

    monitor-enter v2

    .line 267
    :try_start_29
    iget-object v3, v2, Lads_mobile_sdk/qc1;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_37

    monitor-exit v2

    .line 268
    invoke-static {v3}, Lcom/google/common/util/concurrent/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    goto :goto_40

    :catchall_37
    move-exception p1

    monitor-exit v2

    throw p1

    .line 269
    :cond_3a
    iget-object v2, p0, Lads_mobile_sdk/ia;->a:Lads_mobile_sdk/qc1;

    invoke-virtual {v2}, Lads_mobile_sdk/qc1;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    :goto_40
    new-instance v3, Lads_mobile_sdk/ia$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lads_mobile_sdk/ia$$ExternalSyntheticLambda2;-><init>(Lads_mobile_sdk/ia;Landroid/content/Context;)V

    .line 271
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 272
    invoke-static {v2, v3, p1}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 279
    :try_start_4d
    invoke-virtual {v4}, Lads_mobile_sdk/qr3;->b()V

    if-eqz v0, :cond_5b

    .line 281
    iget-wide v2, p0, Lads_mobile_sdk/ia;->h:J

    goto :goto_5d

    :catchall_55
    move-exception p1

    goto :goto_6e

    :catch_57
    move-exception p1

    goto :goto_74

    :catch_59
    move-exception p1

    goto :goto_89

    .line 282
    :cond_5b
    iget-wide v2, p0, Lads_mobile_sdk/ia;->f:J

    :goto_5d
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 283
    invoke-interface {p1, v2, v3, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_65
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4d .. :try_end_65} :catch_a2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4d .. :try_end_65} :catch_59
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_65} :catch_57
    .catchall {:try_start_4d .. :try_end_65} :catchall_55

    .line 305
    invoke-virtual {v4}, Lads_mobile_sdk/qr3;->a()V

    .line 306
    iget-object p1, p0, Lads_mobile_sdk/ia;->e:Lads_mobile_sdk/ja3;

    invoke-interface {p1}, Lads_mobile_sdk/ja3;->a()V

    return-object v2

    .line 307
    :goto_6e
    :try_start_6e
    invoke-virtual {v4, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 308
    throw p1

    :catchall_72
    move-exception p1

    goto :goto_b6

    .line 309
    :goto_74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 310
    invoke-virtual {v4, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 311
    const-string p1, ""
    :try_end_80
    .catchall {:try_start_6e .. :try_end_80} :catchall_72

    .line 317
    invoke-virtual {v4}, Lads_mobile_sdk/qr3;->a()V

    .line 318
    iget-object v0, p0, Lads_mobile_sdk/ia;->e:Lads_mobile_sdk/ja3;

    invoke-interface {v0}, Lads_mobile_sdk/ja3;->a()V

    return-object p1

    .line 319
    :goto_89
    :try_start_89
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_90

    goto :goto_91

    :cond_90
    move-object p1, v0

    .line 320
    :goto_91
    invoke-virtual {v4, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x3

    .line 321
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_99
    .catchall {:try_start_89 .. :try_end_99} :catchall_72

    .line 331
    invoke-virtual {v4}, Lads_mobile_sdk/qr3;->a()V

    .line 332
    iget-object v0, p0, Lads_mobile_sdk/ia;->e:Lads_mobile_sdk/ja3;

    invoke-interface {v0}, Lads_mobile_sdk/ja3;->a()V

    return-object p1

    .line 333
    :catch_a2
    :try_start_a2
    iget-boolean v2, p0, Lads_mobile_sdk/ia;->l:Z

    if-eqz v2, :cond_a9

    .line 334
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 337
    :cond_a9
    invoke-virtual {p0, v0}, Lads_mobile_sdk/ia;->a(Z)Ljava/lang/String;

    move-result-object p1
    :try_end_ad
    .catchall {:try_start_a2 .. :try_end_ad} :catchall_72

    .line 351
    invoke-virtual {v4}, Lads_mobile_sdk/qr3;->a()V

    .line 352
    iget-object v0, p0, Lads_mobile_sdk/ia;->e:Lads_mobile_sdk/ja3;

    invoke-interface {v0}, Lads_mobile_sdk/ja3;->a()V

    return-object p1

    .line 353
    :goto_b6
    invoke-virtual {v4}, Lads_mobile_sdk/qr3;->a()V

    .line 354
    iget-object v0, p0, Lads_mobile_sdk/ia;->e:Lads_mobile_sdk/ja3;

    invoke-interface {v0}, Lads_mobile_sdk/ja3;->a()V

    .line 355
    throw p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 14

    .line 168
    iget-object v0, p0, Lads_mobile_sdk/ia;->d:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->f:Lads_mobile_sdk/lq0;

    .line 169
    new-instance v2, Lads_mobile_sdk/qr3;

    .line 170
    iget-object v3, v0, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    .line 171
    iget-object v0, v0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v2, v1, v3, v0}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V

    .line 172
    iget-boolean v0, p0, Lads_mobile_sdk/ia;->l:Z

    if-eqz v0, :cond_26

    .line 173
    iget-object v1, p0, Lads_mobile_sdk/ia;->a:Lads_mobile_sdk/qc1;

    monitor-enter v1

    .line 174
    :try_start_14
    iget-object v0, v1, Lads_mobile_sdk/qc1;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_22

    monitor-exit v1

    .line 175
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_2c

    :catchall_22
    move-exception v0

    move-object p1, v0

    monitor-exit v1

    throw p1

    .line 176
    :cond_26
    iget-object v0, p0, Lads_mobile_sdk/ia;->a:Lads_mobile_sdk/qc1;

    invoke-virtual {v0}, Lads_mobile_sdk/qc1;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    :goto_2c
    new-instance v3, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/ia;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V

    .line 178
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 179
    invoke-static {v0, v3, p1}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 186
    :try_start_3e
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->b()V

    .line 187
    iget-wide p2, v4, Lads_mobile_sdk/ia;->f:J

    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_4b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3e .. :try_end_4b} :catch_92
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3e .. :try_end_4b} :catch_5a
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_4b} :catch_57
    .catchall {:try_start_3e .. :try_end_4b} :catchall_54

    .line 207
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    .line 208
    iget-object p1, v4, Lads_mobile_sdk/ia;->e:Lads_mobile_sdk/ja3;

    invoke-interface {p1}, Lads_mobile_sdk/ja3;->a()V

    return-object p2

    :catchall_54
    move-exception v0

    move-object p1, v0

    goto :goto_5d

    :catch_57
    move-exception v0

    move-object p1, v0

    goto :goto_64

    :catch_5a
    move-exception v0

    move-object p1, v0

    goto :goto_79

    .line 209
    :goto_5d
    :try_start_5d
    invoke-virtual {v2, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 210
    throw p1

    :catchall_61
    move-exception v0

    move-object p1, v0

    goto :goto_b0

    .line 211
    :goto_64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 212
    invoke-virtual {v2, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 213
    const-string p1, ""
    :try_end_70
    .catchall {:try_start_5d .. :try_end_70} :catchall_61

    .line 219
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    .line 220
    iget-object p2, v4, Lads_mobile_sdk/ia;->e:Lads_mobile_sdk/ja3;

    invoke-interface {p2}, Lads_mobile_sdk/ja3;->a()V

    return-object p1

    .line 221
    :goto_79
    :try_start_79
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_80

    goto :goto_81

    :cond_80
    move-object p1, p2

    .line 222
    :goto_81
    invoke-virtual {v2, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x3

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_89
    .catchall {:try_start_79 .. :try_end_89} :catchall_61

    .line 233
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    .line 234
    iget-object p2, v4, Lads_mobile_sdk/ia;->e:Lads_mobile_sdk/ja3;

    invoke-interface {p2}, Lads_mobile_sdk/ja3;->a()V

    return-object p1

    .line 235
    :catch_92
    :try_start_92
    iget-boolean p2, v4, Lads_mobile_sdk/ia;->l:Z

    if-eqz p2, :cond_9a

    const/4 p2, 0x0

    .line 236
    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 238
    :cond_9a
    iget-object p1, v4, Lads_mobile_sdk/ia;->d:Lads_mobile_sdk/ts3;

    sget-object p2, Lads_mobile_sdk/lq0;->n:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    const/16 p1, 0x11

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_a7
    .catchall {:try_start_92 .. :try_end_a7} :catchall_61

    .line 253
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    .line 254
    iget-object p2, v4, Lads_mobile_sdk/ia;->e:Lads_mobile_sdk/ja3;

    invoke-interface {p2}, Lads_mobile_sdk/ja3;->a()V

    return-object p1

    .line 255
    :goto_b0
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    .line 256
    iget-object p2, v4, Lads_mobile_sdk/ia;->e:Lads_mobile_sdk/ja3;

    invoke-interface {p2}, Lads_mobile_sdk/ja3;->a()V

    .line 257
    throw p1
.end method

.method public final a(Z)Ljava/lang/String;
    .registers 8

    if-eqz p1, :cond_30

    .line 568
    iget-object p1, p0, Lads_mobile_sdk/ia;->g:Lads_mobile_sdk/ks1;

    .line 569
    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bx1;

    iget-wide v0, p0, Lads_mobile_sdk/ia;->i:J

    .line 570
    check-cast p1, Lads_mobile_sdk/cx1;

    .line 571
    iget-object v2, p1, Lads_mobile_sdk/cx1;->b:Lads_mobile_sdk/ts3;

    .line 572
    sget-object v3, Lads_mobile_sdk/lq0;->k:Lads_mobile_sdk/lq0;

    .line 573
    new-instance v4, Lads_mobile_sdk/qr3;

    iget-object v5, v2, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    iget-object v2, v2, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v4, v3, v5, v2}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V

    .line 574
    :try_start_1b
    invoke-virtual {v4}, Lads_mobile_sdk/qr3;->b()V

    .line 575
    invoke-virtual {p1, v0, v1}, Lads_mobile_sdk/cx1;->a(J)Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_26

    .line 580
    invoke-virtual {v4}, Lads_mobile_sdk/qr3;->a()V

    return-object p1

    :catchall_26
    move-exception p1

    .line 581
    :try_start_27
    invoke-virtual {v4, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 582
    throw p1
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p1

    .line 584
    invoke-virtual {v4}, Lads_mobile_sdk/qr3;->a()V

    .line 585
    throw p1

    .line 586
    :cond_30
    iget-object p1, p0, Lads_mobile_sdk/ia;->d:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->l:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    const/16 p1, 0x11

    .line 587
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6

    .line 351
    iget-object p5, p0, Lads_mobile_sdk/ia;->b:Lads_mobile_sdk/wj3;

    .line 352
    iget-object p5, p5, Lads_mobile_sdk/wj3;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 353
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lads_mobile_sdk/qj3;

    invoke-interface {p5, p1, p2, p3, p4}, Lads_mobile_sdk/qj3;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 14

    .line 128
    iget-object v0, p0, Lads_mobile_sdk/ia;->d:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->e:Lads_mobile_sdk/lq0;

    .line 129
    new-instance v2, Lads_mobile_sdk/qr3;

    .line 130
    iget-object v3, v0, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    .line 131
    iget-object v0, v0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v2, v1, v3, v0}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V

    .line 132
    iget-boolean v0, p0, Lads_mobile_sdk/ia;->l:Z

    if-eqz v0, :cond_26

    .line 133
    iget-object v1, p0, Lads_mobile_sdk/ia;->a:Lads_mobile_sdk/qc1;

    monitor-enter v1

    .line 134
    :try_start_14
    iget-object v0, v1, Lads_mobile_sdk/qc1;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_22

    monitor-exit v1

    .line 135
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_2c

    :catchall_22
    move-exception v0

    move-object p1, v0

    monitor-exit v1

    throw p1

    .line 136
    :cond_26
    iget-object v0, p0, Lads_mobile_sdk/ia;->a:Lads_mobile_sdk/qc1;

    invoke-virtual {v0}, Lads_mobile_sdk/qc1;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    :goto_2c
    new-instance v3, Lads_mobile_sdk/ia$$ExternalSyntheticLambda1;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lads_mobile_sdk/ia$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/ia;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V

    .line 138
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 139
    invoke-static {v0, v3, p1}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 146
    :try_start_3e
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->b()V

    .line 147
    iget-wide p2, v4, Lads_mobile_sdk/ia;->f:J

    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_4b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3e .. :try_end_4b} :catch_92
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3e .. :try_end_4b} :catch_5a
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_4b} :catch_57
    .catchall {:try_start_3e .. :try_end_4b} :catchall_54

    .line 167
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    .line 168
    iget-object p1, v4, Lads_mobile_sdk/ia;->e:Lads_mobile_sdk/ja3;

    invoke-interface {p1}, Lads_mobile_sdk/ja3;->a()V

    return-object p2

    :catchall_54
    move-exception v0

    move-object p1, v0

    goto :goto_5d

    :catch_57
    move-exception v0

    move-object p1, v0

    goto :goto_64

    :catch_5a
    move-exception v0

    move-object p1, v0

    goto :goto_79

    .line 169
    :goto_5d
    :try_start_5d
    invoke-virtual {v2, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 170
    throw p1

    :catchall_61
    move-exception v0

    move-object p1, v0

    goto :goto_b0

    .line 171
    :goto_64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 172
    invoke-virtual {v2, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 173
    const-string p1, ""
    :try_end_70
    .catchall {:try_start_5d .. :try_end_70} :catchall_61

    .line 179
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    .line 180
    iget-object p2, v4, Lads_mobile_sdk/ia;->e:Lads_mobile_sdk/ja3;

    invoke-interface {p2}, Lads_mobile_sdk/ja3;->a()V

    return-object p1

    .line 181
    :goto_79
    :try_start_79
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_80

    goto :goto_81

    :cond_80
    move-object p1, p2

    .line 182
    :goto_81
    invoke-virtual {v2, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x3

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_89
    .catchall {:try_start_79 .. :try_end_89} :catchall_61

    .line 193
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    .line 194
    iget-object p2, v4, Lads_mobile_sdk/ia;->e:Lads_mobile_sdk/ja3;

    invoke-interface {p2}, Lads_mobile_sdk/ja3;->a()V

    return-object p1

    .line 195
    :catch_92
    :try_start_92
    iget-boolean p2, v4, Lads_mobile_sdk/ia;->l:Z

    if-eqz p2, :cond_9a

    const/4 p2, 0x0

    .line 196
    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 198
    :cond_9a
    iget-object p1, v4, Lads_mobile_sdk/ia;->d:Lads_mobile_sdk/ts3;

    sget-object p2, Lads_mobile_sdk/lq0;->m:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    const/16 p1, 0x11

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_a7
    .catchall {:try_start_92 .. :try_end_a7} :catchall_61

    .line 213
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    .line 214
    iget-object p2, v4, Lads_mobile_sdk/ia;->e:Lads_mobile_sdk/ja3;

    invoke-interface {p2}, Lads_mobile_sdk/ja3;->a()V

    return-object p1

    .line 215
    :goto_b0
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    .line 216
    iget-object p2, v4, Lads_mobile_sdk/ia;->e:Lads_mobile_sdk/ja3;

    invoke-interface {p2}, Lads_mobile_sdk/ja3;->a()V

    .line 217
    throw p1
.end method

###### Class ads_mobile_sdk.ia$$ExternalSyntheticLambda0 (ads_mobile_sdk.ia$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ia;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ia;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/ia;

    iput-object p2, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$3:Landroid/view/View;

    iput-object p5, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$4:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 8

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/ia;

    iget-object v1, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$3:Landroid/view/View;

    iget-object v4, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda0;->f$4:Landroid/app/Activity;

    move-object v5, p1

    check-cast v5, Ljava/lang/Void;

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/ia;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.ia$$ExternalSyntheticLambda1 (ads_mobile_sdk.ia$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/ia$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ia;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ia;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/ia;

    iput-object p2, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    iput-object p5, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda1;->f$4:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 8

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/ia;

    iget-object v1, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    iget-object v4, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda1;->f$4:Landroid/app/Activity;

    move-object v5, p1

    check-cast v5, Ljava/lang/Void;

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/ia;->b(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.ia$$ExternalSyntheticLambda2 (ads_mobile_sdk.ia$$ExternalSyntheticLambda2)
.class public final synthetic Lads_mobile_sdk/ia$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/ia;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/ia;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/ia;

    iput-object p2, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/ia;

    iget-object v1, p0, Lads_mobile_sdk/ia$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/ia;->a(Landroid/content/Context;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
