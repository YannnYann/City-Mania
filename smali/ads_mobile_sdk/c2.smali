###### Class ads_mobile_sdk.c2 (ads_mobile_sdk.c2)
.class public abstract Lads_mobile_sdk/c2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)I
    .registers 2

    .line 16723
    sget-object v0, Lads_mobile_sdk/f2;->a:[Lads_mobile_sdk/f2;

    .line 16724
    const-string v0, "landscape"

    .line 16725
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x6

    return p0

    .line 16726
    :cond_c
    const-string v0, "portrait"

    .line 16727
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x7

    return p0

    :cond_16
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Lcom/google/gson/JsonObject;ILkotlinx/coroutines/Deferred;)Lads_mobile_sdk/i2;
    .registers 113

    const/4 v0, 0x1

    .line 1
    const-string v1, "ping_strategy"

    const-string v2, "json"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v4, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    .line 3
    :try_start_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v6, Lads_mobile_sdk/bc;->b:Lads_mobile_sdk/bc;

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 8
    sget-object v9, Lads_mobile_sdk/e2;->d:Lads_mobile_sdk/e2;

    .line 9
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3d} :catch_1352

    const/16 v98, 0x0

    .line 17
    :try_start_3f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v6

    .line 19
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v9

    .line 20
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v53, v3

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v1

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v2

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v50, v4

    .line 25
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object/from16 v20, v2

    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 31
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 33
    new-instance v21, Lcom/google/gson/JsonObject;

    invoke-direct/range {v21 .. v21}, Lcom/google/gson/JsonObject;-><init>()V

    .line 41
    sget-object v22, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual/range {v22 .. v22}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v23

    .line 44
    new-instance v25, Lads_mobile_sdk/dg2;

    .line 45
    sget-object v26, Lads_mobile_sdk/cg2;->c:Lads_mobile_sdk/cg2;

    .line 46
    sget-object v27, Lads_mobile_sdk/xh2;->d:Lads_mobile_sdk/xh2;

    .line 48
    const-string v29, ""

    .line 49
    const-string v30, ""

    const/16 v28, 0x0

    .line 50
    invoke-direct/range {v25 .. v30}, Lads_mobile_sdk/dg2;-><init>(Lads_mobile_sdk/cg2;Lads_mobile_sdk/xh2;ZLjava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v26, Lads_mobile_sdk/h2;->d:Lads_mobile_sdk/h2;

    .line 56
    invoke-virtual/range {v22 .. v22}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v27

    .line 63
    new-instance v29, Lcom/google/gson/JsonObject;

    invoke-direct/range {v29 .. v29}, Lcom/google/gson/JsonObject;-><init>()V

    move-object/from16 v30, v2

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    sget-object v31, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 75
    new-instance v32, Lads_mobile_sdk/o93;

    invoke-direct/range {v32 .. v32}, Lads_mobile_sdk/o93;-><init>()V

    .line 81
    sget-object v33, Lads_mobile_sdk/st2;->c:Lads_mobile_sdk/st2;

    .line 83
    new-instance v34, Lcom/google/gson/JsonObject;

    invoke-direct/range {v34 .. v34}, Lcom/google/gson/JsonObject;-><init>()V

    .line 87
    invoke-virtual/range {v22 .. v22}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v35

    .line 91
    new-instance v22, Lcom/google/gson/JsonObject;

    invoke-direct/range {v22 .. v22}, Lcom/google/gson/JsonObject;-><init>()V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v37
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_cc} :catch_1f6

    move-object/from16 v38, v1

    const-string v1, ""

    move-object/from16 v39, v1

    const-wide/16 v40, 0x0

    move-object/from16 v99, v16

    move-object/from16 v100, v17

    move-object/from16 v94, v22

    move-wide/from16 v63, v23

    move-object/from16 v51, v25

    move-wide/from16 v54, v27

    move-object/from16 v72, v29

    move-object/from16 v22, v31

    move-object/from16 v74, v32

    move-object/from16 v86, v33

    move-object/from16 v58, v34

    move-wide/from16 v89, v35

    move-object/from16 v43, v37

    move-object/from16 v44, v38

    move-object/from16 v16, v39

    move-object/from16 v17, v16

    move-object/from16 v23, v17

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v27, v25

    move-object/from16 v33, v27

    move-object/from16 v38, v33

    move-object/from16 v46, v38

    move-object/from16 v60, v46

    move-object/from16 v66, v60

    move-object/from16 v67, v66

    move-object/from16 v68, v67

    move-object/from16 v73, v68

    move-object/from16 v79, v73

    move-wide/from16 v84, v40

    move-object/from16 v40, v98

    move-object/from16 v45, v40

    move-object/from16 v59, v45

    move-object/from16 v61, v59

    move-object/from16 v71, v61

    move-object/from16 v80, v71

    move-object/from16 v81, v80

    move-object/from16 v82, v81

    move-object/from16 v83, v82

    move-object/from16 v91, v83

    move-object/from16 v92, v91

    move-object/from16 v93, v92

    const/16 v31, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v42, 0x0

    const/16 v47, -0x1

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v52, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v62, 0x0

    const/16 v65, 0x0

    const/16 v75, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v101, 0x0

    move-object/from16 v28, v18

    move-object/from16 v29, v19

    move-object/from16 v34, v21

    move-object/from16 v32, v30

    move-object/from16 v19, v79

    move-object/from16 v21, v19

    move-object/from16 v41, v21

    move-object/from16 v18, v93

    move-object/from16 v30, v20

    const/16 v20, 0x0

    :goto_166
    :try_start_166
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_12ba

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Ljava/util/Map$Entry;

    invoke-static/range {v69 .. v69}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface/range {v69 .. v69}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v70

    move-object/from16 v1, v70

    check-cast v1, Ljava/lang/String;

    invoke-interface/range {v69 .. v69}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v69

    move-object/from16 v70, v6

    move-object/from16 v6, v69

    check-cast v6, Lcom/google/gson/JsonElement;

    if-eqz v1, :cond_1284

    .line 95
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v69
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_18d} :catch_1f6

    move-object/from16 v97, v6

    const-string v6, "getAsJsonObject(...)"

    move-object/from16 v102, v14

    const-string v14, "getAsJsonArray(...)"

    move-object/from16 v103, v15

    const-string v15, "getAsString(...)"

    sparse-switch v69, :sswitch_data_1372

    :goto_19c
    move-object/from16 v69, v13

    :goto_19e
    move-object/from16 v13, v23

    move-object/from16 v23, v33

    move/from16 v33, v42

    move-object/from16 v42, v46

    move/from16 v46, v52

    move-object/from16 v14, v53

    move-object/from16 v52, v59

    move-object/from16 v59, v61

    move/from16 v61, v62

    move/from16 v62, v65

    move-object/from16 v65, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v27

    move-object/from16 v27, v7

    :goto_1c0
    move-object/from16 v7, v44

    move-object/from16 v44, v29

    move-object/from16 v29, v2

    :goto_1c6
    move-object/from16 v2, v39

    goto/16 :goto_128c

    :sswitch_1ca
    :try_start_1ca
    const-string v6, "flow_control"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d3

    goto :goto_19c

    .line 221
    :cond_1d3
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move/from16 v88, v1

    :goto_1e4
    move-object/from16 v69, v13

    :goto_1e6
    move-object/from16 v1, v27

    move-object/from16 v14, v53

    :goto_1ea
    move-object/from16 v27, v7

    :goto_1ec
    move-object/from16 v7, v44

    :goto_1ee
    move-object/from16 v44, v29

    move-object/from16 v29, v2

    move-object/from16 v2, v39

    goto/16 :goto_1299

    :catch_1f6
    move-exception v0

    goto/16 :goto_1355

    .line 222
    :sswitch_1f9
    const-string v6, "render_serially"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_202

    goto :goto_19c

    .line 310
    :cond_202
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move/from16 v62, v1

    goto :goto_1e4

    .line 311
    :sswitch_214
    const-string v6, "manual_tracking_urls"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21e

    goto/16 :goto_19c

    .line 376
    :cond_21e
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_22c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_257

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v69, v6, 0x1

    if-gez v6, :cond_23d

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_23d
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 662
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 663
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 948
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_254

    .line 949
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_254
    move/from16 v6, v69

    goto :goto_22c

    .line 955
    :cond_257
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_259
    move-object/from16 v69, v13

    :goto_25b
    move-object/from16 v13, v23

    move-object/from16 v23, v33

    move/from16 v33, v42

    move-object/from16 v42, v46

    move/from16 v46, v52

    move-object/from16 v14, v53

    move-object/from16 v52, v59

    move-object/from16 v59, v61

    move/from16 v61, v62

    move/from16 v62, v65

    move-object/from16 v65, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v27

    move-object/from16 v27, v7

    :goto_27d
    move-object/from16 v7, v44

    move-object/from16 v44, v29

    move-object/from16 v29, v2

    :goto_283
    move-object/from16 v2, v39

    goto/16 :goto_123f

    .line 956
    :sswitch_287
    const-string v6, "rule_line_external_id"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_291

    goto/16 :goto_19c

    .line 1063
    :cond_291
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v73, v1

    goto/16 :goto_1e4

    .line 1064
    :sswitch_2a7
    const-string v6, "recursive_signal_collection"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b1

    goto/16 :goto_19c

    .line 1148
    :cond_2b1
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v61, v1

    goto/16 :goto_1e4

    .line 1149
    :sswitch_2c4
    const-string v6, "is_analytics_logging_enabled"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2ce

    goto/16 :goto_19c

    .line 1258
    :cond_2ce
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move/from16 v75, v1

    goto/16 :goto_1e4

    .line 1259
    :sswitch_2e1
    const-string v6, "renderers"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2eb

    goto/16 :goto_19c

    .line 1346
    :cond_2eb
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1637
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_2f9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_31c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v6, 0x1

    if-gez v6, :cond_30a

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_30a
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 1638
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1639
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_31a

    .line 1928
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_31a
    move v6, v15

    goto :goto_2f9

    .line 1933
    :cond_31c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_259

    .line 1934
    :sswitch_320
    const-string v6, "use_third_party_container_height"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32a

    goto/16 :goto_19c

    .line 2047
    :cond_32a
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move/from16 v78, v1

    goto/16 :goto_1e4

    .line 2048
    :sswitch_33d
    const-string v6, "video_reward_urls"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_347

    goto/16 :goto_19c

    .line 2141
    :cond_347
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2432
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_355
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_380

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v69, v6, 0x1

    if-gez v6, :cond_366

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_366
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 2433
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2434
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2725
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_37d

    .line 2726
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_37d
    move/from16 v6, v69

    goto :goto_355

    .line 2732
    :cond_380
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_259

    .line 2733
    :sswitch_384
    const-string v6, "ad_network_class_name"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38e

    goto/16 :goto_19c

    .line 2741
    :cond_38e
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v21, v1

    goto/16 :goto_1e4

    .line 2742
    :sswitch_3a4
    const-string v6, "video_start_urls"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3ae

    goto/16 :goto_19c

    .line 2845
    :cond_3ae
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3140
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_3bc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3e7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v69, v6, 0x1

    if-gez v6, :cond_3cd

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_3cd
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 3141
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3142
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3437
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_3e4

    .line 3438
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_3e4
    move/from16 v6, v69

    goto :goto_3bc

    .line 3444
    :cond_3e7
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_259

    .line 3445
    :sswitch_3eb
    const-string v6, "bid_response"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f5

    goto/16 :goto_19c

    .line 3469
    :cond_3f5
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v33, v1

    goto/16 :goto_1e4

    .line 3470
    :sswitch_40b
    const-string v6, "adapter_only_third_party_impression"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_415

    goto/16 :goto_19c

    .line 3595
    :cond_415
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move/from16 v101, v1

    goto/16 :goto_1e4

    .line 3596
    :sswitch_428
    const-string v6, "post_click_lifecycle_monitoring_duration_ms"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_432

    goto/16 :goto_19c

    .line 3724
    :cond_432
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    sget-object v6, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v1, v6}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v14

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v1, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v1

    move-object/from16 v69, v13

    move-wide/from16 v89, v14

    goto/16 :goto_1e6

    .line 3725
    :sswitch_44f
    const-string v6, "ad_source_id"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_459

    goto/16 :goto_19c

    .line 3739
    :cond_459
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v24, v1

    goto/16 :goto_1e4

    .line 3740
    :sswitch_46f
    const-string v6, "is_collapsible"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_479

    goto/16 :goto_19c

    .line 3800
    :cond_479
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move/from16 v49, v1

    goto/16 :goto_1e4

    .line 3801
    :sswitch_48c
    const-string v14, "recursive_request_parameters"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_496

    goto/16 :goto_19c

    .line 3884
    :cond_496
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v58, v1

    goto/16 :goto_1e4

    .line 3885
    :sswitch_4ac
    const-string v6, "allow_pub_owned_ad_view"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4b6

    goto/16 :goto_19c

    .line 3905
    :cond_4b6
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move/from16 v20, v1

    goto/16 :goto_1e4

    .line 3906
    :sswitch_4c9
    const-string v6, "base_creative_conversion_url"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4d3

    goto/16 :goto_19c

    .line 4039
    :cond_4d3
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v93, v1

    goto/16 :goto_1e4

    .line 4040
    :sswitch_4e6
    const-string v6, "preload_sort_value"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f0

    goto/16 :goto_19c

    .line 4162
    :cond_4f0
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v14

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v1, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v1

    move-object/from16 v69, v13

    move-wide/from16 v84, v14

    goto/16 :goto_1e6

    .line 4163
    :sswitch_505
    const-string v6, "cache_hit_urls"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50f

    goto/16 :goto_19c

    .line 4190
    :cond_50f
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4471
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_51d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_548

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v69, v6, 0x1

    if-gez v6, :cond_52e

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_52e
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 4472
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4473
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4755
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_545

    .line 4756
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_545
    move/from16 v6, v69

    goto :goto_51d

    .line 4762
    :cond_548
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_259

    .line 4763
    :sswitch_54c
    const-string v6, "adapter_response_info_key"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_556

    goto/16 :goto_19c

    .line 4767
    :cond_556
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v17, v1

    goto/16 :goto_1e4

    .line 4768
    :sswitch_56c
    const-string v6, "rewards"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_576

    goto/16 :goto_19c

    .line 4853
    :cond_576
    invoke-static/range {v97 .. v97}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {v97 .. v97}, Lads_mobile_sdk/m63;->a(Lcom/google/gson/JsonElement;)Lads_mobile_sdk/l63;

    move-result-object v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v71, v1

    goto/16 :goto_1e4

    .line 4854
    :sswitch_58c
    const-string v6, "transaction_id"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_596

    goto/16 :goto_19c

    .line 4950
    :cond_596
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v67, v1

    goto/16 :goto_1e4

    .line 4951
    :sswitch_5ac
    const-string v14, "analytics_event_name_to_parameters_map"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5b6

    goto/16 :goto_19c

    .line 4974
    :cond_5b6
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lads_mobile_sdk/ds1;->b(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v22, v1

    goto/16 :goto_1e4

    .line 4975
    :sswitch_5d2
    const-string v6, "impression_type"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5dc

    goto/16 :goto_19c

    .line 5023
    :cond_5dc
    sget-object v1, Lads_mobile_sdk/e2;->b:Lads_mobile_sdk/d2;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lads_mobile_sdk/d2;->a(I)Lads_mobile_sdk/e2;

    move-result-object v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v100, v1

    goto/16 :goto_1e4

    .line 5024
    :sswitch_5f8
    const-string v15, "container_sizes"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_602

    goto/16 :goto_19c

    .line 5057
    :cond_602
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5346
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v14, 0x0

    :goto_610
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_63b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v69, v14, 0x1

    if-gez v14, :cond_621

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_621
    check-cast v15, Lcom/google/gson/JsonElement;

    .line 5347
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 5348
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lads_mobile_sdk/o2;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/p2;

    move-result-object v14

    if-eqz v14, :cond_638

    .line 5634
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_638
    move/from16 v14, v69

    goto :goto_610

    .line 5639
    :cond_63b
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_259

    .line 5640
    :sswitch_63f
    const-string v6, "response_info_extras_override"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_649

    goto/16 :goto_19c

    .line 5775
    :cond_649
    invoke-static/range {v97 .. v97}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;

    move-result-object v1

    if-nez v1, :cond_654

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    :cond_654
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v94, v1

    goto/16 :goto_1e4

    .line 5776
    :sswitch_663
    const-string v6, "debug_dialog_string"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66d

    goto/16 :goto_19c

    .line 5813
    :cond_66d
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v41, v1

    goto/16 :goto_1e4

    .line 5814
    :sswitch_683
    const-string v6, "presentation_error_timeout_ms"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68d

    goto/16 :goto_19c

    .line 5891
    :cond_68d
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    sget-object v6, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v1, v6}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v14

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v1, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v1

    move-object/from16 v69, v13

    move-wide/from16 v54, v14

    goto/16 :goto_1e6

    .line 5892
    :sswitch_6aa
    const-string v6, "consent_form_action_identifier"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6b4

    goto/16 :goto_19c

    .line 6029
    :cond_6b4
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move/from16 v96, v1

    goto/16 :goto_1e4

    .line 6030
    :sswitch_6c7
    const-string v6, "is_closable_area_disabled"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6d1

    goto/16 :goto_19c

    .line 6089
    :cond_6d1
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move/from16 v48, v1

    goto/16 :goto_1e4

    .line 6090
    :sswitch_6e4
    const-string v6, "ad_load_urls"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6ee

    goto/16 :goto_19c

    .line 6097
    :cond_6ee
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6385
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_6fc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_727

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v69, v6, 0x1

    if-gez v6, :cond_70d

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_70d
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 6386
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6387
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6676
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_724

    .line 6677
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_724
    move/from16 v6, v69

    goto :goto_6fc

    .line 6683
    :cond_727
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_259

    .line 6684
    :sswitch_72b
    const-string v6, "qdata"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_735

    goto/16 :goto_19c

    .line 6766
    :cond_735
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v60, v1

    goto/16 :goto_1e4

    .line 6767
    :sswitch_74b
    const-string v6, "render_test_label"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_755

    goto/16 :goto_19c

    .line 6856
    :cond_755
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move/from16 v65, v1

    goto/16 :goto_1e4

    .line 6857
    :sswitch_768
    const-string v6, "request_id"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_772

    goto/16 :goto_19c

    .line 6914
    :cond_772
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v46, v1

    goto/16 :goto_1e4

    .line 6915
    :sswitch_788
    const-string v14, "data"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_792

    goto/16 :goto_19c

    .line 6920
    :cond_792
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_259

    .line 6921
    :sswitch_79f
    const-string v6, "id"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7a9

    goto/16 :goto_19c

    .line 6968
    :cond_7a9
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v38, v1

    goto/16 :goto_1e4

    .line 6969
    :sswitch_7bf
    const-string v14, "ad"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7c9

    goto/16 :goto_19c

    .line 7023
    :cond_7c9
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v14, p2

    invoke-static {v1, v14}, Lads_mobile_sdk/uc1;->a(Lcom/google/gson/JsonObject;Lkotlinx/coroutines/Deferred;)Lads_mobile_sdk/vc1;

    move-result-object v1

    .line 7024
    iget-object v6, v1, Lads_mobile_sdk/vc1;->d:Lcom/google/gson/JsonObject;

    if-eqz v6, :cond_7ea

    const-string v15, "slots"

    invoke-static {v6, v15}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v6

    if-eqz v6, :cond_7ea

    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-lez v6, :cond_7ea

    move v6, v0

    goto :goto_7eb

    :cond_7ea
    const/4 v6, 0x0

    :goto_7eb
    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v45, v1

    move/from16 v87, v6

    goto/16 :goto_1e4

    :sswitch_7fc
    move-object/from16 v14, p2

    .line 7025
    const-string v6, "native_required_asset_viewability"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_808

    goto/16 :goto_19c

    .line 7054
    :cond_808
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move/from16 v36, v1

    goto/16 :goto_1e4

    :sswitch_81b
    move-object/from16 v14, p2

    .line 7055
    const-string v6, "watermark"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_827

    goto/16 :goto_19c

    .line 7169
    :cond_827
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v79, v1

    goto/16 :goto_1e4

    :sswitch_83d
    move-object/from16 v14, p2

    .line 7170
    const-string v6, "force_disable_hardware_acceleration"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_849

    goto/16 :goto_19c

    .line 7216
    :cond_849
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move/from16 v37, v1

    goto/16 :goto_1e4

    :sswitch_85c
    move-object/from16 v14, p2

    .line 7217
    const-string v6, "content_url"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_868

    goto/16 :goto_19c

    .line 7253
    :cond_868
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v40, v1

    goto/16 :goto_1e4

    :sswitch_87b
    move-object/from16 v14, p2

    .line 7254
    const-string v6, "render_timeout_ms"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_887

    goto/16 :goto_19c

    .line 7344
    :cond_887
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    sget-object v6, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v1, v6}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v63

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v1, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v1

    goto/16 :goto_1e4

    :sswitch_8a0
    move-object/from16 v14, p2

    .line 7345
    const-string v15, "rtb_native_required_assets"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8ac

    goto/16 :goto_19c

    .line 7451
    :cond_8ac
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v72, v1

    goto/16 :goto_1e4

    .line 7452
    :sswitch_8c2
    const-string v6, "imp_urls"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8cc

    goto/16 :goto_19c

    .line 7502
    :cond_8cc
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7794
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_8da
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_905

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v69, v6, 0x1

    if-gez v6, :cond_8eb

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_8eb
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 7795
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7796
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8088
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_902

    .line 8089
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_902
    move/from16 v6, v69

    goto :goto_8da

    .line 8095
    :cond_905
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_259

    .line 8096
    :sswitch_909
    const-string v14, "safe_browsing"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_913

    goto/16 :goto_19c

    .line 8204
    :cond_913
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lads_mobile_sdk/n93;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/o93;

    move-result-object v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v74, v1

    goto/16 :goto_1e4

    .line 8205
    :sswitch_92d
    const-string v6, "click_urls"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_937

    goto/16 :goto_19c

    .line 8236
    :cond_937
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8520
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_945
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_970

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v69, v6, 0x1

    if-gez v6, :cond_956

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_956
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 8521
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8522
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8807
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_96d

    .line 8808
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_96d
    move/from16 v6, v69

    goto :goto_945

    .line 8814
    :cond_970
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_259

    .line 8815
    :sswitch_974
    const-string v6, "ad_source_instance_id"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_97e

    goto/16 :goto_19c

    .line 8831
    :cond_97e
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v27, v7

    move-object/from16 v69, v13

    move-object/from16 v7, v44

    move-object/from16 v14, v53

    goto/16 :goto_1ee

    .line 8832
    :sswitch_99a
    const-string v6, "valid_from_timestamp"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9a4

    goto/16 :goto_19c

    .line 8929
    :cond_9a4
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v68, v1

    goto/16 :goto_1e4

    .line 8930
    :sswitch_9ba
    const-string v6, "active_view"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9c4

    goto/16 :goto_19c

    .line 8931
    :cond_9c4
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "toString(...)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v16, v1

    goto/16 :goto_1e4

    .line 8932
    :sswitch_9dc
    const-string v6, "video_complete_urls"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9e6

    goto/16 :goto_19c

    .line 9031
    :cond_9e6
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9323
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_9f4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v69, v6, 0x1

    if-gez v6, :cond_a05

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_a05
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 9324
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9325
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9617
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_a1c

    .line 9618
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_a1c
    move/from16 v6, v69

    goto :goto_9f4

    .line 9624
    :cond_a1f
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_259

    .line 9625
    :sswitch_a23
    const-string v6, "ad_quality_urls"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a2d

    goto/16 :goto_19c

    .line 9669
    :cond_a2d
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9960
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_a3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v69, v6, 0x1

    if-gez v6, :cond_a4c

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_a4c
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 9961
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9962
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10254
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_a66

    move-object/from16 v14, v103

    .line 10255
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_a68

    :cond_a66
    move-object/from16 v14, v103

    :goto_a68
    move-object/from16 v103, v14

    move/from16 v6, v69

    goto :goto_a3b

    :cond_a6d
    move-object/from16 v14, v103

    .line 10261
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v69, v13

    move-object/from16 v103, v14

    goto/16 :goto_25b

    :sswitch_a77
    move-object/from16 v14, v103

    .line 10262
    const-string v6, "allocation_id"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a87

    move-object/from16 v69, v13

    move-object/from16 v103, v14

    goto/16 :goto_19e

    .line 10281
    :cond_a87
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v19, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v1

    move-object/from16 v69, v13

    move-object/from16 v103, v14

    goto/16 :goto_1e6

    .line 10282
    :sswitch_aa2
    const-string v6, "fill_urls"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_aac

    goto/16 :goto_19c

    .line 10324
    :cond_aac
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10610
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_aba
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_aec

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v69, v6, 0x1

    if-gez v6, :cond_acb

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_acb
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 10611
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10612
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10899
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_ae5

    move-object/from16 v14, v102

    .line 10900
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_ae7

    :cond_ae5
    move-object/from16 v14, v102

    :goto_ae7
    move-object/from16 v102, v14

    move/from16 v6, v69

    goto :goto_aba

    :cond_aec
    move-object/from16 v14, v102

    .line 10906
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v69, v13

    move-object/from16 v102, v14

    goto/16 :goto_25b

    :sswitch_af6
    move-object/from16 v14, v102

    .line 10907
    const-string v6, "is_scroll_aware"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b06

    :goto_b00
    move-object/from16 v69, v13

    move-object/from16 v102, v14

    goto/16 :goto_19e

    .line 10970
    :cond_b06
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v57, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v57

    move/from16 v57, v1

    :goto_b18
    move-object/from16 v69, v13

    move-object/from16 v102, v14

    goto/16 :goto_1e6

    :sswitch_b1e
    move-object/from16 v14, v102

    .line 10971
    const-string v6, "ad_type"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b29

    goto :goto_b00

    .line 10988
    :cond_b29
    sget-object v1, Lads_mobile_sdk/bc;->a:Lads_mobile_sdk/ac;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v15, "toUpperCase(...)"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lads_mobile_sdk/ac;->a(Ljava/lang/String;)Lads_mobile_sdk/bc;

    move-result-object v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v69, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v69

    move-object/from16 v99, v1

    goto :goto_b18

    .line 10989
    :sswitch_b53
    const-string v6, "presentation_error_urls"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b5d

    goto/16 :goto_19c

    .line 11068
    :cond_b5d
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11360
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_b6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v69, v6, 0x1

    if-gez v6, :cond_b7c

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_b7c
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 11361
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11362
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11654
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_b96

    move-object/from16 v14, v70

    .line 11655
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_b98

    :cond_b96
    move-object/from16 v14, v70

    :goto_b98
    move-object/from16 v70, v14

    move/from16 v6, v69

    goto :goto_b6b

    :cond_b9d
    move-object/from16 v14, v70

    .line 11661
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v69, v13

    move-object/from16 v70, v14

    goto/16 :goto_25b

    :sswitch_ba7
    move-object/from16 v14, v70

    .line 11662
    const-string v6, "allow_pub_rendered_attribution"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bb7

    :goto_bb1
    move-object/from16 v69, v13

    move-object/from16 v70, v14

    goto/16 :goto_19e

    .line 11683
    :cond_bb7
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v31, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v31

    move/from16 v31, v1

    :goto_bc9
    move-object/from16 v69, v13

    move-object/from16 v70, v14

    goto/16 :goto_1e6

    :sswitch_bcf
    move-object/from16 v14, v70

    .line 11684
    const-string v15, "ad_event_value"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_bda

    :goto_bd9
    goto :goto_bb1

    .line 11702
    :cond_bda
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lads_mobile_sdk/wc;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/xc;

    move-result-object v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v18, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v1

    goto :goto_bc9

    :sswitch_bf4
    move-object/from16 v14, v70

    .line 11703
    const-string v15, "extras"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_bff

    goto :goto_bd9

    .line 11743
    :cond_bff
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v34, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v34

    move-object/from16 v34, v1

    goto :goto_bc9

    :sswitch_c15
    move-object/from16 v14, v70

    .line 11744
    const-string v6, "test_mode_enabled"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c20

    goto :goto_bd9

    .line 11856
    :cond_c20
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v69, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v69

    move/from16 v77, v1

    goto :goto_bc9

    .line 11857
    :sswitch_c33
    const-string v6, "adapters"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c3d

    goto/16 :goto_19c

    .line 11860
    :cond_c3d
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12146
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_c4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v6, 0x1

    if-gez v6, :cond_c5c

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_c5c
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 12147
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12148
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c6f

    move-object/from16 v14, v44

    .line 12432
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_c71

    :cond_c6f
    move-object/from16 v14, v44

    :goto_c71
    move-object/from16 v44, v14

    move v6, v15

    goto :goto_c4b

    :cond_c75
    move-object/from16 v14, v44

    .line 12437
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v69, v13

    move-object/from16 v13, v23

    move-object/from16 v44, v29

    move-object/from16 v23, v33

    move/from16 v33, v42

    move-object/from16 v42, v46

    move/from16 v46, v52

    move-object/from16 v52, v59

    move-object/from16 v59, v61

    move/from16 v61, v62

    move/from16 v62, v65

    move-object/from16 v65, v66

    move-object/from16 v29, v2

    move-object/from16 v66, v12

    move-object/from16 v12, v30

    move-object/from16 v2, v39

    move-object/from16 v30, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v27

    move-object/from16 v27, v7

    move-object v7, v14

    move-object/from16 v14, v53

    goto/16 :goto_123f

    .line 12438
    :sswitch_ca6
    const-string v15, "ad_sizes"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_cb0

    goto/16 :goto_19c

    .line 12448
    :cond_cb0
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12740
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v14, 0x0

    :goto_cbe
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_cf0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v69, v14, 0x1

    if-gez v14, :cond_ccf

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_ccf
    check-cast v15, Lcom/google/gson/JsonElement;

    .line 12741
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12742
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v14

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lads_mobile_sdk/o2;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/p2;

    move-result-object v14

    if-eqz v14, :cond_ce9

    move-object/from16 v15, v30

    .line 13031
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_ceb

    :cond_ce9
    move-object/from16 v15, v30

    :goto_ceb
    move-object/from16 v30, v15

    move/from16 v14, v69

    goto :goto_cbe

    :cond_cf0
    move-object/from16 v15, v30

    .line 13036
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v30, v3

    move-object/from16 v69, v13

    move-object/from16 v3, v16

    move-object/from16 v13, v23

    move-object/from16 v16, v27

    move-object/from16 v23, v33

    move/from16 v33, v42

    move-object/from16 v42, v46

    move/from16 v46, v52

    move-object/from16 v14, v53

    move-object/from16 v52, v59

    move-object/from16 v59, v61

    move/from16 v61, v62

    move/from16 v62, v65

    move-object/from16 v65, v66

    move-object/from16 v27, v7

    move-object/from16 v66, v12

    move-object v12, v15

    goto/16 :goto_27d

    :sswitch_d19
    move-object/from16 v15, v30

    .line 13037
    const-string v6, "showable_impression_type"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d48

    :goto_d23
    move-object/from16 v30, v3

    move-object/from16 v69, v13

    move-object/from16 v3, v16

    move-object/from16 v13, v23

    move-object/from16 v16, v27

    move-object/from16 v23, v33

    move/from16 v33, v42

    move-object/from16 v42, v46

    move/from16 v46, v52

    move-object/from16 v14, v53

    move-object/from16 v52, v59

    move-object/from16 v59, v61

    move/from16 v61, v62

    move/from16 v62, v65

    move-object/from16 v65, v66

    move-object/from16 v27, v7

    move-object/from16 v66, v12

    move-object v12, v15

    goto/16 :goto_1c0

    .line 13148
    :cond_d48
    sget-object v1, Lads_mobile_sdk/h2;->b:Lads_mobile_sdk/g2;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lads_mobile_sdk/g2;->a(I)Lads_mobile_sdk/h2;

    move-result-object v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v26, v1

    :goto_d59
    move-object/from16 v30, v3

    move-object/from16 v69, v13

    move-object/from16 v1, v27

    move-object/from16 v14, v53

    move-object/from16 v3, v66

    move-object/from16 v27, v7

    move-object/from16 v66, v12

    move-object v12, v15

    goto/16 :goto_1ec

    :sswitch_d6a
    move-object/from16 v15, v30

    .line 13149
    const-string v6, "buffer_click_url_as_ready_to_ping"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d75

    goto :goto_d23

    .line 13174
    :cond_d75
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v35, v1

    goto :goto_d59

    :sswitch_d7e
    move-object/from16 v15, v30

    .line 13175
    const-string v6, "enable_omid"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d89

    goto :goto_d23

    .line 13237
    :cond_d89
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v56, v1

    goto :goto_d59

    .line 13238
    :sswitch_d92
    const-string v6, "orientation"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d9c

    goto/16 :goto_19c

    .line 13296
    :cond_d9c
    sget-object v1, Lads_mobile_sdk/i2;->J0:Ljava/util/List;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lads_mobile_sdk/c2;->a(Ljava/lang/String;)I

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move/from16 v47, v1

    goto/16 :goto_1e4

    .line 13297
    :sswitch_db8
    const-string v6, "is_custom_close_blocked"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_dc2

    goto/16 :goto_19c

    .line 13358
    :cond_dc2
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move/from16 v52, v1

    goto/16 :goto_1e4

    .line 13359
    :sswitch_dd5
    const-string v6, "post_click_lifecycle_interaction_label"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ddf

    goto/16 :goto_19c

    .line 13489
    :cond_ddf
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move-object/from16 v91, v1

    goto/16 :goto_1e4

    .line 13490
    :sswitch_df2
    const-string v6, "enable_lock_screen_ad"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_dfc

    goto/16 :goto_19c

    .line 13529
    :cond_dfc
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v14, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object v12, v14

    move/from16 v42, v1

    goto/16 :goto_1e4

    .line 13530
    :sswitch_e0f
    const-string v6, "nofill_urls"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e19

    goto/16 :goto_19c

    .line 13600
    :cond_e19
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13887
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_e27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v69, v6, 0x1

    if-gez v6, :cond_e38

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_e38
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 13888
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13889
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14177
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_e52

    move-object/from16 v14, v50

    .line 14178
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_e54

    :cond_e52
    move-object/from16 v14, v50

    :goto_e54
    move-object/from16 v50, v14

    move/from16 v6, v69

    goto :goto_e27

    :cond_e59
    move-object/from16 v14, v50

    .line 14184
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v69, v13

    move-object/from16 v50, v14

    goto/16 :goto_25b

    :sswitch_e63
    move-object/from16 v14, v50

    .line 14185
    const-string v6, "backend_query_id"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e73

    :goto_e6d
    move-object/from16 v69, v13

    move-object/from16 v50, v14

    goto/16 :goto_19e

    .line 14276
    :cond_e73
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v66, v12

    move-object/from16 v69, v13

    move-object/from16 v50, v14

    move-object/from16 v12, v30

    move-object/from16 v14, v53

    move-object/from16 v30, v3

    move-object v3, v1

    move-object/from16 v1, v27

    goto/16 :goto_1ea

    :sswitch_e8d
    move-object/from16 v14, v50

    .line 14277
    const-string v6, "preload_sort_type"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e98

    :goto_e97
    goto :goto_e6d

    .line 14400
    :cond_e98
    sget-object v1, Lads_mobile_sdk/st2;->a:Lads_mobile_sdk/rt2;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lads_mobile_sdk/rt2;->a(I)Lads_mobile_sdk/st2;

    move-result-object v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v50, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v50

    move-object/from16 v86, v1

    :goto_eb3
    move-object/from16 v69, v13

    move-object/from16 v50, v14

    goto/16 :goto_1e6

    :sswitch_eb9
    move-object/from16 v14, v50

    .line 14401
    const-string v6, "post_click_lifecycle_interaction_macroed_params"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ec4

    goto :goto_e97

    .line 14533
    :cond_ec4
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v50, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v50

    move-object/from16 v92, v1

    goto :goto_eb3

    :sswitch_ed7
    move-object/from16 v14, v50

    .line 14534
    const-string v6, "ad_source_name"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ee2

    goto :goto_e97

    .line 14547
    :cond_ee2
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v23, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v23

    move-object/from16 v23, v1

    goto :goto_eb3

    :sswitch_ef8
    move-object/from16 v14, v50

    .line 14548
    const-string v6, "parallel_key"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f03

    goto :goto_e97

    .line 14620
    :cond_f03
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v50, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v50

    move-object/from16 v59, v1

    goto :goto_eb3

    :sswitch_f16
    move-object/from16 v14, v50

    .line 14621
    const-string v15, "play_prewarm_options"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f22

    goto/16 :goto_e97

    .line 14742
    :cond_f22
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lads_mobile_sdk/to2;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/uo2;

    move-result-object v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v50, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v50

    move-object/from16 v82, v1

    goto/16 :goto_eb3

    :sswitch_f3d
    move-object/from16 v14, v50

    .line 14743
    const-string v15, "network_ping_config"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f49

    goto/16 :goto_e97

    .line 14811
    :cond_f49
    invoke-static/range {v97 .. v97}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v1, v29

    move-object/from16 v15, v97

    .line 14812
    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14827
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v29

    if-nez v29, :cond_f60

    move-object/from16 v29, v2

    move-object/from16 v50, v3

    move-object/from16 v3, v28

    goto :goto_f7f

    :cond_f60
    move-object/from16 v29, v2

    .line 14830
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    move-object/from16 v50, v3

    move-object/from16 v3, v28

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f71

    goto :goto_f7f

    .line 14833
    :cond_f71
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 14834
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v15

    if-nez v15, :cond_f86

    :goto_f7f
    move-object/from16 v28, v3

    move-object/from16 v69, v4

    move-object/from16 v15, v98

    goto :goto_fbb

    .line 14837
    :cond_f86
    new-instance v15, Lads_mobile_sdk/ga2;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14838
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14888
    new-instance v104, Lads_mobile_sdk/ha2;

    .line 14889
    const-string v6, "max_attempts"

    invoke-static {v2, v6, v0}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v105

    .line 14890
    const-string v6, "initial_backoff_ms"

    move-object/from16 v28, v3

    const/4 v3, 0x0

    invoke-static {v2, v6, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v106

    .line 14891
    const-string v6, "buffer_after_max_attempts"

    invoke-static {v2, v6, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result v107

    .line 14892
    const-string v6, "backoff_multiplier"

    move-object/from16 v69, v4

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v6, v3, v4}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;D)D

    move-result-wide v108

    .line 14893
    invoke-direct/range {v104 .. v109}, Lads_mobile_sdk/ha2;-><init>(IIZD)V

    move-object/from16 v2, v104

    .line 14894
    invoke-direct {v15, v2}, Lads_mobile_sdk/ga2;-><init>(Lads_mobile_sdk/ha2;)V

    .line 14895
    :goto_fbb
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v2, v44

    move-object/from16 v44, v1

    move-object/from16 v1, v27

    move-object/from16 v27, v7

    move-object v7, v2

    move-object/from16 v83, v15

    move-object/from16 v2, v39

    move-object/from16 v3, v66

    move-object/from16 v4, v69

    move-object/from16 v66, v12

    move-object/from16 v69, v13

    move-object/from16 v12, v30

    move-object/from16 v30, v50

    move-object/from16 v50, v14

    move-object/from16 v14, v53

    goto/16 :goto_1299

    :sswitch_fdc
    move-object/from16 v69, v29

    move-object/from16 v29, v2

    move-object/from16 v2, v69

    move-object/from16 v69, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v33

    move/from16 v33, v42

    move-object/from16 v42, v46

    move/from16 v46, v52

    move-object/from16 v52, v59

    move-object/from16 v59, v61

    move/from16 v61, v62

    move/from16 v62, v65

    move-object/from16 v65, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v44

    .line 14896
    const-string v6, "presentation_urls"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1016

    move-object/from16 v44, v2

    move-object/from16 v2, v39

    move-object/from16 v14, v53

    goto/16 :goto_128c

    .line 14970
    :cond_1016
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15260
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    :goto_1024
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1056

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v44, v6, 0x1

    if-gez v6, :cond_1035

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_1035
    check-cast v14, Lcom/google/gson/JsonElement;

    .line 15261
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15262
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15552
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_104f

    move-object/from16 v14, v53

    .line 15553
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1051

    :cond_104f
    move-object/from16 v14, v53

    :goto_1051
    move-object/from16 v53, v14

    move/from16 v6, v44

    goto :goto_1024

    :cond_1056
    move-object/from16 v14, v53

    .line 15559
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v44, v2

    goto/16 :goto_283

    :sswitch_105e
    move-object/from16 v14, v29

    move-object/from16 v29, v2

    move-object v2, v14

    move-object/from16 v69, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v33

    move/from16 v33, v42

    move-object/from16 v42, v46

    move/from16 v46, v52

    move-object/from16 v14, v53

    move-object/from16 v52, v59

    move-object/from16 v59, v61

    move/from16 v61, v62

    move/from16 v62, v65

    move-object/from16 v65, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v44

    .line 15560
    const-string v6, "is_consent"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1095

    :goto_1091
    move-object/from16 v44, v2

    goto/16 :goto_1c6

    .line 15696
    :cond_1095
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v95, v1

    :goto_109d
    move-object/from16 v44, v2

    move-object/from16 v1, v16

    move-object/from16 v2, v39

    :goto_10a3
    move-object/from16 v16, v3

    move-object/from16 v3, v65

    move/from16 v65, v62

    move/from16 v62, v61

    move-object/from16 v61, v59

    move-object/from16 v59, v52

    move/from16 v52, v46

    move-object/from16 v46, v42

    move/from16 v42, v33

    move-object/from16 v33, v23

    move-object/from16 v23, v13

    goto/16 :goto_1299

    :sswitch_10bb
    move-object/from16 v14, v29

    move-object/from16 v29, v2

    move-object v2, v14

    move-object/from16 v69, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v33

    move/from16 v33, v42

    move-object/from16 v42, v46

    move/from16 v46, v52

    move-object/from16 v14, v53

    move-object/from16 v52, v59

    move-object/from16 v59, v61

    move/from16 v61, v62

    move/from16 v62, v65

    move-object/from16 v65, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v44

    .line 15697
    const-string v15, "swipeable_interstitial_ad_config"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10ef

    goto :goto_1091

    .line 15815
    :cond_10ef
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lads_mobile_sdk/pm3;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/qm3;

    move-result-object v1

    .line 15816
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v81, v1

    goto :goto_109d

    :sswitch_10ff
    move-object/from16 v14, v29

    move-object/from16 v29, v2

    move-object v2, v14

    move-object/from16 v69, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v33

    move/from16 v33, v42

    move-object/from16 v42, v46

    move/from16 v46, v52

    move-object/from16 v14, v53

    move-object/from16 v52, v59

    move-object/from16 v59, v61

    move/from16 v61, v62

    move/from16 v62, v65

    move-object/from16 v65, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v44

    .line 15817
    const-string v15, "offline_ad_config"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1134

    goto/16 :goto_1091

    .line 15932
    :cond_1134
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lads_mobile_sdk/nb2;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/qb2;

    move-result-object v1

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v80, v1

    goto/16 :goto_109d

    :sswitch_1145
    move-object/from16 v14, v29

    move-object/from16 v29, v2

    move-object v2, v14

    move-object/from16 v69, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v33

    move/from16 v33, v42

    move-object/from16 v42, v46

    move/from16 v46, v52

    move-object/from16 v14, v53

    move-object/from16 v52, v59

    move-object/from16 v59, v61

    move/from16 v61, v62

    move/from16 v62, v65

    move-object/from16 v65, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v44

    .line 15933
    const-string v15, "omid_settings"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_117a

    goto/16 :goto_1091

    .line 16004
    :cond_117a
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16005
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16034
    const-string v6, "media_type"

    const/4 v15, -0x1

    invoke-static {v1, v6, v15}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1197

    if-eq v6, v0, :cond_1194

    .line 16037
    sget-object v6, Lads_mobile_sdk/cg2;->c:Lads_mobile_sdk/cg2;

    :goto_1191
    move-object/from16 v105, v6

    goto :goto_119a

    .line 16038
    :cond_1194
    sget-object v6, Lads_mobile_sdk/cg2;->a:Lads_mobile_sdk/cg2;

    goto :goto_1191

    .line 16039
    :cond_1197
    sget-object v6, Lads_mobile_sdk/cg2;->b:Lads_mobile_sdk/cg2;

    goto :goto_1191

    .line 16045
    :goto_119a
    sget-object v6, Lads_mobile_sdk/bg2;->a:[I

    invoke-virtual/range {v105 .. v105}, Ljava/lang/Enum;->ordinal()I

    move-result v44

    aget v6, v6, v44

    if-ne v6, v0, :cond_11a9

    .line 16046
    sget-object v6, Lads_mobile_sdk/xh2;->d:Lads_mobile_sdk/xh2;

    :goto_11a6
    move-object/from16 v106, v6

    goto :goto_11ac

    .line 16047
    :cond_11a9
    sget-object v6, Lads_mobile_sdk/xh2;->c:Lads_mobile_sdk/xh2;

    goto :goto_11a6

    .line 16051
    :goto_11ac
    const-string v6, "javascript_session_service_enabled"

    invoke-static {v1, v6, v0}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result v107

    .line 16052
    const-string v6, "omid_partner_name"

    move-object/from16 v44, v2

    move-object/from16 v2, v39

    .line 16053
    invoke-static {v1, v6, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    .line 16054
    const-string v6, "omid_html"

    .line 16055
    invoke-static {v1, v6, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    .line 16056
    new-instance v104, Lads_mobile_sdk/dg2;

    invoke-direct/range {v104 .. v109}, Lads_mobile_sdk/dg2;-><init>(Lads_mobile_sdk/cg2;Lads_mobile_sdk/xh2;ZLjava/lang/String;Ljava/lang/String;)V

    .line 16057
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v39, v2

    move-object/from16 v53, v14

    move-object/from16 v2, v29

    move-object/from16 v29, v44

    move-object/from16 v6, v70

    move-object/from16 v14, v102

    move-object/from16 v15, v103

    move-object/from16 v51, v104

    move-object/from16 v44, v7

    move-object/from16 v7, v27

    move-object/from16 v27, v16

    move-object/from16 v16, v3

    move-object/from16 v3, v30

    move-object/from16 v30, v12

    move-object/from16 v12, v66

    move-object/from16 v66, v65

    move/from16 v65, v62

    move/from16 v62, v61

    move-object/from16 v61, v59

    move-object/from16 v59, v52

    move/from16 v52, v46

    move-object/from16 v46, v42

    move/from16 v42, v33

    move-object/from16 v33, v23

    move-object/from16 v23, v13

    move-object/from16 v13, v69

    goto/16 :goto_166

    :sswitch_11ff
    move-object/from16 v69, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v33

    move/from16 v33, v42

    move-object/from16 v42, v46

    move/from16 v46, v52

    move-object/from16 v14, v53

    move-object/from16 v52, v59

    move-object/from16 v59, v61

    move/from16 v61, v62

    move/from16 v62, v65

    move-object/from16 v65, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v44

    move-object/from16 v44, v29

    move-object/from16 v29, v2

    move-object/from16 v2, v39

    .line 16058
    const-string v15, "debug_signals"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1234

    goto :goto_128c

    .line 16096
    :cond_1234
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v32, v1

    :goto_123f
    move-object/from16 v1, v16

    goto/16 :goto_10a3

    :sswitch_1243
    move-object/from16 v69, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v33

    move/from16 v33, v42

    move-object/from16 v42, v46

    move/from16 v46, v52

    move-object/from16 v14, v53

    move-object/from16 v52, v59

    move-object/from16 v59, v61

    move/from16 v61, v62

    move/from16 v62, v65

    move-object/from16 v65, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v44

    move-object/from16 v44, v29

    move-object/from16 v29, v2

    move-object/from16 v2, v39

    .line 16097
    const-string v6, "ad_source_instance_name"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1278

    goto :goto_128c

    .line 16112
    :cond_1278
    invoke-virtual/range {v97 .. v97}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v25, v1

    goto :goto_123f

    :cond_1284
    move-object/from16 v69, v13

    move-object/from16 v102, v14

    move-object/from16 v103, v15

    goto/16 :goto_19e

    .line 16236
    :goto_128c
    sget-object v6, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v6, Lads_mobile_sdk/b2;

    invoke-direct {v6, v1}, Lads_mobile_sdk/b2;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_123f

    :goto_1299
    move-object/from16 v6, v66

    move-object/from16 v66, v3

    move-object/from16 v3, v30

    move-object/from16 v30, v12

    move-object v12, v6

    move-object/from16 v39, v2

    move-object/from16 v53, v14

    move-object/from16 v2, v29

    move-object/from16 v29, v44

    move-object/from16 v13, v69

    move-object/from16 v6, v70

    move-object/from16 v14, v102

    move-object/from16 v15, v103

    move-object/from16 v44, v7

    move-object/from16 v7, v27

    move-object/from16 v27, v1

    goto/16 :goto_166

    :cond_12ba
    move-object/from16 v29, v2

    move-object/from16 v70, v6

    move-object/from16 v69, v13

    move-object/from16 v102, v14

    move-object/from16 v103, v15

    move-object/from16 v13, v23

    move-object/from16 v23, v33

    move/from16 v33, v42

    move-object/from16 v42, v46

    move/from16 v46, v52

    move-object/from16 v14, v53

    move-object/from16 v52, v59

    move-object/from16 v59, v61

    move/from16 v61, v62

    move/from16 v62, v65

    move-object/from16 v65, v66

    move-object/from16 v66, v12

    move-object/from16 v12, v30

    move-object/from16 v30, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v27

    move-object/from16 v27, v7

    move-object/from16 v7, v44

    .line 16246
    sget-object v1, Lads_mobile_sdk/e2;->f:Lads_mobile_sdk/e2;

    move-object/from16 v2, v100

    if-eq v2, v1, :cond_12fc

    .line 16247
    sget-object v1, Lads_mobile_sdk/bc;->c:Lads_mobile_sdk/bc;

    move-object/from16 v6, v99

    if-ne v6, v1, :cond_12f9

    move/from16 v1, v101

    if-ne v1, v0, :cond_12f9

    goto :goto_12fe

    :cond_12f9
    :goto_12f9
    move-object/from16 v76, v26

    goto :goto_1301

    :cond_12fc
    move-object/from16 v6, v99

    .line 16249
    :goto_12fe
    sget-object v26, Lads_mobile_sdk/h2;->g:Lads_mobile_sdk/h2;

    goto :goto_12f9

    .line 16252
    :goto_1301
    new-instance v0, Lads_mobile_sdk/c2$$ExternalSyntheticLambda0;

    invoke-direct {v0, v4}, Lads_mobile_sdk/c2$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->replaceAll(Ljava/util/function/UnaryOperator;)V

    move/from16 v44, v48

    move/from16 v48, v57

    move-object/from16 v57, v60

    move-object/from16 v60, v5

    .line 16254
    new-instance v5, Lads_mobile_sdk/i2;

    .line 16257
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 16271
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v97, 0x0

    move/from16 v28, p1

    move-object/from16 v39, v2

    move-object/from16 v53, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v25

    move-object/from16 v25, v29

    move/from16 v24, v35

    move/from16 v26, v36

    move-object/from16 v29, v40

    move/from16 v43, v47

    move/from16 v47, v56

    move-object/from16 v56, v70

    move-object/from16 v35, v102

    move-object/from16 v36, v103

    move-object/from16 v40, v8

    move-object/from16 v70, v11

    move-object/from16 v11, v21

    move/from16 v21, v31

    move-object/from16 v31, v41

    move-object/from16 v41, v45

    move/from16 v45, v49

    move-object v8, v0

    move-object/from16 v49, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v6

    move-object v6, v3

    .line 16272
    invoke-direct/range {v5 .. v97}, Lads_mobile_sdk/i2;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/bc;Lads_mobile_sdk/xc;Ljava/lang/String;ZZLandroid/os/Bundle;Ljava/lang/String;ZLjava/util/ArrayList;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/gson/JsonObject;ZLcom/google/gson/JsonObject;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/String;Lads_mobile_sdk/e2;Ljava/util/ArrayList;Lads_mobile_sdk/vc1;Ljava/lang/String;IZZZZZLjava/util/ArrayList;Ljava/util/ArrayList;Lads_mobile_sdk/dg2;Ljava/lang/String;Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonArray;Ljava/util/ArrayList;ZZJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lads_mobile_sdk/l63;Lcom/google/gson/JsonObject;Ljava/lang/String;Lads_mobile_sdk/o93;ZLads_mobile_sdk/h2;ZZLjava/lang/String;Lads_mobile_sdk/qb2;Lads_mobile_sdk/qm3;Lads_mobile_sdk/uo2;Lads_mobile_sdk/ga2;DLads_mobile_sdk/st2;ZZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;ZII)V
    :try_end_1351
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_1351} :catch_1f6

    return-object v5

    :catch_1352
    move-exception v0

    const/16 v98, 0x0

    .line 16273
    :goto_1355
    const-string v1, "t"

    invoke-static {v0, v1, v0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v1

    .line 16274
    iget-object v1, v1, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 16275
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_136b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_136b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v98

    :sswitch_data_1372
    .sparse-switch
        -0x7f724a93 -> :sswitch_1243
        -0x760d5f21 -> :sswitch_11ff
        -0x752755d7 -> :sswitch_1145
        -0x751ba07e -> :sswitch_10ff
        -0x70379d6a -> :sswitch_10bb
        -0x6ddc55fb -> :sswitch_105e
        -0x6db3fd17 -> :sswitch_fdc
        -0x6d0041e2 -> :sswitch_f3d
        -0x6c01c604 -> :sswitch_f16
        -0x6a655fd9 -> :sswitch_ef8
        -0x69ea0ded -> :sswitch_ed7
        -0x6749ec0e -> :sswitch_eb9
        -0x6097a97b -> :sswitch_e8d
        -0x60966ac3 -> :sswitch_e63
        -0x5c657e81 -> :sswitch_e0f
        -0x5bb27f02 -> :sswitch_df2
        -0x56cd7d24 -> :sswitch_dd5
        -0x55d641b4 -> :sswitch_db8
        -0x55cd0a30 -> :sswitch_d92
        -0x552c574b -> :sswitch_d7e
        -0x53d154ad -> :sswitch_d6a
        -0x53abfab8 -> :sswitch_d19
        -0x511c568a -> :sswitch_ca6
        -0x4dd838fc -> :sswitch_c33
        -0x4daf44ce -> :sswitch_c15
        -0x4cd5119d -> :sswitch_bf4
        -0x49ea2690 -> :sswitch_bcf
        -0x49901bd3 -> :sswitch_ba7
        -0x45a06900 -> :sswitch_b53
        -0x44ada62a -> :sswitch_b1e
        -0x4456b89f -> :sswitch_af6
        -0x428259e0 -> :sswitch_aa2
        -0x407d0b26 -> :sswitch_a77
        -0x405de940 -> :sswitch_a23
        -0x4041c09a -> :sswitch_9dc
        -0x3ea917c2 -> :sswitch_9ba
        -0x3a916a9c -> :sswitch_99a
        -0x39f06783 -> :sswitch_974
        -0x2e4deec5 -> :sswitch_92d
        -0x207016c7 -> :sswitch_909
        -0x1a0cf689 -> :sswitch_8c2
        -0x181b2b46 -> :sswitch_8a0
        -0x18198873 -> :sswitch_87b
        -0x172cbb57 -> :sswitch_85c
        -0xcb8faf4 -> :sswitch_83d
        -0xcb8979c -> :sswitch_81b
        -0xabddb62 -> :sswitch_7fc
        0xc23 -> :sswitch_7bf
        0xd1b -> :sswitch_79f
        0x2eefaa -> :sswitch_788
        0x23640cb -> :sswitch_768
        0x3c44b50 -> :sswitch_74b
        0x6674f9b -> :sswitch_72b
        0xdba7381 -> :sswitch_6e4
        0x18f0294b -> :sswitch_6c7
        0x2052155c -> :sswitch_6aa
        0x20bbc660 -> :sswitch_683
        0x239cb9fc -> :sswitch_663
        0x261865d5 -> :sswitch_63f
        0x2cfeab54 -> :sswitch_5f8
        0x2f2793b0 -> :sswitch_5d2
        0x2ffcc875 -> :sswitch_5ac
        0x3c3c4a1c -> :sswitch_58c
        0x419a9724 -> :sswitch_56c
        0x440b789c -> :sswitch_54c
        0x46b1262d -> :sswitch_505
        0x4db3b386 -> :sswitch_4e6
        0x4eb671e8 -> :sswitch_4c9
        0x4ec7dc6f -> :sswitch_4ac
        0x514e86c7 -> :sswitch_48c
        0x54c7ec75 -> :sswitch_46f
        0x55aac6a3 -> :sswitch_44f
        0x5ccce785 -> :sswitch_428
        0x5d4fd9dd -> :sswitch_40b
        0x619b1543 -> :sswitch_3eb
        0x61b080e5 -> :sswitch_3a4
        0x6483313f -> :sswitch_384
        0x64a20a30 -> :sswitch_33d
        0x6b3eec6e -> :sswitch_320
        0x6da6d810 -> :sswitch_2e1
        0x6fc8b8d3 -> :sswitch_2c4
        0x7777c1c8 -> :sswitch_2a7
        0x7b455927 -> :sswitch_287
        0x7b8dc4b3 -> :sswitch_214
        0x7bb5b70a -> :sswitch_1f9
        0x7e31ff4c -> :sswitch_1ca
    .end sparse-switch
.end method

.method public static a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 16718
    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16719
    sget-object v0, Lads_mobile_sdk/i2;->J0:Ljava/util/List;

    .line 16720
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 16721
    const-string v0, "class_name"

    invoke-static {p0, v0, p1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    return-object p1
.end method

.method public static final a(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 16276
    const-string v0, "$adapterData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16717
    sget-object v0, Lads_mobile_sdk/i2;->J0:Ljava/util/List;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/google/gson/JsonObject;

    invoke-static {p0, p1}, Lads_mobile_sdk/c2;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class ads_mobile_sdk.c2$$ExternalSyntheticLambda0 (ads_mobile_sdk.c2$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/c2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/c2$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/c2$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lads_mobile_sdk/c2;->a(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
