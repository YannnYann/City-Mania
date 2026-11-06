###### Class com.ironsource.sdk.controller.FeaturesManager (com.ironsource.sdk.controller.FeaturesManager)
.class public Lcom/ironsource/sdk/controller/FeaturesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile d:Lcom/ironsource/sdk/controller/FeaturesManager; = null

.field private static final e:Ljava/lang/String; = "debugMode"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ironsource/r8;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ironsource/sdk/controller/FeaturesManager$a;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/FeaturesManager$a;-><init>(Lcom/ironsource/sdk/controller/FeaturesManager;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/FeaturesManager;->b:Ljava/util/ArrayList;

    .line 18
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->t()Lcom/ironsource/r8;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/FeaturesManager;->c:Lcom/ironsource/r8;

    .line 21
    sget-object v0, Lcom/ironsource/sdk/controller/FeaturesManager;->d:Lcom/ironsource/sdk/controller/FeaturesManager;

    if-nez v0, :cond_20

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/FeaturesManager;->a:Ljava/util/Map;

    return-void

    .line 27
    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Use getInstance() method to get the single instance of this class."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/sdk/controller/FeaturesManager;->d:Lcom/ironsource/sdk/controller/FeaturesManager;

    if-nez v0, :cond_19

    .line 2
    const-class v0, Lcom/ironsource/sdk/controller/FeaturesManager;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/ironsource/sdk/controller/FeaturesManager;->d:Lcom/ironsource/sdk/controller/FeaturesManager;

    if-nez v1, :cond_15

    new-instance v1, Lcom/ironsource/sdk/controller/FeaturesManager;

    invoke-direct {v1}, Lcom/ironsource/sdk/controller/FeaturesManager;-><init>()V

    sput-object v1, Lcom/ironsource/sdk/controller/FeaturesManager;->d:Lcom/ironsource/sdk/controller/FeaturesManager;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 4
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 7
    :cond_19
    :goto_19
    sget-object v0, Lcom/ironsource/sdk/controller/FeaturesManager;->d:Lcom/ironsource/sdk/controller/FeaturesManager;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/FeaturesManager;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDataManagerConfig()Lorg/json/JSONObject;
    .registers 4

    .line 1
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    const-string v1, "dataManager"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 5
    :cond_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public getDebugMode()I
    .registers 5

    const-string v0, "debugMode"

    const/4 v1, 0x0

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    :try_start_7
    iget-object v3, p0, Lcom/ironsource/sdk/controller/FeaturesManager;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 5
    iget-object v3, p0, Lcom/ironsource/sdk/controller/FeaturesManager;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_19

    move-object v2, v0

    goto :goto_2a

    :catch_19
    move-exception v0

    .line 8
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 9
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    if-eqz v2, :cond_30

    .line 12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_30
    return v1
.end method

.method public getFeatureFlagCatchUrlError()Lcom/ironsource/O3;
    .registers 4

    .line 1
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ironsource/O3;

    .line 3
    const-string v2, "curlError"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ironsource/O3;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public getFeatureFlagClickCheck()Lcom/ironsource/P3;
    .registers 3

    .line 1
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ironsource/P3;

    invoke-direct {v1, v0}, Lcom/ironsource/P3;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public getFeatureFlagHealthCheck()Lcom/ironsource/b7;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/FeaturesManager;->c:Lcom/ironsource/r8;

    .line 2
    const-string v1, "healthCheck"

    invoke-interface {v0, v1}, Lcom/ironsource/r8;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 5
    new-instance v1, Lcom/ironsource/b7;

    invoke-direct {v1, v0}, Lcom/ironsource/b7;-><init>(Lorg/json/JSONObject;)V

    return-object v1

    .line 7
    :cond_10
    new-instance v0, Lcom/ironsource/b7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/b7;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public getFeatureFlagLoadControllerAndPlayerFromBundle()Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkFeatureConfiguration()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    const-string v1, "loadControllerAndPlayerFromBundleFallback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInitRecoverTrials()I
    .registers 4

    .line 1
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    const-string v1, "init"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 6
    const-string v2, "recoverTrials"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_14
    return v1
.end method

.method public getSessionHistoryConfig()Lcom/ironsource/cf;
    .registers 4

    .line 1
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    const-string v1, "sessionHistory"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_16

    .line 5
    :cond_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :goto_16
    new-instance v1, Lcom/ironsource/cf;

    invoke-direct {v1, v0}, Lcom/ironsource/cf;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public getStopUseOnResumeAndPause()Z
    .registers 4

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/FeaturesManager;->c:Lcom/ironsource/r8;

    .line 2
    const-string v2, "stopUseOnResumeAndPause"

    invoke-interface {v1, v2}, Lcom/ironsource/r8;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateDebugConfigurations(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iput-object p1, p0, Lcom/ironsource/sdk/controller/FeaturesManager;->a:Ljava/util/Map;

    return-void
.end method

###### Class com.ironsource.sdk.controller.FeaturesManager.a (com.ironsource.sdk.controller.FeaturesManager$a)
.class Lcom/ironsource/sdk/controller/FeaturesManager$a;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/FeaturesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/sdk/controller/FeaturesManager;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/controller/FeaturesManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/FeaturesManager$a;->a:Lcom/ironsource/sdk/controller/FeaturesManager;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    const-string p1, "webviewperad-v1"

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 4
    const-string p1, "noPackagesInstallationPolling"

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 5
    const-string p1, "removeViewOnDestroy"

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 6
    const-string p1, "bannerMultipleInstances"

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 7
    const-string p1, "lastUpdateTimeRemoval"

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 8
    const-string p1, "isnFileSystemAPI"

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 9
    const-string p1, "controlActivityLifecycle"

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 10
    const-string p1, "bannersOpenMeasurement"

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 11
    const-string p1, "initRecovery"

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
