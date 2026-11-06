###### Class info.flowersoft.theotown.crossplatform.GamesService (info.flowersoft.theotown.crossplatform.GamesService)
.class public interface abstract Linfo/flowersoft/theotown/crossplatform/GamesService;
.super Ljava/lang/Object;
.source "GamesService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/crossplatform/GamesService$StatusListener;
    }
.end annotation


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract enforceCake()Z
.end method

.method public abstract incrementEvent(Ljava/lang/String;I)Z
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isOfflineMode()Z
.end method

.method public abstract isSignedIn()Z
.end method

.method public abstract registerStatusListener(Linfo/flowersoft/theotown/crossplatform/GamesService$StatusListener;)V
.end method

.method public abstract resetAchievements()V
.end method

.method public abstract runCallbacks()V
.end method

.method public abstract setup(Z)V
.end method

.method public abstract showAchievements()V
.end method

.method public abstract showLeaderboards()V
.end method

.method public abstract submitScore(Ljava/lang/String;J)Z
.end method

.method public abstract unlockAchievement(Ljava/lang/String;)Z
.end method

.method public abstract unlockAchievement(Ljava/lang/String;II)Z
.end method

.method public abstract visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V
.end method

###### Class info.flowersoft.theotown.crossplatform.GamesService.StatusListener (info.flowersoft.theotown.crossplatform.GamesService$StatusListener)
.class public interface abstract Linfo/flowersoft/theotown/crossplatform/GamesService$StatusListener;
.super Ljava/lang/Object;
.source "GamesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/crossplatform/GamesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatusListener"
.end annotation


# virtual methods
.method public abstract handle(Z)V
.end method

.method public abstract handleEvents(Linfo/flowersoft/theotown/util/json/JSONArray;)V
.end method
