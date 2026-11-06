###### Class com.unity3d.ads.core.domain.events.MaxAdRevenueObserver (com.unity3d.ads.core.domain.events.MaxAdRevenueObserver)
.class public final Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;
.super Ljava/lang/Object;
.source "MaxAdRevenueObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver$Companion;
    }
.end annotation


# static fields
.field private static final COMMUNICATOR_ID:Ljava/lang/String; = "ilrd_observer"

.field public static final Companion:Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver$Companion;

.field private static final MAX_REVENUE_EVENTS_TOPIC:Ljava/lang/String; = "max_revenue_events"


# instance fields
.field private final communicatorBridge:Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;

.field private final communicatorProxyFactory:Lcom/unity3d/ads/core/domain/events/MaxAdRevenueCommunicatorProxyFactory;

.field private communicatorSubscriber:Ljava/lang/Object;

.field private isStarted:Z

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final revenueListener:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->Companion:Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/log/Logger;Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;Lcom/unity3d/ads/core/domain/events/MaxAdRevenueCommunicatorProxyFactory;)V
    .registers 7

    const-string v0, "sessionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "communicatorBridge"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "revenueListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "communicatorProxyFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 15
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 16
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->communicatorBridge:Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;

    .line 17
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->revenueListener:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    .line 18
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->communicatorProxyFactory:Lcom/unity3d/ads/core/domain/events/MaxAdRevenueCommunicatorProxyFactory;

    return-void
.end method


# virtual methods
.method public final invoke()V
    .registers 8

    .line 28
    monitor-enter p0

    .line 29
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getNativeConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;->getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;->getCollectIlrData()Z

    move-result v0

    .line 31
    iget-boolean v1, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->isStarted:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    if-nez v0, :cond_24

    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "ILRD collection feature flag changed to disabled, stopping"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 34
    invoke-virtual {p0}, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->stop()V

    goto :goto_2b

    :catchall_22
    move-exception v0

    goto :goto_87

    .line 36
    :cond_24
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "ILRD observer already started"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_22

    .line 38
    :goto_2b
    monitor-exit p0

    return-void

    :cond_2d
    if-nez v0, :cond_38

    .line 42
    :try_start_2f
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "ILRD collection feature flag is disabled"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_22

    .line 43
    monitor-exit p0

    return-void

    .line 47
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->communicatorProxyFactory:Lcom/unity3d/ads/core/domain/events/MaxAdRevenueCommunicatorProxyFactory;

    .line 48
    const-string v1, "ilrd_observer"

    .line 49
    const-string v4, "max_revenue_events"

    .line 50
    iget-object v5, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->revenueListener:Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;

    new-instance v6, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver$invoke$1$proxy$1;

    invoke-direct {v6, v5}, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver$invoke$1$proxy$1;-><init>(Lcom/unity3d/ads/core/data/datasource/MaxAdRevenueListener;)V

    .line 47
    invoke-virtual {v0, v1, v4, v6}, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueCommunicatorProxyFactory;->create(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy$CommunicatorMessageListener;)Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->communicatorBridge:Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;

    const-string v4, "max_revenue_events"

    invoke-virtual {v1, v0, v4}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->subscribe(Lcom/unity3d/services/core/reflection/CommunicatorSubscriberProxy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 55
    iput-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->communicatorSubscriber:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->isStarted:Z

    .line 57
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "Successfully started ad revenue automatic collection"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_83

    :catch_60
    move-exception v0

    goto :goto_6c

    :catch_62
    move-exception v0

    goto :goto_74

    .line 59
    :cond_64
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "Mediation SDK not available, automatic collection not started"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_38 .. :try_end_6b} :catch_7c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_38 .. :try_end_6b} :catch_62
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_6b} :catch_60
    .catchall {:try_start_38 .. :try_end_6b} :catchall_22

    goto :goto_83

    .line 66
    :goto_6c
    :try_start_6c
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "Failed to start ad revenue collection"

    invoke-interface {v1, v2, v0}, Lcom/unity3d/ads/core/log/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_83

    .line 64
    :goto_74
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "Communicator method not found, SDK version may be incompatible"

    invoke-interface {v1, v2, v0}, Lcom/unity3d/ads/core/log/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_83

    .line 62
    :catch_7c
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "Mediation SDK not found, skipping automatic collection"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 68
    :goto_83
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_85
    .catchall {:try_start_6c .. :try_end_85} :catchall_22

    .line 28
    monitor-exit p0

    return-void

    :goto_87
    monitor-exit p0

    throw v0
.end method

.method public final stop()V
    .registers 5

    .line 70
    monitor-enter p0

    .line 71
    :try_start_1
    iget-boolean v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->isStarted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 73
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->communicatorSubscriber:Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_1c

    if-eqz v0, :cond_28

    const/4 v1, 0x0

    .line 76
    :try_start_c
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->communicatorBridge:Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;

    const-string v3, "max_revenue_events"

    invoke-virtual {v2, v0, v3}, Lcom/unity3d/services/core/reflection/AppLovinCommunicatorBridge;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v2, "Unsubscribed from revenue events"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->trace$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1e
    .catchall {:try_start_c .. :try_end_1b} :catchall_1c

    goto :goto_26

    :catchall_1c
    move-exception v0

    goto :goto_2f

    :catch_1e
    move-exception v0

    .line 79
    :try_start_1f
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v3, "Failed to unsubscribe from revenue events"

    invoke-interface {v2, v3, v0}, Lcom/unity3d/ads/core/log/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    :goto_26
    iput-object v1, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->communicatorSubscriber:Ljava/lang/Object;

    :cond_28
    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;->isStarted:Z

    .line 85
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_1c

    .line 70
    monitor-exit p0

    return-void

    :goto_2f
    monitor-exit p0

    throw v0
.end method

###### Class com.unity3d.ads.core.domain.events.MaxAdRevenueObserver.Companion (com.unity3d.ads.core.domain.events.MaxAdRevenueObserver$Companion)
.class public final Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver$Companion;
.super Ljava/lang/Object;
.source "MaxAdRevenueObserver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/events/MaxAdRevenueObserver$Companion;-><init>()V

    return-void
.end method
