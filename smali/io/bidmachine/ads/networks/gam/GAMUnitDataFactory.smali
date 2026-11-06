###### Class io.bidmachine.ads.networks.gam.GAMUnitDataFactory (io.bidmachine.ads.networks.gam.GAMUnitDataFactory)
.class public Lio/bidmachine/ads/networks/gam/GAMUnitDataFactory;
.super Ljava/lang/Object;
.source "GAMUnitDataFactory.java"


# direct methods
.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/ads/networks/gam/GAMUnitData;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adUnitId",
            "score",
            "price",
            "customTargeting"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/ads/networks/gam/GAMUnitData;"
        }
    .end annotation

    .line 49
    new-instance v0, Lio/bidmachine/ads/networks/gam/GAMUnitData;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-direct {v0, p0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam/GAMUnitData;-><init>(Ljava/lang/String;FFLjava/util/Map;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/ads/networks/gam/GAMUnitData;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adUnitId",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/ads/networks/gam/GAMUnitData;"
        }
    .end annotation

    .line 28
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 32
    :cond_8
    const-string v0, "score"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    return-object v1

    .line 36
    :cond_17
    const-string v2, "price"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    return-object v1

    .line 41
    :cond_26
    invoke-static {p0, v0, v2, p1}, Lio/bidmachine/ads/networks/gam/GAMUnitDataFactory;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/ads/networks/gam/GAMUnitData;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lorg/json/JSONObject;)Lio/bidmachine/ads/networks/gam/GAMUnitData;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adUnitId",
            "json"
        }
    .end annotation

    .line 19
    :try_start_0
    invoke-static {p1}, Lio/bidmachine/core/Utils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 20
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/gam/GAMUnitDataFactory;->create(Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/ads/networks/gam/GAMUnitData;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object p0

    :catchall_9
    const/4 p0, 0x0

    return-object p0
.end method
