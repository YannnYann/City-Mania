###### Class ads_mobile_sdk.wc (ads_mobile_sdk.wc)
.class public abstract Lads_mobile_sdk/wc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/xc;
    .registers 10

    .line 1
    const-string v0, "key"

    const-string v1, "<this>"

    const-string v2, "json"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    .line 3
    :try_start_b
    new-instance v3, Lads_mobile_sdk/xc;

    .line 4
    sget-object v2, Lads_mobile_sdk/zc;->b:Lads_mobile_sdk/yc;

    const-string v4, "type_num"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lads_mobile_sdk/yc;->a(I)Lads_mobile_sdk/zc;

    move-result-object v4

    .line 7
    const-string v2, "value"

    .line 8
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v5

    .line 155
    const-string v2, "precision_num"

    .line 156
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_59

    const/4 v7, 0x2

    if-eq v2, v7, :cond_56

    const/4 v7, 0x3

    if-eq v2, v7, :cond_53

    .line 299
    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->UNKNOWN:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    :goto_51
    move-object v7, v2

    goto :goto_5c

    .line 300
    :cond_53
    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->PRECISE:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    goto :goto_51

    .line 301
    :cond_56
    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->PUBLISHER_PROVIDED:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    goto :goto_51

    .line 302
    :cond_59
    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->ESTIMATED:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    goto :goto_51

    .line 307
    :goto_5c
    const-string v2, "currency"

    .line 308
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string p0, "getAsString(...)"

    invoke-static {v8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    invoke-direct/range {v3 .. v8}, Lads_mobile_sdk/xc;-><init>(Lads_mobile_sdk/zc;JLcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_74} :catch_75

    return-object v3

    :catch_75
    move-exception v0

    move-object p0, v0

    .line 458
    const-string v0, "t"

    invoke-static {p0, v0, p0}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v0

    .line 459
    iget-object v0, v0, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 460
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_8d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/xc;
    .registers 11

    .line 1
    const-string v0, "json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-string v0, "type"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v2, "precision"

    .line 5
    invoke-static {p0, v2, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    const-string v3, "currency"

    .line 7
    invoke-static {p0, v3, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8
    const-string v1, "value"

    invoke-static {p0, v1}, Lads_mobile_sdk/ds1;->g(Lcom/google/gson/JsonObject;Ljava/lang/String;)J

    move-result-wide v3

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v1, 0x10576

    if-eq p0, v1, :cond_51

    const v1, 0x10580

    if-eq p0, v1, :cond_45

    const v1, 0x506e232d

    if-eq p0, v1, :cond_33

    goto :goto_59

    :cond_33
    const-string p0, "ONE_PIXEL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_59

    :cond_3c
    const/16 p0, 0x3e8

    int-to-long v0, p0

    .line 17
    div-long/2addr v3, v0

    .line 18
    sget-object p0, Lads_mobile_sdk/zc;->g:Lads_mobile_sdk/zc;

    :goto_42
    move-object v5, p0

    move-wide v6, v3

    goto :goto_5f

    .line 19
    :cond_45
    const-string p0, "CPM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto :goto_59

    .line 20
    :cond_4e
    sget-object p0, Lads_mobile_sdk/zc;->e:Lads_mobile_sdk/zc;

    goto :goto_42

    .line 21
    :cond_51
    const-string p0, "CPC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5c

    .line 30
    :goto_59
    sget-object p0, Lads_mobile_sdk/zc;->d:Lads_mobile_sdk/zc;

    goto :goto_42

    .line 31
    :cond_5c
    sget-object p0, Lads_mobile_sdk/zc;->f:Lads_mobile_sdk/zc;

    goto :goto_42

    .line 42
    :goto_5f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, -0x7f136fe4

    if-eq p0, v0, :cond_8c

    const v0, 0x17cbce3b

    if-eq p0, v0, :cond_80

    const v0, 0x4bc5cce6    # 2.5926092E7f

    if-eq p0, v0, :cond_73

    goto :goto_94

    :cond_73
    const-string p0, "PUBLISHER_PROVIDED"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7c

    goto :goto_94

    .line 44
    :cond_7c
    sget-object p0, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->PUBLISHER_PROVIDED:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    :goto_7e
    move-object v8, p0

    goto :goto_9a

    .line 45
    :cond_80
    const-string p0, "PRECISE"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_89

    goto :goto_94

    .line 48
    :cond_89
    sget-object p0, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->PRECISE:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    goto :goto_7e

    .line 49
    :cond_8c
    const-string p0, "ESTIMATED"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_97

    .line 53
    :goto_94
    sget-object p0, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->UNKNOWN:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    goto :goto_7e

    .line 54
    :cond_97
    sget-object p0, Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;->ESTIMATED:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    goto :goto_7e

    .line 60
    :goto_9a
    new-instance v4, Lads_mobile_sdk/xc;

    invoke-direct/range {v4 .. v9}, Lads_mobile_sdk/xc;-><init>(Lads_mobile_sdk/zc;JLcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;Ljava/lang/String;)V

    return-object v4
.end method
