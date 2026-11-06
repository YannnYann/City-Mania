###### Class com.unity3d.ads.core.data.model.Listeners (com.unity3d.ads.core.data.model.Listeners)
.class public interface abstract Lcom/unity3d/ads/core/data/model/Listeners;
.super Ljava/lang/Object;
.source "Listeners.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/model/Listeners$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onClick(Ljava/lang/String;)V
.end method

.method public abstract onComplete(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V
.end method

.method public abstract onError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V
.end method

.method public abstract onLeftApplication(Ljava/lang/String;)V
.end method

.method public abstract onRewarded(Ljava/lang/String;)V
.end method

.method public abstract onStart(Ljava/lang/String;)V
.end method

###### Class com.unity3d.ads.core.data.model.Listeners.DefaultImpls (com.unity3d.ads.core.data.model.Listeners$DefaultImpls)
.class public final Lcom/unity3d/ads/core/data/model/Listeners$DefaultImpls;
.super Ljava/lang/Object;
.source "Listeners.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/model/Listeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onClick(Lcom/unity3d/ads/core/data/model/Listeners;Ljava/lang/String;)V
    .registers 2

    .line 0
    const-string p0, "placementId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onComplete(Lcom/unity3d/ads/core/data/model/Listeners;Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V
    .registers 3

    .line 0
    const-string p0, "placementId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "state"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onError(Lcom/unity3d/ads/core/data/model/Listeners;Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V
    .registers 4

    .line 0
    const-string p0, "placementId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "error"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "message"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onLeftApplication(Lcom/unity3d/ads/core/data/model/Listeners;Ljava/lang/String;)V
    .registers 2

    .line 0
    const-string p0, "placementId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onRewarded(Lcom/unity3d/ads/core/data/model/Listeners;Ljava/lang/String;)V
    .registers 2

    .line 0
    const-string p0, "placementId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onStart(Lcom/unity3d/ads/core/data/model/Listeners;Ljava/lang/String;)V
    .registers 2

    .line 0
    const-string p0, "placementId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
