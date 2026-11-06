###### Class info.flowersoft.theotown.crossplatform.Analytics (info.flowersoft.theotown.crossplatform.Analytics)
.class public interface abstract Linfo/flowersoft/theotown/crossplatform/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# virtual methods
.method public abstract getNumId()J
.end method

.method public abstract lateInit()V
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logEvent(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract logException(Ljava/lang/Exception;)V
.end method

.method public abstract logException(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract logLoadCity(Linfo/flowersoft/theotown/city/City;)V
.end method

.method public abstract logNewCity(Linfo/flowersoft/theotown/city/City;)V
.end method

.method public abstract logPurchase(Linfo/flowersoft/theotown/draft/FeatureDraft;)V
.end method

.method public abstract logRankUpgrade(Linfo/flowersoft/theotown/draft/RankDraft;)V
.end method

.method public abstract logSaveCity(Linfo/flowersoft/theotown/city/City;)V
.end method

.method public abstract logSettings()V
.end method

.method public abstract logStage(Lio/blueflower/stapel2d/gamestack/Stage;)V
.end method

.method public abstract setConnectedUser(Linfo/flowersoft/theotown/backend/User;)V
.end method

.method public abstract writeToLog(Ljava/lang/String;)V
.end method
