###### Class com.google.android.gms.internal.play_billing.zzdb (com.google.android.gms.internal.play_billing.zzdb)
.class final Lcom/google/android/gms/internal/play_billing/zzdb;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field zza:Lcom/google/android/gms/internal/play_billing/zzde;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzde;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdb;->zza:Lcom/google/android/gms/internal/play_billing/zzde;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdb;->zza:Lcom/google/android/gms/internal/play_billing/zzde;

    if-nez v0, :cond_6

    goto/16 :goto_84

    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzde;->zzr(Lcom/google/android/gms/internal/play_billing/zzde;)Lcom/google/android/gms/internal/play_billing/zzcz;

    move-result-object v1

    if-eqz v1, :cond_84

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzdb;->zza:Lcom/google/android/gms/internal/play_billing/zzde;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzj(Lcom/google/android/gms/internal/play_billing/zzcz;)Z

    return-void

    :cond_19
    const/4 v3, 0x1

    :try_start_1a
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzde;->zzt(Lcom/google/android/gms/internal/play_billing/zzde;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    .line 3
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzde;->zzu(Lcom/google/android/gms/internal/play_billing/zzde;Ljava/util/concurrent/ScheduledFuture;)V

    const-string v5, "Timed out"
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_75

    if-eqz v4, :cond_51

    :try_start_25
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-interface {v4, v6}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0xa

    cmp-long v4, v6, v8

    if-lez v4, :cond_51

    new-instance v4, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (timeout delayed by "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms after scheduled time)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_51

    :catchall_4f
    move-exception v4

    goto :goto_77

    .line 6
    :cond_51
    :goto_51
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_69
    .catchall {:try_start_25 .. :try_end_69} :catchall_4f

    .line 7
    :try_start_69
    new-instance v5, Lcom/google/android/gms/internal/play_billing/zzdc;

    invoke-direct {v5, v4, v2}, Lcom/google/android/gms/internal/play_billing/zzdc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzdd;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzi(Ljava/lang/Throwable;)Z
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_75

    .line 9
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :catchall_75
    move-exception v0

    goto :goto_80

    .line 7
    :goto_77
    :try_start_77
    new-instance v6, Lcom/google/android/gms/internal/play_billing/zzdc;

    invoke-direct {v6, v5, v2}, Lcom/google/android/gms/internal/play_billing/zzdc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzdd;)V

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzi(Ljava/lang/Throwable;)Z

    .line 8
    throw v4
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_75

    .line 9
    :goto_80
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 10
    throw v0

    :cond_84
    :goto_84
    return-void
.end method
