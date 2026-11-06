###### Class ads_mobile_sdk.js0 (ads_mobile_sdk.js0)
.class public final Lads_mobile_sdk/js0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ls0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ls0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/js0;->a:Lads_mobile_sdk/ls0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 15

    .line 34
    iget-object v0, p0, Lads_mobile_sdk/js0;->a:Lads_mobile_sdk/ls0;

    .line 35
    iget-object v1, v0, Lads_mobile_sdk/ls0;->c:Lads_mobile_sdk/g83;

    .line 36
    sget-object v2, Lads_mobile_sdk/s11;->G0:Lads_mobile_sdk/s11;

    .line 202
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 203
    new-instance v4, Lads_mobile_sdk/ks3;

    .line 204
    new-instance v5, Lads_mobile_sdk/n03;

    invoke-direct {v5}, Lads_mobile_sdk/n03;-><init>()V

    .line 205
    new-instance v6, Lads_mobile_sdk/tn1;

    invoke-direct {v6}, Lads_mobile_sdk/tn1;-><init>()V

    .line 206
    new-instance v7, Lads_mobile_sdk/m33;

    invoke-direct {v7}, Lads_mobile_sdk/m33;-><init>()V

    .line 207
    new-instance v8, Lads_mobile_sdk/zb;

    invoke-direct {v8}, Lads_mobile_sdk/zb;-><init>()V

    .line 208
    invoke-direct {v4, v5, v6, v7, v8}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 209
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 210
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const-string v8, "Exception while getting Firebase Analytics SDK instance"

    const-class v9, Landroid/content/Context;

    const-string v10, "getInstance"

    const-string v11, "key"

    const-string v12, "gads:firebase_analytics_integration:enabled"

    const/4 v13, 0x0

    if-nez v5, :cond_ca

    .line 211
    invoke-static {v1, v2, v3, v4}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 212
    :try_start_3c
    iget-object v2, v0, Lads_mobile_sdk/ls0;->d:Lads_mobile_sdk/ex0;

    .line 213
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v2, v12, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_52} :catch_77
    .catchall {:try_start_3c .. :try_end_52} :catchall_75

    if-nez v2, :cond_58

    .line 232
    invoke-static {v1, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v13

    .line 233
    :cond_58
    :try_start_58
    iget-object v2, v0, Lads_mobile_sdk/ls0;->d:Lads_mobile_sdk/ex0;

    .line 234
    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 238
    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v3

    .line 239
    invoke-virtual {v2, v10, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 244
    iget-object v0, v0, Lads_mobile_sdk/ls0;->a:Landroid/content/Context;

    .line 245
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_74} :catch_77
    .catchall {:try_start_58 .. :try_end_74} :catchall_75

    goto :goto_7c

    :catchall_75
    move-exception v0

    goto :goto_8b

    :catch_77
    move-exception v0

    .line 247
    :try_start_78
    invoke-static {v8, v0, v7}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    move-object v0, v13

    .line 406
    :goto_7c
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_86

    .line 407
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/i01;

    .line 408
    invoke-static {v2, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_86
    .catchall {:try_start_78 .. :try_end_86} :catchall_75

    .line 409
    :cond_86
    invoke-static {v1, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_120

    .line 417
    :goto_8b
    :try_start_8b
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 421
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_c3

    .line 423
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_a0

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_a0

    .line 429
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_a0

    :catchall_9e
    move-exception v0

    goto :goto_c4

    .line 435
    :cond_a0
    :goto_a0
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_bb

    .line 436
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_b3

    .line 437
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_ad

    throw v0

    .line 438
    :cond_ad
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 439
    :cond_b3
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 440
    :cond_bb
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 441
    :cond_c3
    throw v0
    :try_end_c4
    .catchall {:try_start_8b .. :try_end_c4} :catchall_9e

    .line 442
    :goto_c4
    :try_start_c4
    throw v0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c5

    :catchall_c5
    move-exception v2

    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 476
    :cond_ca
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 477
    :try_start_d3
    iget-object v2, v0, Lads_mobile_sdk/ls0;->d:Lads_mobile_sdk/ex0;

    .line 478
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v2, v12, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_e9} :catch_10e
    .catchall {:try_start_d3 .. :try_end_e9} :catchall_10c

    if-nez v2, :cond_ef

    .line 497
    invoke-static {v1, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v13

    .line 498
    :cond_ef
    :try_start_ef
    iget-object v2, v0, Lads_mobile_sdk/ls0;->d:Lads_mobile_sdk/ex0;

    .line 499
    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 503
    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v3

    .line 504
    invoke-virtual {v2, v10, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 509
    iget-object v0, v0, Lads_mobile_sdk/ls0;->a:Landroid/content/Context;

    .line 510
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_10b} :catch_10e
    .catchall {:try_start_ef .. :try_end_10b} :catchall_10c

    goto :goto_113

    :catchall_10c
    move-exception v0

    goto :goto_121

    :catch_10e
    move-exception v0

    .line 512
    :try_start_10f
    invoke-static {v8, v0, v7}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    move-object v0, v13

    .line 708
    :goto_113
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_11d

    .line 709
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/i01;

    .line 710
    invoke-static {v2, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_11d
    .catchall {:try_start_10f .. :try_end_11d} :catchall_10c

    .line 711
    :cond_11d
    invoke-static {v1, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_120
    return-object v0

    .line 719
    :goto_121
    :try_start_121
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 723
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_159

    .line 725
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_136

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_136

    .line 731
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_136

    :catchall_134
    move-exception v0

    goto :goto_15a

    .line 737
    :cond_136
    :goto_136
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_151

    .line 738
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_149

    .line 739
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_143

    throw v0

    .line 740
    :cond_143
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 741
    :cond_149
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 742
    :cond_151
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 743
    :cond_159
    throw v0
    :try_end_15a
    .catchall {:try_start_121 .. :try_end_15a} :catchall_134

    .line 744
    :goto_15a
    :try_start_15a
    throw v0
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_15b

    :catchall_15b
    move-exception v2

    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
