###### Class com.google.android.gms.games.leaderboard.LeaderboardVariant (com.google.android.gms.games.leaderboard.LeaderboardVariant)
.class public interface abstract Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/leaderboard/LeaderboardVariant$TimeSpan;,
        Lcom/google/android/gms/games/leaderboard/LeaderboardVariant$Collection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable<",
        "Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCollection()I
.end method

.method public abstract getDisplayPlayerRank()Ljava/lang/String;
.end method

.method public abstract getDisplayPlayerScore()Ljava/lang/String;
.end method

.method public abstract getNumScores()J
.end method

.method public abstract getPlayerRank()J
.end method

.method public abstract getPlayerScoreTag()Ljava/lang/String;
.end method

.method public abstract getRawPlayerScore()J
.end method

.method public abstract getTimeSpan()I
.end method

.method public abstract hasPlayerInfo()Z
.end method

.method public abstract zza()Ljava/lang/String;
.end method

.method public abstract zzb()Ljava/lang/String;
.end method

.method public abstract zzc()Ljava/lang/String;
.end method

###### Class com.google.android.gms.games.leaderboard.LeaderboardVariant.Collection (com.google.android.gms.games.leaderboard.LeaderboardVariant$Collection)
.class public interface abstract annotation Lcom/google/android/gms/games/leaderboard/LeaderboardVariant$Collection;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Collection"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.games.leaderboard.LeaderboardVariant.TimeSpan (com.google.android.gms.games.leaderboard.LeaderboardVariant$TimeSpan)
.class public interface abstract annotation Lcom/google/android/gms/games/leaderboard/LeaderboardVariant$TimeSpan;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TimeSpan"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
