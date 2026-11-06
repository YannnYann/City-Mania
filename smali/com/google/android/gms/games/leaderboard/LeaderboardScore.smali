###### Class com.google.android.gms.games.leaderboard.LeaderboardScore (com.google.android.gms.games.leaderboard.LeaderboardScore)
.class public interface abstract Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable<",
        "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getDisplayRank()Ljava/lang/String;
.end method

.method public abstract getDisplayScore()Ljava/lang/String;
.end method

.method public abstract getRank()J
.end method

.method public abstract getRawScore()J
.end method

.method public abstract getScoreHolder()Lcom/google/android/gms/games/Player;
.end method

.method public abstract getScoreHolderDisplayName()Ljava/lang/String;
.end method

.method public abstract getScoreHolderHiResImageUri()Landroid/net/Uri;
.end method

.method public abstract getScoreHolderHiResImageUrl()Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getScoreHolderIconImageUri()Landroid/net/Uri;
.end method

.method public abstract getScoreHolderIconImageUrl()Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getScoreTag()Ljava/lang/String;
.end method

.method public abstract getTimestampMillis()J
.end method
