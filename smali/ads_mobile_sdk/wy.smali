###### Class ads_mobile_sdk.wy (ads_mobile_sdk.wy)
.class public abstract Lads_mobile_sdk/wy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/ex0;)Lads_mobile_sdk/zy;
    .registers 39

    move-object/from16 v1, p1

    .line 2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v2

    .line 4
    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v4

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/4 v6, 0x1

    invoke-static {v6, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v4

    .line 11
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 15
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 17
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v9, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 19
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v10, Lcom/google/gson/JsonObject;

    invoke-direct {v10}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v10, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 23
    const-string v10, "key"

    const-string v11, ""

    const-wide/16 v15, 0x0

    if-eqz p0, :cond_3a8

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move/from16 v28, v6

    move-object/from16 v18, v11

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-wide/from16 v23, v15

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-wide v15, v4

    move-object/from16 v5, v22

    move-wide v3, v2

    move-object v2, v0

    :goto_74
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_381

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    move/from16 v33, v6

    move-object/from16 v6, v32

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    if-eqz v6, :cond_37b

    .line 27
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v32

    const-string v12, "getAsJsonObject(...)"

    const-class v13, Lcom/google/gson/JsonObject;

    move-object/from16 p0, v2

    const-string v2, "t"

    move-wide/from16 v35, v3

    const-string v3, "getAsString(...)"

    sparse-switch v32, :sswitch_data_41e

    goto/16 :goto_117

    :sswitch_aa
    const-string v2, "refresh_interval"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    goto :goto_117

    .line 55
    :cond_b3
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    move-object/from16 v2, p0

    move/from16 v6, v33

    goto :goto_74

    .line 56
    :sswitch_c4
    const-string v3, "bidding_data"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_cd

    goto :goto_117

    .line 69
    :cond_cd
    invoke-static {v0}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;

    move-result-object v3

    if-nez v3, :cond_107

    .line 70
    :try_start_d3
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_e2} :catch_e4

    move-object v3, v0

    goto :goto_100

    :catch_e4
    move-exception v0

    .line 71
    invoke-static {v0, v2, v0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v2

    .line 72
    iget-object v2, v2, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_f9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :goto_100
    if-nez v3, :cond_107

    .line 74
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/gson/JsonObject;

    .line 75
    :cond_107
    iput-object v3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_117

    .line 76
    :sswitch_10a
    const-string v2, "response_code"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_113

    goto :goto_117

    .line 107
    :cond_113
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v25

    :cond_117
    :goto_117
    move-object/from16 v2, p0

    :goto_119
    move/from16 v6, v33

    move-wide/from16 v3, v35

    goto/16 :goto_74

    .line 108
    :sswitch_11f
    const-string v2, "is_cross_process_ad_enabled"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_128

    goto :goto_117

    .line 144
    :cond_128
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v31

    goto :goto_117

    .line 145
    :sswitch_12d
    const-string v2, "refresh_load_delay_time_interval"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_136

    goto :goto_117

    .line 175
    :cond_136
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v15

    goto :goto_117

    .line 176
    :sswitch_143
    const-string v2, "analytics_query_ad_event_id"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14c

    goto :goto_117

    .line 209
    :cond_14c
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_117

    .line 210
    :sswitch_154
    const-string v2, "adRequestPostBody"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15d

    goto :goto_117

    .line 212
    :cond_15d
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v19, v0

    goto :goto_119

    .line 213
    :sswitch_169
    const-string v2, "response_info_extras"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_172

    goto :goto_117

    .line 245
    :cond_172
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_119

    .line 246
    :sswitch_17a
    const-string v3, "public_error"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_183

    goto :goto_117

    .line 273
    :cond_183
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 274
    const-string v3, "json"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-eqz v3, :cond_192

    goto :goto_1e0

    .line 298
    :cond_192
    :try_start_192
    new-instance v3, Lads_mobile_sdk/et;

    .line 299
    sget-object v4, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "code"

    const-string v13, "<this>"

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    .line 301
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "description"

    invoke-static {v0, v6}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-direct {v3, v4, v0}, Lads_mobile_sdk/et;-><init>(ILjava/lang/String;)V
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_1bf} :catch_1c5

    move-object/from16 v2, p0

    move-object/from16 v26, v3

    goto/16 :goto_119

    :catch_1c5
    move-exception v0

    .line 303
    invoke-static {v0, v2, v0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v2

    .line 304
    iget-object v2, v2, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 305
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1da

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_1da
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1e0
    move-object/from16 v2, p0

    move/from16 v6, v33

    move-wide/from16 v3, v35

    const/16 v26, 0x0

    goto/16 :goto_74

    .line 306
    :sswitch_1ea
    const-string v2, "adResponseBody"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f4

    goto/16 :goto_117

    .line 310
    :cond_1f4
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v21, v0

    goto/16 :goto_119

    .line 311
    :sswitch_201
    const-string v2, "latency"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20b

    goto/16 :goto_117

    .line 334
    :cond_20b
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v23

    goto/16 :goto_117

    .line 335
    :sswitch_211
    const-string v2, "throttle_configuration"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21b

    goto/16 :goto_117

    .line 370
    :cond_21b
    invoke-static {v0}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;

    move-result-object v30

    goto/16 :goto_117

    .line 371
    :sswitch_221
    const-string v2, "max_parallel_renderers"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22b

    goto/16 :goto_117

    .line 395
    :cond_22b
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v28

    goto/16 :goto_117

    .line 396
    :sswitch_231
    const-string v2, "is_idless"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23b

    goto/16 :goto_117

    .line 418
    :cond_23b
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v27

    goto/16 :goto_117

    .line 419
    :sswitch_241
    const-string v2, "gws_query_id"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24b

    goto/16 :goto_117

    .line 435
    :cond_24b
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_117

    .line 436
    :sswitch_254
    const-string v3, "adResponseHeaders"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25e

    goto/16 :goto_117

    .line 443
    :cond_25e
    invoke-static {v0}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;

    move-result-object v3

    if-nez v3, :cond_298

    .line 444
    :try_start_264
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_273
    .catch Ljava/lang/Exception; {:try_start_264 .. :try_end_273} :catch_275

    move-object v3, v0

    goto :goto_291

    :catch_275
    move-exception v0

    .line 445
    invoke-static {v0, v2, v0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v2

    .line 446
    iget-object v2, v2, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 447
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_28a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :goto_291
    if-nez v3, :cond_298

    .line 448
    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/gson/JsonObject;

    .line 449
    :cond_298
    iput-object v3, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto/16 :goto_117

    .line 450
    :sswitch_29c
    const-string v2, "adapter_response_replacement_key"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a6

    goto/16 :goto_117

    .line 451
    :cond_2a6
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v20, v0

    goto/16 :goto_119

    .line 452
    :sswitch_2b3
    const-string v2, "nofill_urls"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2bd

    goto/16 :goto_117

    .line 478
    :cond_2bd
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    const-string v2, "getAsJsonArray(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2cd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_117

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v2, 0x1

    if-gez v2, :cond_2de

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_2de
    check-cast v4, Lcom/google/gson/JsonElement;

    .line 545
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 546
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2f3

    .line 614
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f3
    move v2, v6

    goto :goto_2cd

    .line 615
    :sswitch_2f5
    const-string v2, "backend_query_id"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ff

    goto/16 :goto_117

    .line 625
    :cond_2ff
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v22, v0

    goto/16 :goto_119

    .line 626
    :sswitch_30c
    const-string v3, "inspector_ad_transaction_extras"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_316

    goto/16 :goto_117

    .line 645
    :cond_316
    invoke-static {v0}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;

    move-result-object v3

    if-nez v3, :cond_350

    .line 646
    :try_start_31c
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_32b
    .catch Ljava/lang/Exception; {:try_start_31c .. :try_end_32b} :catch_32d

    move-object v3, v0

    goto :goto_349

    :catch_32d
    move-exception v0

    .line 647
    invoke-static {v0, v2, v0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v2

    .line 648
    iget-object v2, v2, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 649
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_342

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_342
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :goto_349
    if-nez v3, :cond_350

    .line 650
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/gson/JsonObject;

    .line 651
    :cond_350
    iput-object v3, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto/16 :goto_117

    .line 652
    :sswitch_354
    const-string v2, "adRequestUrl"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35e

    goto/16 :goto_117

    .line 655
    :cond_35e
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v18, v0

    goto/16 :goto_119

    .line 656
    :sswitch_36b
    const-string v2, "is_persistent_ad_enabled"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_375

    goto/16 :goto_117

    .line 690
    :cond_375
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v29

    goto/16 :goto_117

    :cond_37b
    move-object/from16 p0, v2

    move-wide/from16 v35, v3

    goto/16 :goto_117

    :cond_381
    move-object/from16 p0, v2

    move-wide/from16 v35, v3

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    move-object/from16 v0, v20

    move-object/from16 v4, v21

    move/from16 v19, v25

    move-object/from16 v34, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move-object/from16 v20, p0

    move-object/from16 v21, v5

    move-wide/from16 v17, v15

    move-object/from16 v26, v22

    move-wide/from16 v5, v23

    move/from16 v22, v29

    move-object/from16 v23, v30

    move/from16 v24, v31

    move-wide/from16 v15, v35

    goto :goto_3c6

    :cond_3a8
    move/from16 v33, v6

    move-object/from16 v20, v0

    move-wide/from16 v17, v4

    move-object v0, v11

    move-object v4, v0

    move-object/from16 v21, v4

    move-object/from16 v26, v21

    move-wide v5, v15

    move/from16 v13, v33

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v34, 0x0

    move-wide v15, v2

    move-object/from16 v2, v26

    move-object v3, v2

    :goto_3c6
    move-object/from16 p0, v0

    if-eqz v1, :cond_3f9

    .line 692
    const-string v0, "gads:fullscreen_on_show_trigger"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "defaultValue"

    move-object/from16 v25, v2

    const-string v2, "create"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    sget-object v10, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v1, v0, v2, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3fb

    .line 735
    sget-object v1, Lads_mobile_sdk/yy;->b:Lads_mobile_sdk/xy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 736
    const-string v1, "value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    sget-object v1, Lads_mobile_sdk/yy;->c:Ljava/util/LinkedHashMap;

    .line 738
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/yy;

    if-nez v0, :cond_3fd

    sget-object v0, Lads_mobile_sdk/yy;->d:Lads_mobile_sdk/yy;

    goto :goto_3fd

    :cond_3f9
    move-object/from16 v25, v2

    .line 739
    :cond_3fb
    sget-object v0, Lads_mobile_sdk/yy;->d:Lads_mobile_sdk/yy;

    .line 741
    :cond_3fd
    :goto_3fd
    new-instance v1, Lads_mobile_sdk/zy;

    .line 746
    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/google/gson/JsonObject;

    .line 747
    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcom/google/gson/JsonObject;

    .line 750
    iget-object v8, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v9, v8

    check-cast v9, Lcom/google/gson/JsonObject;

    move-object v8, v11

    move v10, v12

    move-wide v11, v5

    move-object v6, v7

    move-object/from16 v7, v34

    move-object v5, v2

    move-object/from16 v2, v25

    move-object/from16 v25, v0

    move-object v0, v1

    move-object/from16 v1, p0

    .line 751
    invoke-direct/range {v0 .. v26}, Lads_mobile_sdk/zy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lads_mobile_sdk/et;Ljava/lang/String;Lcom/google/gson/JsonObject;ZJILjava/util/ArrayList;JJILcom/google/gson/JsonObject;Ljava/lang/String;ZLcom/google/gson/JsonObject;ZLads_mobile_sdk/yy;Ljava/lang/String;)V

    return-object v0

    :sswitch_data_41e
    .sparse-switch
        -0x7b4f4f88 -> :sswitch_36b
        -0x73528b1d -> :sswitch_354
        -0x633a5ac8 -> :sswitch_30c
        -0x60966ac3 -> :sswitch_2f5
        -0x5c657e81 -> :sswitch_2b3
        -0x402d7e5c -> :sswitch_29c
        -0x3b5ea69e -> :sswitch_254
        -0x345e18d2 -> :sswitch_241
        -0x2b76aa17 -> :sswitch_231
        -0x266a5d6d -> :sswitch_221
        -0x19a2ff5f -> :sswitch_211
        -0x2c6b302 -> :sswitch_201
        0x1fc3fd46 -> :sswitch_1ea
        0x337fb4b2 -> :sswitch_17a
        0x33c7a016 -> :sswitch_169
        0x3952cf6e -> :sswitch_154
        0x433d580c -> :sswitch_143
        0x4c790446 -> :sswitch_12d
        0x57e4a6c9 -> :sswitch_11f
        0x63e9d32b -> :sswitch_10a
        0x66afd9ee -> :sswitch_c4
        0x6c4a89a9 -> :sswitch_aa
    .end sparse-switch
.end method
