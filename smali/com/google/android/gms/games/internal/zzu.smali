###### Class com.google.android.gms.games.internal.zzu (com.google.android.gms.games.internal.zzu)
.class public final Lcom/google/android/gms/games/internal/zzu;
.super Lcom/google/android/gms/internal/games_v2/zzab;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/games/internal/zzai;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/internal/zzai;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzu;->zza:Lcom/google/android/gms/games/internal/zzai;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/games_v2/zzab;-><init>(Landroid/os/Looper;I)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;I)V
    .registers 9

    .line 1
    const-string v0, " because the games client is no longer connected"

    const-string v1, " by "

    const-string v2, "Unable to increment event "

    :try_start_6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/zzu;->zza:Lcom/google/android/gms/games/internal/zzai;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzao;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/zzao;->zzJ(Ljava/lang/String;I)V

    return-void

    :catch_18
    move-exception p1

    goto :goto_4f

    :catch_1a
    move-exception p1

    goto :goto_53

    :cond_1c
    const-string v3, "GamesGmsClientImpl"

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/google/android/gms/internal/games_v2/zzfy;->zzg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_4e} :catch_1a
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_4e} :catch_18

    return-void

    .line 4
    :goto_4f
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzai;->zzab(Ljava/lang/SecurityException;)V

    return-void

    .line 5
    :goto_53
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzai;->zzaa(Landroid/os/RemoteException;)V

    return-void
.end method
