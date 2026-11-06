###### Class info.flowersoft.theotown.InAppHandler (info.flowersoft.theotown.InAppHandler)
.class public Linfo/flowersoft/theotown/InAppHandler;
.super Ljava/lang/Object;
.source "InAppHandler.java"

# interfaces
.implements Lcom/badlogic/gdx/pay/PurchaseObserver;


# static fields
.field public static instance:Linfo/flowersoft/theotown/InAppHandler;


# instance fields
.field public actions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Linfo/flowersoft/theotown/draft/FeatureDraft;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/draft/FeatureDraft;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final contentSSP:Linfo/flowersoft/theotown/util/SSP;

.field public final iapSSP:Linfo/flowersoft/theotown/util/SSP;

.field public final pendingDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/FeatureDraft;",
            ">;"
        }
    .end annotation
.end field

.field public restoredPurchases:Linfo/flowersoft/theotown/util/json/JSONArray;


# direct methods
.method public static synthetic $r8$lambda$wSh6WgBdqeR8lKt4ybJh8TXE6fc(Linfo/flowersoft/theotown/draft/FeatureDraft;)V
    .registers 1

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "info.flowersoft.theotown.theotown.iapcontents"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/InAppHandler;->contentSSP:Linfo/flowersoft/theotown/util/SSP;

    .line 44
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "info.flowersoft.theotown.theotown.iapbackups"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/InAppHandler;->iapSSP:Linfo/flowersoft/theotown/util/SSP;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/InAppHandler;->pendingDrafts:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/InAppHandler;
    .registers 1

    .line 351
    sget-object v0, Linfo/flowersoft/theotown/InAppHandler;->instance:Linfo/flowersoft/theotown/InAppHandler;

    if-nez v0, :cond_b

    .line 352
    new-instance v0, Linfo/flowersoft/theotown/InAppHandler;

    invoke-direct {v0}, Linfo/flowersoft/theotown/InAppHandler;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/InAppHandler;->instance:Linfo/flowersoft/theotown/InAppHandler;

    .line 354
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/InAppHandler;->instance:Linfo/flowersoft/theotown/InAppHandler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized consume(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 326
    :try_start_2
    iput-object v0, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->token:Ljava/lang/String;

    .line 327
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->lastConsumed:J

    .line 328
    iget v0, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumeCtr:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumeCtr:I

    .line 329
    invoke-virtual {p0}, Linfo/flowersoft/theotown/InAppHandler;->saveIAPs()V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_15

    .line 330
    monitor-exit p0

    return v1

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public declared-synchronized fetch()V
    .registers 1

    monitor-enter p0

    .line 319
    monitor-exit p0

    return-void
.end method

.method public getRestoredPurchases()Linfo/flowersoft/theotown/util/json/JSONArray;
    .registers 2

    .line 238
    iget-object v0, p0, Linfo/flowersoft/theotown/InAppHandler;->restoredPurchases:Linfo/flowersoft/theotown/util/json/JSONArray;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Linfo/flowersoft/theotown/InAppHandler;->restorePurchases()V

    .line 239
    :cond_7
    iget-object v0, p0, Linfo/flowersoft/theotown/InAppHandler;->restoredPurchases:Linfo/flowersoft/theotown/util/json/JSONArray;

    return-object v0
.end method

.method public handleInstall()V
    .registers 7

    .line 141
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 143
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->FEATURES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 144
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 146
    :try_start_21
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->purchaseManager:Lcom/badlogic/gdx/pay/PurchaseManager;

    iget-object v4, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/pay/InformationFinder;->getInformation(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information;

    move-result-object v3

    .line 149
    sget-object v4, Lcom/badlogic/gdx/pay/Information;->UNAVAILABLE:Lcom/badlogic/gdx/pay/Information;

    if-eq v3, v4, :cond_b

    .line 150
    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Information;->getLocalName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Linfo/flowersoft/theotown/draft/Draft;->title:Ljava/lang/String;

    .line 151
    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Information;->getLocalDescription()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Linfo/flowersoft/theotown/draft/Draft;->text:Ljava/lang/String;

    .line 152
    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Information;->getPriceInCents()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_46

    .line 153
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_47

    :catch_44
    move-exception v2

    goto :goto_88

    :cond_46
    const/4 v4, 0x1

    :goto_47
    iput v4, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->microPrice:I

    .line 154
    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Information;->getLocalPricing()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->formattedPrice:Ljava/lang/String;

    .line 155
    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Information;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->currencyCode:Ljava/lang/String;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_55} :catch_44

    .line 158
    :try_start_55
    new-instance v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v3}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 159
    const-string v4, "title"

    iget-object v5, v2, Linfo/flowersoft/theotown/draft/Draft;->title:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 160
    const-string v4, "text"

    iget-object v5, v2, Linfo/flowersoft/theotown/draft/Draft;->text:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 161
    const-string v4, "cents"

    iget v5, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->microPrice:I

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 162
    const-string v4, "formatted price"

    iget-object v5, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->formattedPrice:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 163
    const-string v4, "currency code"

    iget-object v5, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->currencyCode:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 164
    iget-object v2, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_82
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_55 .. :try_end_82} :catch_83
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_82} :catch_44

    goto :goto_b

    :catch_83
    move-exception v2

    .line 166
    :try_start_84
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_44

    goto :goto_b

    .line 170
    :goto_88
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_b

    .line 175
    :cond_8d
    iget-object v1, p0, Linfo/flowersoft/theotown/InAppHandler;->contentSSP:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v1

    .line 176
    const-string v2, "features"

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-interface {v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V

    .line 179
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "InAppHandler"

    const-string v2, "handleInstall"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_b5

    .line 182
    invoke-virtual {p0}, Linfo/flowersoft/theotown/InAppHandler;->restorePurchases()V

    :cond_b5
    return-void
.end method

.method public handleInstallError(Ljava/lang/Throwable;)V
    .registers 4

    .line 188
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v0, "InAppHandler"

    const-string v1, "handleInstallError"

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handlePurchase(Lcom/badlogic/gdx/pay/Transaction;)V
    .registers 8

    .line 249
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "InAppHandler"

    const-string v2, "handlePurchase"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Linfo/flowersoft/theotown/InAppHandler;->actions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/util/Tuple;

    if-nez v0, :cond_2b

    .line 253
    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/Drafts;->getBuyableFeatureBySku(Ljava/lang/String;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 257
    new-instance v0, Lio/blueflower/stapel2d/util/Tuple;

    new-instance v2, Linfo/flowersoft/theotown/InAppHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Linfo/flowersoft/theotown/InAppHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1, v2}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    if-eqz v0, :cond_b5

    .line 262
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 263
    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getOrderId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->token:Ljava/lang/String;

    .line 266
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/Features;->isProbablyTestUser()Z

    move-result p1

    if-eqz p1, :cond_46

    const-string p1, " (TEST)"

    goto :goto_48

    :cond_46
    const-string p1, ""

    .line 267
    :goto_48
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v2

    .line 268
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->buyFeature(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    .line 269
    iget-boolean v3, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumable:Z

    if-eqz v3, :cond_56

    .line 270
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/InAppHandler;->consume(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    .line 272
    :cond_56
    iget-object v3, p0, Linfo/flowersoft/theotown/InAppHandler;->pendingDrafts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {p0}, Linfo/flowersoft/theotown/InAppHandler;->saveIAPs()V

    .line 275
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bought IAP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " diamonds"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    const-string v4, "IAP"

    invoke-interface {v3, v4, p1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v2, "donation"

    invoke-interface {p1, v2}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    .line 281
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 283
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {p1, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logPurchase(Linfo/flowersoft/theotown/draft/FeatureDraft;)V

    .line 285
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->BUILDING_PEOPLE_COUNTER:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;

    if-eqz p1, :cond_b5

    .line 286
    new-instance p1, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;

    invoke-direct {p1}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;-><init>()V

    sput-object p1, Linfo/flowersoft/theotown/resources/Drafts;->BUILDING_PEOPLE_COUNTER:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;

    :cond_b5
    return-void
.end method

.method public handlePurchaseCanceled()V
    .registers 4

    .line 306
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "InAppHandler"

    const-string v2, "handlePurchaseCanceled"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Linfo/flowersoft/theotown/InAppHandler;->actions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 308
    iget-object v0, p0, Linfo/flowersoft/theotown/InAppHandler;->actions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 310
    :cond_17
    iget-object v0, p0, Linfo/flowersoft/theotown/InAppHandler;->pendingDrafts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 311
    iget-object v0, p0, Linfo/flowersoft/theotown/InAppHandler;->pendingDrafts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 313
    :cond_29
    invoke-virtual {p0}, Linfo/flowersoft/theotown/InAppHandler;->saveIAPs()V

    return-void
.end method

.method public handlePurchaseError(Ljava/lang/Throwable;)V
    .registers 4

    .line 294
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v0, "InAppHandler"

    const-string v1, "handlePurchaseError"

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Linfo/flowersoft/theotown/InAppHandler;->actions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    .line 296
    iget-object p1, p0, Linfo/flowersoft/theotown/InAppHandler;->actions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 298
    :cond_17
    iget-object p1, p0, Linfo/flowersoft/theotown/InAppHandler;->pendingDrafts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_29

    .line 299
    iget-object p1, p0, Linfo/flowersoft/theotown/InAppHandler;->pendingDrafts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 301
    :cond_29
    invoke-virtual {p0}, Linfo/flowersoft/theotown/InAppHandler;->saveIAPs()V

    return-void
.end method

.method public handleRestore([Lcom/badlogic/gdx/pay/Transaction;)V
    .registers 9

    .line 193
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "InAppHandler"

    const-string v2, "handleRestore"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/InAppHandler;->restoredPurchases:Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 196
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v2, v0, :cond_a7

    aget-object v3, p1, v2

    .line 198
    :try_start_17
    new-instance v4, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v4}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 199
    const-string v5, "id"

    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Transaction;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 200
    const-string v5, "order id"

    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Transaction;->getOrderId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 201
    const-string v5, "cost"

    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Transaction;->getPurchaseCost()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 202
    const-string v5, "currency"

    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Transaction;->getPurchaseCostCurrency()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 203
    const-string v5, "text"

    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Transaction;->getPurchaseText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 204
    const-string v5, "time"

    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Transaction;->getPurchaseTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 205
    const-string v5, "store"

    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Transaction;->getStoreName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 206
    const-string v5, "transaction data"

    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Transaction;->getTransactionData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 207
    const-string v5, "data signature id"

    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Transaction;->getTransactionDataSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 208
    const-string v5, "user id"

    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Transaction;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 209
    iget-object v5, p0, Linfo/flowersoft/theotown/InAppHandler;->restoredPurchases:Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-virtual {v5, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;
    :try_end_7b
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_17 .. :try_end_7b} :catch_7c

    goto :goto_80

    :catch_7c
    move-exception v4

    .line 211
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    :goto_80
    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Transaction;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Linfo/flowersoft/theotown/resources/Drafts;->getBuyableFeatureBySku(Ljava/lang/String;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v4

    if-eqz v4, :cond_a3

    .line 215
    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Transaction;->isPurchased()Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 217
    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Transaction;->getOrderId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9d

    .line 218
    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Transaction;->getOrderId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Linfo/flowersoft/theotown/draft/FeatureDraft;->token:Ljava/lang/String;

    goto :goto_a3

    .line 220
    :cond_9d
    invoke-virtual {v3}, Lcom/badlogic/gdx/pay/Transaction;->getTransactionData()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Linfo/flowersoft/theotown/draft/FeatureDraft;->token:Ljava/lang/String;

    :cond_a3
    :goto_a3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_13

    .line 225
    :cond_a7
    :goto_a7
    iget-object p1, p0, Linfo/flowersoft/theotown/InAppHandler;->pendingDrafts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_dc

    .line 226
    iget-object p1, p0, Linfo/flowersoft/theotown/InAppHandler;->pendingDrafts:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 227
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumable:Z

    if-eqz v0, :cond_c4

    .line 228
    iget-object p1, p0, Linfo/flowersoft/theotown/InAppHandler;->pendingDrafts:Ljava/util/List;

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_c2
    move v1, v0

    goto :goto_d9

    .line 229
    :cond_c4
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isPurchased()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 230
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->buyFeature(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    .line 231
    iget-object p1, p0, Linfo/flowersoft/theotown/InAppHandler;->pendingDrafts:Ljava/util/List;

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_c2

    :cond_d9
    :goto_d9
    add-int/lit8 v1, v1, 0x1

    goto :goto_a7

    .line 234
    :cond_dc
    invoke-virtual {p0}, Linfo/flowersoft/theotown/InAppHandler;->saveIAPs()V

    return-void
.end method

.method public handleRestoreError(Ljava/lang/Throwable;)V
    .registers 4

    .line 244
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v0, "InAppHandler"

    const-string v1, "handleRestoreError"

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init()V
    .registers 10

    .line 49
    const-string v0, "{}"

    const-string v1, "features"

    iget-object v2, p0, Linfo/flowersoft/theotown/InAppHandler;->iapSSP:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v2

    .line 50
    iget-object v3, p0, Linfo/flowersoft/theotown/InAppHandler;->contentSSP:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v3

    .line 54
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Linfo/flowersoft/theotown/InAppHandler;->actions:Ljava/util/Map;

    .line 57
    :try_start_17
    new-instance v4, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-interface {v2, v1, v0}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    new-instance v5, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-interface {v3, v1, v0}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    const-string v1, "pendings"

    const-string v3, "[]"

    invoke-interface {v2, v1, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_17 .. :try_end_36} :catch_37

    goto :goto_46

    .line 61
    :catch_37
    new-instance v4, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v4}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 62
    new-instance v5, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v5}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 63
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 66
    :goto_46
    const-string v1, "pending"

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-class v6, Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-nez v2, :cond_63

    .line 68
    invoke-static {v1, v6}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-eqz v1, :cond_63

    .line 70
    iget-object v2, p0, Linfo/flowersoft/theotown/InAppHandler;->pendingDrafts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_63
    const/4 v1, 0x0

    move v2, v1

    .line 73
    :goto_65
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_7f

    .line 74
    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-eqz v7, :cond_7c

    .line 76
    iget-object v8, p0, Linfo/flowersoft/theotown/InAppHandler;->pendingDrafts:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 80
    :cond_7f
    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_a9

    .line 82
    :goto_85
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_a9

    const/4 v2, 0x0

    .line 83
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a6

    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a6

    .line 85
    invoke-static {v2}, Linfo/flowersoft/theotown/resources/Drafts;->getBuyableFeatureBySku(Ljava/lang/String;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v3

    if-eqz v3, :cond_a6

    .line 87
    iget-object v6, v3, Linfo/flowersoft/theotown/draft/FeatureDraft;->token:Ljava/lang/String;

    invoke-virtual {v4, v2, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Linfo/flowersoft/theotown/draft/FeatureDraft;->token:Ljava/lang/String;

    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 93
    :cond_a9
    new-instance v0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

    invoke-direct {v0}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;-><init>()V

    .line 94
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->FEATURES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b4
    :goto_b4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_120

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 95
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    if-eqz v3, :cond_b4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b4

    .line 96
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    invoke-virtual {v5, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_104

    .line 98
    const-string v4, "title"

    iget-object v6, v2, Linfo/flowersoft/theotown/draft/Draft;->title:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Linfo/flowersoft/theotown/draft/Draft;->title:Ljava/lang/String;

    .line 99
    const-string v4, "text"

    iget-object v6, v2, Linfo/flowersoft/theotown/draft/Draft;->text:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Linfo/flowersoft/theotown/draft/Draft;->text:Ljava/lang/String;

    .line 100
    const-string v4, "cents"

    iget v6, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->microPrice:I

    invoke-virtual {v3, v4, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->microPrice:I

    .line 101
    const-string v4, "formatted price"

    iget-object v6, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->formattedPrice:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->formattedPrice:Ljava/lang/String;

    .line 102
    const-string v4, "currency code"

    iget-object v6, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->currencyCode:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->currencyCode:Ljava/lang/String;

    .line 105
    :cond_104
    new-instance v3, Lcom/badlogic/gdx/pay/Offer;

    invoke-direct {v3}, Lcom/badlogic/gdx/pay/Offer;-><init>()V

    iget-object v4, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    .line 106
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/pay/Offer;->setIdentifier(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v3

    .line 107
    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumable:Z

    if-eqz v2, :cond_116

    sget-object v2, Lcom/badlogic/gdx/pay/OfferType;->CONSUMABLE:Lcom/badlogic/gdx/pay/OfferType;

    goto :goto_118

    :cond_116
    sget-object v2, Lcom/badlogic/gdx/pay/OfferType;->ENTITLEMENT:Lcom/badlogic/gdx/pay/OfferType;

    :goto_118
    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/pay/Offer;->setType(Lcom/badlogic/gdx/pay/OfferType;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v2

    .line 105
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->addOffer(Lcom/badlogic/gdx/pay/Offer;)V

    goto :goto_b4

    .line 110
    :cond_120
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->purchaseManager:Lcom/badlogic/gdx/pay/PurchaseManager;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v0, v2}, Lcom/badlogic/gdx/pay/PurchaseManager;->install(Lcom/badlogic/gdx/pay/PurchaseObserver;Lcom/badlogic/gdx/pay/PurchaseManagerConfig;Z)V

    return-void
.end method

.method public declared-synchronized requestPurchase(Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/util/Setter;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/FeatureDraft;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/draft/FeatureDraft;",
            ">;Z)Z"
        }
    .end annotation

    monitor-enter p0

    .line 334
    :try_start_1
    iget-object p3, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->token:Ljava/lang/String;

    if-nez p3, :cond_32

    sget-object p3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->purchaseManager:Lcom/badlogic/gdx/pay/PurchaseManager;

    invoke-interface {p3}, Lcom/badlogic/gdx/pay/PurchaseManager;->installed()Z

    move-result p3

    if-eqz p3, :cond_32

    iget-object p3, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    if-nez p3, :cond_12

    goto :goto_32

    .line 340
    :cond_12
    iget-object p3, p0, Linfo/flowersoft/theotown/InAppHandler;->pendingDrafts:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p0}, Linfo/flowersoft/theotown/InAppHandler;->saveIAPs()V

    .line 343
    iget-object p3, p0, Linfo/flowersoft/theotown/InAppHandler;->actions:Ljava/util/Map;

    iget-object v0, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    new-instance v1, Lio/blueflower/stapel2d/util/Tuple;

    invoke-direct {v1, p1, p2}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->purchaseManager:Lcom/badlogic/gdx/pay/PurchaseManager;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/badlogic/gdx/pay/PurchaseManager;->purchase(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_30

    .line 346
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_30
    move-exception p1

    goto :goto_6f

    .line 335
    :cond_32
    :goto_32
    :try_start_32
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot buy "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 336
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->token:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_32 .. :try_end_6c} :catchall_30

    .line 337
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_6f
    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_30

    throw p1
.end method

.method public declared-synchronized restorePurchases()V
    .registers 2

    monitor-enter p0

    .line 322
    :try_start_1
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->purchaseManager:Lcom/badlogic/gdx/pay/PurchaseManager;

    invoke-interface {v0}, Lcom/badlogic/gdx/pay/PurchaseManager;->purchaseRestore()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 323
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public final saveIAPs()V
    .registers 6

    .line 114
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 115
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->FEATURES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 116
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->token:Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 118
    :try_start_2b
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->token:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_32
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_2b .. :try_end_32} :catch_33

    goto :goto_b

    :catch_33
    move-exception v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 124
    :cond_38
    iget-object v1, p0, Linfo/flowersoft/theotown/InAppHandler;->iapSSP:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v1

    .line 125
    const-string v2, "features"

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 128
    :goto_4d
    iget-object v3, p0, Linfo/flowersoft/theotown/InAppHandler;->pendingDrafts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_69

    .line 129
    iget-object v3, p0, Linfo/flowersoft/theotown/InAppHandler;->pendingDrafts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 130
    iget-boolean v4, v3, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumable:Z

    if-nez v4, :cond_66

    .line 131
    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 134
    :cond_69
    const-string v2, "pendings"

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-interface {v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V

    return-void
.end method

###### Class info.flowersoft.theotown.InAppHandler$$ExternalSyntheticLambda0 (info.flowersoft.theotown.InAppHandler$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/InAppHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-static {p1}, Linfo/flowersoft/theotown/InAppHandler;->$r8$lambda$wSh6WgBdqeR8lKt4ybJh8TXE6fc(Linfo/flowersoft/theotown/draft/FeatureDraft;)V

    return-void
.end method
