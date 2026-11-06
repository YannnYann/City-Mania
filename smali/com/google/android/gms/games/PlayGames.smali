###### Class com.google.android.gms.games.PlayGames (com.google.android.gms.games.PlayGames)
.class public final Lcom/google/android/gms/games/PlayGames;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation build Lcom/google/android/gms/internal/games_v2/zzad;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;
    .registers 2
    .annotation build Lcom/google/android/gms/internal/games_v2/zzad;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzcj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzcj;-><init>(Lcom/google/android/gms/internal/games_v2/zzaq;)V

    return-object p0
.end method

.method public static getEventsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/EventsClient;
    .registers 2
    .annotation build Lcom/google/android/gms/internal/games_v2/zzad;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzcq;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzcq;-><init>(Lcom/google/android/gms/internal/games_v2/zzaq;)V

    return-object p0
.end method

.method public static getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;
    .registers 3
    .annotation build Lcom/google/android/gms/internal/games_v2/zzad;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzdg;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzay;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaw;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/games_v2/zzaq;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaq;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/games_v2/zzdg;-><init>(Lcom/google/android/gms/internal/games_v2/zzaw;Lcom/google/android/gms/internal/games_v2/zzaq;)V

    return-object p0
.end method

.method public static getLeaderboardsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/LeaderboardsClient;
    .registers 2
    .annotation build Lcom/google/android/gms/internal/games_v2/zzad;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzeb;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzeb;-><init>(Lcom/google/android/gms/internal/games_v2/zzaq;)V

    return-object p0
.end method
