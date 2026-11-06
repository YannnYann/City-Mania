###### Class com.ironsource.sdk.IronSourceNetwork (com.ironsource.sdk.IronSourceNetwork)
.class public Lcom/ironsource/sdk/IronSourceNetwork;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "IronSourceNetwork"

.field private static b:Lcom/ironsource/ca;

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/Tc;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/ironsource/fa;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ironsource/sdk/IronSourceNetwork;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 8
    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->b:Lcom/ironsource/ca;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 9
    :cond_9
    :try_start_9
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Call initSDK first"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_13

    .line 1
    invoke-static {p1}, Lcom/ironsource/B8;->a(Lorg/json/JSONObject;)Lcom/ironsource/I5;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/I5;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6
    invoke-static {p0, p2, p3, p4, p5}, Lcom/ironsource/B8;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/ironsource/y8;

    move-result-object p0

    .line 7
    invoke-static {p1, p0}, Lcom/ironsource/A8;->a(Lcom/ironsource/I5;Lcom/ironsource/y8;)V

    :cond_13
    return-void
.end method

.method public static declared-synchronized addInitListener(Lcom/ironsource/Tc;)V
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->d:Lcom/ironsource/fa;

    if-nez v1, :cond_10

    .line 2
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->c:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_26

    .line 6
    :cond_10
    :try_start_10
    invoke-virtual {v1}, Lcom/ironsource/fa;->b()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 7
    invoke-interface {p0}, Lcom/ironsource/Tc;->onSuccess()V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_e

    monitor-exit v0

    return-void

    .line 10
    :cond_1b
    :try_start_1b
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->d:Lcom/ironsource/fa;

    invoke-virtual {v1}, Lcom/ironsource/fa;->a()Lcom/ironsource/u8;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/ironsource/Tc;->onFail(Lcom/ironsource/u8;)V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_e

    monitor-exit v0

    return-void

    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_e

    throw p0
.end method

.method public static declared-synchronized destroyAd(Lcom/ironsource/R9;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->a()V

    .line 2
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->b:Lcom/ironsource/ca;

    invoke-interface {v1, p0}, Lcom/ironsource/ea;->b(Lcom/ironsource/R9;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method

.method public static declared-synchronized getControllerManager()Lcom/ironsource/sdk/controller/e;
    .registers 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->b:Lcom/ironsource/ca;

    invoke-interface {v1}, Lcom/ironsource/ca;->a()Lcom/ironsource/sdk/controller/e;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized initSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v1, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v1

    .line 1
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    const-string p0, "IronSourceNetwork"

    const-string p1, "applicationKey is NULL"

    invoke-static {p0, p1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    move-object p0, v0

    goto :goto_63

    .line 6
    :cond_15
    :try_start_15
    sget-object v0, Lcom/ironsource/sdk/IronSourceNetwork;->b:Lcom/ironsource/ca;

    if-nez v0, :cond_61

    .line 7
    invoke-static {p3}, Lcom/ironsource/sdk/utils/SDKUtils;->setInitSDKParams(Ljava/util/Map;)V

    .line 9
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/ironsource/C8;->a()Ljava/lang/String;

    move-result-object v6
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_12

    .line 13
    :try_start_24
    const-string v2, "events"

    .line 15
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_35
    .catchall {:try_start_24 .. :try_end_2a} :catchall_12

    move-object v2, p0

    move-object v5, p1

    move-object v4, p2

    move-object v7, p3

    .line 16
    :try_start_2e
    invoke-static/range {v2 .. v7}, Lcom/ironsource/sdk/IronSourceNetwork;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32
    .catchall {:try_start_2e .. :try_end_31} :catchall_12

    goto :goto_5b

    :catch_32
    move-exception v0

    :goto_33
    move-object p0, v0

    goto :goto_3a

    :catch_35
    move-exception v0

    move-object v2, p0

    move-object v5, p1

    move-object v4, p2

    goto :goto_33

    .line 24
    :goto_3a
    :try_start_3a
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to init event tracker: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IronSourceNetwork"

    invoke-static {p1, p0}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_5b
    invoke-static {v2, v5, v4}, Lcom/ironsource/W9;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/ca;

    move-result-object p0

    sput-object p0, Lcom/ironsource/sdk/IronSourceNetwork;->b:Lcom/ironsource/ca;
    :try_end_61
    .catchall {:try_start_3a .. :try_end_61} :catchall_12

    :cond_61
    monitor-exit v1

    return-void

    :goto_63
    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_12

    throw p0
.end method

.method public static declared-synchronized isAdAvailableForInstance(Lcom/ironsource/R9;)Z
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->b:Lcom/ironsource/ca;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-nez v1, :cond_a

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_a
    :try_start_a
    invoke-interface {v1, p0}, Lcom/ironsource/ea;->a(Lcom/ironsource/R9;)Z

    move-result p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public static declared-synchronized loadAd(Lcom/ironsource/R9;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/R9;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->a()V

    .line 2
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->b:Lcom/ironsource/ca;

    invoke-interface {v1, p0, p1}, Lcom/ironsource/ea;->a(Lcom/ironsource/R9;Ljava/util/Map;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method

.method public static declared-synchronized loadAdView(Landroid/app/Activity;Lcom/ironsource/R9;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/ironsource/R9;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->a()V

    .line 2
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->b:Lcom/ironsource/ca;

    invoke-interface {v1, p0, p1, p2}, Lcom/ironsource/ea;->b(Landroid/app/Activity;Lcom/ironsource/R9;Ljava/util/Map;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method

.method public static onPause(Landroid/app/Activity;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/sdk/IronSourceNetwork;->b:Lcom/ironsource/ca;

    if-nez v0, :cond_5

    return-void

    .line 5
    :cond_5
    invoke-interface {v0, p0}, Lcom/ironsource/ca;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/sdk/IronSourceNetwork;->b:Lcom/ironsource/ca;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-interface {v0, p0}, Lcom/ironsource/ca;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static declared-synchronized release(Landroid/app/Activity;)V
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->b:Lcom/ironsource/ca;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_e

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 4
    :cond_9
    :try_start_9
    invoke-interface {v1, p0}, Lcom/ironsource/ca;->c(Landroid/app/Activity;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p0
.end method

.method public static declared-synchronized showAd(Landroid/app/Activity;Lcom/ironsource/R9;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/ironsource/R9;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->a()V

    .line 2
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->b:Lcom/ironsource/ca;

    invoke-interface {v1, p0, p1, p2}, Lcom/ironsource/ea;->a(Landroid/app/Activity;Lcom/ironsource/R9;Ljava/util/Map;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method

.method public static declared-synchronized updateInitFailed(Lcom/ironsource/u8;)V
    .registers 4

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 1
    :try_start_3
    new-instance v1, Lcom/ironsource/fa;

    invoke-direct {v1, p0}, Lcom/ironsource/fa;-><init>(Lcom/ironsource/u8;)V

    sput-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->d:Lcom/ironsource/fa;

    .line 2
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/Tc;

    .line 3
    invoke-interface {v2, p0}, Lcom/ironsource/Tc;->onFail(Lcom/ironsource/u8;)V

    goto :goto_10

    :catchall_20
    move-exception p0

    goto :goto_29

    .line 5
    :cond_22
    sget-object p0, Lcom/ironsource/sdk/IronSourceNetwork;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_20

    monitor-exit v0

    return-void

    :goto_29
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_20

    throw p0
.end method

.method public static declared-synchronized updateInitSucceeded()V
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    .line 1
    :try_start_3
    new-instance v1, Lcom/ironsource/fa;

    invoke-direct {v1}, Lcom/ironsource/fa;-><init>()V

    sput-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->d:Lcom/ironsource/fa;

    .line 2
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/Tc;

    .line 3
    invoke-interface {v2}, Lcom/ironsource/Tc;->onSuccess()V

    goto :goto_10

    :catchall_20
    move-exception v1

    goto :goto_29

    .line 5
    :cond_22
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_20

    monitor-exit v0

    return-void

    :goto_29
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_20

    throw v1
.end method
