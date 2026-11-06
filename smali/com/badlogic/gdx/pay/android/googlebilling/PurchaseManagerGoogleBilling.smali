###### Class com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling (com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling)
.class public Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;
.super Ljava/lang/Object;
.source "PurchaseManagerGoogleBilling.java"

# interfaces
.implements Lcom/badlogic/gdx/pay/PurchaseManager;
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$ErrorCallback;
    }
.end annotation


# static fields
.field public static final handler:Landroid/os/Handler;


# instance fields
.field public final activity:Landroid/app/Activity;

.field public config:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

.field public hasBillingSetupFinishedSuccessfully:Z

.field public final informationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/pay/Information;",
            ">;"
        }
    .end annotation
.end field

.field public installationComplete:Z

.field public mBillingClient:Lcom/android/billingclient/api/BillingClient;

.field public observer:Lcom/badlogic/gdx/pay/PurchaseObserver;

.field public final productDetailsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;"
        }
    .end annotation
.end field

.field public reconnectMilliseconds:J

.field public serviceConnected:Z


# direct methods
.method public static synthetic $r8$lambda$2JAGJLjJSR6eBpI0nwV5sD5fIHI(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;[ZLjava/lang/Exception;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 180
    aput-boolean v1, p1, v0

    .line 181
    iput-boolean v1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->installationComplete:Z

    .line 182
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v0, "GdxPay/GoogleBilling"

    const-string v1, "Failed to fetch product details"

    invoke-interface {p1, v0, v1, p2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    iget-object p0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->observer:Lcom/badlogic/gdx/pay/PurchaseObserver;

    if-eqz p0, :cond_19

    .line 184
    invoke-interface {p0, p2}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handleInstallError(Ljava/lang/Throwable;)V

    :cond_19
    return-void
.end method

.method public static synthetic $r8$lambda$A045pvnz6I5V_vpZeok2siPqpFs(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$ErrorCallback;Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .registers 7

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->observer:Lcom/badlogic/gdx/pay/PurchaseObserver;

    if-eqz v0, :cond_6e

    .line 217
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    if-nez v0, :cond_9

    goto :goto_6e

    .line 219
    :cond_9
    invoke-virtual {p4}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p4

    if-eqz p4, :cond_1c

    .line 221
    new-instance p0, Lcom/badlogic/gdx/pay/FetchItemInformationException;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/pay/FetchItemInformationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$ErrorCallback;->accept(Ljava/lang/Exception;)V

    return-void

    .line 225
    :cond_1c
    invoke-virtual {p5}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p1

    .line 227
    sget-object p4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Retrieved product count (batch "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "GdxPay/GoogleBilling"

    invoke-interface {p4, p5, p2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/ProductDetails;

    .line 229
    iget-object p4, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->informationMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->convertProductDetailsToInformation(Lcom/android/billingclient/api/ProductDetails;)Lcom/badlogic/gdx/pay/Information;

    move-result-object v0

    invoke-interface {p4, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object p4, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->productDetailsMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p4, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    .line 234
    :cond_6b
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public static synthetic $r8$lambda$B3X1zBuU_XBAS5ec0YtXcGitM3A(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    .line 471
    invoke-virtual {p0, p2, p1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->handlePurchase(Ljava/util/List;Z)V

    return-void

    .line 473
    :cond_e
    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryPurchases failed with responseCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GdxPay/GoogleBilling"

    invoke-interface {p2, v2, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object p0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->observer:Lcom/badlogic/gdx/pay/PurchaseObserver;

    new-instance p2, Lcom/badlogic/gdx/pay/GdxPayException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/pay/GdxPayException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handleRestoreError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GVWrTvGS7Cpt3_roE7pkkCzPlAk(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V
    .registers 2

    .line 125
    iget-boolean v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->hasBillingSetupFinishedSuccessfully:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_b

    .line 127
    :cond_6
    new-instance v0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda1;-><init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V

    .line 128
    :goto_b
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->startServiceConnection(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OSNGks1g5iQhbQLQKbgBKch1mJg(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->handleBillingSetupFinished()V

    return-void
.end method

.method public static synthetic $r8$lambda$nI-rePbhVAPVKaD2P-5CFNJwfYA(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;[I[Z)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 170
    aget v1, p1, v0

    if-lez v1, :cond_c

    add-int/lit8 v1, v1, -0x1

    .line 171
    aput v1, p1, v0

    .line 173
    :cond_c
    aget p1, p1, v0

    if-nez p1, :cond_17

    aget-boolean p1, p2, v0

    if-nez p1, :cond_17

    .line 174
    invoke-virtual {p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->setInstalledAndNotifyObserver()V

    :cond_17
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->informationMap:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->productDetailsMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->hasBillingSetupFinishedSuccessfully:Z

    const-wide/16 v0, 0x3e8

    .line 43
    iput-wide v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->reconnectMilliseconds:J

    .line 46
    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->activity:Landroid/app/Activity;

    .line 47
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enablePrepaidPlans()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v0

    .line 52
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    return-void
.end method

.method public static synthetic access$000(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)Z
    .registers 1

    .line 28
    iget-boolean p0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->serviceConnected:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->serviceConnected:Z

    return p1
.end method

.method public static synthetic access$102(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;J)J
    .registers 3

    .line 28
    iput-wide p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->reconnectMilliseconds:J

    return-wide p1
.end method

.method public static synthetic access$202(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->hasBillingSetupFinishedSuccessfully:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V
    .registers 1

    .line 28
    invoke-virtual {p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->reconnectWithService()V

    return-void
.end method

.method public static convertOneTimeProductToInformation(Lcom/badlogic/gdx/pay/Information$Builder;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)V
    .registers 6

    .line 345
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/pay/Information$Builder;->localPricing(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object p0

    .line 348
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/pay/Information$Builder;->priceCurrencyCode(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object p0

    .line 349
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/pay/Information$Builder;->priceInCents(Ljava/lang/Integer;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object p0

    .line 350
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/pay/Information$Builder;->priceAsDouble(Ljava/lang/Double;)Lcom/badlogic/gdx/pay/Information$Builder;

    return-void
.end method

.method public static getFreeTrialSubscriptionPhase(Lcom/android/billingclient/api/ProductDetails$PricingPhases;)Lcom/android/billingclient/api/ProductDetails$PricingPhase;
    .registers 3

    .line 323
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 324
    invoke-static {v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->isFreeTrialSubscriptionPhase(Lcom/android/billingclient/api/ProductDetails$PricingPhase;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isFreeTrialSubscriptionPhase(Lcom/android/billingclient/api/ProductDetails$PricingPhase;)Z
    .registers 5

    .line 339
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 340
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getRecurrenceMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getRecurrenceMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static isPaidForSubscriptionPhase(Lcom/android/billingclient/api/ProductDetails$PricingPhase;)Z
    .registers 5

    .line 318
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final convertProductDetailsToInformation(Lcom/android/billingclient/api/ProductDetails;)Lcom/badlogic/gdx/pay/Information;
    .registers 5

    .line 251
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Converting productDetails: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GdxPay/GoogleBilling"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/badlogic/gdx/pay/Information;->newBuilder()Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/Information$Builder;->localName(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/Information$Builder;->localDescription(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object v0

    .line 257
    const-string v1, "subs"

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 258
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->convertSubscriptionProductToInformation(Lcom/badlogic/gdx/pay/Information$Builder;Ljava/util/List;)V

    goto :goto_49

    .line 261
    :cond_40
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 263
    invoke-static {v0, p1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->convertOneTimeProductToInformation(Lcom/badlogic/gdx/pay/Information$Builder;Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)V

    .line 266
    :cond_49
    :goto_49
    invoke-virtual {v0}, Lcom/badlogic/gdx/pay/Information$Builder;->build()Lcom/badlogic/gdx/pay/Information;

    move-result-object p1

    return-object p1
.end method

.method public final convertSubscriptionProductToInformation(Lcom/badlogic/gdx/pay/Information$Builder;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/pay/Information$Builder;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;",
            ">;)V"
        }
    .end annotation

    .line 271
    const-string v0, "GdxPay/GoogleBilling"

    if-eqz p2, :cond_7e

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_7e

    .line 275
    :cond_b
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->getActiveSubscriptionOfferDetails(Ljava/util/List;)Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object p2

    .line 276
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 277
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "getPricingPhases()  or empty "

    invoke-interface {p1, v0, p2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 282
    :cond_25
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->getPaidRecurringPricingPhase(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    move-result-object v1

    if-nez v1, :cond_33

    .line 284
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "no paidRecurringPricingPhase found "

    invoke-interface {p1, v0, p2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 289
    :cond_33
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/pay/Information$Builder;->localPricing(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object v0

    .line 290
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/pay/Information$Builder;->priceCurrencyCode(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/pay/Information$Builder;->priceInCents(Ljava/lang/Integer;)Lcom/badlogic/gdx/pay/Information$Builder;

    move-result-object v0

    .line 292
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/Information$Builder;->priceAsDouble(Ljava/lang/Double;)Lcom/badlogic/gdx/pay/Information$Builder;

    .line 295
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object p2

    invoke-static {p2}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->getFreeTrialSubscriptionPhase(Lcom/android/billingclient/api/ProductDetails$PricingPhases;)Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    move-result-object p2

    if-eqz p2, :cond_7d

    .line 298
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingCycleCount()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->convertToFreeTrialPeriod(Ljava/lang/String;I)Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/pay/Information$Builder;->freeTrialPeriod(Lcom/badlogic/gdx/pay/FreeTrialPeriod;)Lcom/badlogic/gdx/pay/Information$Builder;

    :cond_7d
    return-void

    .line 272
    :cond_7e
    :goto_7e
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "Empty SubscriptionOfferDetails"

    invoke-interface {p1, v0, p2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final convertToFreeTrialPeriod(Ljava/lang/String;I)Lcom/badlogic/gdx/pay/FreeTrialPeriod;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3b

    .line 359
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3b

    .line 364
    :cond_a
    :try_start_a
    invoke-static {p1}, Lcom/badlogic/gdx/pay/android/googlebilling/Iso8601DurationStringToFreeTrialPeriodConverter;->convertToFreeTrialPeriod(Ljava/lang/String;)Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    move-result-object v1

    const/4 v2, 0x1

    if-le p2, v2, :cond_22

    .line 366
    new-instance v2, Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    invoke-virtual {v1}, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->getNumberOfUnits()I

    move-result v3

    mul-int/2addr v3, p2

    invoke-virtual {v1}, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->getUnit()Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Lcom/badlogic/gdx/pay/FreeTrialPeriod;-><init>(ILcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_1f} :catch_20

    return-object v2

    :catch_20
    move-exception p2

    goto :goto_23

    :cond_22
    return-object v1

    .line 370
    :goto_23
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse iso8601Duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GdxPay/GoogleBilling"

    invoke-interface {v1, v2, p1, p2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    return-object v0
.end method

.method public final fetchOfferDetails()V
    .registers 13

    const/4 v0, 0x1

    .line 136
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "Called fetchOfferDetails()"

    const-string v3, "GdxPay/GoogleBilling"

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->productDetailsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 138
    iget-object v1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->config:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

    invoke-virtual {v1}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->getOfferCount()I

    move-result v1

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 143
    :goto_21
    const-string v7, "subs"

    if-ge v6, v1, :cond_5a

    .line 144
    iget-object v8, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->config:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->getOffer(I)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v8

    .line 145
    invoke-virtual {v8}, Lcom/badlogic/gdx/pay/Offer;->getType()Lcom/badlogic/gdx/pay/OfferType;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->mapOfferType(Lcom/badlogic/gdx/pay/OfferType;)Ljava/lang/String;

    move-result-object v9

    .line 146
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v10

    .line 147
    invoke-virtual {p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->storeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/pay/Offer;->getIdentifierForStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v8

    .line 148
    invoke-virtual {v8, v9}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v8

    .line 149
    invoke-virtual {v8}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v8

    .line 151
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 152
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 154
    :cond_55
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_58
    add-int/2addr v6, v0

    goto :goto_21

    .line 158
    :cond_5a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 159
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "No products configured"

    invoke-interface {v0, v3, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->setInstalledAndNotifyObserver()V

    return-void

    .line 165
    :cond_71
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 166
    filled-new-array {v1}, [I

    move-result-object v1

    .line 167
    new-array v0, v0, [Z

    aput-boolean v5, v0, v5

    .line 169
    new-instance v3, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda2;-><init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;[I[Z)V

    .line 178
    new-instance v1, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda3;-><init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;[Z)V

    .line 188
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_99

    .line 189
    const-string v0, "inapp"

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->queryProductDetailsForProducts(Ljava/util/List;Ljava/lang/String;Ljava/lang/Runnable;Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$ErrorCallback;)V

    .line 191
    :cond_99
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 192
    invoke-virtual {p0, v4, v7, v3, v1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->queryProductDetailsForProducts(Ljava/util/List;Ljava/lang/String;Ljava/lang/Runnable;Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$ErrorCallback;)V

    :cond_a2
    return-void
.end method

.method public final getActiveSubscriptionOfferDetails(Ljava/util/List;)Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;",
            ">;)",
            "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 304
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    return-object p1
.end method

.method public getBillingFlowParams(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .registers 5

    .line 420
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 423
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    .line 424
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    .line 425
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    .line 422
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_60

    .line 430
    :cond_1d
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 433
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_33

    .line 437
    :cond_2a
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->getActiveSubscriptionOfferDetails(Ljava/util/List;)Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_4c

    .line 434
    :cond_33
    :goto_33
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscriptionOfferDetails are empty for product: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GdxPay/GoogleBilling"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 443
    :goto_4c
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    .line 444
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    .line 445
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    .line 446
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    .line 442
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 450
    :goto_60
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getInformation(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information;
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->informationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/pay/Information;

    if-nez p1, :cond_c

    .line 61
    sget-object p1, Lcom/badlogic/gdx/pay/Information;->UNAVAILABLE:Lcom/badlogic/gdx/pay/Information;

    :cond_c
    return-object p1
.end method

.method public final getPaidRecurringPricingPhase(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)Lcom/android/billingclient/api/ProductDetails$PricingPhase;
    .registers 4

    .line 309
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 310
    invoke-static {v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->isPaidForSubscriptionPhase(Lcom/android/billingclient/api/ProductDetails$PricingPhase;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public final handleBillingSetupFinished()V
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->observer:Lcom/badlogic/gdx/pay/PurchaseObserver;

    if-nez v0, :cond_5

    return-void

    .line 87
    :cond_5
    iget-boolean v1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->serviceConnected:Z

    if-nez v1, :cond_14

    .line 88
    new-instance v1, Lcom/badlogic/gdx/pay/GdxPayException;

    const-string v2, "Connection to Play Billing not possible"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/pay/GdxPayException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handleInstallError(Ljava/lang/Throwable;)V

    return-void

    .line 91
    :cond_14
    invoke-virtual {p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->fetchOfferDetails()V

    return-void
.end method

.method public final handlePurchase(Ljava/util/List;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;Z)V"
        }
    .end annotation

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 507
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 509
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    .line 511
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 514
    new-instance v3, Lcom/badlogic/gdx/pay/Transaction;

    invoke-direct {v3}, Lcom/badlogic/gdx/pay/Transaction;-><init>()V

    .line 515
    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/pay/Transaction;->setIdentifier(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/pay/Transaction;->setOrderId(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/pay/Transaction;->setRequestId(Ljava/lang/String;)V

    .line 518
    const-string v5, "GooglePlay"

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/pay/Transaction;->setStoreName(Ljava/lang/String;)V

    .line 519
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/pay/Transaction;->setPurchaseTime(Ljava/util/Date;)V

    .line 520
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Purchased: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/pay/Transaction;->setPurchaseText(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 521
    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/pay/Transaction;->setReversalTime(Ljava/util/Date;)V

    .line 522
    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/pay/Transaction;->setReversalText(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/pay/Transaction;->setTransactionData(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/pay/Transaction;->setTransactionDataSignature(Ljava/lang/String;)V

    if-eqz p2, :cond_81

    .line 529
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_86

    .line 531
    :cond_81
    iget-object v5, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->observer:Lcom/badlogic/gdx/pay/PurchaseObserver;

    invoke-interface {v5, v3}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handlePurchase(Lcom/badlogic/gdx/pay/Transaction;)V

    .line 533
    :goto_86
    iget-object v3, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->config:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->getOffer(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 536
    sget-object v3, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$4;->$SwitchMap$com$badlogic$gdx$pay$OfferType:[I

    invoke-virtual {v2}, Lcom/badlogic/gdx/pay/Offer;->getType()Lcom/badlogic/gdx/pay/OfferType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v4, :cond_c6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a4

    goto/16 :goto_d

    .line 552
    :cond_a4
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v2

    if-nez v2, :cond_d

    .line 553
    iget-object v2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v1

    new-instance v3, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$3;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$3;-><init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    goto/16 :goto_d

    .line 538
    :cond_c6
    iget-object v2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v1

    new-instance v3, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$2;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$2;-><init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    goto/16 :goto_d

    :cond_e2
    if-eqz p2, :cond_f1

    .line 568
    iget-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->observer:Lcom/badlogic/gdx/pay/PurchaseObserver;

    new-array p2, v2, [Lcom/badlogic/gdx/pay/Transaction;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/badlogic/gdx/pay/Transaction;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handleRestore([Lcom/badlogic/gdx/pay/Transaction;)V

    :cond_f1
    return-void
.end method

.method public install(Lcom/badlogic/gdx/pay/PurchaseObserver;Lcom/badlogic/gdx/pay/PurchaseManagerConfig;Z)V
    .registers 6

    .line 72
    sget-object p3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v0, "GdxPay/GoogleBilling"

    const-string v1, "Called install()"

    invoke-interface {p3, v0, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->observer:Lcom/badlogic/gdx/pay/PurchaseObserver;

    .line 74
    iput-object p2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->config:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->installationComplete:Z

    .line 79
    new-instance p1, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda1;-><init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->startServiceConnection(Ljava/lang/Runnable;)V

    return-void
.end method

.method public installed()Z
    .registers 2

    .line 384
    iget-boolean v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->installationComplete:Z

    return v0
.end method

.method public final mapOfferType(Lcom/badlogic/gdx/pay/OfferType;)Ljava/lang/String;
    .registers 5

    .line 240
    sget-object v0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$4;->$SwitchMap$com$badlogic$gdx$pay$OfferType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 245
    const-string p1, "subs"

    return-object p1

    .line 247
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported OfferType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_2b
    const-string p1, "inapp"

    return-object p1
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 482
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    .line 485
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->observer:Lcom/badlogic/gdx/pay/PurchaseObserver;

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-nez p1, :cond_12

    if-eqz p2, :cond_12

    const/4 p1, 0x0

    .line 489
    invoke-virtual {p0, p2, p1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->handlePurchase(Ljava/util/List;Z)V

    return-void

    :cond_12
    const/4 p2, 0x1

    if-ne p1, p2, :cond_19

    .line 491
    invoke-interface {v0}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handlePurchaseCanceled()V

    return-void

    :cond_19
    const/4 p2, 0x7

    if-ne p1, p2, :cond_25

    .line 493
    new-instance p1, Lcom/badlogic/gdx/pay/ItemAlreadyOwnedException;

    invoke-direct {p1}, Lcom/badlogic/gdx/pay/ItemAlreadyOwnedException;-><init>()V

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handlePurchaseError(Ljava/lang/Throwable;)V

    return-void

    :cond_25
    const/4 p2, 0x4

    if-ne p1, p2, :cond_31

    .line 495
    new-instance p1, Lcom/badlogic/gdx/pay/InvalidItemException;

    invoke-direct {p1}, Lcom/badlogic/gdx/pay/InvalidItemException;-><init>()V

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handlePurchaseError(Ljava/lang/Throwable;)V

    return-void

    .line 497
    :cond_31
    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPurchasesUpdated failed with responseCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GdxPay/GoogleBilling"

    invoke-interface {p2, v2, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object p2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->observer:Lcom/badlogic/gdx/pay/PurchaseObserver;

    new-instance v0, Lcom/badlogic/gdx/pay/GdxPayException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/pay/GdxPayException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handlePurchaseError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public purchase(Ljava/lang/String;)V
    .registers 4

    .line 404
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->productDetailsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    if-nez v0, :cond_15

    .line 407
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->observer:Lcom/badlogic/gdx/pay/PurchaseObserver;

    new-instance v1, Lcom/badlogic/gdx/pay/InvalidItemException;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/pay/InvalidItemException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handlePurchaseError(Ljava/lang/Throwable;)V

    return-void

    .line 409
    :cond_15
    iget-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    iget-object v1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->getBillingFlowParams(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    return-void
.end method

.method public purchaseRestore()V
    .registers 4

    .line 459
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->config:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

    sget-object v1, Lcom/badlogic/gdx/pay/OfferType;->SUBSCRIPTION:Lcom/badlogic/gdx/pay/OfferType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->hasAnyOfferWithType(Lcom/badlogic/gdx/pay/OfferType;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 460
    const-string v0, "subs"

    goto :goto_f

    .line 462
    :cond_d
    const-string v0, "inapp"

    .line 465
    :goto_f
    iget-object v1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    .line 466
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v0

    new-instance v2, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda0;-><init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V

    .line 465
    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public final queryProductDetailsForProducts(Ljava/util/List;Ljava/lang/String;Ljava/lang/Runnable;Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$ErrorCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/QueryProductDetailsParams$Product;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$ErrorCallback;",
            ")V"
        }
    .end annotation

    .line 202
    const-string v0, "GdxPay/GoogleBilling"

    if-eqz p1, :cond_40

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_40

    .line 208
    :cond_b
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v1

    .line 209
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    .line 212
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryProductDetailsParams (type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda5;-><init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$ErrorCallback;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void

    .line 203
    :cond_40
    :goto_40
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Empty product list for type: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u2014 treating as success"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final reconnectWithService()V
    .registers 5

    .line 124
    sget-object v0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda4;-><init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V

    iget-wide v2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->reconnectMilliseconds:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    iget-wide v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->reconnectMilliseconds:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xdbba0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->reconnectMilliseconds:J

    return-void
.end method

.method public final setInstalledAndNotifyObserver()V
    .registers 2

    .line 376
    iget-boolean v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->installationComplete:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->installationComplete:Z

    .line 378
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->observer:Lcom/badlogic/gdx/pay/PurchaseObserver;

    invoke-interface {v0}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handleInstall()V

    :cond_c
    return-void
.end method

.method public final startServiceConnection(Ljava/lang/Runnable;)V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;

    invoke-direct {v1, p0, p1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;-><init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public storeName()Ljava/lang/String;
    .registers 2

    .line 66
    const-string v0, "GooglePlay"

    return-object v0
.end method

###### Class com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling.AnonymousClass1 (com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$1)
.class public Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;
.super Ljava/lang/Object;
.source "PurchaseManagerGoogleBilling.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->startServiceConnection(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

.field public final synthetic val$executeOnSetupFinished:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;->this$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    iput-object p2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;->val$executeOnSetupFinished:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;->this$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->access$002(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Z)Z

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;->this$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->access$300(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .registers 6

    .line 98
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    .line 100
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setup finished. Response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GdxPay/GoogleBilling"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;->this$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    const/4 v1, 0x1

    if-nez p1, :cond_23

    move p1, v1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    invoke-static {v0, p1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->access$002(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Z)Z

    .line 103
    iget-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;->this$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {p1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->access$000(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 104
    iget-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;->this$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    const-wide/16 v2, 0x3e8

    invoke-static {p1, v2, v3}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->access$102(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;J)J

    .line 105
    iget-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;->this$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {p1, v1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->access$202(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Z)Z

    goto :goto_41

    .line 107
    :cond_3c
    iget-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;->this$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {p1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->access$300(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V

    .line 110
    :goto_41
    iget-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$1;->val$executeOnSetupFinished:Ljava/lang/Runnable;

    if-eqz p1, :cond_48

    .line 111
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_48
    return-void
.end method

###### Class com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling.AnonymousClass2 (com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$2)
.class public Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$2;
.super Ljava/lang/Object;
.source "PurchaseManagerGoogleBilling.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->handlePurchase(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V
    .registers 2

    .line 539
    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$2;->this$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .registers 3

    .line 542
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    return-void
.end method

###### Class com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling.AnonymousClass3 (com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$3)
.class public Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$3;
.super Ljava/lang/Object;
.source "PurchaseManagerGoogleBilling.java"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->handlePurchase(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V
    .registers 2

    .line 554
    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$3;->this$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling.AnonymousClass4 (com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$4)
.class public synthetic Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$4;
.super Ljava/lang/Object;
.source "PurchaseManagerGoogleBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$badlogic$gdx$pay$OfferType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 240
    invoke-static {}, Lcom/badlogic/gdx/pay/OfferType;->values()[Lcom/badlogic/gdx/pay/OfferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$4;->$SwitchMap$com$badlogic$gdx$pay$OfferType:[I

    :try_start_9
    sget-object v1, Lcom/badlogic/gdx/pay/OfferType;->CONSUMABLE:Lcom/badlogic/gdx/pay/OfferType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$4;->$SwitchMap$com$badlogic$gdx$pay$OfferType:[I

    sget-object v1, Lcom/badlogic/gdx/pay/OfferType;->ENTITLEMENT:Lcom/badlogic/gdx/pay/OfferType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$4;->$SwitchMap$com$badlogic$gdx$pay$OfferType:[I

    sget-object v1, Lcom/badlogic/gdx/pay/OfferType;->SUBSCRIPTION:Lcom/badlogic/gdx/pay/OfferType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling.ErrorCallback (com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$ErrorCallback)
.class public interface abstract Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$ErrorCallback;
.super Ljava/lang/Object;
.source "PurchaseManagerGoogleBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ErrorCallback"
.end annotation


# virtual methods
.method public abstract accept(Ljava/lang/Exception;)V
.end method

###### Class com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$$ExternalSyntheticLambda0 (com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda0;->f$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda0;->f$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {v0, p1, p2}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->$r8$lambda$B3X1zBuU_XBAS5ec0YtXcGitM3A(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

###### Class com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$$ExternalSyntheticLambda2 (com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

.field public final synthetic f$1:[I

.field public final synthetic f$2:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;[I[Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda2;->f$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    iput-object p2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda2;->f$1:[I

    iput-object p3, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda2;->f$2:[Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda2;->f$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    iget-object v1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda2;->f$1:[I

    iget-object v2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda2;->f$2:[Z

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->$r8$lambda$nI-rePbhVAPVKaD2P-5CFNJwfYA(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;[I[Z)V

    return-void
.end method

###### Class com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$$ExternalSyntheticLambda3 (com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$ErrorCallback;


# instance fields
.field public final synthetic f$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

.field public final synthetic f$1:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;[Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda3;->f$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    iput-object p2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda3;->f$1:[Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Exception;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda3;->f$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    iget-object v1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda3;->f$1:[Z

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->$r8$lambda$2JAGJLjJSR6eBpI0nwV5sD5fIHI(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;[ZLjava/lang/Exception;)V

    return-void
.end method

###### Class com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$$ExternalSyntheticLambda4 (com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda4;->f$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda4;->f$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-static {v0}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->$r8$lambda$GVWrTvGS7Cpt3_roE7pkkCzPlAk(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V

    return-void
.end method

###### Class com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$$ExternalSyntheticLambda5 (com.badlogic.gdx.pay.android.googlebilling.PurchaseManagerGoogleBilling$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

.field public final synthetic f$1:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$ErrorCallback;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$ErrorCallback;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda5;->f$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    iput-object p2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda5;->f$1:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$ErrorCallback;

    iput-object p3, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda5;->f$0:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    iget-object v1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda5;->f$1:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$ErrorCallback;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Runnable;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->$r8$lambda$A045pvnz6I5V_vpZeok2siPqpFs(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$ErrorCallback;Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method
