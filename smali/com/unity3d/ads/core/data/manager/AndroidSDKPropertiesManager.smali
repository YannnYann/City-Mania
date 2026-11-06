###### Class com.unity3d.ads.core.data.manager.AndroidSDKPropertiesManager (com.unity3d.ads.core.data.manager.AndroidSDKPropertiesManager)
.class public final Lcom/unity3d/ads/core/data/manager/AndroidSDKPropertiesManager;
.super Ljava/lang/Object;
.source "AndroidSDKPropertiesManager.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentInitializationState()Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;
    .registers 3

    .line 13
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getCurrentInitializationState()Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    move-result-object v0

    const-string v1, "getCurrentInitializationState(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public setInitializationTime()V
    .registers 3

    .line 14
    invoke-static {}, Lcom/unity3d/services/core/device/Device;->getElapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitializationTime(J)V

    return-void
.end method

.method public setInitializationTimeSinceEpoch()V
    .registers 3

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitializationTimeSinceEpoch(J)V

    return-void
.end method

.method public setInitializeState(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)V
    .registers 3

    const-string v0, "initializeState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitializeState(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)V

    return-void
.end method

.method public setInitialized(Z)V
    .registers 2

    .line 11
    invoke-static {p1}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitialized(Z)V

    return-void
.end method
