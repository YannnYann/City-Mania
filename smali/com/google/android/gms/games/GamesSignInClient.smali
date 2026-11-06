###### Class com.google.android.gms.games.GamesSignInClient (com.google.android.gms.games.GamesSignInClient)
.class public interface abstract Lcom/google/android/gms/games/GamesSignInClient;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# annotations
.annotation build Lcom/google/android/gms/internal/games_v2/zzad;
.end annotation


# virtual methods
.method public abstract isAuthenticated()Lcom/google/android/gms/tasks/Task;
    .annotation build Lcom/google/android/gms/internal/games_v2/zzad;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AuthenticationResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract signIn()Lcom/google/android/gms/tasks/Task;
    .annotation build Lcom/google/android/gms/internal/games_v2/zzad;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AuthenticationResult;",
            ">;"
        }
    .end annotation
.end method
