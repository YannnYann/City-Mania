###### Class com.ironsource.InterfaceC3566db (com.ironsource.db)
.class public interface abstract Lcom/ironsource/db;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onAdClicked(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
.end method

.method public abstract onAdClosed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
.end method

.method public abstract onAdDisplayFailed(Lcom/unity3d/mediation/LevelPlayAdError;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
.end method

.method public abstract onAdDisplayed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
.end method

.method public abstract onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
.end method

.method public abstract onAdLoadFailed(Lcom/unity3d/mediation/LevelPlayAdError;)V
.end method

.method public abstract onAdLoaded(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
.end method

.method public onAdRewarded(Lcom/unity3d/mediation/rewarded/LevelPlayReward;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    .line 0
    const-string v0, "reward"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
