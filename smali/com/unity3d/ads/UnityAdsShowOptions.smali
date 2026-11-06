###### Class com.unity3d.ads.UnityAdsShowOptions (com.unity3d.ads.UnityAdsShowOptions)
.class public Lcom/unity3d/ads/UnityAdsShowOptions;
.super Lcom/unity3d/ads/UnityAdsBaseOptions;
.source "UnityAdsShowOptions.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public showConfiguration:Lcom/unity3d/ads/core/data/model/ShowConfigurationInternal;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Lcom/unity3d/ads/UnityAdsBaseOptions;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/unity3d/ads/UnityAdsShowOptions;->showConfiguration:Lcom/unity3d/ads/core/data/model/ShowConfigurationInternal;

    return-void
.end method
