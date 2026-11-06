###### Class com.google.android.gms.games.internal.v2.appshortcuts.zze (com.google.android.gms.games.internal.v2.appshortcuts.zze)
.class public final Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;
.super Lcom/google/android/gms/games/internal/v2/appshortcuts/zzf;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# instance fields
.field public final zza:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzf;-><init>([B)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zza:Landroid/content/Context;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/games_v2/zzgq;Lcom/google/android/gms/internal/games_v2/zzgq;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;
    .registers 4

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;

    return-object p0

    .line 3
    :cond_d
    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zze(Lcom/google/android/gms/internal/games_v2/zzgq;Lcom/google/android/gms/internal/games_v2/zzgq;)Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;

    move-result-object p0

    return-object p0
.end method

.method public static zze(Lcom/google/android/gms/internal/games_v2/zzgq;Lcom/google/android/gms/internal/games_v2/zzgq;)Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zzf(Lcom/google/android/gms/internal/games_v2/zzgq;)Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgq;->zzg()Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zzf(Lcom/google/android/gms/internal/games_v2/zzgq;)Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgq;->zzg()Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;

    .line 6
    invoke-direct {v2, p0, v0, p1, v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public static zzf(Lcom/google/android/gms/internal/games_v2/zzgq;)Lcom/google/android/gms/internal/games_v2/zzgq;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzgn;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1e

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1
    check-cast v3, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;->zza()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/games_v2/zzgn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzgn;

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4
    :cond_1e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgn;->zzc()Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object p0

    return-object p0
.end method

.method public static zzg(Ljava/util/List;)Lcom/google/android/gms/internal/games_v2/zzgq;
    .registers 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzgn;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze$$ExternalSyntheticApiModelOutline4;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/pm/ShortcutInfo;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze$$ExternalSyntheticApiModelOutline6;->m(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PLAY_GAMES_SERVICES_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze$$ExternalSyntheticApiModelOutline6;->m(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze$$ExternalSyntheticApiModelOutline7;->m(Landroid/content/pm/ShortcutInfo;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze$$ExternalSyntheticApiModelOutline8;->m(Landroid/content/pm/ShortcutInfo;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze$$ExternalSyntheticApiModelOutline9;->m(Landroid/content/pm/ShortcutInfo;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 8
    new-instance v5, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;

    .line 9
    invoke-direct {v5, v2, v3, v4, v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;-><init>(Ljava/lang/String;Landroid/os/PersistableBundle;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 10
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/games_v2/zzgn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzgn;

    goto :goto_9

    .line 11
    :cond_4a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgn;->zzc()Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgb;->zza()Lcom/google/android/gms/internal/games_v2/zzfz;

    new-instance v0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzd;-><init>(Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;)V

    new-instance v1, Ljava/lang/Thread;

    const-string v2, "initialize-shortcuts"

    .line 2
    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final synthetic zzb()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zza:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v1

    if-nez v1, :cond_11

    return-void

    :cond_11
    const-class v2, Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzt;->zza(Landroid/content/Context;Ljava/lang/Class;)Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;

    move-result-object v2

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze$$ExternalSyntheticApiModelOutline2;->m(Landroid/content/pm/ShortcutManager;)Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-static {v3}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zzg(Ljava/util/List;)Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object v3

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze$$ExternalSyntheticApiModelOutline3;->m(Landroid/content/pm/ShortcutManager;)Ljava/util/List;

    move-result-object v4

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zzg(Ljava/util/List;)Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object v4

    if-eqz v2, :cond_6d

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;->zza()I

    move-result v5

    if-gtz v5, :cond_30

    goto :goto_6d

    .line 9
    :cond_30
    new-instance v5, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;

    invoke-direct {v5, v0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/16 v6, 0x1a58

    .line 11
    invoke-virtual {v0, v6}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/games/zzd;->zzg:Lcom/google/android/gms/common/Feature;

    filled-new-array {v6}, [Lcom/google/android/gms/common/Feature;

    move-result-object v6

    .line 12
    invoke-virtual {v0, v6}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/4 v6, 0x0

    .line 13
    invoke-virtual {v0, v6}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 14
    new-instance v6, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;

    invoke-direct {v6, v5, v2, v3, v4}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;-><init>(Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;Ljava/util/List;Ljava/util/List;)V

    .line 15
    invoke-virtual {v0, v6}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    .line 17
    invoke-virtual {v5, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzhg;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 18
    new-instance v5, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzc;

    invoke-direct {v5, v3, v4}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzc;-><init>(Lcom/google/android/gms/internal/games_v2/zzgq;Lcom/google/android/gms/internal/games_v2/zzgq;)V

    .line 19
    invoke-virtual {v0, v2, v5}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_75

    .line 7
    :cond_6d
    :goto_6d
    invoke-static {v3, v4}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zze(Lcom/google/android/gms/internal/games_v2/zzgq;Lcom/google/android/gms/internal/games_v2/zzgq;)Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_75
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzhg;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 20
    new-instance v3, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzb;

    invoke-direct {v3, v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzb;-><init>(Landroid/content/pm/ShortcutManager;)V

    .line 21
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

###### Class com.google.android.gms.games.internal.v2.appshortcuts.zzb (com.google.android.gms.games.internal.v2.appshortcuts.zzb)
.class public final synthetic Lcom/google/android/gms/games/internal/v2/appshortcuts/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic zza:Landroid/content/pm/ShortcutManager;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ShortcutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzb;->zza:Landroid/content/pm/ShortcutManager;

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zza()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzb;->zza:Landroid/content/pm/ShortcutManager;

    if-eqz v0, :cond_13

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzb$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V

    .line 4
    :cond_13
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zzb()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzb$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/pm/ShortcutManager;Ljava/util/List;)Z

    .line 7
    :cond_22
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zzc()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31

    .line 9
    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzb$$ExternalSyntheticApiModelOutline2;->m(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V

    .line 10
    :cond_31
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zzd()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 12
    invoke-static {v1, p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzb$$ExternalSyntheticApiModelOutline3;->m(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V

    :cond_40
    return-void
.end method

###### Class com.google.android.gms.games.internal.v2.appshortcuts.zzc (com.google.android.gms.games.internal.v2.appshortcuts.zzc)
.class public final synthetic Lcom/google/android/gms/games/internal/v2/appshortcuts/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzgq;

.field public final synthetic zzb:Lcom/google/android/gms/internal/games_v2/zzgq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzgq;Lcom/google/android/gms/internal/games_v2/zzgq;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzc;->zza:Lcom/google/android/gms/internal/games_v2/zzgq;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzc;->zzb:Lcom/google/android/gms/internal/games_v2/zzgq;

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzc;->zza:Lcom/google/android/gms/internal/games_v2/zzgq;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzc;->zzb:Lcom/google/android/gms/internal/games_v2/zzgq;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zzc(Lcom/google/android/gms/internal/games_v2/zzgq;Lcom/google/android/gms/internal/games_v2/zzgq;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.games.internal.v2.appshortcuts.zzd (com.google.android.gms.games.internal.v2.appshortcuts.zzd)
.class public final synthetic Lcom/google/android/gms/games/internal/v2/appshortcuts/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzd;->zza:Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzd;->zza:Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zzb()V

    return-void
.end method

###### Class com.google.android.gms.games.internal.v2.appshortcuts.zzp (com.google.android.gms.games.internal.v2.appshortcuts.zzp)
.class public final synthetic Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;

.field public final synthetic zzb:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;

.field public final synthetic zzc:Ljava/util/List;

.field public final synthetic zzd:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;Ljava/util/List;Ljava/util/List;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;->zza:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;->zzb:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;->zzc:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;->zzd:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzu;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzv;

    new-instance v0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzl;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;->zza:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzl;-><init>(Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;->zzb:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;->zzc:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;->zzd:Ljava/util/List;

    .line 2
    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzv;->zzd(Lcom/google/android/gms/games/internal/v2/appshortcuts/zzx;Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
