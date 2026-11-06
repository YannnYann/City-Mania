###### Class com.google.android.gms.games.AchievementsClient (com.google.android.gms.games.AchievementsClient)
.class public interface abstract Lcom/google/android/gms/games/AchievementsClient;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# virtual methods
.method public abstract getAchievementsIntent()Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setSteps(Ljava/lang/String;I)V
.end method

.method public abstract unlock(Ljava/lang/String;)V
.end method
