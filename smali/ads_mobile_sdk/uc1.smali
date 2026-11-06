###### Class ads_mobile_sdk.uc1 (ads_mobile_sdk.uc1)
.class public abstract Lads_mobile_sdk/uc1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/gson/JsonObject;Lkotlinx/coroutines/Deferred;)Lads_mobile_sdk/vc1;
    .registers 11

    .line 1
    const-string v0, "json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "ad_json"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    move-object v6, v0

    goto :goto_15

    :cond_14
    move-object v6, v1

    :goto_15
    if-eqz v6, :cond_1e

    .line 3
    const-string v0, "slots"

    invoke-static {v6, v0}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    move-object v0, v1

    :goto_1f
    const-string v2, "ads"

    const/4 v3, 0x0

    if-eqz v0, :cond_2f

    .line 4
    invoke-static {v0, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;

    move-result-object v4

    if-eqz v4, :cond_2f

    invoke-static {v4, v2}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v4

    goto :goto_30

    :cond_2f
    move-object v4, v1

    .line 6
    :goto_30
    invoke-static {v6, v2}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    const-string v5, ""

    const-string v7, "ad_mid"

    if-eqz v2, :cond_45

    invoke-static {v2, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 7
    invoke-static {v2, v7, v5}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_46

    :cond_45
    move-object v2, v1

    :goto_46
    const/4 v8, 0x1

    if-eqz v0, :cond_51

    .line 8
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-ne v0, v8, :cond_51

    move v0, v8

    goto :goto_52

    :cond_51
    move v0, v3

    :goto_52
    if-eqz v4, :cond_5f

    .line 9
    invoke-static {v4, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;

    move-result-object v4

    if-eqz v4, :cond_5f

    .line 10
    invoke-static {v4, v7, v5}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_60

    :cond_5f
    move-object v4, v1

    :goto_60
    if-eqz v4, :cond_6a

    .line 11
    invoke-static {v4}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v8

    if-ne v5, v8, :cond_6a

    goto :goto_6b

    :cond_6a
    move v8, v3

    :goto_6b
    if-nez v2, :cond_73

    if-eqz v0, :cond_73

    if-eqz v8, :cond_73

    move-object v7, v4

    goto :goto_74

    :cond_73
    move-object v7, v2

    .line 21
    :goto_74
    new-instance v2, Lads_mobile_sdk/vc1;

    .line 22
    const-string v0, "ad_html"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_84

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_85

    :cond_84
    move-object v3, v1

    .line 24
    :goto_85
    const-string v0, "ad_base_url"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_91

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    :cond_91
    move-object v4, p1

    move-object v5, v1

    .line 25
    invoke-direct/range {v2 .. v8}, Lads_mobile_sdk/vc1;-><init>(Ljava/lang/String;Lkotlinx/coroutines/Deferred;Ljava/lang/String;Lcom/google/gson/JsonObject;Ljava/lang/String;Z)V

    return-object v2
.end method
