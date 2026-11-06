###### Class com.google.android.gms.internal.games_v2.zzfc (com.google.android.gms.internal.games_v2.zzfc)
.class public final Lcom/google/android/gms/internal/games_v2/zzfc;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/games/RecallClient;


# static fields
.field private static final zza:Lcom/google/android/gms/common/api/Api$ClientKey;

.field private static final zzb:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field private static final zzc:Lcom/google/android/gms/common/api/Api;


# instance fields
.field private final zzd:Lcom/google/android/gms/internal/games_v2/zzaw;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzfc;->zza:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzey;

    invoke-direct {v1}, Lcom/google/android/gms/internal/games_v2/zzey;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/games_v2/zzfc;->zzb:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 3
    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "Recall.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/internal/games_v2/zzfc;->zzc:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/games_v2/zzaw;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzfc;->zzc:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/Api$ApiOptions;->NO_OPTIONS:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    sget-object v2, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzfc;->zzd:Lcom/google/android/gms/internal/games_v2/zzaw;

    return-void
.end method


# virtual methods
.method public final requestRecallAccess()Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/RecallAccess;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/16 v1, 0x1a56

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/zzd;->zze:Lcom/google/android/gms/common/Feature;

    filled-new-array {v1}, [Lcom/google/android/gms/common/Feature;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzfb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/games_v2/zzfb;-><init>(Lcom/google/android/gms/internal/games_v2/zzfc;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzfc;->zzd:Lcom/google/android/gms/internal/games_v2/zzaw;

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/games_v2/zzaw;->zzd()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzfa;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/games_v2/zzfa;-><init>(Lcom/google/android/gms/internal/games_v2/zzfc;Lcom/google/android/gms/common/api/internal/TaskApiCall;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.games_v2.zzfa (com.google.android.gms.internal.games_v2.zzfa)
.class final synthetic Lcom/google/android/gms/internal/games_v2/zzfa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzfc;

.field private final synthetic zzb:Lcom/google/android/gms/common/api/internal/TaskApiCall;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzfc;Lcom/google/android/gms/common/api/internal/TaskApiCall;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzfa;->zza:Lcom/google/android/gms/internal/games_v2/zzfc;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzfa;->zzb:Lcom/google/android/gms/common/api/internal/TaskApiCall;

    return-void
.end method


# virtual methods
.method public final synthetic then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    check-cast p1, Lcom/google/android/gms/games/AuthenticationResult;

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzfa;->zza:Lcom/google/android/gms/internal/games_v2/zzfc;

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzfa;->zzb:Lcom/google/android/gms/common/api/internal/TaskApiCall;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.games_v2.zzfb (com.google.android.gms.internal.games_v2.zzfb)
.class final synthetic Lcom/google/android/gms/internal/games_v2/zzfb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzfc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzfc;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzfb;->zza:Lcom/google/android/gms/internal/games_v2/zzfc;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/games_v2/zzfx;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/games_v2/zzal;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzez;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzfb;->zza:Lcom/google/android/gms/internal/games_v2/zzfc;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/games_v2/zzez;-><init>(Lcom/google/android/gms/internal/games_v2/zzfc;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const-string p2, "unusedServerClientId"

    .line 2
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/games_v2/zzal;->zzd(Lcom/google/android/gms/internal/games_v2/zzai;Ljava/lang/String;)V

    return-void
.end method
