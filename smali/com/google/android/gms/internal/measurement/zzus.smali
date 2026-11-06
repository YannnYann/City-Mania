###### Class com.google.android.gms.internal.measurement.zzus (com.google.android.gms.internal.measurement.zzus)
.class final Lcom/google/android/gms/internal/measurement/zzus;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzth;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzut;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzut;[B)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzus;->zza:Lcom/google/android/gms/internal/measurement/zzut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzus;->zza:Lcom/google/android/gms/internal/measurement/zzut;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzg()Lcom/google/android/gms/internal/measurement/zzvm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzvm;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzur;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzur;-><init>(Lcom/google/android/gms/internal/measurement/zzus;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)V

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 4
    invoke-static {v0, p1, p2}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzuy;->zza(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zzur (com.google.android.gms.internal.measurement.zzur)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzur;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzus;

.field private final synthetic zzb:Lcom/google/common/util/concurrent/AsyncFunction;

.field private final synthetic zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzus;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zza:Lcom/google/android/gms/internal/measurement/zzus;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzb:Lcom/google/common/util/concurrent/AsyncFunction;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    check-cast p1, Ljava/lang/Void;

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zza:Lcom/google/android/gms/internal/measurement/zzus;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzus;->zza:Lcom/google/android/gms/internal/measurement/zzut;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzut;->zzf()Lcom/google/android/gms/internal/measurement/zzuv;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzb:Lcom/google/common/util/concurrent/AsyncFunction;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzur;->zzc:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzuv;->zzb(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/measurement/zzuu;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
