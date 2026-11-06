###### Class io.bidmachine.ads.networks.gam.GAMTypeConfigFactory (io.bidmachine.ads.networks.gam.GAMTypeConfigFactory)
.class public Lio/bidmachine/ads/networks/gam/GAMTypeConfigFactory;
.super Ljava/lang/Object;
.source "GAMTypeConfigFactory.java"


# direct methods
.method public static create(Lorg/json/JSONObject;)Lio/bidmachine/ads/networks/gam/GAMTypeConfig;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    :try_start_1
    const-string v1, "format"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/AdsFormat;->byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdsFormat;

    move-result-object v1

    if-nez v1, :cond_e

    return-object v0

    .line 32
    :cond_e
    const-string v2, "ad_unit_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    const-string v4, "units"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 35
    :goto_20
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_34

    .line 36
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v2, v6}, Lio/bidmachine/ads/networks/gam/GAMUnitDataFactory;->create(Ljava/lang/String;Lorg/json/JSONObject;)Lio/bidmachine/ads/networks/gam/GAMUnitData;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 38
    :cond_34
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    return-object v0

    .line 41
    :cond_3b
    const-string v2, "cache_size"

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 43
    new-instance v2, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;

    invoke-direct {v2, v1, v3, p0}, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;-><init>(Lio/bidmachine/AdsFormat;Ljava/util/List;I)V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_48

    return-object v2

    :catchall_48
    return-object v0
.end method
