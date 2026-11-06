###### Class com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo (com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo)
.class public final Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final impressionData:Lcom/ironsource/c9;

.field private final loadArmData:Lcom/ironsource/Db;


# direct methods
.method public constructor <init>(Lcom/ironsource/c9;Lcom/ironsource/Db;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    .line 3
    iput-object p2, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->loadArmData:Lcom/ironsource/Db;

    return-void
.end method


# virtual methods
.method public final getAb()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/ironsource/c9;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    invoke-virtual {v0}, Lcom/ironsource/c9;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_11
    const-string v0, ""

    return-object v0
.end method

.method public final getAdNetwork()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/ironsource/c9;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    invoke-virtual {v0}, Lcom/ironsource/c9;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_11
    const-string v0, ""

    return-object v0
.end method

.method public final getAuctionId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/ironsource/c9;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    invoke-virtual {v0}, Lcom/ironsource/c9;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_11
    const-string v0, ""

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/ironsource/c9;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    invoke-virtual {v0}, Lcom/ironsource/c9;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_11
    const-string v0, ""

    return-object v0
.end method

.method public final getEncryptedCPM()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/ironsource/c9;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    invoke-virtual {v0}, Lcom/ironsource/c9;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_11
    const-string v0, ""

    return-object v0
.end method

.method public final getInstanceId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/ironsource/c9;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    invoke-virtual {v0}, Lcom/ironsource/c9;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_11
    const-string v0, ""

    return-object v0
.end method

.method public final getInstanceName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/ironsource/c9;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    invoke-virtual {v0}, Lcom/ironsource/c9;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_11
    const-string v0, ""

    return-object v0
.end method

.method public final getPrecision()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->loadArmData:Lcom/ironsource/Db;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/Db;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_9
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/ironsource/c9;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 6
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    invoke-virtual {v0}, Lcom/ironsource/c9;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1a
    const-string v0, ""

    return-object v0
.end method

.method public final getRevenue()D
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->loadArmData:Lcom/ironsource/Db;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/Db;->d()D

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_9
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/ironsource/c9;->o()D

    .line 6
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    invoke-virtual {v0}, Lcom/ironsource/c9;->o()D

    move-result-wide v0

    return-wide v0

    :cond_17
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getSegmentName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/ironsource/c9;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->impressionData:Lcom/ironsource/c9;

    invoke-virtual {v0}, Lcom/ironsource/c9;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_11
    const-string v0, ""

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_5
    const-string v1, "auctionId"

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getAuctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "country"

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "ab"

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getAb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v1, "segmentName"

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getSegmentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v1, "adNetwork"

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getAdNetwork()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v1, "instanceName"

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string v1, "instanceId"

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v1, "revenue"

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getRevenue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 11
    const-string v1, "precision"

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getPrecision()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string v1, "encryptedCPM"

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;->getEncryptedCPM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5f} :catch_60

    goto :goto_82

    :catch_60
    move-exception v1

    .line 14
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 15
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error while parsing ad info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 17
    :goto_82
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
