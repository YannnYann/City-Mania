###### Class com.google.android.gms.tasks.zzg (com.google.android.gms.tasks.zzg)
.class final Lcom/google/android/gms/tasks/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/zzh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzh;)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzg;->zza:Lcom/google/android/gms/tasks/zzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzg;->zza:Lcom/google/android/gms/tasks/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzh;->zzc()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzh;->zzd()Lcom/google/android/gms/tasks/OnCanceledListener;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzh;->zzd()Lcom/google/android/gms/tasks/OnCanceledListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tasks/OnCanceledListener;->onCanceled()V

    goto :goto_17

    :catchall_15
    move-exception v0

    goto :goto_19

    .line 2
    :cond_17
    :goto_17
    monitor-exit v1

    return-void

    :goto_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_15

    throw v0
.end method
