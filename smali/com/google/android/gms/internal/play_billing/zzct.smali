###### Class com.google.android.gms.internal.play_billing.zzct (com.google.android.gms.internal.play_billing.zzct)
.class final Lcom/google/android/gms/internal/play_billing/zzct;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zza:Ljava/util/concurrent/Future;

.field final zzb:Lcom/google/android/gms/internal/play_billing/zzcs;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/play_billing/zzcs;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzct;->zza:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzct;->zzb:Lcom/google/android/gms/internal/play_billing/zzcs;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzct;->zza:Ljava/util/concurrent/Future;

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzdf;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzdf;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzdg;->zza(Lcom/google/android/gms/internal/play_billing/zzdf;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_16

    .line 7
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzct;->zzb:Lcom/google/android/gms/internal/play_billing/zzcs;

    .line 12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcs;->zza(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_16
    :goto_16
    :try_start_16
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1
    :try_end_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_1a} :catch_2d
    .catchall {:try_start_16 .. :try_end_1a} :catchall_2b

    if-eqz v1, :cond_43

    const/4 v1, 0x0

    .line 4
    :goto_1d
    :try_start_1d
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_21} :catch_41
    .catchall {:try_start_1d .. :try_end_21} :catchall_35

    if-eqz v1, :cond_2f

    .line 5
    :try_start_23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_23 .. :try_end_2a} :catch_2d
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v0

    goto :goto_53

    :catch_2d
    move-exception v0

    goto :goto_59

    :cond_2f
    :goto_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzct;->zzb:Lcom/google/android/gms/internal/play_billing/zzcs;

    .line 7
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzcs;->zzb(Ljava/lang/Object;)V

    return-void

    :catchall_35
    move-exception v0

    if-nez v1, :cond_39

    goto :goto_40

    .line 5
    :cond_39
    :try_start_39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 6
    :goto_40
    throw v0

    :catch_41
    const/4 v1, 0x1

    goto :goto_1d

    .line 10
    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Future was expected to be done: %s"

    .line 8
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzbj;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_53
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_39 .. :try_end_53} :catch_2d
    .catchall {:try_start_39 .. :try_end_53} :catchall_2b

    .line 11
    :goto_53
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzct;->zzb:Lcom/google/android/gms/internal/play_billing/zzcs;

    .line 10
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzcs;->zza(Ljava/lang/Throwable;)V

    return-void

    .line 12
    :goto_59
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzct;->zzb:Lcom/google/android/gms/internal/play_billing/zzcs;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzcs;->zza(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzbe;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzct;->zzb:Lcom/google/android/gms/internal/play_billing/zzcs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzbc;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbc;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
