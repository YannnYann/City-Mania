###### Class ads_mobile_sdk.ap2 (ads_mobile_sdk.ap2)
.class public final Lads_mobile_sdk/ap2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/e1;


# instance fields
.field public final a:Lads_mobile_sdk/i2;

.field public final b:Lads_mobile_sdk/tx;

.field public final c:Lads_mobile_sdk/zy;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lads_mobile_sdk/g83;

.field public final f:Lads_mobile_sdk/d63;

.field public final g:Lads_mobile_sdk/ex0;

.field public final h:Lads_mobile_sdk/du1;

.field public final i:Lads_mobile_sdk/ec3;

.field public final j:Ljava/lang/Object;

.field public final k:Lads_mobile_sdk/dp2;

.field public l:Z

.field public m:Z

.field public n:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/i2;Lads_mobile_sdk/tx;Lads_mobile_sdk/zy;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/d63;Lads_mobile_sdk/ex0;Lads_mobile_sdk/du1;Lads_mobile_sdk/ec3;)V
    .registers 11

    .line 1
    const-string v0, "adConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryingUrlPinger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "macroExpander"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverTransaction"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lads_mobile_sdk/ap2;->a:Lads_mobile_sdk/i2;

    .line 53
    iput-object p2, p0, Lads_mobile_sdk/ap2;->b:Lads_mobile_sdk/tx;

    .line 54
    iput-object p3, p0, Lads_mobile_sdk/ap2;->c:Lads_mobile_sdk/zy;

    .line 55
    iput-object p4, p0, Lads_mobile_sdk/ap2;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 56
    iput-object p5, p0, Lads_mobile_sdk/ap2;->e:Lads_mobile_sdk/g83;

    .line 57
    iput-object p6, p0, Lads_mobile_sdk/ap2;->f:Lads_mobile_sdk/d63;

    .line 58
    iput-object p7, p0, Lads_mobile_sdk/ap2;->g:Lads_mobile_sdk/ex0;

    .line 59
    iput-object p8, p0, Lads_mobile_sdk/ap2;->h:Lads_mobile_sdk/du1;

    .line 60
    iput-object p9, p0, Lads_mobile_sdk/ap2;->i:Lads_mobile_sdk/ec3;

    .line 63
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ap2;->j:Ljava/lang/Object;

    .line 67
    invoke-static {}, Lads_mobile_sdk/ep2;->v()Lads_mobile_sdk/dp2;

    move-result-object p1

    const-string p2, "newBuilder(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lads_mobile_sdk/ap2;->k:Lads_mobile_sdk/dp2;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/ap2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ap2;->j:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-boolean v1, p0, Lads_mobile_sdk/ap2;->m:Z

    if-eqz v1, :cond_e

    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    goto/16 :goto_138

    :cond_e
    const/4 v1, 0x1

    .line 7
    :try_start_f
    iput-boolean v1, p0, Lads_mobile_sdk/ap2;->m:Z

    .line 8
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_b

    .line 9
    monitor-exit v0

    .line 15
    invoke-virtual {p0}, Lads_mobile_sdk/ap2;->f()Lads_mobile_sdk/dp2;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ep2;

    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    iget-object v3, p0, Lads_mobile_sdk/ap2;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string v4, "gads:enable_pclm_rcs_logger:enabled"

    .line 19
    const-string v5, "key"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v3, v4, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3f

    goto/16 :goto_ec

    .line 36
    :cond_3f
    iget-object v3, p0, Lads_mobile_sdk/ap2;->e:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->J0:Lads_mobile_sdk/s11;

    .line 85
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 86
    new-instance v6, Lads_mobile_sdk/ks3;

    .line 87
    new-instance v7, Lads_mobile_sdk/n03;

    invoke-direct {v7}, Lads_mobile_sdk/n03;-><init>()V

    .line 88
    new-instance v8, Lads_mobile_sdk/tn1;

    invoke-direct {v8}, Lads_mobile_sdk/tn1;-><init>()V

    .line 89
    new-instance v9, Lads_mobile_sdk/m33;

    invoke-direct {v9}, Lads_mobile_sdk/m33;-><init>()V

    .line 90
    new-instance v10, Lads_mobile_sdk/zb;

    invoke-direct {v10}, Lads_mobile_sdk/zb;-><init>()V

    .line 91
    invoke-direct {v6, v7, v8, v9, v10}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 92
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v7

    .line 93
    iget-object v7, v7, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v8, 0x0

    if-nez v7, :cond_c9

    .line 94
    invoke-static {v3, v4, v5, v6}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 95
    :try_start_6d
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    invoke-virtual {v3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    iput-object v0, v3, Lads_mobile_sdk/uj2;->H:Lads_mobile_sdk/ep2;

    .line 149
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 150
    iget-object v3, v3, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 151
    iget-object v3, v3, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 152
    iget-object v4, p0, Lads_mobile_sdk/ap2;->c:Lads_mobile_sdk/zy;

    iget-object v4, v4, Lads_mobile_sdk/zy;->h:Ljava/lang/String;

    iput-object v4, v3, Lads_mobile_sdk/tn1;->b:Ljava/lang/String;
    :try_end_85
    .catchall {:try_start_6d .. :try_end_85} :catchall_89

    .line 209
    invoke-static {v1, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_ec

    :catchall_89
    move-exception p0

    .line 219
    :try_start_8a
    invoke-virtual {v1, p0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 223
    instance-of p1, p0, Lads_mobile_sdk/v24;

    if-nez p1, :cond_c2

    .line 225
    instance-of p1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_9f

    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_9f

    .line 231
    invoke-virtual {v1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_9f

    :catchall_9d
    move-exception p0

    goto :goto_c3

    .line 237
    :cond_9f
    :goto_9f
    instance-of p1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_ba

    .line 238
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_b2

    .line 239
    instance-of p1, p0, Lads_mobile_sdk/w01;

    if-eqz p1, :cond_ac

    throw p0

    .line 240
    :cond_ac
    new-instance p1, Lads_mobile_sdk/b01;

    invoke-direct {p1, p0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 241
    :cond_b2
    new-instance p1, Lads_mobile_sdk/wz0;

    check-cast p0, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1, p0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p1

    .line 242
    :cond_ba
    new-instance p1, Lads_mobile_sdk/i21;

    check-cast p0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p1, p0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p1

    .line 243
    :cond_c2
    throw p0
    :try_end_c3
    .catchall {:try_start_8a .. :try_end_c3} :catchall_9d

    .line 244
    :goto_c3
    :try_start_c3
    throw p0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c4

    :catchall_c4
    move-exception p1

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 280
    :cond_c9
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v4, v3, v1}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 281
    :try_start_d1
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    invoke-virtual {v3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    iput-object v0, v3, Lads_mobile_sdk/uj2;->H:Lads_mobile_sdk/ep2;

    .line 374
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 375
    iget-object v3, v3, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 376
    iget-object v3, v3, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 377
    iget-object v4, p0, Lads_mobile_sdk/ap2;->c:Lads_mobile_sdk/zy;

    iget-object v4, v4, Lads_mobile_sdk/zy;->h:Ljava/lang/String;

    iput-object v4, v3, Lads_mobile_sdk/tn1;->b:Ljava/lang/String;
    :try_end_e9
    .catchall {:try_start_d1 .. :try_end_e9} :catchall_f8

    .line 473
    invoke-static {v1, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 474
    :goto_ec
    invoke-virtual {p0, v0, p1}, Lads_mobile_sdk/ap2;->a(Lads_mobile_sdk/ep2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_f7

    return-object p0

    :cond_f7
    return-object v2

    :catchall_f8
    move-exception p0

    .line 475
    :try_start_f9
    invoke-virtual {v1, p0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 479
    instance-of p1, p0, Lads_mobile_sdk/v24;

    if-nez p1, :cond_131

    .line 481
    instance-of p1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_10e

    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_10e

    .line 487
    invoke-virtual {v1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_10e

    :catchall_10c
    move-exception p0

    goto :goto_132

    .line 493
    :cond_10e
    :goto_10e
    instance-of p1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_129

    .line 494
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_121

    .line 495
    instance-of p1, p0, Lads_mobile_sdk/w01;

    if-eqz p1, :cond_11b

    throw p0

    .line 496
    :cond_11b
    new-instance p1, Lads_mobile_sdk/b01;

    invoke-direct {p1, p0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 497
    :cond_121
    new-instance p1, Lads_mobile_sdk/wz0;

    check-cast p0, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1, p0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p1

    .line 498
    :cond_129
    new-instance p1, Lads_mobile_sdk/i21;

    check-cast p0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p1, p0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p1

    .line 499
    :cond_131
    throw p0
    :try_end_132
    .catchall {:try_start_f9 .. :try_end_132} :catchall_10c

    .line 500
    :goto_132
    :try_start_132
    throw p0
    :try_end_133
    .catchall {:try_start_132 .. :try_end_133} :catchall_133

    :catchall_133
    move-exception p1

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 501
    :goto_138
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ep2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1120
    instance-of v2, v0, Lads_mobile_sdk/yo2;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/yo2;

    iget v3, v2, Lads_mobile_sdk/yo2;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/yo2;->f:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/yo2;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/yo2;-><init>(Lads_mobile_sdk/ap2;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/yo2;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1290
    iget v4, v2, Lads_mobile_sdk/yo2;->f:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_5b

    if-eq v4, v6, :cond_48

    if-ne v4, v5, :cond_40

    iget-object v3, v2, Lads_mobile_sdk/yo2;->c:Lads_mobile_sdk/rr3;

    iget-object v4, v2, Lads_mobile_sdk/yo2;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/yo2;->a:Lads_mobile_sdk/ap2;

    :try_start_33
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3d

    move-object/from16 v18, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v7

    goto/16 :goto_1f4

    :catchall_3d
    move-exception v0

    goto/16 :goto_210

    .line 1291
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    iget-object v3, v2, Lads_mobile_sdk/yo2;->c:Lads_mobile_sdk/rr3;

    iget-object v4, v2, Lads_mobile_sdk/yo2;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/yo2;->a:Lads_mobile_sdk/ap2;

    :try_start_4e
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_58

    move-object/from16 v18, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v7

    goto/16 :goto_125

    :catchall_58
    move-exception v0

    goto/16 :goto_140

    .line 1292
    :cond_5b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1296
    iget-object v0, v1, Lads_mobile_sdk/ap2;->g:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->L()Z

    move-result v0

    if-eqz v0, :cond_250

    .line 1297
    iget-object v0, v1, Lads_mobile_sdk/ap2;->a:Lads_mobile_sdk/i2;

    invoke-virtual {v0}, Lads_mobile_sdk/i2;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_250

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_76

    goto/16 :goto_250

    .line 1298
    :cond_76
    iget-object v0, v1, Lads_mobile_sdk/ap2;->a:Lads_mobile_sdk/i2;

    invoke-virtual {v0}, Lads_mobile_sdk/i2;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_250

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_86

    goto/16 :goto_250

    .line 1299
    :cond_86
    iget-object v0, v1, Lads_mobile_sdk/ap2;->a:Lads_mobile_sdk/i2;

    invoke-virtual {v0}, Lads_mobile_sdk/i2;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_250

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_250

    .line 1303
    :cond_96
    iget-object v0, v1, Lads_mobile_sdk/ap2;->e:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->K0:Lads_mobile_sdk/s11;

    .line 1416
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Lads_mobile_sdk/js3;->a()Lads_mobile_sdk/ks3;

    move-result-object v9

    .line 1417
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v10

    const-string v11, "encode(...)"

    const/16 v12, 0xa

    if-nez v10, :cond_180

    .line 1418
    invoke-static {v0, v4, v8, v9}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 1419
    :try_start_b0
    invoke-virtual/range {p1 .. p1}, Lads_mobile_sdk/f;->c()[B

    move-result-object v0

    .line 1420
    invoke-static {v0, v12}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1421
    new-instance v14, Ljava/lang/String;

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1428
    iget-object v0, v1, Lads_mobile_sdk/ap2;->a:Lads_mobile_sdk/i2;

    invoke-virtual {v0}, Lads_mobile_sdk/i2;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lads_mobile_sdk/ap2;->a:Lads_mobile_sdk/i2;

    invoke-virtual {v5}, Lads_mobile_sdk/i2;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1538
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v5, v3

    .line 1539
    iget-object v3, v1, Lads_mobile_sdk/ap2;->h:Lads_mobile_sdk/du1;

    .line 1540
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v8, v5

    .line 1541
    iget-object v5, v1, Lads_mobile_sdk/ap2;->i:Lads_mobile_sdk/ec3;

    .line 1542
    iget-object v9, v1, Lads_mobile_sdk/ap2;->a:Lads_mobile_sdk/i2;

    .line 1544
    invoke-virtual {v9}, Lads_mobile_sdk/i2;->c()Ljava/lang/String;

    move-result-object v15

    .line 1545
    iput-object v1, v2, Lads_mobile_sdk/yo2;->a:Lads_mobile_sdk/ap2;

    iput-object v4, v2, Lads_mobile_sdk/yo2;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/yo2;->c:Lads_mobile_sdk/rr3;

    iput v6, v2, Lads_mobile_sdk/yo2;->f:I
    :try_end_f9
    .catchall {:try_start_b0 .. :try_end_f9} :catchall_13a

    move-object v6, v7

    const/4 v7, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move-object v11, v6

    move-object v6, v9

    const/4 v9, 0x0

    move-object v12, v10

    const/4 v10, 0x0

    move-object v13, v11

    const/4 v11, 0x0

    move-object/from16 v16, v12

    const/4 v12, 0x0

    move-object/from16 v17, v13

    const/4 v13, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x3f8

    move-object/from16 v19, v4

    move-object v4, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v19

    :try_start_119
    invoke-static/range {v3 .. v17}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v3
    :try_end_11d
    .catchall {:try_start_119 .. :try_end_11d} :catchall_138

    if-ne v3, v0, :cond_121

    goto/16 :goto_1ef

    :cond_121
    move-object v0, v3

    move-object/from16 v4, v18

    move-object v3, v1

    .line 1546
    :goto_125
    :try_start_125
    check-cast v0, Ljava/util/List;

    .line 1576
    iget-object v3, v3, Lads_mobile_sdk/ap2;->f:Lads_mobile_sdk/d63;

    invoke-static {v3, v0}, Lads_mobile_sdk/d63;->a(Lads_mobile_sdk/d63;Ljava/util/List;)V

    .line 1577
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12e
    .catchall {:try_start_125 .. :try_end_12e} :catchall_133

    .line 1679
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_200

    :catchall_133
    move-exception v0

    move-object v3, v4

    move-object/from16 v4, v18

    goto :goto_140

    :catchall_138
    move-exception v0

    goto :goto_13d

    :catchall_13a
    move-exception v0

    move-object/from16 v18, v4

    :goto_13d
    move-object/from16 v3, v18

    move-object v4, v3

    .line 1688
    :goto_140
    :try_start_140
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1692
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_179

    .line 1694
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_156

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_156

    .line 1700
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_156

    :catchall_153
    move-exception v0

    move-object v2, v0

    goto :goto_17a

    .line 1706
    :cond_156
    :goto_156
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_171

    .line 1707
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_169

    .line 1708
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_163

    throw v0

    .line 1709
    :cond_163
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1710
    :cond_169
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1711
    :cond_171
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1712
    :cond_179
    throw v0
    :try_end_17a
    .catchall {:try_start_140 .. :try_end_17a} :catchall_153

    .line 1713
    :goto_17a
    :try_start_17a
    throw v2
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_17b

    :catchall_17b
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_180
    move-object v0, v3

    move-object v3, v2

    move-object v2, v7

    .line 1748
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {v4, v7, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 1749
    :try_start_18b
    invoke-virtual/range {p1 .. p1}, Lads_mobile_sdk/f;->c()[B

    move-result-object v6

    .line 1750
    invoke-static {v6, v12}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1751
    new-instance v14, Ljava/lang/String;

    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1758
    iget-object v6, v1, Lads_mobile_sdk/ap2;->a:Lads_mobile_sdk/i2;

    invoke-virtual {v6}, Lads_mobile_sdk/i2;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lads_mobile_sdk/ap2;->a:Lads_mobile_sdk/i2;

    invoke-virtual {v7}, Lads_mobile_sdk/i2;->d()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1868
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1869
    iget-object v7, v1, Lads_mobile_sdk/ap2;->h:Lads_mobile_sdk/du1;

    .line 1870
    invoke-static {v6}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1871
    iget-object v8, v1, Lads_mobile_sdk/ap2;->i:Lads_mobile_sdk/ec3;

    move-object v9, v6

    .line 1872
    iget-object v6, v1, Lads_mobile_sdk/ap2;->a:Lads_mobile_sdk/i2;

    .line 1874
    invoke-virtual {v6}, Lads_mobile_sdk/i2;->c()Ljava/lang/String;

    move-result-object v15

    .line 1875
    iput-object v1, v3, Lads_mobile_sdk/yo2;->a:Lads_mobile_sdk/ap2;

    iput-object v4, v3, Lads_mobile_sdk/yo2;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v3, Lads_mobile_sdk/yo2;->c:Lads_mobile_sdk/rr3;

    iput v5, v3, Lads_mobile_sdk/yo2;->f:I
    :try_end_1d3
    .catchall {:try_start_18b .. :try_end_1d3} :catchall_20a

    move-object/from16 v16, v3

    move-object v3, v7

    const/4 v7, 0x0

    move-object v5, v8

    const/4 v8, 0x0

    move-object v10, v4

    move-object v4, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v13, v12

    const/4 v12, 0x0

    move-object/from16 v17, v13

    const/4 v13, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x3f8

    :try_start_1e9
    invoke-static/range {v3 .. v17}, Lads_mobile_sdk/du1;->a(Lads_mobile_sdk/du1;Ljava/util/List;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/time/Duration;Ljava/lang/String;Lads_mobile_sdk/eo2;Lads_mobile_sdk/w91;Lads_mobile_sdk/t91;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v3
    :try_end_1ed
    .catchall {:try_start_1e9 .. :try_end_1ed} :catchall_208

    if-ne v3, v0, :cond_1f0

    :goto_1ef
    return-object v0

    :cond_1f0
    move-object v0, v3

    move-object/from16 v4, v18

    move-object v3, v1

    .line 1876
    :goto_1f4
    :try_start_1f4
    check-cast v0, Ljava/util/List;

    .line 1906
    iget-object v3, v3, Lads_mobile_sdk/ap2;->f:Lads_mobile_sdk/d63;

    invoke-static {v3, v0}, Lads_mobile_sdk/d63;->a(Lads_mobile_sdk/d63;Ljava/util/List;)V

    .line 1907
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1fd
    .catchall {:try_start_1f4 .. :try_end_1fd} :catchall_203

    .line 2046
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 2047
    :goto_200
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_203
    move-exception v0

    move-object v3, v4

    move-object/from16 v4, v18

    goto :goto_210

    :catchall_208
    move-exception v0

    goto :goto_20d

    :catchall_20a
    move-exception v0

    move-object/from16 v18, v4

    :goto_20d
    move-object/from16 v3, v18

    move-object v4, v3

    .line 2188
    :goto_210
    :try_start_210
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2192
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_249

    .line 2194
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_226

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_226

    .line 2200
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_226

    :catchall_223
    move-exception v0

    move-object v2, v0

    goto :goto_24a

    .line 2206
    :cond_226
    :goto_226
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_241

    .line 2207
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_239

    .line 2208
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_233

    throw v0

    .line 2209
    :cond_233
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2210
    :cond_239
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 2211
    :cond_241
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 2212
    :cond_249
    throw v0
    :try_end_24a
    .catchall {:try_start_210 .. :try_end_24a} :catchall_223

    .line 2213
    :goto_24a
    :try_start_24a
    throw v2
    :try_end_24b
    .catchall {:try_start_24a .. :try_end_24b} :catchall_24b

    :catchall_24b
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 2214
    :cond_250
    :goto_250
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final a()V
    .registers 2

    .line 1119
    sget-object v0, Lads_mobile_sdk/ki;->d:Lads_mobile_sdk/ki;

    invoke-virtual {p0, v0}, Lads_mobile_sdk/ap2;->a(Lads_mobile_sdk/ki;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/ki;)V
    .registers 10

    .line 611
    iget-object v1, p0, Lads_mobile_sdk/ap2;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 612
    :try_start_3
    iget-boolean v0, p0, Lads_mobile_sdk/ap2;->m:Z

    if-nez v0, :cond_76

    iget-boolean v0, p0, Lads_mobile_sdk/ap2;->l:Z

    if-nez v0, :cond_c

    goto :goto_76

    .line 615
    :cond_c
    iget-object v0, p0, Lads_mobile_sdk/ap2;->k:Lads_mobile_sdk/dp2;

    .line 708
    invoke-static {}, Lads_mobile_sdk/li;->v()Lads_mobile_sdk/ji;

    move-result-object v2

    const-string v3, "newBuilder(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    const-string v3, "builder"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    const-string v3, "value"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 755
    invoke-virtual {v2, p1}, Lads_mobile_sdk/ji;->a(Lads_mobile_sdk/ki;)V

    .line 756
    iget-object v3, p0, Lads_mobile_sdk/ap2;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 758
    invoke-virtual {v2, v3, v4}, Lads_mobile_sdk/ji;->a(J)V

    .line 759
    invoke-virtual {v2}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v2

    const-string v3, "build(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/li;

    .line 760
    invoke-virtual {v0, v2}, Lads_mobile_sdk/dp2;->a(Lads_mobile_sdk/li;)V

    .line 766
    sget-object v0, Lads_mobile_sdk/ki;->i:Lads_mobile_sdk/ki;

    if-ne p1, v0, :cond_72

    .line 767
    iget-object p1, p0, Lads_mobile_sdk/ap2;->n:Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    if-eqz p1, :cond_4f

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_4f

    :catchall_4c
    move-exception v0

    move-object p1, v0

    goto :goto_78

    .line 768
    :cond_4f
    :goto_4f
    iget-object v2, p0, Lads_mobile_sdk/ap2;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/xo2;

    invoke-direct {p1, p0, v0}, Lads_mobile_sdk/xo2;-><init>(Lads_mobile_sdk/ap2;Lkotlin/coroutines/Continuation;)V

    .line 769
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 770
    const-string v4, "<this>"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, p1, v0}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1029
    :cond_72
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_4c

    .line 1030
    monitor-exit v1

    return-void

    .line 1032
    :cond_76
    :goto_76
    monitor-exit v1

    return-void

    .line 1033
    :goto_78
    monitor-exit v1

    throw p1
.end method

.method public final b()V
    .registers 2

    .line 94
    sget-object v0, Lads_mobile_sdk/ki;->f:Lads_mobile_sdk/ki;

    invoke-virtual {p0, v0}, Lads_mobile_sdk/ap2;->a(Lads_mobile_sdk/ki;)V

    return-void
.end method

.method public final c()V
    .registers 2

    .line 82
    sget-object v0, Lads_mobile_sdk/ki;->c:Lads_mobile_sdk/ki;

    invoke-virtual {p0, v0}, Lads_mobile_sdk/ap2;->a(Lads_mobile_sdk/ki;)V

    return-void
.end method

.method public final d()V
    .registers 2

    .line 78
    sget-object v0, Lads_mobile_sdk/ki;->b:Lads_mobile_sdk/ki;

    invoke-virtual {p0, v0}, Lads_mobile_sdk/ap2;->a(Lads_mobile_sdk/ki;)V

    return-void
.end method

.method public final f()Lads_mobile_sdk/dp2;
    .registers 3

    .line 71
    iget-object v0, p0, Lads_mobile_sdk/ap2;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/ap2;->k:Lads_mobile_sdk/dp2;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final g()V
    .registers 9

    .line 128
    iget-object v1, p0, Lads_mobile_sdk/ap2;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_3
    iget-object v0, p0, Lads_mobile_sdk/ap2;->a:Lads_mobile_sdk/i2;

    .line 131
    iget-wide v2, v0, Lads_mobile_sdk/i2;->C0:J

    .line 132
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v0

    if-lez v0, :cond_5b

    .line 133
    iget-boolean v0, p0, Lads_mobile_sdk/ap2;->l:Z

    if-nez v0, :cond_5b

    .line 134
    iget-boolean v0, p0, Lads_mobile_sdk/ap2;->m:Z

    if-eqz v0, :cond_1c

    goto :goto_5b

    .line 138
    :cond_1c
    iget-object v0, p0, Lads_mobile_sdk/ap2;->k:Lads_mobile_sdk/dp2;

    iget-object v2, p0, Lads_mobile_sdk/ap2;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 140
    invoke-virtual {v0, v2, v3}, Lads_mobile_sdk/dp2;->a(J)V

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lads_mobile_sdk/ap2;->l:Z

    .line 143
    iget-object v2, p0, Lads_mobile_sdk/ap2;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/zo2;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lads_mobile_sdk/zo2;-><init>(Lads_mobile_sdk/ap2;Lkotlin/coroutines/Continuation;)V

    move-object v4, v3

    .line 144
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 145
    const-string v5, "<this>"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "block"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v0, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 404
    iput-object v0, p0, Lads_mobile_sdk/ap2;->n:Lkotlinx/coroutines/Job;

    .line 408
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_59

    .line 409
    monitor-exit v1

    return-void

    :catchall_59
    move-exception v0

    goto :goto_5d

    .line 415
    :cond_5b
    :goto_5b
    monitor-exit v1

    return-void

    .line 416
    :goto_5d
    monitor-exit v1

    throw v0
.end method

.method public final onDestroy()V
    .registers 2

    .line 106
    sget-object v0, Lads_mobile_sdk/ki;->i:Lads_mobile_sdk/ki;

    invoke-virtual {p0, v0}, Lads_mobile_sdk/ap2;->a(Lads_mobile_sdk/ki;)V

    return-void
.end method

.method public final onPause()V
    .registers 2

    .line 98
    sget-object v0, Lads_mobile_sdk/ki;->g:Lads_mobile_sdk/ki;

    invoke-virtual {p0, v0}, Lads_mobile_sdk/ap2;->a(Lads_mobile_sdk/ki;)V

    return-void
.end method

.method public final onResume()V
    .registers 2

    .line 90
    sget-object v0, Lads_mobile_sdk/ki;->e:Lads_mobile_sdk/ki;

    invoke-virtual {p0, v0}, Lads_mobile_sdk/ap2;->a(Lads_mobile_sdk/ki;)V

    return-void
.end method

.method public final onStop()V
    .registers 2

    .line 102
    sget-object v0, Lads_mobile_sdk/ki;->h:Lads_mobile_sdk/ki;

    invoke-virtual {p0, v0}, Lads_mobile_sdk/ap2;->a(Lads_mobile_sdk/ki;)V

    return-void
.end method
