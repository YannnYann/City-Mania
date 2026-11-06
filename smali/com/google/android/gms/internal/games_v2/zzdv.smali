###### Class com.google.android.gms.internal.games_v2.zzdv (com.google.android.gms.internal.games_v2.zzdv)
.class final synthetic Lcom/google/android/gms/internal/games_v2/zzdv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzap;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:I

.field private final synthetic zzc:I

.field private final synthetic zzd:I

.field private final synthetic zze:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IIIZ)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdv;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzdv;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/games_v2/zzdv;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/games_v2/zzdv;->zzd:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/games_v2/zzdv;->zze:Z

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;
    .registers 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzdk;

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzdv;->zza:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/games_v2/zzdv;->zzb:I

    iget v4, p0, Lcom/google/android/gms/internal/games_v2/zzdv;->zzc:I

    iget v5, p0, Lcom/google/android/gms/internal/games_v2/zzdv;->zzd:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/games_v2/zzdv;->zze:Z

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/games_v2/zzdk;-><init>(Ljava/lang/String;IIIZ)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/16 v1, 0x1a31

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.games_v2.zzdk (com.google.android.gms.internal.games_v2.zzdk)
.class final synthetic Lcom/google/android/gms/internal/games_v2/zzdk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:I

.field private final synthetic zzc:I

.field private final synthetic zzd:I

.field private final synthetic zze:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IIIZ)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdk;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzdk;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/games_v2/zzdk;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/games_v2/zzdk;->zzd:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/games_v2/zzdk;->zze:Z

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzai;

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzdk;->zza:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/games_v2/zzdk;->zzb:I

    iget v4, p0, Lcom/google/android/gms/internal/games_v2/zzdk;->zzc:I

    iget v5, p0, Lcom/google/android/gms/internal/games_v2/zzdk;->zzd:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/games_v2/zzdk;->zze:Z

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/zzai;->zzz(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;IIIZ)V

    return-void
.end method
