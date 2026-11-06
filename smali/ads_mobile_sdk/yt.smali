###### Class ads_mobile_sdk.yt (ads_mobile_sdk.yt)
.class public final Lads_mobile_sdk/yt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lads_mobile_sdk/v01;)Lads_mobile_sdk/v01;
    .registers 21

    move-object/from16 v0, p0

    .line 1
    const-string v1, "jsResult"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v1, v0, Lads_mobile_sdk/q01;

    if-eqz v1, :cond_117

    check-cast v0, Lads_mobile_sdk/q01;

    invoke-virtual {v0}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 6
    const-string v1, "errors"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_23

    :cond_22
    move-object v3, v2

    .line 7
    :goto_23
    const-string v1, "valid"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_fe

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_fe

    .line 15
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_41

    :cond_40
    move-object v10, v2

    :goto_41
    if-nez v10, :cond_4b

    .line 16
    new-instance v0, Lads_mobile_sdk/m01;

    const-string v1, "BuildAdUrlResult url is null"

    invoke-direct {v0, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 17
    :cond_4b
    const-string v1, "base_uri"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_59

    :cond_58
    move-object v1, v2

    .line 18
    :goto_59
    const-string v5, "post_parameters"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_67

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto :goto_68

    :cond_67
    move-object v9, v2

    .line 21
    :goto_68
    const-string v5, "cookies_include"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "true"

    const-string v8, "1"

    if-eqz v5, :cond_8b

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8b

    .line 22
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8b

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    goto :goto_8b

    :cond_88
    move-object v11, v9

    move v9, v6

    goto :goto_8d

    :cond_8b
    :goto_8b
    move-object v11, v9

    move v9, v4

    .line 23
    :goto_8d
    const-string v5, "csrb_errors"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    const-string v12, ","

    if-eqz v5, :cond_b2

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_b2

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v19, v12

    move-object v12, v5

    move-object/from16 v5, v19

    goto :goto_b4

    :cond_b2
    move-object v5, v12

    move-object v12, v2

    .line 26
    :goto_b4
    const-string v13, "use_compression"

    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    if-eqz v13, :cond_d0

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_d0

    .line 27
    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ce

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d0

    :cond_ce
    move v13, v4

    goto :goto_d1

    :cond_d0
    move v13, v6

    .line 28
    :goto_d1
    const-string v4, "content_type"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_df

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_e0

    :cond_df
    move-object v14, v2

    .line 30
    :goto_e0
    new-instance v0, Lads_mobile_sdk/q01;

    .line 31
    new-instance v15, Lads_mobile_sdk/zt;

    if-eqz v3, :cond_f2

    .line 32
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_f2
    move-object v6, v2

    move-object v8, v11

    const/4 v11, 0x0

    move-object v7, v1

    move-object v5, v15

    .line 33
    invoke-direct/range {v5 .. v14}, Lads_mobile_sdk/zt;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    .line 34
    invoke-direct {v0, v5}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 35
    :cond_fe
    new-instance v0, Lads_mobile_sdk/m01;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error building request URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    sget-object v2, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    .line 38
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object v0

    .line 39
    :cond_117
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_11c

    return-object v0

    :cond_11c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
