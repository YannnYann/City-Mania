###### Class ads_mobile_sdk.y12 (ads_mobile_sdk.y12)
.class public final Lads_mobile_sdk/y12;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Lads_mobile_sdk/rr3;

.field public f:Ljava/io/Closeable;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Lads_mobile_sdk/c22;

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:Lcom/google/gson/JsonArray;

.field public final synthetic n:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/c22;IILcom/google/gson/JsonArray;Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/y12;->j:Lads_mobile_sdk/c22;

    iput p2, p0, Lads_mobile_sdk/y12;->k:I

    iput p3, p0, Lads_mobile_sdk/y12;->l:I

    iput-object p4, p0, Lads_mobile_sdk/y12;->m:Lcom/google/gson/JsonArray;

    iput-object p5, p0, Lads_mobile_sdk/y12;->n:Lkotlinx/coroutines/channels/ProducerScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10

    .line 1
    new-instance v0, Lads_mobile_sdk/y12;

    iget-object v1, p0, Lads_mobile_sdk/y12;->j:Lads_mobile_sdk/c22;

    iget v2, p0, Lads_mobile_sdk/y12;->k:I

    iget v3, p0, Lads_mobile_sdk/y12;->l:I

    iget-object v4, p0, Lads_mobile_sdk/y12;->m:Lcom/google/gson/JsonArray;

    iget-object v5, p0, Lads_mobile_sdk/y12;->n:Lkotlinx/coroutines/channels/ProducerScope;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/y12;-><init>(Lads_mobile_sdk/c22;IILcom/google/gson/JsonArray;Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/y12;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/y12;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/y12;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 136
    iget v2, v1, Lads_mobile_sdk/y12;->i:I

    const-string v3, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    packed-switch v2, :pswitch_data_3f4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    iget-object v0, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    iget-object v2, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :goto_1d
    move-object v3, v2

    move-object v2, v0

    goto :goto_29

    .line 137
    :pswitch_20
    iget-object v0, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    iget-object v2, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    goto :goto_1d

    .line 136
    :goto_29
    :try_start_29
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_42

    goto/16 :goto_3ab

    .line 138
    :pswitch_2e
    iget-object v2, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v3, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/rr3;

    iget-object v4, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_3a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_42

    move-object v6, v2

    move-object/from16 v2, p1

    goto/16 :goto_372

    :catchall_42
    move-exception v0

    goto/16 :goto_3b4

    .line 139
    :pswitch_45
    iget v2, v1, Lads_mobile_sdk/y12;->a:I

    iget-object v3, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iget-object v4, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/q52;

    iget-object v6, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iget-object v7, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iget-object v8, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v9, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/c22;

    iget-object v10, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v10, Lcom/google/gson/JsonArray;

    :try_start_5f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_38b

    move-object v5, v4

    move-object v4, v8

    goto/16 :goto_353

    .line 140
    :pswitch_66
    iget v2, v1, Lads_mobile_sdk/y12;->a:I

    iget-object v4, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/v01;

    iget-object v6, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iget-object v8, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iget-object v9, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v10, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/c22;

    iget-object v11, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v11, Lcom/google/gson/JsonArray;

    :try_start_80
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_38e

    move-object v5, v9

    move-object v9, v10

    move-object v10, v11

    goto/16 :goto_31d

    .line 141
    :pswitch_88
    iget v2, v1, Lads_mobile_sdk/y12;->a:I

    iget-object v4, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v6, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iget-object v7, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iget-object v8, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v9, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/c22;

    iget-object v10, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v10, Lcom/google/gson/JsonArray;

    :try_start_9e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_38b

    move-object v5, v8

    move v8, v2

    move-object v2, v6

    move-object v6, v4

    move-object v4, v9

    move-object v9, v5

    move-object/from16 v5, p1

    goto/16 :goto_2e8

    .line 142
    :pswitch_ab
    iget-object v0, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    iget-object v2, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :goto_b3
    move-object v3, v2

    move-object v2, v0

    goto :goto_bf

    .line 143
    :pswitch_b6
    iget-object v0, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    iget-object v2, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    goto :goto_b3

    .line 142
    :goto_bf
    :try_start_bf
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_d8

    goto/16 :goto_262

    .line 144
    :pswitch_c4
    iget-object v2, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v3, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/rr3;

    iget-object v4, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_d0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_d8

    move-object v6, v2

    move-object/from16 v2, p1

    goto/16 :goto_228

    :catchall_d8
    move-exception v0

    goto/16 :goto_26a

    .line 145
    :pswitch_db
    iget v2, v1, Lads_mobile_sdk/y12;->a:I

    iget-object v3, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iget-object v4, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/q52;

    iget-object v6, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iget-object v7, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iget-object v8, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v9, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/c22;

    iget-object v10, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v10, Lcom/google/gson/JsonArray;

    :try_start_f5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_241

    move-object v5, v4

    move-object v4, v8

    goto/16 :goto_209

    .line 146
    :pswitch_fc
    iget v2, v1, Lads_mobile_sdk/y12;->a:I

    iget-object v6, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/v01;

    iget-object v7, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iget-object v9, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iget-object v10, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v11, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/c22;

    iget-object v12, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v12, Lcom/google/gson/JsonArray;

    :try_start_116
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_119
    .catchall {:try_start_116 .. :try_end_119} :catchall_11f

    move-object v4, v9

    move-object v5, v10

    move-object v9, v11

    move-object v10, v12

    goto/16 :goto_1d5

    :catchall_11f
    move-exception v0

    move-object v2, v8

    move-object v3, v9

    goto/16 :goto_26a

    .line 147
    :pswitch_124
    iget v2, v1, Lads_mobile_sdk/y12;->a:I

    iget-object v6, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iget-object v8, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iget-object v9, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v10, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/c22;

    iget-object v11, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    check-cast v11, Lcom/google/gson/JsonArray;

    :try_start_13a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_13d
    .catchall {:try_start_13a .. :try_end_13d} :catchall_147

    move-object v4, v10

    move-object v10, v9

    move-object v9, v4

    move-object/from16 v5, p1

    move-object v4, v8

    move v8, v2

    move-object v2, v7

    move-object v7, v6

    goto :goto_1a7

    :catchall_147
    move-exception v0

    move-object v2, v7

    move-object v3, v8

    goto/16 :goto_26a

    .line 148
    :pswitch_14c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 149
    iget-object v9, v1, Lads_mobile_sdk/y12;->j:Lads_mobile_sdk/c22;

    .line 150
    iget-object v2, v9, Lads_mobile_sdk/c22;->s:Lads_mobile_sdk/g83;

    .line 151
    sget-object v6, Lads_mobile_sdk/s11;->u0:Lads_mobile_sdk/s11;

    .line 152
    iget-object v7, v9, Lads_mobile_sdk/n2;->a:Lads_mobile_sdk/ks3;

    .line 153
    iget v8, v1, Lads_mobile_sdk/y12;->k:I

    iget v10, v1, Lads_mobile_sdk/y12;->l:I

    iget-object v11, v1, Lads_mobile_sdk/y12;->m:Lcom/google/gson/JsonArray;

    iget-object v12, v1, Lads_mobile_sdk/y12;->n:Lkotlinx/coroutines/channels/ProducerScope;

    .line 281
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 282
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v14

    .line 283
    iget-object v14, v14, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v15, 0x1

    const-string v5, ""

    const-string v4, "ad_mid"

    if-nez v14, :cond_2aa

    .line 284
    invoke-static {v2, v6, v13, v7}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    if-ge v8, v10, :cond_24b

    .line 285
    :try_start_176
    invoke-static {v11, v8}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;

    move-result-object v6

    if-eqz v6, :cond_184

    .line 286
    invoke-static {v6, v4, v5}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_185

    :catchall_181
    move-exception v0

    goto/16 :goto_249

    :cond_184
    const/4 v4, 0x0

    .line 287
    :goto_185
    iget-object v5, v9, Lads_mobile_sdk/c22;->o:Lads_mobile_sdk/t52;

    .line 288
    iget-object v6, v9, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 289
    iput-object v11, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v9, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    iput-object v12, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iput-object v2, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iput-object v4, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    iput v8, v1, Lads_mobile_sdk/y12;->a:I

    iput v15, v1, Lads_mobile_sdk/y12;->i:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    invoke-static {v5, v6, v1}, Lads_mobile_sdk/t52;->a(Lads_mobile_sdk/t52;Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1a0
    .catchall {:try_start_176 .. :try_end_1a0} :catchall_181

    if-ne v5, v0, :cond_1a4

    goto/16 :goto_3a9

    :cond_1a4
    move-object v7, v4

    move-object v10, v12

    move-object v4, v2

    .line 291
    :goto_1a7
    :try_start_1a7
    move-object v6, v5

    check-cast v6, Lads_mobile_sdk/v01;

    .line 435
    instance-of v5, v6, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_1d0

    move-object v5, v6

    check-cast v5, Lads_mobile_sdk/i01;

    .line 436
    iput-object v11, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v9, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    iput-object v10, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    iput-object v4, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iput-object v2, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iput-object v7, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    iput-object v6, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    iput v8, v1, Lads_mobile_sdk/y12;->a:I

    const/4 v12, 0x2

    iput v12, v1, Lads_mobile_sdk/y12;->i:I

    invoke-interface {v10, v5, v1}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1c8
    .catchall {:try_start_1a7 .. :try_end_1c8} :catchall_1cc

    if-ne v5, v0, :cond_1d0

    goto/16 :goto_3a9

    :catchall_1cc
    move-exception v0

    move-object v3, v4

    goto/16 :goto_26a

    :cond_1d0
    move v5, v8

    move-object v8, v2

    move v2, v5

    move-object v5, v10

    move-object v10, v11

    .line 568
    :goto_1d5
    :try_start_1d5
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lads_mobile_sdk/q01;

    .line 569
    iget-object v3, v6, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 570
    check-cast v3, Lads_mobile_sdk/q52;

    .line 572
    new-instance v6, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    .line 573
    invoke-interface {v3}, Lads_mobile_sdk/q52;->a()Lads_mobile_sdk/nr1;

    move-result-object v11

    .line 574
    invoke-direct {v6, v11, v7}, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;-><init>(Lads_mobile_sdk/nr1;Ljava/lang/String;)V

    .line 575
    iget-object v7, v9, Lads_mobile_sdk/c22;->r:Lads_mobile_sdk/bq2;

    .line 576
    iput-object v10, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v9, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    iput-object v5, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    iput-object v4, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iput-object v8, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iput-object v3, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    iput-object v6, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    iput v2, v1, Lads_mobile_sdk/y12;->a:I

    const/4 v11, 0x3

    iput v11, v1, Lads_mobile_sdk/y12;->i:I

    invoke-virtual {v7, v6, v1}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_200
    .catchall {:try_start_1d5 .. :try_end_200} :catchall_245

    if-ne v7, v0, :cond_204

    goto/16 :goto_3a9

    :cond_204
    move-object v7, v4

    move-object v4, v5

    move-object v5, v3

    move-object v3, v6

    move-object v6, v8

    .line 579
    :goto_209
    :try_start_209
    invoke-static {v10, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 580
    iput-object v4, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v7, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    iput-object v6, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iput-object v8, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iput-object v8, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    iput-object v8, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    const/4 v8, 0x4

    iput v8, v1, Lads_mobile_sdk/y12;->i:I

    .line 581
    invoke-virtual {v9, v2, v5, v3, v1}, Lads_mobile_sdk/c22;->a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/q52;Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_223
    .catchall {:try_start_209 .. :try_end_223} :catchall_241

    if-ne v2, v0, :cond_227

    goto/16 :goto_3a9

    :cond_227
    move-object v3, v7

    .line 582
    :goto_228
    :try_start_228
    check-cast v2, Lads_mobile_sdk/v01;

    .line 608
    iput-object v3, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v6, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, v1, Lads_mobile_sdk/y12;->i:I

    invoke-interface {v4, v2, v1}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_238
    .catchall {:try_start_228 .. :try_end_238} :catchall_23e

    if-ne v2, v0, :cond_23c

    goto/16 :goto_3a9

    :cond_23c
    move-object v2, v6

    goto :goto_262

    :catchall_23e
    move-exception v0

    move-object v2, v6

    goto :goto_26a

    :catchall_241
    move-exception v0

    move-object v2, v6

    move-object v3, v7

    goto :goto_26a

    :catchall_245
    move-exception v0

    move-object v3, v4

    move-object v2, v8

    goto :goto_26a

    :goto_249
    move-object v3, v2

    goto :goto_26a

    .line 610
    :cond_24b
    :try_start_24b
    new-instance v3, Lads_mobile_sdk/n01;

    const/4 v8, 0x0

    const/4 v11, 0x3

    invoke-direct {v3, v8, v11}, Lads_mobile_sdk/n01;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v1, Lads_mobile_sdk/y12;->i:I

    invoke-interface {v12, v3, v1}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_25d
    .catchall {:try_start_24b .. :try_end_25d} :catchall_181

    if-ne v3, v0, :cond_261

    goto/16 :goto_3a9

    :cond_261
    move-object v3, v2

    .line 612
    :goto_262
    :try_start_262
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_264
    .catchall {:try_start_262 .. :try_end_264} :catchall_d8

    const/4 v8, 0x0

    .line 731
    invoke-static {v2, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_3b1

    .line 741
    :goto_26a
    :try_start_26a
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 745
    instance-of v4, v0, Lads_mobile_sdk/v24;

    if-nez v4, :cond_2a3

    .line 747
    instance-of v4, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v4, :cond_280

    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    if-nez v4, :cond_280

    .line 753
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_280

    :catchall_27d
    move-exception v0

    move-object v3, v0

    goto :goto_2a4

    .line 759
    :cond_280
    :goto_280
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_29b

    .line 760
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_293

    .line 761
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_28d

    throw v0

    .line 762
    :cond_28d
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 763
    :cond_293
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 764
    :cond_29b
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 765
    :cond_2a3
    throw v0
    :try_end_2a4
    .catchall {:try_start_26a .. :try_end_2a4} :catchall_27d

    .line 766
    :goto_2a4
    :try_start_2a4
    throw v3
    :try_end_2a5
    .catchall {:try_start_2a4 .. :try_end_2a5} :catchall_2a5

    :catchall_2a5
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 802
    :cond_2aa
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v6, v2, v15}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    if-ge v8, v10, :cond_394

    .line 803
    :try_start_2b4
    invoke-static {v11, v8}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;

    move-result-object v6

    if-eqz v6, :cond_2c2

    .line 804
    invoke-static {v6, v4, v5}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2c3

    :catchall_2bf
    move-exception v0

    goto/16 :goto_392

    :cond_2c2
    const/4 v4, 0x0

    .line 805
    :goto_2c3
    iget-object v5, v9, Lads_mobile_sdk/c22;->o:Lads_mobile_sdk/t52;

    .line 806
    iget-object v6, v9, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 807
    iput-object v11, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v9, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    iput-object v12, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iput-object v2, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iput-object v4, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    iput v8, v1, Lads_mobile_sdk/y12;->a:I

    const/4 v7, 0x7

    iput v7, v1, Lads_mobile_sdk/y12;->i:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 808
    invoke-static {v5, v6, v1}, Lads_mobile_sdk/t52;->a(Lads_mobile_sdk/t52;Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2df
    .catchall {:try_start_2b4 .. :try_end_2df} :catchall_2bf

    if-ne v5, v0, :cond_2e3

    goto/16 :goto_3a9

    :cond_2e3
    move-object v7, v2

    move-object v6, v4

    move-object v4, v9

    move-object v10, v11

    move-object v9, v12

    .line 809
    :goto_2e8
    :try_start_2e8
    check-cast v5, Lads_mobile_sdk/v01;

    .line 953
    instance-of v11, v5, Lads_mobile_sdk/i01;

    if-eqz v11, :cond_311

    move-object v11, v5

    check-cast v11, Lads_mobile_sdk/i01;

    .line 954
    iput-object v10, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v4, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    iput-object v9, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    iput-object v7, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iput-object v2, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iput-object v6, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    iput-object v5, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    iput v8, v1, Lads_mobile_sdk/y12;->a:I

    const/16 v12, 0x8

    iput v12, v1, Lads_mobile_sdk/y12;->i:I

    invoke-interface {v9, v11, v1}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_309
    .catchall {:try_start_2e8 .. :try_end_309} :catchall_30d

    if-ne v11, v0, :cond_311

    goto/16 :goto_3a9

    :catchall_30d
    move-exception v0

    :goto_30e
    move-object v3, v7

    goto/16 :goto_3b4

    :cond_311
    move-object/from16 v16, v7

    move-object v7, v2

    move v2, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v9

    move-object v9, v4

    move-object v4, v5

    move-object/from16 v5, v16

    .line 1086
    :goto_31d
    :try_start_31d
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lads_mobile_sdk/q01;

    .line 1087
    iget-object v3, v4, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1088
    move-object v4, v3

    check-cast v4, Lads_mobile_sdk/q52;

    .line 1090
    new-instance v3, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    .line 1091
    invoke-interface {v4}, Lads_mobile_sdk/q52;->a()Lads_mobile_sdk/nr1;

    move-result-object v11

    .line 1092
    invoke-direct {v3, v11, v6}, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;-><init>(Lads_mobile_sdk/nr1;Ljava/lang/String;)V

    .line 1093
    iget-object v6, v9, Lads_mobile_sdk/c22;->r:Lads_mobile_sdk/bq2;

    .line 1094
    iput-object v10, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v9, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    iput-object v5, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    iput-object v8, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iput-object v7, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iput-object v4, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    iput-object v3, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    iput v2, v1, Lads_mobile_sdk/y12;->a:I

    const/16 v11, 0x9

    iput v11, v1, Lads_mobile_sdk/y12;->i:I

    invoke-virtual {v6, v3, v1}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_34a
    .catchall {:try_start_31d .. :try_end_34a} :catchall_38e

    if-ne v6, v0, :cond_34e

    goto/16 :goto_3a9

    :cond_34e
    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v8

    .line 1097
    :goto_353
    :try_start_353
    invoke-static {v10, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1098
    iput-object v4, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v7, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    iput-object v6, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v1, Lads_mobile_sdk/y12;->e:Lads_mobile_sdk/rr3;

    iput-object v8, v1, Lads_mobile_sdk/y12;->f:Ljava/io/Closeable;

    iput-object v8, v1, Lads_mobile_sdk/y12;->g:Ljava/lang/Object;

    iput-object v8, v1, Lads_mobile_sdk/y12;->h:Ljava/lang/Object;

    const/16 v8, 0xa

    iput v8, v1, Lads_mobile_sdk/y12;->i:I

    .line 1099
    invoke-virtual {v9, v2, v5, v3, v1}, Lads_mobile_sdk/c22;->a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/q52;Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_36e
    .catchall {:try_start_353 .. :try_end_36e} :catchall_38b

    if-ne v2, v0, :cond_371

    goto :goto_3a9

    :cond_371
    move-object v3, v7

    .line 1100
    :goto_372
    :try_start_372
    check-cast v2, Lads_mobile_sdk/v01;

    .line 1126
    iput-object v3, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v6, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v1, Lads_mobile_sdk/y12;->d:Ljava/lang/Object;

    const/16 v5, 0xb

    iput v5, v1, Lads_mobile_sdk/y12;->i:I

    invoke-interface {v4, v2, v1}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_383
    .catchall {:try_start_372 .. :try_end_383} :catchall_388

    if-ne v2, v0, :cond_386

    goto :goto_3a9

    :cond_386
    move-object v2, v6

    goto :goto_3ab

    :catchall_388
    move-exception v0

    move-object v2, v6

    goto :goto_3b4

    :catchall_38b
    move-exception v0

    move-object v2, v6

    goto :goto_30e

    :catchall_38e
    move-exception v0

    move-object v2, v7

    move-object v3, v8

    goto :goto_3b4

    :goto_392
    move-object v3, v2

    goto :goto_3b4

    .line 1128
    :cond_394
    :try_start_394
    new-instance v3, Lads_mobile_sdk/n01;

    const/4 v8, 0x0

    const/4 v11, 0x3

    invoke-direct {v3, v8, v11}, Lads_mobile_sdk/n01;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Lads_mobile_sdk/y12;->b:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/y12;->c:Ljava/lang/Object;

    const/16 v4, 0xc

    iput v4, v1, Lads_mobile_sdk/y12;->i:I

    invoke-interface {v12, v3, v1}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3a7
    .catchall {:try_start_394 .. :try_end_3a7} :catchall_2bf

    if-ne v3, v0, :cond_3aa

    :goto_3a9
    return-object v0

    :cond_3aa
    move-object v3, v2

    .line 1130
    :goto_3ab
    :try_start_3ab
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3ad
    .catchall {:try_start_3ab .. :try_end_3ad} :catchall_42

    const/4 v8, 0x0

    .line 1286
    invoke-static {v2, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1287
    :goto_3b1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1444
    :goto_3b4
    :try_start_3b4
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1448
    instance-of v4, v0, Lads_mobile_sdk/v24;

    if-nez v4, :cond_3ed

    .line 1450
    instance-of v4, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v4, :cond_3ca

    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    if-nez v4, :cond_3ca

    .line 1456
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_3ca

    :catchall_3c7
    move-exception v0

    move-object v3, v0

    goto :goto_3ee

    .line 1462
    :cond_3ca
    :goto_3ca
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_3e5

    .line 1463
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_3dd

    .line 1464
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_3d7

    throw v0

    .line 1465
    :cond_3d7
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1466
    :cond_3dd
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1467
    :cond_3e5
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1468
    :cond_3ed
    throw v0
    :try_end_3ee
    .catchall {:try_start_3b4 .. :try_end_3ee} :catchall_3c7

    .line 1469
    :goto_3ee
    :try_start_3ee
    throw v3
    :try_end_3ef
    .catchall {:try_start_3ee .. :try_end_3ef} :catchall_3ef

    :catchall_3ef
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_3f4
    .packed-switch 0x0
        :pswitch_14c
        :pswitch_124
        :pswitch_fc
        :pswitch_db
        :pswitch_c4
        :pswitch_b6
        :pswitch_ab
        :pswitch_88
        :pswitch_66
        :pswitch_45
        :pswitch_2e
        :pswitch_20
        :pswitch_15
    .end packed-switch
.end method
