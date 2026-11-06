###### Class com.google.android.gms.games.zzd (com.google.android.gms.games.zzd)
.class public final Lcom/google/android/gms/games/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# static fields
.field public static final zza:Lcom/google/android/gms/common/Feature;

.field public static final zzb:Lcom/google/android/gms/common/Feature;

.field public static final zzc:Lcom/google/android/gms/common/Feature;

.field public static final zzd:Lcom/google/android/gms/common/Feature;

.field public static final zze:Lcom/google/android/gms/common/Feature;

.field public static final zzf:Lcom/google/android/gms/common/Feature;

.field public static final zzg:Lcom/google/android/gms/common/Feature;

.field public static final zzh:Lcom/google/android/gms/common/Feature;

.field public static final zzi:Lcom/google/android/gms/common/Feature;

.field public static final zzj:Lcom/google/android/gms/common/Feature;

.field public static final zzk:Lcom/google/android/gms/common/Feature;

.field public static final zzl:Lcom/google/android/gms/common/Feature;

.field public static final zzm:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "games_get_account_selection_intent"

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v0, Lcom/google/android/gms/games/zzd;->zza:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v5, "games_get_privacy_settings_intent"

    .line 2
    invoke-direct {v1, v5, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v1, Lcom/google/android/gms/games/zzd;->zzb:Lcom/google/android/gms/common/Feature;

    move-wide v5, v2

    new-instance v2, Lcom/google/android/gms/common/Feature;

    const-string v3, "games_load_player_force_reload"

    .line 3
    invoke-direct {v2, v3, v5, v6, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v2, Lcom/google/android/gms/games/zzd;->zzc:Lcom/google/android/gms/common/Feature;

    new-instance v3, Lcom/google/android/gms/common/Feature;

    const-string v7, "games_load_profile_capabilities"

    const-wide/16 v8, 0x2

    .line 4
    invoke-direct {v3, v7, v8, v9, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v3, Lcom/google/android/gms/games/zzd;->zzd:Lcom/google/android/gms/common/Feature;

    move v7, v4

    new-instance v4, Lcom/google/android/gms/common/Feature;

    const-string v8, "games_recall"

    .line 5
    invoke-direct {v4, v8, v5, v6, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v4, Lcom/google/android/gms/games/zzd;->zze:Lcom/google/android/gms/common/Feature;

    move-wide v8, v5

    new-instance v5, Lcom/google/android/gms/common/Feature;

    const-string v6, "games_report_player"

    .line 6
    invoke-direct {v5, v6, v8, v9, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v5, Lcom/google/android/gms/games/zzd;->zzf:Lcom/google/android/gms/common/Feature;

    new-instance v6, Lcom/google/android/gms/common/Feature;

    const-string v10, "games_app_shortcuts"

    .line 7
    invoke-direct {v6, v10, v8, v9, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v6, Lcom/google/android/gms/games/zzd;->zzg:Lcom/google/android/gms/common/Feature;

    move v10, v7

    new-instance v7, Lcom/google/android/gms/common/Feature;

    const-string v11, "games_game_streaks"

    .line 8
    invoke-direct {v7, v11, v8, v9, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v7, Lcom/google/android/gms/games/zzd;->zzh:Lcom/google/android/gms/common/Feature;

    move-wide v11, v8

    new-instance v8, Lcom/google/android/gms/common/Feature;

    const-string v9, "games_public_gamer_profile"

    .line 9
    invoke-direct {v8, v9, v11, v12, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v8, Lcom/google/android/gms/games/zzd;->zzi:Lcom/google/android/gms/common/Feature;

    new-instance v9, Lcom/google/android/gms/common/Feature;

    const-string v13, "games_player_game_events"

    .line 10
    invoke-direct {v9, v13, v11, v12, v10}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v9, Lcom/google/android/gms/games/zzd;->zzj:Lcom/google/android/gms/common/Feature;

    move v13, v10

    new-instance v10, Lcom/google/android/gms/common/Feature;

    const-string v14, "games_player_game_events_immediate"

    .line 11
    invoke-direct {v10, v14, v11, v12, v13}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v10, Lcom/google/android/gms/games/zzd;->zzk:Lcom/google/android/gms/common/Feature;

    move-wide v12, v11

    new-instance v11, Lcom/google/android/gms/common/Feature;

    const-string v14, "games_rewards_internal"

    const/4 v15, 0x0

    .line 12
    invoke-direct {v11, v14, v12, v13, v15}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v11, Lcom/google/android/gms/games/zzd;->zzl:Lcom/google/android/gms/common/Feature;

    filled-new-array/range {v0 .. v11}, [Lcom/google/android/gms/common/Feature;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/games/zzd;->zzm:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
