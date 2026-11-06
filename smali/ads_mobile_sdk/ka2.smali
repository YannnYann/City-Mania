###### Class ads_mobile_sdk.ka2 (ads_mobile_sdk.ka2)
.class public final Lads_mobile_sdk/ka2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/jb3;

.field public final b:Lads_mobile_sdk/g30;

.field public final c:Lads_mobile_sdk/e01;

.field public final d:Lads_mobile_sdk/zw3;

.field public final e:Lads_mobile_sdk/ex0;

.field public final f:Lads_mobile_sdk/tx;

.field public final g:Lcom/google/gson/Gson;

.field public final h:Lads_mobile_sdk/ej1;

.field public final i:Ljava/util/Optional;

.field public final j:Lads_mobile_sdk/ur3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/jb3;Lads_mobile_sdk/g30;Lads_mobile_sdk/e01;Lads_mobile_sdk/zw3;Lads_mobile_sdk/ex0;Lads_mobile_sdk/tx;Lcom/google/gson/Gson;Lads_mobile_sdk/ej1;Ljava/util/Optional;Lads_mobile_sdk/ur3;)V
    .registers 12

    .line 1
    const-string v0, "javascriptEngine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalAdRequestEventEmitter"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isPersistentCacheFillRequest"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lads_mobile_sdk/ka2;->a:Lads_mobile_sdk/jb3;

    .line 49
    iput-object p2, p0, Lads_mobile_sdk/ka2;->b:Lads_mobile_sdk/g30;

    .line 50
    iput-object p3, p0, Lads_mobile_sdk/ka2;->c:Lads_mobile_sdk/e01;

    .line 51
    iput-object p4, p0, Lads_mobile_sdk/ka2;->d:Lads_mobile_sdk/zw3;

    .line 52
    iput-object p5, p0, Lads_mobile_sdk/ka2;->e:Lads_mobile_sdk/ex0;

    .line 53
    iput-object p6, p0, Lads_mobile_sdk/ka2;->f:Lads_mobile_sdk/tx;

    .line 54
    iput-object p7, p0, Lads_mobile_sdk/ka2;->g:Lcom/google/gson/Gson;

    .line 55
    iput-object p8, p0, Lads_mobile_sdk/ka2;->h:Lads_mobile_sdk/ej1;

    .line 56
    iput-object p9, p0, Lads_mobile_sdk/ka2;->i:Ljava/util/Optional;

    .line 57
    iput-object p10, p0, Lads_mobile_sdk/ka2;->j:Lads_mobile_sdk/ur3;

    return-void
.end method

.method public static a(Lads_mobile_sdk/ka2;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lads_mobile_sdk/zt;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 3
    instance-of v3, v2, Lads_mobile_sdk/ia2;

    if-eqz v3, :cond_19

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/ia2;

    iget v4, v3, Lads_mobile_sdk/ia2;->i:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_19

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/ia2;->i:I

    goto :goto_1e

    :cond_19
    new-instance v3, Lads_mobile_sdk/ia2;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/ia2;-><init>(Lads_mobile_sdk/ka2;Lkotlin/coroutines/Continuation;)V

    :goto_1e
    iget-object v2, v3, Lads_mobile_sdk/ia2;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 62
    iget v5, v3, Lads_mobile_sdk/ia2;->i:I

    const/4 v6, 0x2

    const-string v7, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_67

    if-eq v5, v9, :cond_50

    if-ne v5, v6, :cond_48

    iget-object v1, v3, Lads_mobile_sdk/ia2;->d:Lads_mobile_sdk/rr3;

    iget-object v0, v3, Lads_mobile_sdk/ia2;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/rr3;

    iget-object v0, v3, Lads_mobile_sdk/ia2;->b:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/h81;

    iget-object v3, v3, Lads_mobile_sdk/ia2;->a:Lads_mobile_sdk/ka2;

    :try_start_3f
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_45

    move-object v15, v7

    goto/16 :goto_1c4

    :catchall_45
    move-exception v0

    goto/16 :goto_238

    .line 63
    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    iget-wide v0, v3, Lads_mobile_sdk/ia2;->f:J

    iget-object v5, v3, Lads_mobile_sdk/ia2;->e:Lads_mobile_sdk/rr3;

    iget-object v11, v3, Lads_mobile_sdk/ia2;->d:Lads_mobile_sdk/rr3;

    iget-object v12, v3, Lads_mobile_sdk/ia2;->c:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/zt;

    iget-object v13, v3, Lads_mobile_sdk/ia2;->b:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v14, v3, Lads_mobile_sdk/ia2;->a:Lads_mobile_sdk/ka2;

    :try_start_60
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_a7

    :catchall_64
    move-exception v0

    goto/16 :goto_29c

    .line 64
    :cond_67
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v2, v0, Lads_mobile_sdk/ka2;->f:Lads_mobile_sdk/tx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 70
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v11, v12, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v11

    .line 72
    sget-object v2, Lads_mobile_sdk/s11;->H:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 251
    invoke-static {v2, v5, v9}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 252
    :try_start_85
    iput-object v0, v3, Lads_mobile_sdk/ia2;->a:Lads_mobile_sdk/ka2;

    move-object/from16 v2, p1

    iput-object v2, v3, Lads_mobile_sdk/ia2;->b:Ljava/lang/Object;

    iput-object v1, v3, Lads_mobile_sdk/ia2;->c:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/ia2;->d:Lads_mobile_sdk/rr3;

    iput-object v5, v3, Lads_mobile_sdk/ia2;->e:Lads_mobile_sdk/rr3;

    iput-wide v11, v3, Lads_mobile_sdk/ia2;->f:J

    iput v9, v3, Lads_mobile_sdk/ia2;->i:I

    invoke-virtual {v0, v1, v3}, Lads_mobile_sdk/ka2;->a(Lads_mobile_sdk/zt;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13
    :try_end_99
    .catchall {:try_start_85 .. :try_end_99} :catchall_29a

    if-ne v13, v4, :cond_9d

    goto/16 :goto_1be

    :cond_9d
    move-object v14, v13

    move-object v13, v2

    move-object v2, v14

    move-object v14, v0

    move-wide/from16 v16, v11

    move-object v12, v1

    move-object v11, v5

    move-wide/from16 v0, v16

    .line 253
    :goto_a7
    :try_start_a7
    check-cast v2, Lads_mobile_sdk/v01;

    .line 447
    instance-of v15, v2, Lads_mobile_sdk/i01;

    if-eqz v15, :cond_b6

    check-cast v2, Lads_mobile_sdk/i01;

    .line 448
    invoke-static {v2, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_b2
    .catchall {:try_start_a7 .. :try_end_b2} :catchall_64

    .line 449
    invoke-static {v5, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 635
    :cond_b6
    :try_start_b6
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/q01;

    .line 636
    iget-object v2, v2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 637
    check-cast v2, Lads_mobile_sdk/h81;
    :try_end_bf
    .catchall {:try_start_b6 .. :try_end_bf} :catchall_64

    .line 641
    invoke-static {v5, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 642
    sget-object v5, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v5, v14, Lads_mobile_sdk/ka2;->f:Lads_mobile_sdk/tx;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v15, v7

    .line 643
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 644
    sget-object v5, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v6, v7, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    invoke-static {v5, v6, v0, v1}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v0

    .line 645
    iget-object v5, v2, Lads_mobile_sdk/h81;->d:Lads_mobile_sdk/p53;

    if-nez v5, :cond_ea

    .line 646
    iget-object v6, v2, Lads_mobile_sdk/h81;->e:Lkotlinx/coroutines/Deferred;

    if-nez v6, :cond_ea

    .line 647
    new-instance v0, Lads_mobile_sdk/m01;

    const-string v1, "HTTP response body is null"

    .line 648
    sget-object v2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 649
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object v0

    :cond_ea
    if-eqz v5, :cond_f4

    .line 650
    :try_start_ec
    invoke-static {v5}, Lads_mobile_sdk/p53;->a(Lads_mobile_sdk/p53;)Ljava/lang/String;

    move-result-object v5

    goto :goto_f6

    :catch_f1
    move-exception v0

    goto/16 :goto_27d

    .line 651
    :cond_f4
    const-string v5, "<html><body></body></html>"
    :try_end_f6
    .catch Ljava/lang/InterruptedException; {:try_start_ec .. :try_end_f6} :catch_287
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f6} :catch_f1

    .line 652
    :goto_f6
    new-instance v6, Lcom/google/gson/JsonObject;

    invoke-direct {v6}, Lcom/google/gson/JsonObject;-><init>()V

    .line 653
    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    .line 654
    new-instance v11, Lcom/google/gson/JsonObject;

    invoke-direct {v11}, Lcom/google/gson/JsonObject;-><init>()V

    .line 656
    iget-object v8, v12, Lads_mobile_sdk/zt;->e:Ljava/lang/String;

    const-string v10, "ad_request_url"

    invoke-virtual {v7, v10, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v8, v12, Lads_mobile_sdk/zt;->c:Ljava/lang/String;

    const-string v10, "ad_request_post_body"

    invoke-virtual {v7, v10, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v8, v12, Lads_mobile_sdk/zt;->b:Ljava/lang/String;

    const-string v10, "base_url"

    invoke-virtual {v7, v10, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v8, v14, Lads_mobile_sdk/ka2;->g:Lcom/google/gson/Gson;

    invoke-virtual {v8, v13}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    const-string v10, "signals"

    invoke-virtual {v7, v10, v8}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 661
    const-string v8, "body"

    invoke-virtual {v11, v8, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget v5, v2, Lads_mobile_sdk/h81;->a:I

    .line 664
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "response_code"

    invoke-virtual {v11, v8, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 665
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "latency"

    invoke-virtual {v11, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 667
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 668
    iget-object v1, v2, Lads_mobile_sdk/h81;->c:Ljava/util/Map;

    .line 669
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_155
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 670
    invoke-static {v0, v8}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v10

    if-nez v10, :cond_178

    new-instance v10, Lcom/google/gson/JsonArray;

    invoke-direct {v10}, Lcom/google/gson/JsonArray;-><init>()V

    .line 671
    :cond_178
    invoke-virtual {v10, v5}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v0, v8, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_155

    .line 673
    :cond_17f
    const-string v1, "headers"

    invoke-virtual {v11, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 675
    const-string v0, "request"

    invoke-virtual {v6, v0, v7}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 676
    const-string v0, "response"

    invoke-virtual {v6, v0, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 677
    sget-object v0, Lads_mobile_sdk/s11;->I:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 865
    invoke-static {v0, v1, v9}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 866
    :try_start_198
    iget-object v0, v14, Lads_mobile_sdk/ka2;->a:Lads_mobile_sdk/jb3;

    const-string v5, "google.afma.response.normalize"

    iput-object v14, v3, Lads_mobile_sdk/ia2;->a:Lads_mobile_sdk/ka2;

    iput-object v2, v3, Lads_mobile_sdk/ia2;->b:Ljava/lang/Object;

    iput-object v1, v3, Lads_mobile_sdk/ia2;->c:Ljava/lang/Object;

    iput-object v1, v3, Lads_mobile_sdk/ia2;->d:Lads_mobile_sdk/rr3;

    const/4 v7, 0x0

    iput-object v7, v3, Lads_mobile_sdk/ia2;->e:Lads_mobile_sdk/rr3;

    const/4 v7, 0x2

    iput v7, v3, Lads_mobile_sdk/ia2;->i:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 867
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "toString(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/rp0;

    invoke-virtual {v0, v5, v6, v3}, Lads_mobile_sdk/rp0;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1bc
    .catchall {:try_start_198 .. :try_end_1bc} :catchall_23b

    if-ne v0, v4, :cond_1bf

    :goto_1be
    return-object v4

    :cond_1bf
    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    move-object v4, v1

    move-object v3, v14

    .line 868
    :goto_1c4
    :try_start_1c4
    check-cast v2, Lads_mobile_sdk/v01;

    .line 1064
    instance-of v5, v2, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_1d1

    .line 1065
    move-object v5, v2

    check-cast v5, Lads_mobile_sdk/i01;

    const/4 v6, 0x0

    .line 1066
    invoke-static {v5, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_1d1
    .catchall {:try_start_1c4 .. :try_end_1d1} :catchall_45

    :cond_1d1
    const/4 v7, 0x0

    .line 1067
    invoke-static {v1, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1100
    instance-of v1, v2, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_1e0

    check-cast v2, Lads_mobile_sdk/i01;

    const/4 v6, 0x0

    .line 1101
    invoke-static {v2, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    return-object v2

    .line 1102
    :cond_1e0
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/q01;

    .line 1103
    iget-object v1, v2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1104
    check-cast v1, Lcom/google/gson/JsonObject;

    .line 1105
    iget-object v0, v0, Lads_mobile_sdk/h81;->e:Lkotlinx/coroutines/Deferred;

    .line 1106
    iget-object v2, v3, Lads_mobile_sdk/ka2;->e:Lads_mobile_sdk/ex0;

    const-string v4, "json"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1107
    new-instance v4, Lads_mobile_sdk/zb3;

    invoke-direct {v4, v2, v1, v0}, Lads_mobile_sdk/zb3;-><init>(Lads_mobile_sdk/ex0;Lcom/google/gson/JsonObject;Lkotlinx/coroutines/Deferred;)V

    .line 1108
    const-string v0, "block"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1234
    :try_start_1fc
    new-instance v0, Lads_mobile_sdk/q01;

    invoke-virtual {v4}, Lads_mobile_sdk/zb3;->invoke()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_205
    .catch Ljava/lang/Exception; {:try_start_1fc .. :try_end_205} :catch_206

    goto :goto_20f

    :catch_206
    move-exception v0

    .line 1236
    new-instance v2, Lads_mobile_sdk/j01;

    const/4 v4, 0x6

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v7, v4}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    move-object v0, v2

    .line 1237
    :goto_20f
    nop

    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_217

    check-cast v0, Lads_mobile_sdk/i01;

    return-object v0

    .line 1238
    :cond_217
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/q01;

    .line 1239
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1240
    check-cast v0, Lads_mobile_sdk/ac3;

    .line 1243
    iget-object v2, v3, Lads_mobile_sdk/ka2;->i:Ljava/util/Optional;

    invoke-static {v2}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_232

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_232

    .line 1244
    iput-object v1, v0, Lads_mobile_sdk/ac3;->d:Lcom/google/gson/JsonObject;

    .line 1245
    :cond_232
    new-instance v1, Lads_mobile_sdk/q01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v1

    :goto_238
    move-object v2, v1

    move-object v1, v4

    goto :goto_23d

    :catchall_23b
    move-exception v0

    move-object v2, v1

    .line 1433
    :goto_23d
    :try_start_23d
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1437
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_276

    .line 1439
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_253

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_253

    .line 1445
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_253

    :catchall_250
    move-exception v0

    move-object v1, v0

    goto :goto_277

    .line 1451
    :cond_253
    :goto_253
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_26e

    .line 1452
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_266

    .line 1453
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_260

    throw v0

    .line 1454
    :cond_260
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1455
    :cond_266
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1456
    :cond_26e
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1457
    :cond_276
    throw v0
    :try_end_277
    .catchall {:try_start_23d .. :try_end_277} :catchall_250

    .line 1458
    :goto_277
    :try_start_277
    throw v1
    :try_end_278
    .catchall {:try_start_277 .. :try_end_278} :catchall_278

    :catchall_278
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1459
    :goto_27d
    new-instance v1, Lads_mobile_sdk/j01;

    sget-object v2, Lads_mobile_sdk/kk1;->e:Lads_mobile_sdk/kk1;

    const/4 v3, 0x4

    const/4 v7, 0x0

    invoke-direct {v1, v0, v2, v7, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    return-object v1

    :catch_287
    move-exception v0

    .line 1460
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1462
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Thread interrupted while processing HTTP response body."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catchall_29a
    move-exception v0

    move-object v11, v5

    .line 1627
    :goto_29c
    :try_start_29c
    invoke-virtual {v11, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1631
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_2d5

    .line 1633
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_2b2

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2b2

    .line 1639
    invoke-virtual {v11, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_2b2

    :catchall_2af
    move-exception v0

    move-object v1, v0

    goto :goto_2d6

    .line 1645
    :cond_2b2
    :goto_2b2
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_2cd

    .line 1646
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2c5

    .line 1647
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_2bf

    throw v0

    .line 1648
    :cond_2bf
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1649
    :cond_2c5
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1650
    :cond_2cd
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1651
    :cond_2d5
    throw v0
    :try_end_2d6
    .catchall {:try_start_29c .. :try_end_2d6} :catchall_2af

    .line 1652
    :goto_2d6
    :try_start_2d6
    throw v1
    :try_end_2d7
    .catchall {:try_start_2d6 .. :try_end_2d7} :catchall_2d7

    :catchall_2d7
    move-exception v0

    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/zt;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 1653
    instance-of v0, p2, Lads_mobile_sdk/ja2;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/ja2;

    iget v1, v0, Lads_mobile_sdk/ja2;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_14

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ja2;->i:I

    :goto_12
    move-object v5, v0

    goto :goto_1a

    :cond_14
    new-instance v0, Lads_mobile_sdk/ja2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ja2;-><init>(Lads_mobile_sdk/ka2;Lkotlin/coroutines/Continuation;)V

    goto :goto_12

    :goto_1a
    iget-object p2, v5, Lads_mobile_sdk/ja2;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 1772
    iget v0, v5, Lads_mobile_sdk/ja2;->i:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_58

    if-eq v0, v4, :cond_50

    if-eq v0, v3, :cond_40

    if-eq v0, v2, :cond_3c

    if-ne v0, v1, :cond_34

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_40
    iget-object p1, v5, Lads_mobile_sdk/ja2;->f:Lads_mobile_sdk/e81;

    iget-object v0, v5, Lads_mobile_sdk/ja2;->e:Ljava/lang/String;

    iget-object v3, v5, Lads_mobile_sdk/ja2;->d:Lads_mobile_sdk/e81;

    iget-object v4, v5, Lads_mobile_sdk/ja2;->c:Ljava/lang/String;

    iget-object v6, v5, Lads_mobile_sdk/ja2;->b:Lads_mobile_sdk/zt;

    iget-object v8, v5, Lads_mobile_sdk/ja2;->a:Lads_mobile_sdk/ka2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_a5

    :cond_50
    iget-object p1, v5, Lads_mobile_sdk/ja2;->b:Lads_mobile_sdk/zt;

    iget-object v0, v5, Lads_mobile_sdk/ja2;->a:Lads_mobile_sdk/ka2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_73

    :cond_58
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1775
    iget-boolean p2, p1, Lads_mobile_sdk/zt;->d:Z

    if-eqz p2, :cond_78

    .line 1776
    iget-object p2, p0, Lads_mobile_sdk/ka2;->b:Lads_mobile_sdk/g30;

    iput-object p0, v5, Lads_mobile_sdk/ja2;->a:Lads_mobile_sdk/ka2;

    iput-object p1, v5, Lads_mobile_sdk/ja2;->b:Lads_mobile_sdk/zt;

    iput v4, v5, Lads_mobile_sdk/ja2;->i:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1777
    invoke-static {p2, v5}, Lads_mobile_sdk/g30;->l(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v7, :cond_72

    goto/16 :goto_1d2

    :cond_72
    move-object v0, p0

    .line 1778
    :goto_73
    check-cast p2, Ljava/lang/String;

    move-object v8, v0

    :goto_76
    move-object v4, p2

    goto :goto_7c

    .line 1780
    :cond_78
    const-string p2, ""

    move-object v8, p0

    goto :goto_76

    .line 1784
    :goto_7c
    new-instance p2, Lads_mobile_sdk/e81;

    invoke-direct {p2}, Lads_mobile_sdk/e81;-><init>()V

    .line 1785
    iget-object v0, p1, Lads_mobile_sdk/zt;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 1787
    iget-object v0, v8, Lads_mobile_sdk/ka2;->d:Lads_mobile_sdk/zw3;

    iput-object v8, v5, Lads_mobile_sdk/ja2;->a:Lads_mobile_sdk/ka2;

    iput-object p1, v5, Lads_mobile_sdk/ja2;->b:Lads_mobile_sdk/zt;

    iput-object v4, v5, Lads_mobile_sdk/ja2;->c:Ljava/lang/String;

    iput-object p2, v5, Lads_mobile_sdk/ja2;->d:Lads_mobile_sdk/e81;

    const-string v6, "User-Agent"

    iput-object v6, v5, Lads_mobile_sdk/ja2;->e:Ljava/lang/String;

    iput-object p2, v5, Lads_mobile_sdk/ja2;->f:Lads_mobile_sdk/e81;

    iput v3, v5, Lads_mobile_sdk/ja2;->i:I

    invoke-interface {v0, v5}, Lads_mobile_sdk/zw3;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_a0

    goto/16 :goto_1d2

    :cond_a0
    move-object v3, p2

    move-object p2, v0

    move-object v0, v6

    move-object v6, p1

    move-object p1, v3

    .line 1788
    :goto_a5
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    if-eqz v4, :cond_b8

    .line 1790
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_b3

    goto :goto_b8

    .line 1791
    :cond_b3
    const-string p1, "Cookie"

    invoke-virtual {v3, p1, v4}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 1794
    :cond_b8
    :goto_b8
    iget-object p1, v6, Lads_mobile_sdk/zt;->c:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p1, :cond_13d

    .line 1795
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c5

    goto/16 :goto_13d

    .line 1797
    :cond_c5
    iget-object v0, v6, Lads_mobile_sdk/zt;->i:Ljava/lang/String;

    if-eqz v0, :cond_d4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d0

    goto :goto_d4

    .line 1798
    :cond_d0
    iget-object v0, v6, Lads_mobile_sdk/zt;->i:Ljava/lang/String;

    :goto_d2
    move-object v4, v0

    goto :goto_d7

    .line 1800
    :cond_d4
    :goto_d4
    const-string v0, "text/plain"

    goto :goto_d2

    .line 1802
    :goto_d7
    iget-boolean v0, v6, Lads_mobile_sdk/zt;->h:Z

    const-string v6, "getBytes(...)"

    if-eqz v0, :cond_131

    .line 1803
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1804
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1806
    :try_start_ee
    new-instance v10, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v10, v9}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f3} :catch_103

    .line 1807
    :try_start_f3
    invoke-virtual {v10, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1808
    invoke-virtual {v10}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 1809
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_fb
    .catchall {:try_start_f3 .. :try_end_fb} :catchall_105

    .line 1810
    :try_start_fb
    invoke-static {v10, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1814
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_102} :catch_103

    goto :goto_117

    :catch_103
    move-exception v0

    goto :goto_10d

    :catchall_105
    move-exception v0

    move-object v9, v0

    .line 1815
    :try_start_107
    throw v9
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_108

    :catchall_108
    move-exception v0

    :try_start_109
    invoke-static {v10, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_10d} :catch_103

    .line 1821
    :goto_10d
    iget-object v9, v8, Lads_mobile_sdk/ka2;->j:Lads_mobile_sdk/ur3;

    check-cast v9, Lads_mobile_sdk/as3;

    const-string v10, "gzip compression failed, sending uncompressed."

    invoke-virtual {v9, v10, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, p2

    :goto_117
    if-eqz v0, :cond_124

    .line 1822
    const-string p1, "Content-Encoding"

    const-string v6, "gzip"

    invoke-virtual {v3, p1, v6}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 1823
    invoke-virtual {v3, v4, v0}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;[B)Lads_mobile_sdk/e81;

    goto :goto_13d

    .line 1825
    :cond_124
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, p1}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;[B)Lads_mobile_sdk/e81;

    goto :goto_13d

    .line 1828
    :cond_131
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, p1}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;[B)Lads_mobile_sdk/e81;

    .line 1832
    :cond_13d
    :goto_13d
    iget-object p1, v8, Lads_mobile_sdk/ka2;->h:Lads_mobile_sdk/ej1;

    .line 1833
    iput-object p1, v3, Lads_mobile_sdk/e81;->f:Lads_mobile_sdk/g9;

    .line 1834
    invoke-virtual {v3}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object p1

    .line 1837
    iget-object v0, v8, Lads_mobile_sdk/ka2;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1839
    const-string v3, "gads:ad_request_http_client_enabled"

    const-string v4, "key"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1855
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v3, v6, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v3, 0x3c

    const-string v6, "gads:http_ad_request:timeout_millis"

    if-eqz v0, :cond_19a

    .line 1856
    iget-object v0, v8, Lads_mobile_sdk/ka2;->c:Lads_mobile_sdk/e01;

    iget-object v1, v8, Lads_mobile_sdk/ka2;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1857
    sget-object v8, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v8, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 1858
    invoke-static {v3, v8, v6, v4}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v3

    .line 1859
    sget-object v4, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v1, v6, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/time/Duration;

    invoke-virtual {v1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v3

    .line 1860
    invoke-static {v3, v4}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v1

    iput-object p2, v5, Lads_mobile_sdk/ja2;->a:Lads_mobile_sdk/ka2;

    iput-object p2, v5, Lads_mobile_sdk/ja2;->b:Lads_mobile_sdk/zt;

    iput-object p2, v5, Lads_mobile_sdk/ja2;->c:Ljava/lang/String;

    iput-object p2, v5, Lads_mobile_sdk/ja2;->d:Lads_mobile_sdk/e81;

    iput-object p2, v5, Lads_mobile_sdk/ja2;->e:Ljava/lang/String;

    iput-object p2, v5, Lads_mobile_sdk/ja2;->f:Lads_mobile_sdk/e81;

    iput v2, v5, Lads_mobile_sdk/ja2;->i:I

    invoke-interface {v0, p1, v1, v5}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/f81;Lkotlin/time/Duration;Lads_mobile_sdk/ja2;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_199

    goto :goto_1d2

    :cond_199
    return-object p1

    :cond_19a
    move v2, v1

    .line 1862
    iget-object v1, v8, Lads_mobile_sdk/ka2;->c:Lads_mobile_sdk/e01;

    iget-object v0, v8, Lads_mobile_sdk/ka2;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1863
    sget-object v8, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v8, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 1864
    invoke-static {v3, v8, v6, v4}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v3

    .line 1865
    sget-object v4, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v0, v6, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v3

    .line 1866
    invoke-static {v3, v4}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v3

    iput-object p2, v5, Lads_mobile_sdk/ja2;->a:Lads_mobile_sdk/ka2;

    iput-object p2, v5, Lads_mobile_sdk/ja2;->b:Lads_mobile_sdk/zt;

    iput-object p2, v5, Lads_mobile_sdk/ja2;->c:Ljava/lang/String;

    iput-object p2, v5, Lads_mobile_sdk/ja2;->d:Lads_mobile_sdk/e81;

    iput-object p2, v5, Lads_mobile_sdk/ja2;->e:Ljava/lang/String;

    iput-object p2, v5, Lads_mobile_sdk/ja2;->f:Lads_mobile_sdk/e81;

    iput v2, v5, Lads_mobile_sdk/ja2;->i:I

    const/4 v4, 0x0

    const/16 v6, 0x1c

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_1d3

    :goto_1d2
    return-object v7

    :cond_1d3
    return-object p1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lads_mobile_sdk/zt;Lads_mobile_sdk/xa2;)Ljava/lang/Object;
    .registers 4

    .line 2
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/ka2;->a(Lads_mobile_sdk/ka2;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lads_mobile_sdk/zt;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
