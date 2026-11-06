###### Class ads_mobile_sdk.pb (ads_mobile_sdk.pb)
.class public final Lads_mobile_sdk/pb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ex0;

.field public b:Ljava/lang/String;

.field public c:Lads_mobile_sdk/zy;

.field public d:Lcom/google/gson/JsonObject;

.field public e:Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;

.field public f:Ljava/util/List;

.field public final g:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;)V
    .registers 3

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lads_mobile_sdk/pb;->a:Lads_mobile_sdk/ex0;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/pb;->f:Ljava/util/List;

    .line 46
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/pb;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;
    .registers 7

    .line 330
    iget-object v0, p0, Lads_mobile_sdk/pb;->c:Lads_mobile_sdk/zy;

    if-nez v0, :cond_a

    const-string v0, "commonConfiguration"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lads_mobile_sdk/zy;->q:Lcom/google/gson/JsonObject;

    .line 331
    iget-object v1, p0, Lads_mobile_sdk/pb;->d:Lcom/google/gson/JsonObject;

    if-nez v1, :cond_15

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 333
    :cond_15
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->deepCopy()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 334
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 335
    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_21

    :cond_40
    if-eqz p1, :cond_85

    .line 338
    iget-object v1, p0, Lads_mobile_sdk/pb;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    const-string v2, "key"

    const-string v3, "gads:enable_ad_specific_response_info_extras:enabled"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v3, v2, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 357
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 358
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_66

    .line 361
    :cond_85
    sget-object p1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lads_mobile_sdk/ds1;->b(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object p1

    .line 362
    const-string v0, "ad_value"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_a6

    .line 363
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_a6
    return-object p1
.end method

.method public final a()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;
    .registers 9

    .line 268
    iget-object v0, p0, Lads_mobile_sdk/pb;->c:Lads_mobile_sdk/zy;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 269
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    .line 270
    iget-object v0, p0, Lads_mobile_sdk/pb;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;->getAdapterClassName()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_12

    :cond_11
    move-object v3, v1

    .line 271
    :goto_12
    iget-object v4, p0, Lads_mobile_sdk/pb;->b:Ljava/lang/String;

    .line 272
    invoke-virtual {p0, v1}, Lads_mobile_sdk/pb;->a(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object v5

    .line 273
    iget-object v6, p0, Lads_mobile_sdk/pb;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;

    .line 274
    iget-object v7, p0, Lads_mobile_sdk/pb;->f:Ljava/util/List;

    const-string v0, "adapterResponses"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-direct/range {v2 .. v7}, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;Ljava/util/List;)V

    return-object v2

    :cond_25
    return-object v1
.end method

.method public final a(Lads_mobile_sdk/i2;I)V
    .registers 16

    .line 164
    iget-object v0, p1, Lads_mobile_sdk/i2;->d:Ljava/lang/String;

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    goto :goto_16

    :cond_9
    iget-object v1, p0, Lads_mobile_sdk/pb;->g:Ljava/util/Map;

    const-string v2, "adapterKeyToAdapterResponseInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_16
    return-void

    .line 169
    :cond_17
    new-instance v3, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;

    .line 170
    iget-object v4, p1, Lads_mobile_sdk/i2;->f:Ljava/lang/String;

    .line 173
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    iget-object v1, p1, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    invoke-static {v1}, Lads_mobile_sdk/ds1;->b(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object v8

    .line 174
    iget-object v9, p1, Lads_mobile_sdk/i2;->h:Ljava/lang/String;

    .line 175
    iget-object v10, p1, Lads_mobile_sdk/i2;->i:Ljava/lang/String;

    .line 176
    iget-object v11, p1, Lads_mobile_sdk/i2;->j:Ljava/lang/String;

    .line 177
    iget-object v12, p1, Lads_mobile_sdk/i2;->k:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 178
    invoke-direct/range {v3 .. v12}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;-><init>(Ljava/lang/String;JLcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lads_mobile_sdk/pb;->f:Ljava/util/List;

    invoke-interface {p1, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 190
    iget-object p1, p0, Lads_mobile_sdk/pb;->g:Ljava/util/Map;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lads_mobile_sdk/i2;JLcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;)V
    .registers 16

    .line 599
    iget-object p1, p1, Lads_mobile_sdk/i2;->d:Ljava/lang/String;

    .line 600
    iget-object v0, p0, Lads_mobile_sdk/pb;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;

    if-nez v0, :cond_d

    return-void

    .line 606
    :cond_d
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;

    .line 607
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;->getAdapterClassName()Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-static {p2, p3}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v3

    .line 610
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;->getCredentials()Landroid/os/Bundle;

    move-result-object v6

    .line 611
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 612
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;->getId()Ljava/lang/String;

    move-result-object v8

    .line 613
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;->getInstanceName()Ljava/lang/String;

    move-result-object v9

    .line 614
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;->getInstanceId()Ljava/lang/String;

    move-result-object v10

    move-object v5, p4

    .line 615
    invoke-direct/range {v1 .. v10}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;-><init>(Ljava/lang/String;JLcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object p2, p0, Lads_mobile_sdk/pb;->g:Ljava/util/Map;

    const-string p3, "adapterKeyToAdapterResponseInfo"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object p1, p0, Lads_mobile_sdk/pb;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 628
    iget-object p2, p0, Lads_mobile_sdk/pb;->f:Ljava/util/List;

    invoke-interface {p2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
