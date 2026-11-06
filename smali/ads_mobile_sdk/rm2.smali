###### Class ads_mobile_sdk.rm2 (ads_mobile_sdk.rm2)
.class public final Lads_mobile_sdk/rm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/nt3;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final b:Lads_mobile_sdk/ej1;

.field public final c:Lads_mobile_sdk/k;

.field public final d:Lads_mobile_sdk/im2;

.field public final e:Lads_mobile_sdk/v8;

.field public final f:Lads_mobile_sdk/j53;

.field public final g:Lads_mobile_sdk/bb2;

.field public final h:Lcom/google/gson/Gson;

.field public final i:Lads_mobile_sdk/ex0;

.field public final j:Lads_mobile_sdk/ur3;

.field public final k:Ljava/util/Optional;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/ej1;Lads_mobile_sdk/k;Lads_mobile_sdk/im2;Lads_mobile_sdk/v8;Lads_mobile_sdk/j53;Lads_mobile_sdk/bb2;Lcom/google/gson/Gson;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ur3;Ljava/util/Optional;)V
    .registers 13

    .line 1
    const-string v0, "baseRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalAdRequestEventEmitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionFunction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "persistentCacheManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestKeyGenerator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegateNetworkRequester"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberOfAdsRequestedOptional"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lads_mobile_sdk/rm2;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 39
    iput-object p2, p0, Lads_mobile_sdk/rm2;->b:Lads_mobile_sdk/ej1;

    .line 40
    iput-object p3, p0, Lads_mobile_sdk/rm2;->c:Lads_mobile_sdk/k;

    .line 41
    iput-object p4, p0, Lads_mobile_sdk/rm2;->d:Lads_mobile_sdk/im2;

    .line 42
    iput-object p5, p0, Lads_mobile_sdk/rm2;->e:Lads_mobile_sdk/v8;

    .line 43
    iput-object p6, p0, Lads_mobile_sdk/rm2;->f:Lads_mobile_sdk/j53;

    .line 44
    iput-object p7, p0, Lads_mobile_sdk/rm2;->g:Lads_mobile_sdk/bb2;

    .line 45
    iput-object p8, p0, Lads_mobile_sdk/rm2;->h:Lcom/google/gson/Gson;

    .line 46
    iput-object p9, p0, Lads_mobile_sdk/rm2;->i:Lads_mobile_sdk/ex0;

    .line 47
    iput-object p10, p0, Lads_mobile_sdk/rm2;->j:Lads_mobile_sdk/ur3;

    .line 48
    iput-object p11, p0, Lads_mobile_sdk/rm2;->k:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    .line 414
    iget-object v0, p0, Lads_mobile_sdk/rm2;->k:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lads_mobile_sdk/rm2;->k:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lads_mobile_sdk/ct1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/pm2;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/pm2;

    iget v1, v0, Lads_mobile_sdk/pm2;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/pm2;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/pm2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/pm2;-><init>(Lads_mobile_sdk/rm2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/pm2;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 105
    iget v2, v0, Lads_mobile_sdk/pm2;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p1, v0, Lads_mobile_sdk/pm2;->a:Lads_mobile_sdk/rm2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    iget-object p2, p0, Lads_mobile_sdk/rm2;->d:Lads_mobile_sdk/im2;

    .line 107
    iget-object p1, p1, Lads_mobile_sdk/ct1;->b:Lads_mobile_sdk/om2;

    .line 108
    iput-object p0, v0, Lads_mobile_sdk/pm2;->a:Lads_mobile_sdk/rm2;

    iput v3, v0, Lads_mobile_sdk/pm2;->d:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    invoke-static {p2, p1, v0}, Lads_mobile_sdk/im2;->b(Lads_mobile_sdk/im2;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_48

    return-object v1

    :cond_48
    move-object p1, p0

    .line 110
    :goto_49
    check-cast p2, Lads_mobile_sdk/v01;

    .line 145
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 146
    iget-object v1, v0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 147
    iget-object v1, v1, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    iget-object v1, v1, Lads_mobile_sdk/tn1;->f:Lads_mobile_sdk/nm2;

    const-string v2, "build(...)"

    const-string v3, "value"

    const/4 v4, 0x0

    const-string v5, "builder"

    if-eqz v1, :cond_89

    .line 149
    invoke-virtual {v1}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v1

    const-string v6, "toBuilder(...)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/lm2;

    .line 150
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1, v4}, Lads_mobile_sdk/lm2;->a(Z)V

    .line 152
    sget-object v6, Lads_mobile_sdk/mm2;->d:Lads_mobile_sdk/mm2;

    .line 153
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1, v6}, Lads_mobile_sdk/lm2;->a(Lads_mobile_sdk/mm2;)V

    .line 247
    invoke-virtual {p1}, Lads_mobile_sdk/rm2;->a()I

    move-result v6

    .line 248
    invoke-virtual {v1, v6}, Lads_mobile_sdk/lm2;->b(I)V

    .line 249
    invoke-virtual {v1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/nm2;

    if-nez v1, :cond_b0

    .line 250
    :cond_89
    invoke-static {}, Lads_mobile_sdk/nm2;->v()Lads_mobile_sdk/lm2;

    move-result-object v1

    const-string v6, "newBuilder(...)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1, v4}, Lads_mobile_sdk/lm2;->a(Z)V

    .line 253
    sget-object v4, Lads_mobile_sdk/mm2;->d:Lads_mobile_sdk/mm2;

    .line 254
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v1, v4}, Lads_mobile_sdk/lm2;->a(Lads_mobile_sdk/mm2;)V

    .line 348
    invoke-virtual {p1}, Lads_mobile_sdk/rm2;->a()I

    move-result v3

    .line 349
    invoke-virtual {v1, v3}, Lads_mobile_sdk/lm2;->b(I)V

    .line 350
    invoke-virtual {v1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/nm2;

    .line 351
    :cond_b0
    iget-object v0, v0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 352
    iget-object v0, v0, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    iput-object v1, v0, Lads_mobile_sdk/tn1;->f:Lads_mobile_sdk/nm2;

    .line 353
    instance-of v0, p2, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_d5

    .line 354
    iget-object p1, p1, Lads_mobile_sdk/rm2;->j:Lads_mobile_sdk/ur3;

    .line 355
    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/i01;

    invoke-virtual {v0}, Lads_mobile_sdk/i01;->b()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_ce

    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 356
    :cond_ce
    check-cast p1, Lads_mobile_sdk/as3;

    const-string p2, "Failed to evict cached ad"

    invoke-virtual {p1, p2, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    :cond_d5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/qm2;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/qm2;

    iget v3, v2, Lads_mobile_sdk/qm2;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/qm2;->g:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/qm2;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/qm2;-><init>(Lads_mobile_sdk/rm2;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/qm2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 55
    iget v4, v2, Lads_mobile_sdk/qm2;->g:I

    const/4 v5, 0x6

    const-string v6, "newBuilder(...)"

    const-string v7, "toBuilder(...)"

    const-string v8, "build(...)"

    const/4 v9, 0x0

    const-string v10, "builder"

    const/4 v11, 0x1

    const/4 v12, 0x0

    packed-switch v4, :pswitch_data_2c2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v0

    :pswitch_3f
    iget-object v4, v2, Lads_mobile_sdk/qm2;->a:Lads_mobile_sdk/rm2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v12

    goto/16 :goto_2af

    :pswitch_47
    iget-object v4, v2, Lads_mobile_sdk/qm2;->d:Lads_mobile_sdk/ec3;

    iget-object v5, v2, Lads_mobile_sdk/qm2;->c:Lads_mobile_sdk/ac3;

    iget-object v13, v2, Lads_mobile_sdk/qm2;->b:Lads_mobile_sdk/ct1;

    iget-object v14, v2, Lads_mobile_sdk/qm2;->a:Lads_mobile_sdk/rm2;

    :try_start_4f
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_60

    goto/16 :goto_1f5

    .line 56
    :pswitch_54
    iget-object v4, v2, Lads_mobile_sdk/qm2;->c:Lads_mobile_sdk/ac3;

    iget-object v13, v2, Lads_mobile_sdk/qm2;->b:Lads_mobile_sdk/ct1;

    iget-object v14, v2, Lads_mobile_sdk/qm2;->a:Lads_mobile_sdk/rm2;

    :try_start_5a
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_60

    move-object v0, v4

    goto/16 :goto_1c4

    :catch_60
    move-object v4, v14

    goto/16 :goto_29c

    .line 57
    :pswitch_63
    iget-object v4, v2, Lads_mobile_sdk/qm2;->b:Lads_mobile_sdk/ct1;

    iget-object v5, v2, Lads_mobile_sdk/qm2;->a:Lads_mobile_sdk/rm2;

    :try_start_67
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b

    return-object v0

    :catch_6b
    move-object v13, v4

    goto/16 :goto_29b

    .line 58
    :pswitch_6e
    iget-object v4, v2, Lads_mobile_sdk/qm2;->b:Lads_mobile_sdk/ct1;

    iget-object v5, v2, Lads_mobile_sdk/qm2;->a:Lads_mobile_sdk/rm2;

    :try_start_72
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_6b

    goto/16 :goto_190

    .line 59
    :pswitch_77
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v0

    :pswitch_7b
    iget-object v4, v2, Lads_mobile_sdk/qm2;->a:Lads_mobile_sdk/rm2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_b1

    :pswitch_81
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    iget-object v0, v1, Lads_mobile_sdk/rm2;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    instance-of v4, v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    if-eqz v4, :cond_8d

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    goto :goto_8e

    :cond_8d
    move-object v0, v12

    :goto_8e
    if-nez v0, :cond_9a

    new-instance v0, Lads_mobile_sdk/m01;

    const-string v2, "Expected AdRequest."

    .line 62
    sget-object v3, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 63
    invoke-direct {v0, v2, v3}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object v0

    .line 64
    :cond_9a
    iget-object v4, v1, Lads_mobile_sdk/rm2;->e:Lads_mobile_sdk/v8;

    invoke-virtual {v4, v0}, Lads_mobile_sdk/v8;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v4, v1, Lads_mobile_sdk/rm2;->d:Lads_mobile_sdk/im2;

    iget-object v13, v1, Lads_mobile_sdk/rm2;->f:Lads_mobile_sdk/j53;

    iput-object v1, v2, Lads_mobile_sdk/qm2;->a:Lads_mobile_sdk/rm2;

    iput v11, v2, Lads_mobile_sdk/qm2;->g:I

    invoke-virtual {v4, v13, v0, v2}, Lads_mobile_sdk/im2;->b(Lads_mobile_sdk/j53;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b0

    goto/16 :goto_2c0

    :cond_b0
    move-object v4, v1

    .line 66
    :goto_b1
    check-cast v0, Lads_mobile_sdk/v01;

    .line 71
    instance-of v13, v0, Lads_mobile_sdk/q01;

    if-eqz v13, :cond_be

    check-cast v0, Lads_mobile_sdk/q01;

    .line 72
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 73
    check-cast v0, Lads_mobile_sdk/eu;

    goto :goto_bf

    :cond_be
    move-object v0, v12

    :goto_bf
    if-eqz v0, :cond_c4

    .line 74
    iget-object v13, v0, Lads_mobile_sdk/eu;->a:Lads_mobile_sdk/ct1;

    goto :goto_c5

    :cond_c4
    move-object v13, v12

    :goto_c5
    if-nez v13, :cond_149

    .line 75
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 76
    iget-object v11, v5, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 77
    iget-object v11, v11, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    iget-object v11, v11, Lads_mobile_sdk/tn1;->f:Lads_mobile_sdk/nm2;

    const-string v13, "value"

    if-eqz v11, :cond_104

    .line 79
    invoke-virtual {v11}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v11

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lads_mobile_sdk/lm2;

    .line 80
    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v11, v9}, Lads_mobile_sdk/lm2;->a(Z)V

    if-eqz v0, :cond_ea

    .line 82
    iget-object v7, v0, Lads_mobile_sdk/eu;->b:Lads_mobile_sdk/mm2;

    if-nez v7, :cond_ec

    .line 83
    :cond_ea
    sget-object v7, Lads_mobile_sdk/mm2;->b:Lads_mobile_sdk/mm2;

    .line 84
    :cond_ec
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v11, v7}, Lads_mobile_sdk/lm2;->a(Lads_mobile_sdk/mm2;)V

    .line 178
    invoke-virtual {v4}, Lads_mobile_sdk/rm2;->a()I

    move-result v7

    .line 179
    invoke-virtual {v11, v7}, Lads_mobile_sdk/lm2;->b(I)V

    .line 180
    invoke-virtual {v11}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lads_mobile_sdk/nm2;

    if-nez v7, :cond_130

    .line 181
    :cond_104
    invoke-static {}, Lads_mobile_sdk/nm2;->v()Lads_mobile_sdk/lm2;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v7, v9}, Lads_mobile_sdk/lm2;->a(Z)V

    if-eqz v0, :cond_117

    .line 184
    iget-object v0, v0, Lads_mobile_sdk/eu;->b:Lads_mobile_sdk/mm2;

    if-nez v0, :cond_119

    .line 185
    :cond_117
    sget-object v0, Lads_mobile_sdk/mm2;->b:Lads_mobile_sdk/mm2;

    .line 186
    :cond_119
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v7, v0}, Lads_mobile_sdk/lm2;->a(Lads_mobile_sdk/mm2;)V

    .line 280
    invoke-virtual {v4}, Lads_mobile_sdk/rm2;->a()I

    move-result v0

    .line 281
    invoke-virtual {v7, v0}, Lads_mobile_sdk/lm2;->b(I)V

    .line 282
    invoke-virtual {v7}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, Lads_mobile_sdk/nm2;

    .line 283
    :cond_130
    iget-object v0, v5, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 284
    iget-object v0, v0, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    iput-object v7, v0, Lads_mobile_sdk/tn1;->f:Lads_mobile_sdk/nm2;

    .line 285
    iget-object v0, v4, Lads_mobile_sdk/rm2;->g:Lads_mobile_sdk/bb2;

    iput-object v12, v2, Lads_mobile_sdk/qm2;->a:Lads_mobile_sdk/rm2;

    const/4 v4, 0x2

    iput v4, v2, Lads_mobile_sdk/qm2;->g:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    invoke-static {v0, v2}, Lads_mobile_sdk/bb2;->b(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_148

    goto/16 :goto_2c0

    :cond_148
    return-object v0

    .line 287
    :cond_149
    :try_start_149
    iget-object v0, v4, Lads_mobile_sdk/rm2;->h:Lcom/google/gson/Gson;

    .line 288
    iget-object v14, v13, Lads_mobile_sdk/ct1;->a:Ljava/lang/String;

    .line 289
    const-class v15, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v14, v15}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 290
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v14, v4, Lads_mobile_sdk/rm2;->i:Lads_mobile_sdk/ex0;

    .line 291
    const-string v15, "json"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    new-instance v15, Lads_mobile_sdk/zb3;

    invoke-direct {v15, v14, v0, v12}, Lads_mobile_sdk/zb3;-><init>(Lads_mobile_sdk/ex0;Lcom/google/gson/JsonObject;Lkotlinx/coroutines/Deferred;)V

    .line 293
    const-string v0, "block"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_169} :catch_29a

    .line 419
    :try_start_169
    new-instance v0, Lads_mobile_sdk/q01;

    invoke-virtual {v15}, Lads_mobile_sdk/zb3;->invoke()Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v0, v14}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_172} :catch_173

    goto :goto_17a

    :catch_173
    move-exception v0

    .line 421
    :try_start_174
    new-instance v14, Lads_mobile_sdk/j01;

    invoke-direct {v14, v0, v12, v12, v5}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    move-object v0, v14

    .line 422
    :goto_17a
    nop

    instance-of v14, v0, Lads_mobile_sdk/i01;

    if-eqz v14, :cond_1a5

    .line 423
    iput-object v4, v2, Lads_mobile_sdk/qm2;->a:Lads_mobile_sdk/rm2;

    iput-object v13, v2, Lads_mobile_sdk/qm2;->b:Lads_mobile_sdk/ct1;

    const/4 v0, 0x3

    iput v0, v2, Lads_mobile_sdk/qm2;->g:I

    invoke-virtual {v4, v13, v2}, Lads_mobile_sdk/rm2;->a(Lads_mobile_sdk/ct1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_18a} :catch_29a

    if-ne v0, v3, :cond_18e

    goto/16 :goto_2c0

    :cond_18e
    move-object v5, v4

    move-object v4, v13

    .line 424
    :goto_190
    :try_start_190
    iget-object v0, v5, Lads_mobile_sdk/rm2;->g:Lads_mobile_sdk/bb2;

    iput-object v5, v2, Lads_mobile_sdk/qm2;->a:Lads_mobile_sdk/rm2;

    iput-object v4, v2, Lads_mobile_sdk/qm2;->b:Lads_mobile_sdk/ct1;

    const/4 v6, 0x4

    iput v6, v2, Lads_mobile_sdk/qm2;->g:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    invoke-static {v0, v2}, Lads_mobile_sdk/bb2;->b(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_1a0} :catch_6b

    if-ne v0, v3, :cond_1a4

    goto/16 :goto_2c0

    :cond_1a4
    return-object v0

    .line 426
    :cond_1a5
    :try_start_1a5
    const-string v14, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<com.google.android.libraries.ads.mobile.sdk.internal.common.ServerResponse>"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/q01;

    .line 427
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 428
    check-cast v0, Lads_mobile_sdk/ac3;

    .line 429
    iget-object v14, v4, Lads_mobile_sdk/rm2;->c:Lads_mobile_sdk/k;

    iput-object v4, v2, Lads_mobile_sdk/qm2;->a:Lads_mobile_sdk/rm2;

    iput-object v13, v2, Lads_mobile_sdk/qm2;->b:Lads_mobile_sdk/ct1;

    iput-object v0, v2, Lads_mobile_sdk/qm2;->c:Lads_mobile_sdk/ac3;

    const/4 v15, 0x5

    iput v15, v2, Lads_mobile_sdk/qm2;->g:I

    invoke-virtual {v14, v0, v2}, Lads_mobile_sdk/k;->a(Lads_mobile_sdk/ac3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1bf} :catch_29a

    if-ne v14, v3, :cond_1c3

    goto/16 :goto_2c0

    :cond_1c3
    move-object v14, v4

    .line 478
    :goto_1c4
    :try_start_1c4
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 479
    iget-object v4, v4, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 480
    iget-object v4, v4, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 481
    iget-object v15, v0, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget-object v15, v15, Lads_mobile_sdk/zy;->h:Ljava/lang/String;

    iput-object v15, v4, Lads_mobile_sdk/tn1;->b:Ljava/lang/String;

    .line 484
    new-instance v4, Lads_mobile_sdk/ec3;

    .line 485
    new-instance v15, Lads_mobile_sdk/wb3;

    iget-object v9, v14, Lads_mobile_sdk/rm2;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-direct {v15, v9}, Lads_mobile_sdk/wb3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)V

    .line 486
    iget-object v9, v13, Lads_mobile_sdk/ct1;->b:Lads_mobile_sdk/om2;

    .line 487
    invoke-direct {v4, v15, v0, v11, v9}, Lads_mobile_sdk/ec3;-><init>(Lads_mobile_sdk/wb3;Lads_mobile_sdk/ac3;ZLads_mobile_sdk/om2;)V

    .line 493
    iget-object v9, v14, Lads_mobile_sdk/rm2;->b:Lads_mobile_sdk/ej1;

    iput-object v14, v2, Lads_mobile_sdk/qm2;->a:Lads_mobile_sdk/rm2;

    iput-object v13, v2, Lads_mobile_sdk/qm2;->b:Lads_mobile_sdk/ct1;

    iput-object v0, v2, Lads_mobile_sdk/qm2;->c:Lads_mobile_sdk/ac3;

    iput-object v4, v2, Lads_mobile_sdk/qm2;->d:Lads_mobile_sdk/ec3;

    iput v5, v2, Lads_mobile_sdk/qm2;->g:I

    invoke-virtual {v9, v4, v2}, Lads_mobile_sdk/ej1;->a(Lads_mobile_sdk/ec3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_1f4

    goto/16 :goto_2c0

    :cond_1f4
    move-object v5, v0

    .line 534
    :goto_1f5
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 535
    iget-object v9, v0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 536
    iget-object v9, v9, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    iget-object v9, v9, Lads_mobile_sdk/tn1;->f:Lads_mobile_sdk/nm2;

    if-eqz v9, :cond_249

    .line 538
    invoke-virtual {v9}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v9

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lads_mobile_sdk/lm2;

    .line 539
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    invoke-virtual {v9, v11}, Lads_mobile_sdk/lm2;->a(Z)V

    .line 541
    iget-boolean v7, v13, Lads_mobile_sdk/ct1;->c:Z

    .line 542
    invoke-virtual {v9, v7}, Lads_mobile_sdk/lm2;->b(Z)V

    .line 543
    iget-wide v11, v13, Lads_mobile_sdk/ct1;->d:J

    .line 544
    invoke-virtual {v9, v11, v12}, Lads_mobile_sdk/lm2;->a(J)V

    .line 545
    invoke-virtual {v14}, Lads_mobile_sdk/rm2;->a()I

    move-result v11

    .line 546
    invoke-virtual {v9, v11}, Lads_mobile_sdk/lm2;->b(I)V

    .line 547
    iget-object v11, v5, Lads_mobile_sdk/ac3;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :goto_228
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_23b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lads_mobile_sdk/i2;

    invoke-virtual/range {v16 .. v16}, Lads_mobile_sdk/i2;->a()I

    move-result v16

    add-int v12, v12, v16

    goto :goto_228

    .line 548
    :cond_23b
    invoke-virtual {v9, v12}, Lads_mobile_sdk/lm2;->a(I)V

    .line 549
    invoke-virtual {v9}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lads_mobile_sdk/nm2;

    if-nez v9, :cond_28e

    .line 550
    :cond_249
    invoke-static {}, Lads_mobile_sdk/nm2;->v()Lads_mobile_sdk/lm2;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 552
    invoke-virtual {v9, v7}, Lads_mobile_sdk/lm2;->a(Z)V

    .line 553
    iget-boolean v6, v13, Lads_mobile_sdk/ct1;->c:Z

    .line 554
    invoke-virtual {v9, v6}, Lads_mobile_sdk/lm2;->b(Z)V

    .line 555
    iget-wide v6, v13, Lads_mobile_sdk/ct1;->d:J

    .line 556
    invoke-virtual {v9, v6, v7}, Lads_mobile_sdk/lm2;->a(J)V

    .line 557
    invoke-virtual {v14}, Lads_mobile_sdk/rm2;->a()I

    move-result v6

    .line 558
    invoke-virtual {v9, v6}, Lads_mobile_sdk/lm2;->b(I)V

    .line 559
    iget-object v5, v5, Lads_mobile_sdk/ac3;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_26f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_281

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/i2;

    invoke-virtual {v7}, Lads_mobile_sdk/i2;->a()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_26f

    .line 560
    :cond_281
    invoke-virtual {v9, v6}, Lads_mobile_sdk/lm2;->a(I)V

    .line 561
    invoke-virtual {v9}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v5

    check-cast v9, Lads_mobile_sdk/nm2;

    .line 562
    :cond_28e
    iget-object v0, v0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 563
    iget-object v0, v0, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    iput-object v9, v0, Lads_mobile_sdk/tn1;->f:Lads_mobile_sdk/nm2;

    .line 564
    new-instance v0, Lads_mobile_sdk/q01;

    invoke-direct {v0, v4}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_299
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_299} :catch_60

    return-object v0

    :catch_29a
    move-object v5, v4

    :goto_29b
    move-object v4, v5

    .line 566
    :goto_29c
    iput-object v4, v2, Lads_mobile_sdk/qm2;->a:Lads_mobile_sdk/rm2;

    const/4 v15, 0x0

    iput-object v15, v2, Lads_mobile_sdk/qm2;->b:Lads_mobile_sdk/ct1;

    iput-object v15, v2, Lads_mobile_sdk/qm2;->c:Lads_mobile_sdk/ac3;

    iput-object v15, v2, Lads_mobile_sdk/qm2;->d:Lads_mobile_sdk/ec3;

    const/4 v0, 0x7

    iput v0, v2, Lads_mobile_sdk/qm2;->g:I

    invoke-virtual {v4, v13, v2}, Lads_mobile_sdk/rm2;->a(Lads_mobile_sdk/ct1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_2af

    goto :goto_2c0

    .line 567
    :cond_2af
    :goto_2af
    iget-object v0, v4, Lads_mobile_sdk/rm2;->g:Lads_mobile_sdk/bb2;

    iput-object v15, v2, Lads_mobile_sdk/qm2;->a:Lads_mobile_sdk/rm2;

    const/16 v4, 0x8

    iput v4, v2, Lads_mobile_sdk/qm2;->g:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    invoke-static {v0, v2}, Lads_mobile_sdk/bb2;->b(Lads_mobile_sdk/bb2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_2c1

    :goto_2c0
    return-object v3

    :cond_2c1
    return-object v0

    :pswitch_data_2c2
    .packed-switch 0x0
        :pswitch_81
        :pswitch_7b
        :pswitch_77
        :pswitch_6e
        :pswitch_63
        :pswitch_54
        :pswitch_47
        :pswitch_3f
        :pswitch_3b
    .end packed-switch
.end method
