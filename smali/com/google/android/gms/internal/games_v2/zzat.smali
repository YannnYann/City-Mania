###### Class com.google.android.gms.internal.games_v2.zzat (com.google.android.gms.internal.games_v2.zzat)
.class final Lcom/google/android/gms/internal/games_v2/zzat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/games_v2/zzat;


# instance fields
.field private zzb:Z

.field private zzc:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzat;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzat;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzat;->zza:Lcom/google/android/gms/internal/games_v2/zzat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/app/Activity;)Z
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/games_v2/zzat;->zzc:Z

    if-nez v0, :cond_57

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    .line 2
    :try_start_b
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v3

    .line 3
    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_13} :catch_15

    if-nez v0, :cond_17

    :catch_15
    move-object v0, v2

    goto :goto_19

    .line 4
    :cond_17
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :goto_19
    const/4 v3, 0x0

    if-nez v0, :cond_1d

    goto :goto_51

    .line 3
    :cond_1d
    const-string v4, "com.epicgames.unreal.GameActivity.EngineVersion"

    .line 5
    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "5."

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_51

    :cond_2e
    new-instance v0, Landroid/content/ComponentName;

    .line 7
    const-string v4, "com.epicgames.unreal.GameActivity"

    invoke-direct {v0, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    :try_start_35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_3d} :catch_3d

    :catch_3d
    if-nez v2, :cond_40

    goto :goto_51

    .line 9
    :cond_40
    iget-object p1, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez p1, :cond_45

    goto :goto_51

    :cond_45
    const-string v0, "android.app.lib_name"

    .line 10
    invoke-virtual {p1, v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unreal"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 3
    :goto_51
    iput-boolean v3, p0, Lcom/google/android/gms/internal/games_v2/zzat;->zzb:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/games_v2/zzat;->zzc:Z

    return v3

    .line 4
    :cond_57
    iget-boolean p1, p0, Lcom/google/android/gms/internal/games_v2/zzat;->zzb:Z

    return p1
.end method
