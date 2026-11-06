###### Class com.unity3d.services.ads.UnityAdsImplementation (com.unity3d.services.ads.UnityAdsImplementation)
.class public final Lcom/unity3d/services/ads/UnityAdsImplementation;
.super Ljava/lang/Object;
.source "UnityAdsImplementation.java"

# interfaces
.implements Lcom/unity3d/services/ads/IUnityAds;


# static fields
.field private static instance:Lcom/unity3d/services/ads/IUnityAds;


# direct methods
.method public static synthetic $r8$lambda$bZAGsxc1nf5XUEtm5j1-ArVnmcA(Lcom/unity3d/ads/core/domain/InternalLoadListener;)V
    .registers 4

    .line 254
    new-instance v0, Lcom/unity3d/ads/UnityAdsError;

    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NOT_INITIALIZED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 256
    invoke-virtual {v1}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->getNumber()I

    move-result v1

    const-string v2, "Unity Ads SDK ad load failed: The Unity Ads SDK is not initialized. Initialize the SDK before loading ads."

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAdsError;-><init>(ILjava/lang/String;)V

    .line 254
    invoke-interface {p0, v0}, Lcom/unity3d/ads/core/domain/InternalLoadListener;->onAdLoadFail(Lcom/unity3d/ads/UnityAdsError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$flbWhK2ad1s74oTr19uAAd2NOuo(Lcom/unity3d/ads/IUnityAdsLoadListener;Ljava/lang/String;)V
    .registers 4

    .line 209
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    const-string v1, "Unity Ads SDK failed to load due to invalid context"

    invoke-interface {p0, p1, v0, v1}, Lcom/unity3d/ads/IUnityAdsLoadListener;->onUnityAdsFailedToLoad(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l_myVGuF9CtnlTf0smZGv0Hu2Aw(Lcom/unity3d/ads/IUnityAdsInitializationListener;)V
    .registers 3

    .line 58
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;

    const-string v1, "Unity Ads SDK failed to initialize due to invalid context"

    invoke-interface {p0, v0, v1}, Lcom/unity3d/ads/IUnityAdsInitializationListener;->onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity3d/services/ads/IUnityAds;
    .registers 1

    .line 38
    sget-object v0, Lcom/unity3d/services/ads/UnityAdsImplementation;->instance:Lcom/unity3d/services/ads/IUnityAds;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/unity3d/services/ads/UnityAdsImplementation;

    invoke-direct {v0}, Lcom/unity3d/services/ads/UnityAdsImplementation;-><init>()V

    sput-object v0, Lcom/unity3d/services/ads/UnityAdsImplementation;->instance:Lcom/unity3d/services/ads/IUnityAds;

    .line 41
    :cond_b
    sget-object v0, Lcom/unity3d/services/ads/UnityAdsImplementation;->instance:Lcom/unity3d/services/ads/IUnityAds;

    return-object v0
.end method

.method private handleShowError(Lcom/unity3d/ads/IUnityAdsShowListener;Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 177
    :cond_3
    invoke-interface {p1, p2, p3, p4}, Lcom/unity3d/ads/IUnityAdsShowListener;->onUnityAdsShowFailure(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V

    return-void
.end method

.method private hasInvalidContext()Z
    .registers 2

    const/4 v0, 0x0

    .line 324
    invoke-direct {p0, v0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->hasInvalidContext(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private hasInvalidContext(Landroid/content/Context;)Z
    .registers 6

    .line 295
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    if-nez p1, :cond_c

    return v0

    .line 303
    :cond_c
    instance-of v2, p1, Landroid/app/Application;

    if-eqz v2, :cond_1a

    .line 304
    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    .line 305
    invoke-static {p1}, Lcom/unity3d/services/core/properties/ClientProperties;->setApplicationContext(Landroid/content/Context;)V

    .line 306
    invoke-static {v0}, Lcom/unity3d/services/core/properties/ClientProperties;->setApplication(Landroid/app/Application;)V

    return v1

    .line 310
    :cond_1a
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_3c

    .line 311
    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    .line 312
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/properties/ClientProperties;->setApplicationContext(Landroid/content/Context;)V

    .line 314
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/properties/ClientProperties;->setApplication(Landroid/app/Application;)V

    return v1

    :cond_3c
    return v0
.end method


# virtual methods
.method public getDebugMode()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    invoke-static {}, Lcom/unity3d/services/UnityServices;->getDebugMode()Z

    move-result v0

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 268
    invoke-direct {p0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->hasInvalidContext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 269
    const-string v0, "No valid Context for getting token"

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 272
    :cond_d
    new-instance v0, Lcom/unity3d/services/UnityAdsSDK;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsSDK;-><init>()V

    invoke-virtual {v0}, Lcom/unity3d/services/UnityAdsSDK;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Lcom/unity3d/ads/IUnityAdsTokenListener;)V
    .registers 3

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, v0, p1}, Lcom/unity3d/services/ads/UnityAdsImplementation;->getToken(Lcom/unity3d/ads/TokenConfiguration;Lcom/unity3d/ads/IUnityAdsTokenListener;)V

    return-void
.end method

.method public getToken(Lcom/unity3d/ads/TokenConfiguration;Lcom/unity3d/ads/IUnityAdsTokenListener;)V
    .registers 4

    .line 278
    invoke-direct {p0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->hasInvalidContext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 279
    const-string p1, "No valid Context for getting token"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    if-eqz p2, :cond_11

    const/4 p1, 0x0

    .line 281
    invoke-interface {p2, p1}, Lcom/unity3d/ads/IUnityAdsTokenListener;->onUnityAdsTokenReady(Ljava/lang/String;)V

    :cond_11
    return-void

    .line 286
    :cond_12
    new-instance v0, Lcom/unity3d/services/UnityAdsSDK;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsSDK;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/services/UnityAdsSDK;->getToken(Lcom/unity3d/ads/TokenConfiguration;Lcom/unity3d/ads/IUnityAdsTokenListener;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 94
    invoke-static {}, Lcom/unity3d/services/UnityServices;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;ZLcom/unity3d/ads/IUnityAdsInitializationListener;)V
    .registers 6

    .line 54
    invoke-static {}, Lcom/unity3d/services/core/log/DeviceLog;->entered()V

    .line 55
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/UnityAdsImplementation;->hasInvalidContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 56
    const-string p1, "Error while initializing Unity Services: null context, halting Unity Ads init"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    if-eqz p4, :cond_18

    .line 58
    new-instance p1, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda2;

    invoke-direct {p1, p4}, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda2;-><init>(Lcom/unity3d/ads/IUnityAdsInitializationListener;)V

    invoke-static {p1}, Lcom/unity3d/services/core/misc/Utilities;->wrapCustomerListener(Ljava/lang/Runnable;)V

    :cond_18
    return-void

    :cond_19
    const/4 v0, 0x0

    .line 62
    invoke-static {p1, p2, p3, v0, p4}, Lcom/unity3d/services/UnityServices;->initialize(Landroid/content/Context;Ljava/lang/String;ZLcom/unity3d/ads/InitializationConfiguration;Lcom/unity3d/ads/IUnityAdsInitializationListener;)V

    return-void
.end method

.method public isInitialized()Z
    .registers 2

    .line 72
    invoke-static {}, Lcom/unity3d/services/UnityServices;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public isSupported()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    invoke-static {}, Lcom/unity3d/services/UnityServices;->isSupported()Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;)V
    .registers 6

    .line 206
    invoke-direct {p0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->hasInvalidContext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 207
    const-string p2, "No valid Context for loading ads"

    invoke-static {p2}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_15

    .line 209
    new-instance p2, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3, p1}, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/IUnityAdsLoadListener;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/unity3d/services/core/misc/Utilities;->wrapCustomerListener(Ljava/lang/Runnable;)V

    :cond_15
    return-void

    :cond_16
    const/4 v0, 0x0

    if-eqz p3, :cond_1f

    .line 215
    new-instance v1, Lcom/unity3d/services/ads/UnityAdsImplementation$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/unity3d/services/ads/UnityAdsImplementation$2;-><init>(Lcom/unity3d/services/ads/UnityAdsImplementation;Lcom/unity3d/ads/IUnityAdsLoadListener;Ljava/lang/String;)V

    goto :goto_20

    :cond_1f
    move-object v1, v0

    .line 247
    :goto_20
    new-instance p3, Lcom/unity3d/services/UnityAdsSDK;

    invoke-direct {p3}, Lcom/unity3d/services/UnityAdsSDK;-><init>()V

    invoke-virtual {p3, p1, p2, v1, v0}, Lcom/unity3d/services/UnityAdsSDK;->load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/core/domain/InternalLoadListener;Lcom/unity3d/services/banners/UnityBannerSize;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/core/domain/InternalLoadListener;)V
    .registers 6

    .line 252
    invoke-direct {p0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->hasInvalidContext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 253
    const-string p1, "No valid Context for loading ads"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 254
    new-instance p1, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3}, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda1;-><init>(Lcom/unity3d/ads/core/domain/InternalLoadListener;)V

    invoke-static {p1}, Lcom/unity3d/services/core/misc/Utilities;->wrapCustomerListener(Ljava/lang/Runnable;)V

    return-void

    .line 263
    :cond_14
    new-instance v0, Lcom/unity3d/services/UnityAdsSDK;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsSDK;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/unity3d/services/UnityAdsSDK;->load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/core/domain/InternalLoadListener;Lcom/unity3d/services/banners/UnityBannerSize;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public setDebugMode(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    invoke-static {p1}, Lcom/unity3d/services/UnityServices;->setDebugMode(Z)V

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .line 104
    new-instance v0, Lcom/unity3d/ads/UnityAdsShowOptions;

    invoke-direct {v0}, Lcom/unity3d/ads/UnityAdsShowOptions;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/unity3d/services/ads/UnityAdsImplementation;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/IUnityAdsShowListener;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsShowListener;)V
    .registers 5

    .line 115
    new-instance v0, Lcom/unity3d/ads/UnityAdsShowOptions;

    invoke-direct {v0}, Lcom/unity3d/ads/UnityAdsShowOptions;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/unity3d/services/ads/UnityAdsImplementation;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/IUnityAdsShowListener;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/IUnityAdsShowListener;)V
    .registers 6

    if-eqz p1, :cond_1a

    .line 128
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/UnityAdsImplementation;->hasInvalidContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1a

    .line 133
    :cond_9
    invoke-static {p1}, Lcom/unity3d/services/core/properties/ClientProperties;->setActivity(Landroid/app/Activity;)V

    .line 134
    new-instance p1, Lcom/unity3d/services/UnityAdsSDK;

    invoke-direct {p1}, Lcom/unity3d/services/UnityAdsSDK;-><init>()V

    new-instance v0, Lcom/unity3d/services/ads/UnityAdsImplementation$1;

    invoke-direct {v0, p0, p4}, Lcom/unity3d/services/ads/UnityAdsImplementation$1;-><init>(Lcom/unity3d/services/ads/UnityAdsImplementation;Lcom/unity3d/ads/IUnityAdsShowListener;)V

    invoke-virtual {p1, p2, p3, v0}, Lcom/unity3d/services/UnityAdsSDK;->show(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/core/data/model/Listeners;)Lkotlinx/coroutines/Job;

    return-void

    .line 129
    :cond_1a
    :goto_1a
    const-string p1, "Activity must not be null"

    .line 130
    sget-object p3, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    invoke-direct {p0, p4, p2, p3, p1}, Lcom/unity3d/services/ads/UnityAdsImplementation;->handleShowError(Lcom/unity3d/ads/IUnityAdsShowListener;Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V

    return-void
.end method

###### Class com.unity3d.services.ads.UnityAdsImplementation.AnonymousClass1 (com.unity3d.services.ads.UnityAdsImplementation$1)
.class Lcom/unity3d/services/ads/UnityAdsImplementation$1;
.super Ljava/lang/Object;
.source "UnityAdsImplementation.java"

# interfaces
.implements Lcom/unity3d/ads/core/data/model/Listeners;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/UnityAdsImplementation;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/IUnityAdsShowListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/ads/UnityAdsImplementation;

.field final synthetic val$showListener:Lcom/unity3d/ads/IUnityAdsShowListener;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/ads/UnityAdsImplementation;Lcom/unity3d/ads/IUnityAdsShowListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$1;->this$0:Lcom/unity3d/services/ads/UnityAdsImplementation;

    iput-object p2, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$1;->val$showListener:Lcom/unity3d/ads/IUnityAdsShowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$1;->val$showListener:Lcom/unity3d/ads/IUnityAdsShowListener;

    if-eqz v0, :cond_7

    .line 157
    invoke-interface {v0, p1}, Lcom/unity3d/ads/IUnityAdsShowListener;->onUnityAdsShowClick(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onComplete(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$1;->val$showListener:Lcom/unity3d/ads/IUnityAdsShowListener;

    if-eqz v0, :cond_7

    .line 169
    invoke-interface {v0, p1, p2}, Lcom/unity3d/ads/IUnityAdsShowListener;->onUnityAdsShowComplete(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V

    :cond_7
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V
    .registers 5

    .line 142
    iget-object v0, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$1;->val$showListener:Lcom/unity3d/ads/IUnityAdsShowListener;

    if-eqz v0, :cond_7

    .line 143
    invoke-interface {v0, p1, p2, p3}, Lcom/unity3d/ads/IUnityAdsShowListener;->onUnityAdsShowFailure(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onLeftApplication(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onRewarded(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$1;->val$showListener:Lcom/unity3d/ads/IUnityAdsShowListener;

    if-eqz v0, :cond_7

    .line 150
    invoke-interface {v0, p1}, Lcom/unity3d/ads/IUnityAdsShowListener;->onUnityAdsShowStart(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

###### Class com.unity3d.services.ads.UnityAdsImplementation.AnonymousClass2 (com.unity3d.services.ads.UnityAdsImplementation$2)
.class Lcom/unity3d/services/ads/UnityAdsImplementation$2;
.super Ljava/lang/Object;
.source "UnityAdsImplementation.java"

# interfaces
.implements Lcom/unity3d/ads/core/domain/InternalLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/UnityAdsImplementation;->load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/ads/UnityAdsImplementation;

.field final synthetic val$listener:Lcom/unity3d/ads/IUnityAdsLoadListener;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/ads/UnityAdsImplementation;Lcom/unity3d/ads/IUnityAdsLoadListener;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->this$0:Lcom/unity3d/services/ads/UnityAdsImplementation;

    iput-object p2, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$listener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    iput-object p3, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoadFail(Lcom/unity3d/ads/UnityAdsError;)V
    .registers 5

    .line 223
    invoke-virtual {p1}, Lcom/unity3d/ads/UnityAdsError;->getCode()I

    move-result v0

    invoke-static {v0}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->forNumber(I)Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v0

    .line 224
    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    if-eqz v0, :cond_26

    .line 226
    sget-object v2, Lcom/unity3d/services/ads/UnityAdsImplementation$3;->$SwitchMap$gatewayprotocol$v1$ErrorOuterClass$PublicErrorCode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_24

    const/4 v2, 0x2

    if-eq v0, v2, :cond_21

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1e

    goto :goto_26

    .line 234
    :cond_1e
    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INITIALIZE_FAILED:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    goto :goto_26

    .line 231
    :cond_21
    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->TIMEOUT:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    goto :goto_26

    .line 228
    :cond_24
    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->NO_FILL:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 241
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$listener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    iget-object v2, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$placementId:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Lcom/unity3d/ads/UnityAdsError;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-interface {v0, v2, v1, p1}, Lcom/unity3d/ads/IUnityAdsLoadListener;->onUnityAdsFailedToLoad(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    .line 218
    iget-object p1, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$listener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    iget-object v0, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$placementId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/unity3d/ads/IUnityAdsLoadListener;->onUnityAdsAdLoaded(Ljava/lang/String;)V

    return-void
.end method

###### Class com.unity3d.services.ads.UnityAdsImplementation.AnonymousClass3 (com.unity3d.services.ads.UnityAdsImplementation$3)
.class synthetic Lcom/unity3d/services/ads/UnityAdsImplementation$3;
.super Ljava/lang/Object;
.source "UnityAdsImplementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/ads/UnityAdsImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$gatewayprotocol$v1$ErrorOuterClass$PublicErrorCode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 226
    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->values()[Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/unity3d/services/ads/UnityAdsImplementation$3;->$SwitchMap$gatewayprotocol$v1$ErrorOuterClass$PublicErrorCode:[I

    :try_start_9
    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NO_FILL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/unity3d/services/ads/UnityAdsImplementation$3;->$SwitchMap$gatewayprotocol$v1$ErrorOuterClass$PublicErrorCode:[I

    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_TIMEOUT:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/unity3d/services/ads/UnityAdsImplementation$3;->$SwitchMap$gatewayprotocol$v1$ErrorOuterClass$PublicErrorCode:[I

    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NOT_INITIALIZED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class com.unity3d.services.ads.UnityAdsImplementation$$ExternalSyntheticLambda0 (com.unity3d.services.ads.UnityAdsImplementation$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/IUnityAdsLoadListener;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/IUnityAdsLoadListener;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/IUnityAdsLoadListener;

    iput-object p2, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/IUnityAdsLoadListener;

    iget-object v1, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unity3d/services/ads/UnityAdsImplementation;->$r8$lambda$flbWhK2ad1s74oTr19uAAd2NOuo(Lcom/unity3d/ads/IUnityAdsLoadListener;Ljava/lang/String;)V

    return-void
.end method

###### Class com.unity3d.services.ads.UnityAdsImplementation$$ExternalSyntheticLambda1 (com.unity3d.services.ads.UnityAdsImplementation$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/core/domain/InternalLoadListener;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/core/domain/InternalLoadListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda1;->f$0:Lcom/unity3d/ads/core/domain/InternalLoadListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda1;->f$0:Lcom/unity3d/ads/core/domain/InternalLoadListener;

    invoke-static {v0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->$r8$lambda$bZAGsxc1nf5XUEtm5j1-ArVnmcA(Lcom/unity3d/ads/core/domain/InternalLoadListener;)V

    return-void
.end method

###### Class com.unity3d.services.ads.UnityAdsImplementation$$ExternalSyntheticLambda2 (com.unity3d.services.ads.UnityAdsImplementation$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/IUnityAdsInitializationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/IUnityAdsInitializationListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda2;->f$0:Lcom/unity3d/ads/IUnityAdsInitializationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda2;->f$0:Lcom/unity3d/ads/IUnityAdsInitializationListener;

    invoke-static {v0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->$r8$lambda$l_myVGuF9CtnlTf0smZGv0Hu2Aw(Lcom/unity3d/ads/IUnityAdsInitializationListener;)V

    return-void
.end method
