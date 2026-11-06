###### Class ads_mobile_sdk.uv (ads_mobile_sdk.uv)
.class public final Lads_mobile_sdk/uv;
.super Lads_mobile_sdk/fp2;
.source "SourceFile"


# instance fields
.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lads_mobile_sdk/dz3;

.field public final e:Lads_mobile_sdk/g83;

.field public final f:Lads_mobile_sdk/ex0;

.field public final g:Lads_mobile_sdk/o21;

.field public final h:Lkotlinx/coroutines/sync/Mutex;

.field public i:Lkotlinx/coroutines/Deferred;

.field public j:Lads_mobile_sdk/mv;

.field public k:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/dz3;Lads_mobile_sdk/g83;Lads_mobile_sdk/ex0;Lads_mobile_sdk/o21;)V
    .registers 7

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webviewCompatWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lads_mobile_sdk/fp2;-><init>()V

    .line 44
    iput-object p1, p0, Lads_mobile_sdk/uv;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 45
    iput-object p2, p0, Lads_mobile_sdk/uv;->d:Lads_mobile_sdk/dz3;

    .line 46
    iput-object p3, p0, Lads_mobile_sdk/uv;->e:Lads_mobile_sdk/g83;

    .line 47
    iput-object p4, p0, Lads_mobile_sdk/uv;->f:Lads_mobile_sdk/ex0;

    .line 48
    iput-object p5, p0, Lads_mobile_sdk/uv;->g:Lads_mobile_sdk/o21;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 51
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/uv;->h:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/uv;)Lads_mobile_sdk/mv;
    .registers 13

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/uv;->e:Lads_mobile_sdk/g83;

    .line 3
    sget-object v1, Lads_mobile_sdk/s11;->Z:Lads_mobile_sdk/s11;

    .line 72
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 73
    new-instance v3, Lads_mobile_sdk/ks3;

    .line 74
    new-instance v4, Lads_mobile_sdk/n03;

    invoke-direct {v4}, Lads_mobile_sdk/n03;-><init>()V

    .line 75
    new-instance v5, Lads_mobile_sdk/tn1;

    invoke-direct {v5}, Lads_mobile_sdk/tn1;-><init>()V

    .line 76
    new-instance v6, Lads_mobile_sdk/m33;

    invoke-direct {v6}, Lads_mobile_sdk/m33;-><init>()V

    .line 77
    new-instance v7, Lads_mobile_sdk/zb;

    invoke-direct {v7}, Lads_mobile_sdk/zb;-><init>()V

    .line 78
    invoke-direct {v3, v4, v5, v6, v7}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 79
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 80
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v5, 0x2

    const-string v6, "key"

    const-string v7, "gads:parse_chrome_variations_client_header"

    const-string v8, "getVariationsHeader(...)"

    const-string v9, "exception"

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-nez v4, :cond_109

    .line 81
    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 82
    :try_start_38
    iget-object v1, p0, Lads_mobile_sdk/uv;->d:Lads_mobile_sdk/dz3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getVariationsHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_44} :catch_b4
    .catchall {:try_start_38 .. :try_end_44} :catchall_55

    .line 84
    :try_start_44
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 85
    sget-object p0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    sget-object p0, Lads_mobile_sdk/nv;->a:Lads_mobile_sdk/nv;

    invoke-static {p0}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_55

    .line 86
    invoke-static {v0, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v11

    :catchall_55
    move-exception p0

    goto :goto_ca

    .line 90
    :cond_57
    :try_start_57
    invoke-static {v1, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 91
    invoke-static {v2}, Lads_mobile_sdk/lv;->a([B)Lads_mobile_sdk/lv;

    move-result-object v2

    .line 94
    iget-object v3, p0, Lads_mobile_sdk/uv;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v3, v7, v4, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 113
    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 114
    invoke-static {}, Lads_mobile_sdk/er0;->b()Lads_mobile_sdk/er0;

    move-result-object v4

    .line 115
    invoke-static {v3, v4}, Lads_mobile_sdk/xw;->a([BLads_mobile_sdk/er0;)Lads_mobile_sdk/xw;

    move-result-object v3

    goto :goto_87

    :catchall_84
    move-exception p0

    goto :goto_9f

    :cond_86
    move-object v3, v11

    .line 122
    :goto_87
    new-instance v4, Lads_mobile_sdk/mv;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, v1, v2, v3}, Lads_mobile_sdk/mv;-><init>(Ljava/lang/String;Lads_mobile_sdk/lv;Lads_mobile_sdk/xw;)V

    .line 124
    sget-object v1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v1, Lads_mobile_sdk/ov;

    invoke-direct {v1, v4}, Lads_mobile_sdk/ov;-><init>(Lads_mobile_sdk/mv;)V

    invoke-static {v1}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 127
    iput-object v4, p0, Lads_mobile_sdk/uv;->j:Lads_mobile_sdk/mv;
    :try_end_9b
    .catchall {:try_start_57 .. :try_end_9b} :catchall_84

    .line 128
    invoke-static {v0, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    .line 129
    :goto_9f
    :try_start_9f
    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    iput-boolean v10, v2, Lads_mobile_sdk/uj2;->m:Z

    .line 134
    invoke-virtual {v1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V
    :try_end_af
    .catchall {:try_start_9f .. :try_end_af} :catchall_55

    .line 135
    invoke-static {v0, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_1a1

    :catch_b4
    move-exception p0

    .line 136
    :try_start_b5
    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    iput-boolean v10, v2, Lads_mobile_sdk/uj2;->m:Z

    .line 141
    invoke-virtual {v1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V
    :try_end_c5
    .catchall {:try_start_b5 .. :try_end_c5} :catchall_55

    .line 142
    invoke-static {v0, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_1a1

    .line 216
    :goto_ca
    :try_start_ca
    invoke-virtual {v0, p0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 220
    instance-of v1, p0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_102

    .line 222
    instance-of v1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_df

    instance-of v1, p0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_df

    .line 228
    invoke-virtual {v0, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_df

    :catchall_dd
    move-exception p0

    goto :goto_103

    .line 234
    :cond_df
    :goto_df
    instance-of v1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_fa

    .line 235
    instance-of v1, p0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_f2

    .line 236
    instance-of v1, p0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_ec

    throw p0

    .line 237
    :cond_ec
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 238
    :cond_f2
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 239
    :cond_fa
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 240
    :cond_102
    throw p0
    :try_end_103
    .catchall {:try_start_ca .. :try_end_103} :catchall_dd

    .line 257
    :goto_103
    :try_start_103
    throw p0
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_104

    :catchall_104
    move-exception v1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 262
    :cond_109
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 263
    :try_start_112
    iget-object v1, p0, Lads_mobile_sdk/uv;->d:Lads_mobile_sdk/dz3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    invoke-static {}, Landroidx/webkit/WebViewCompat;->getVariationsHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_11e} :catch_18d
    .catchall {:try_start_112 .. :try_end_11e} :catchall_12f

    .line 265
    :try_start_11e
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_131

    .line 266
    sget-object p0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    sget-object p0, Lads_mobile_sdk/nv;->a:Lads_mobile_sdk/nv;

    invoke-static {p0}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V
    :try_end_12b
    .catchall {:try_start_11e .. :try_end_12b} :catchall_12f

    .line 267
    invoke-static {v0, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v11

    :catchall_12f
    move-exception p0

    goto :goto_1a2

    .line 271
    :cond_131
    :try_start_131
    invoke-static {v1, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 272
    invoke-static {v2}, Lads_mobile_sdk/lv;->a([B)Lads_mobile_sdk/lv;

    move-result-object v2

    .line 275
    iget-object v3, p0, Lads_mobile_sdk/uv;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v3, v7, v4, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_160

    .line 294
    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 295
    invoke-static {}, Lads_mobile_sdk/er0;->b()Lads_mobile_sdk/er0;

    move-result-object v4

    .line 296
    invoke-static {v3, v4}, Lads_mobile_sdk/xw;->a([BLads_mobile_sdk/er0;)Lads_mobile_sdk/xw;

    move-result-object v3

    goto :goto_161

    :catchall_15e
    move-exception p0

    goto :goto_179

    :cond_160
    move-object v3, v11

    .line 303
    :goto_161
    new-instance v4, Lads_mobile_sdk/mv;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, v1, v2, v3}, Lads_mobile_sdk/mv;-><init>(Ljava/lang/String;Lads_mobile_sdk/lv;Lads_mobile_sdk/xw;)V

    .line 305
    sget-object v1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v1, Lads_mobile_sdk/ov;

    invoke-direct {v1, v4}, Lads_mobile_sdk/ov;-><init>(Lads_mobile_sdk/mv;)V

    invoke-static {v1}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 308
    iput-object v4, p0, Lads_mobile_sdk/uv;->j:Lads_mobile_sdk/mv;
    :try_end_175
    .catchall {:try_start_131 .. :try_end_175} :catchall_15e

    .line 309
    invoke-static {v0, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    .line 310
    :goto_179
    :try_start_179
    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    iput-boolean v10, v2, Lads_mobile_sdk/uj2;->m:Z

    .line 315
    invoke-virtual {v1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V
    :try_end_189
    .catchall {:try_start_179 .. :try_end_189} :catchall_12f

    .line 316
    invoke-static {v0, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1a1

    :catch_18d
    move-exception p0

    .line 317
    :try_start_18e
    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    iput-boolean v10, v2, Lads_mobile_sdk/uj2;->m:Z

    .line 322
    invoke-virtual {v1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V
    :try_end_19e
    .catchall {:try_start_18e .. :try_end_19e} :catchall_12f

    .line 323
    invoke-static {v0, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_1a1
    return-object v11

    .line 434
    :goto_1a2
    :try_start_1a2
    invoke-virtual {v0, p0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 438
    instance-of v1, p0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_1da

    .line 440
    instance-of v1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1b7

    instance-of v1, p0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1b7

    .line 446
    invoke-virtual {v0, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1b7

    :catchall_1b5
    move-exception p0

    goto :goto_1db

    .line 452
    :cond_1b7
    :goto_1b7
    instance-of v1, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1d2

    .line 453
    instance-of v1, p0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1ca

    .line 454
    instance-of v1, p0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_1c4

    throw p0

    .line 455
    :cond_1c4
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 456
    :cond_1ca
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 457
    :cond_1d2
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 458
    :cond_1da
    throw p0
    :try_end_1db
    .catchall {:try_start_1a2 .. :try_end_1db} :catchall_1b5

    .line 475
    :goto_1db
    :try_start_1db
    throw p0
    :try_end_1dc
    .catchall {:try_start_1db .. :try_end_1dc} :catchall_1dc

    :catchall_1dc
    move-exception v1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lads_mobile_sdk/uv;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 764
    instance-of v0, p1, Lads_mobile_sdk/pv;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/pv;

    iget v1, v0, Lads_mobile_sdk/pv;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/pv;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/pv;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/pv;-><init>(Lads_mobile_sdk/uv;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/pv;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 857
    iget v2, v0, Lads_mobile_sdk/pv;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3f

    if-eq v2, v4, :cond_35

    if-ne v2, v3, :cond_2d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    iget-object p0, v0, Lads_mobile_sdk/pv;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/pv;->a:Lads_mobile_sdk/uv;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_60

    :cond_3f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 858
    iget-object p1, p0, Lads_mobile_sdk/uv;->d:Lads_mobile_sdk/dz3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 859
    const-string p1, "GET_VARIATIONS_HEADER"

    invoke-static {p1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_50

    return-object v5

    .line 860
    :cond_50
    iget-object p1, p0, Lads_mobile_sdk/uv;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 949
    iput-object p0, v0, Lads_mobile_sdk/pv;->a:Lads_mobile_sdk/uv;

    iput-object p1, v0, Lads_mobile_sdk/pv;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/pv;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_60

    goto/16 :goto_d9

    .line 950
    :cond_60
    :goto_60
    :try_start_60
    iget-object v2, p0, Lads_mobile_sdk/uv;->j:Lads_mobile_sdk/mv;

    if-eqz v2, :cond_6c

    .line 952
    invoke-static {v2}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p0

    goto :goto_ca

    :catchall_69
    move-exception v0

    move-object p0, v0

    goto :goto_db

    .line 954
    :cond_6c
    iget-object v2, p0, Lads_mobile_sdk/uv;->i:Lkotlinx/coroutines/Deferred;

    if-eqz v2, :cond_72

    :cond_70
    :goto_70
    move-object p0, v2

    goto :goto_ca

    .line 960
    :cond_72
    iget-object v6, p0, Lads_mobile_sdk/uv;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/rv;

    invoke-direct {v2, p0, v5}, Lads_mobile_sdk/rv;-><init>(Lads_mobile_sdk/uv;Lkotlin/coroutines/Continuation;)V

    .line 961
    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 962
    const-string v4, "<this>"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1210
    new-instance v9, Lads_mobile_sdk/vs3;

    invoke-direct {v9, v2, v5}, Lads_mobile_sdk/vs3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v2

    .line 1211
    iput-object v2, p0, Lads_mobile_sdk/uv;->i:Lkotlinx/coroutines/Deferred;

    .line 1212
    iget-object v4, p0, Lads_mobile_sdk/uv;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1213
    const-string v6, "gads:chrome_variations_refresh_enabled"

    .line 1214
    const-string v7, "key"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1230
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v8, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v4, v6, v7, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 1231
    iget-object v4, p0, Lads_mobile_sdk/uv;->k:Lkotlinx/coroutines/Job;

    if-nez v4, :cond_70

    .line 1232
    iget-object v6, p0, Lads_mobile_sdk/uv;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v9, Lads_mobile_sdk/qv;

    invoke-direct {v9, p0, v5}, Lads_mobile_sdk/qv;-><init>(Lads_mobile_sdk/uv;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v4

    iput-object v4, p0, Lads_mobile_sdk/uv;->k:Lkotlinx/coroutines/Job;
    :try_end_c9
    .catchall {:try_start_60 .. :try_end_c9} :catchall_69

    goto :goto_70

    .line 1309
    :goto_ca
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1310
    iput-object v5, v0, Lads_mobile_sdk/pv;->a:Lads_mobile_sdk/uv;

    iput-object v5, v0, Lads_mobile_sdk/pv;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/pv;->e:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_da

    :goto_d9
    return-object v1

    :cond_da
    return-object p0

    .line 1378
    :goto_db
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static b(Lads_mobile_sdk/uv;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/tv;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/tv;

    iget v1, v0, Lads_mobile_sdk/tv;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/tv;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/tv;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/tv;-><init>(Lads_mobile_sdk/uv;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/tv;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 54
    iget v2, v0, Lads_mobile_sdk/tv;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_59

    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    iget-object p1, p0, Lads_mobile_sdk/uv;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    const-string v2, "key"

    const-string v4, "gads:chrome_variations_initialization_task_enabled"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v4, v2, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 74
    iput v3, v0, Lads_mobile_sdk/tv;->c:I

    .line 75
    invoke-static {p0, v0}, Lads_mobile_sdk/uv;->a(Lads_mobile_sdk/uv;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_59

    return-object v1

    .line 76
    :cond_59
    :goto_59
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Ljava/util/Map;
    .registers 13

    .line 476
    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lads_mobile_sdk/uv;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    const-string v2, "gads:parse_chrome_variations_client_header"

    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v2, v4, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_23

    return-object v2

    .line 574
    :cond_23
    iget-object v1, p0, Lads_mobile_sdk/uv;->g:Lads_mobile_sdk/o21;

    invoke-virtual {v1, p1}, Lads_mobile_sdk/o21;->c(Landroid/net/Uri;)Z

    move-result v1

    const-string v4, "defaultValue"

    if-nez v1, :cond_8d

    iget-object v1, p0, Lads_mobile_sdk/uv;->g:Lads_mobile_sdk/o21;

    invoke-virtual {v1, p1}, Lads_mobile_sdk/o21;->a(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_8d

    iget-object v1, p0, Lads_mobile_sdk/uv;->g:Lads_mobile_sdk/o21;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v1, p1}, Lads_mobile_sdk/o21;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 662
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 663
    iget-object v0, v1, Lads_mobile_sdk/o21;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 665
    const-string v1, "^[^?]*(/mads/gma|/gampad/ads|/pagead/ads).*"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 666
    const-string v5, "gads:ad_request_url_pattern_match"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    sget-object v6, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {v0, v5, v1, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 712
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6d

    goto :goto_8c

    .line 713
    :cond_6d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Lkotlin/text/Regex;

    .line 714
    invoke-direct {v5, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_71

    goto :goto_8d

    :cond_8c
    :goto_8c
    return-object v2

    .line 715
    :cond_8d
    :goto_8d
    iget-object p1, p0, Lads_mobile_sdk/uv;->j:Lads_mobile_sdk/mv;

    if-nez p1, :cond_9f

    .line 717
    iget-object v5, p0, Lads_mobile_sdk/uv;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v8, Lads_mobile_sdk/sv;

    invoke-direct {v8, p0, v2}, Lads_mobile_sdk/sv;-><init>(Lads_mobile_sdk/uv;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_9f
    if-eqz p1, :cond_c7

    .line 718
    invoke-virtual {p1}, Lads_mobile_sdk/mv;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c7

    iget-object v0, p0, Lads_mobile_sdk/uv;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 720
    const-string v1, "gads:client_data_header"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "x-client-data"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    sget-object v3, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v0, v1, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 763
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_c7
    return-object v2
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/uv;->b(Lads_mobile_sdk/uv;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
