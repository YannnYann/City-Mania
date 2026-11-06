###### Class com.google.android.gms.internal.play_billing.zzde (com.google.android.gms.internal.play_billing.zzde)
.class final Lcom/google/android/gms/internal/play_billing/zzde;
.super Lcom/google/android/gms/internal/play_billing/zzcq;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field private zzd:Lcom/google/android/gms/internal/play_billing/zzcz;

.field private zze:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/play_billing/zzcz;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zzd:Lcom/google/android/gms/internal/play_billing/zzcz;

    return-void
.end method

.method public static bridge synthetic zzr(Lcom/google/android/gms/internal/play_billing/zzde;)Lcom/google/android/gms/internal/play_billing/zzcz;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zzd:Lcom/google/android/gms/internal/play_billing/zzcz;

    return-object p0
.end method

.method public static zzs(Lcom/google/android/gms/internal/play_billing/zzcz;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/play_billing/zzcz;
    .registers 7

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzde;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzde;-><init>(Lcom/google/android/gms/internal/play_billing/zzcz;)V

    new-instance p2, Lcom/google/android/gms/internal/play_billing/zzdb;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzdb;-><init>(Lcom/google/android/gms/internal/play_billing/zzde;)V

    const-wide/16 v0, 0x6f54

    .line 2
    invoke-interface {p4, p2, v0, v1, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p3

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/zzde;->zze:Ljava/util/concurrent/ScheduledFuture;

    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzcp;->zza:Lcom/google/android/gms/internal/play_billing/zzcp;

    .line 3
    invoke-interface {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzcz;->zzb(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public static bridge synthetic zzt(Lcom/google/android/gms/internal/play_billing/zzde;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zze:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static bridge synthetic zzu(Lcom/google/android/gms/internal/play_billing/zzde;Ljava/util/concurrent/ScheduledFuture;)V
    .registers 2

    .line 0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zze:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final zzd()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zzd:Lcom/google/android/gms/internal/play_billing/zzcz;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zze:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inputFuture=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_47

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_47

    new-instance v3, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", remaining delay=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_47
    return-object v0

    :cond_48
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzg()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zzd:Lcom/google/android/gms/internal/play_billing/zzcz;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    move v4, v2

    goto :goto_d

    :cond_c
    move v4, v3

    :goto_d
    and-int/2addr v1, v4

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    instance-of v4, v1, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    if-eqz v4, :cond_1d

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/play_billing/zzcj$zza;->zzc:Z

    if-eqz v1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v2, v3

    .line 2
    :goto_1e
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zze:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_28

    .line 3
    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zzd:Lcom/google/android/gms/internal/play_billing/zzcz;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zze:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
