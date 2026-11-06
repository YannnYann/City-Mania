###### Class com.google.android.gms.internal.games_v2.zzgb (com.google.android.gms.internal.games_v2.zzgb)
.class public final Lcom/google/android/gms/internal/games_v2/zzgb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/games_v2/zzfz;

.field private static volatile zzb:Lcom/google/android/gms/internal/games_v2/zzfz;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzga;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzga;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzgb;->zza:Lcom/google/android/gms/internal/games_v2/zzfz;

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzgb;->zzb:Lcom/google/android/gms/internal/games_v2/zzfz;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/games_v2/zzfz;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzgb;->zzb:Lcom/google/android/gms/internal/games_v2/zzfz;

    return-object v0
.end method
