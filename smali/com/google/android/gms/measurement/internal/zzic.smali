###### Class com.google.android.gms.measurement.internal.zzic (com.google.android.gms.measurement.internal.zzic)
.class public final Lcom/google/android/gms/measurement/internal/zzic;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzjg;


# static fields
.field public static volatile zzc:Lcom/google/android/gms/measurement/internal/zzic;


# instance fields
.field public zzA:J

.field public volatile zzB:Ljava/lang/Boolean;

.field public volatile zzC:Z

.field public zzD:I

.field public zzE:I

.field public final zzF:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final zza:J

.field public final zzb:J

.field public final zzd:Landroid/content/Context;

.field public final zze:Z

.field public final zzf:Lcom/google/android/gms/measurement/internal/zzae;

.field public final zzg:Lcom/google/android/gms/measurement/internal/zzal;

.field public final zzh:Lcom/google/android/gms/measurement/internal/zzhh;

.field public final zzi:Lcom/google/android/gms/measurement/internal/zzgu;

.field public final zzj:Lcom/google/android/gms/measurement/internal/zzhz;

.field public final zzk:Lcom/google/android/gms/measurement/internal/zzoc;

.field public final zzl:Lcom/google/android/gms/measurement/internal/zzpp;

.field public final zzm:Lcom/google/android/gms/measurement/internal/zzgn;

.field public final zzn:Lcom/google/android/gms/common/util/Clock;

.field public final zzo:Lcom/google/android/gms/measurement/internal/zzmb;

.field public final zzp:Lcom/google/android/gms/measurement/internal/zzlj;

.field public final zzq:Lcom/google/android/gms/measurement/internal/zzd;

.field public final zzr:Lcom/google/android/gms/measurement/internal/zzlo;

.field public final zzs:Ljava/lang/String;

.field public zzt:Lcom/google/android/gms/measurement/internal/zzgl;

.field public zzu:Lcom/google/android/gms/measurement/internal/zznl;

.field public zzv:Lcom/google/android/gms/measurement/internal/zzbb;

.field public zzw:Lcom/google/android/gms/measurement/internal/zzgi;

.field public zzx:Lcom/google/android/gms/measurement/internal/zzlq;

.field public zzy:Z

.field public zzz:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjs;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzy:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzF:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzjs;->zza:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzae;

    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzf:Lcom/google/android/gms/measurement/internal/zzae;

    sput-object v2, Lcom/google/android/gms/measurement/internal/zzfr;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzd:Landroid/content/Context;

    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzjs;->zze:Z

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zze:Z

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzjs;->zzb:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzB:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzjs;->zzh:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzs:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzC:Z

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlw;->zza(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzn:Lcom/google/android/gms/common/util/Clock;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v4

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/String;

    const-string v7, "com.google.android.gms.measurement#"

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 7
    invoke-virtual {v4, v5, v0, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkk;->zza(Ljava/lang/String;I[Ljava/lang/String;[B)Lcom/google/android/gms/tasks/Task;

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(Landroid/content/Context;)V

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzjs;->zzf:Ljava/lang/Long;

    if-eqz v4, :cond_59

    .line 9
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_5d

    .line 10
    :cond_59
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 9
    :goto_5d
    iput-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzic;->zza:J

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzjs;->zzg:Ljava/lang/Long;

    if-eqz v4, :cond_68

    .line 11
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_6c

    .line 12
    :cond_68
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    .line 11
    :goto_6c
    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzb:J

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzal;

    .line 13
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzg:Lcom/google/android/gms/measurement/internal/zzal;

    .line 14
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzhh;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzhh;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zzx()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzh:Lcom/google/android/gms/measurement/internal/zzhh;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzgu;

    .line 16
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzgu;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zzx()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 18
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzpp;

    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/zzpp;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjf;->zzx()V

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzl:Lcom/google/android/gms/measurement/internal/zzpp;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzjr;

    .line 20
    invoke-direct {v4, p1, p0}, Lcom/google/android/gms/measurement/internal/zzjr;-><init>(Lcom/google/android/gms/measurement/internal/zzjs;Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 21
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgn;

    invoke-direct {v5, v4}, Lcom/google/android/gms/measurement/internal/zzgn;-><init>(Lcom/google/android/gms/measurement/internal/zzgm;)V

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzm:Lcom/google/android/gms/measurement/internal/zzgn;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzd;

    .line 22
    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/zzd;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzq:Lcom/google/android/gms/measurement/internal/zzd;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzmb;

    .line 23
    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/zzmb;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()V

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzo:Lcom/google/android/gms/measurement/internal/zzmb;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzlj;

    .line 25
    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/zzlj;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()V

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzp:Lcom/google/android/gms/measurement/internal/zzlj;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzoc;

    .line 27
    invoke-direct {v5, p0}, Lcom/google/android/gms/measurement/internal/zzoc;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 28
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()V

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzk:Lcom/google/android/gms/measurement/internal/zzoc;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzlo;

    .line 29
    invoke-direct {v5, p0}, Lcom/google/android/gms/measurement/internal/zzlo;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 30
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjf;->zzx()V

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzr:Lcom/google/android/gms/measurement/internal/zzlo;

    .line 31
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-direct {v5, p0}, Lcom/google/android/gms/measurement/internal/zzhz;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjf;->zzx()V

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzj:Lcom/google/android/gms/measurement/internal/zzhz;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzjs;->zzd:Lcom/google/android/gms/internal/measurement/zzdb;

    if-eqz v6, :cond_e5

    iget-wide v6, v6, Lcom/google/android/gms/internal/measurement/zzdb;->zzb:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_e5

    goto :goto_e6

    :cond_e5
    move v0, v2

    .line 33
    :goto_e6
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_12f

    .line 36
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzic;->zzd:Landroid/content/Context;

    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_13b

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzic;->zzd:Landroid/content/Context;

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzlj;->zza:Lcom/google/android/gms/measurement/internal/zzky;

    if-nez v2, :cond_112

    .line 39
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzky;

    invoke-direct {v2, v4}, Lcom/google/android/gms/measurement/internal/zzky;-><init>(Lcom/google/android/gms/measurement/internal/zzlj;)V

    iput-object v2, v4, Lcom/google/android/gms/measurement/internal/zzlj;->zza:Lcom/google/android/gms/measurement/internal/zzky;

    :cond_112
    if-eqz v0, :cond_13b

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzlj;->zza:Lcom/google/android/gms/measurement/internal/zzky;

    .line 40
    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzlj;->zza:Lcom/google/android/gms/measurement/internal/zzky;

    .line 41
    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto :goto_13b

    .line 34
    :cond_12f
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 35
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 43
    :cond_13b
    :goto_13b
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzia;

    .line 44
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzia;-><init>(Lcom/google/android/gms/measurement/internal/zzic;Lcom/google/android/gms/measurement/internal/zzjs;)V

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzhz;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final zzL()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final zzM(Lcom/google/android/gms/measurement/internal/zzf;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 1
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final zzN(Lcom/google/android/gms/measurement/internal/zzje;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 1
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final zzO(Lcom/google/android/gms/measurement/internal/zzg;)V
    .registers 3

    if-eqz p0, :cond_1d

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V
    .registers 3

    if-eqz p0, :cond_1d

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjf;->zzv()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzy(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/Long;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzic;
    .registers 12

    if-eqz p1, :cond_11

    .line 1
    iget-object v6, p1, Lcom/google/android/gms/internal/measurement/zzdb;->zzd:Landroid/os/Bundle;

    iget-boolean v5, p1, Lcom/google/android/gms/internal/measurement/zzdb;->zzc:Z

    iget-wide v3, p1, Lcom/google/android/gms/internal/measurement/zzdb;->zzb:J

    iget-wide v1, p1, Lcom/google/android/gms/internal/measurement/zzdb;->zza:J

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdb;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzdb;-><init>(JJZLandroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v0

    .line 2
    :cond_11
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzic;->zzc:Lcom/google/android/gms/measurement/internal/zzic;

    if-nez v0, :cond_3a

    const-class v1, Lcom/google/android/gms/measurement/internal/zzic;

    monitor-enter v1

    :try_start_22
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzic;->zzc:Lcom/google/android/gms/measurement/internal/zzic;

    if-nez v0, :cond_36

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjs;

    .line 4
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzjs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdb;Ljava/lang/Long;Ljava/lang/Long;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/zzic;

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzic;-><init>(Lcom/google/android/gms/measurement/internal/zzjs;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/zzic;->zzc:Lcom/google/android/gms/measurement/internal/zzic;

    goto :goto_36

    :catchall_33
    move-exception v0

    move-object p0, v0

    goto :goto_38

    .line 6
    :cond_36
    :goto_36
    monitor-exit v1

    goto :goto_5b

    :goto_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_33

    throw p0

    :cond_3a
    if-eqz p1, :cond_5b

    .line 11
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzdb;->zzd:Landroid/os/Bundle;

    if-eqz p0, :cond_5b

    const-string p1, "dataCollectionDefaultEnabled"

    .line 7
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5b

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzic;->zzc:Lcom/google/android/gms/measurement/internal/zzic;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzic;->zzc:Lcom/google/android/gms/measurement/internal/zzic;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 9
    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 10
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gms/measurement/internal/zzic;->zzB:Ljava/lang/Boolean;

    .line 6
    :cond_5b
    :goto_5b
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzic;->zzc:Lcom/google/android/gms/measurement/internal/zzic;

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzic;->zzc:Lcom/google/android/gms/measurement/internal/zzic;

    return-object p0
.end method


# virtual methods
.method public final zzA()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzB:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzB:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final zzB()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzC()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzC()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzj:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzg:Lcom/google/android/gms/measurement/internal/zzal;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzt()Z

    move-result v2

    if-nez v2, :cond_57

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzC:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzh:Lcom/google/android/gms/measurement/internal/zzhh;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhh;->zzi()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    return v2

    :cond_2d
    const/4 v0, 0x3

    return v0

    :cond_2f
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->zzf:Lcom/google/android/gms/measurement/internal/zzae;

    const-string v0, "firebase_analytics_collection_enabled"

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzr(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_42

    return v2

    :cond_42
    const/4 v0, 0x4

    return v0

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzB:Ljava/lang/Boolean;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzB:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_51

    return v2

    :cond_51
    const/4 v0, 0x7

    return v0

    :cond_53
    return v2

    :cond_54
    const/16 v0, 0x8

    return v0

    :cond_57
    const/4 v0, 0x1

    return v0
.end method

.method public final zzD(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzj:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzC:Z

    return-void
.end method

.method public final zzE()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzj:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzC:Z

    return v0
.end method

.method public final zzF()V
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzD:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzD:I

    return-void
.end method

.method public final zzG()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzF:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final zzH()Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzy:Z

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzj:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzz:Ljava/lang/Boolean;

    if-eqz v0, :cond_31

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzA:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_31

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_95

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzn:Lcom/google/android/gms/common/util/Clock;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzA:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_95

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzn:Lcom/google/android/gms/common/util/Clock;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzA:J

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzl:Lcom/google/android/gms/measurement/internal/zzpp;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    const-string v1, "android.permission.INTERNET"

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzab(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_74

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzab(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzd:Landroid/content/Context;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_73

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzg:Lcom/google/android/gms/measurement/internal/zzal;

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzE()Z

    move-result v3

    if-nez v3, :cond_73

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzax(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 13
    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzpp;->zzS(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_74

    :cond_73
    move v2, v4

    .line 7
    :cond_74
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzz:Ljava/lang/Boolean;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzC(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzz:Ljava/lang/Boolean;

    :cond_95
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzz:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_9c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzI()Z
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzj:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzr:Lcom/google/android/gms/measurement/internal/zzlo;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzj()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzg:Lcom/google/android/gms/measurement/internal/zzal;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_1b5

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzh:Lcom/google/android/gms/measurement/internal/zzhh;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 8
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzhh;->zzb(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 9
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1a6

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    goto/16 :goto_1a6

    .line 12
    :cond_40
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjf;->zzw()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->zzd:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_5a

    .line 15
    :try_start_55
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_59
    .catch Ljava/lang/SecurityException; {:try_start_55 .. :try_end_59} :catch_5a

    goto :goto_5b

    :catch_5a
    :cond_5a
    move-object v0, v2

    :goto_5b
    if-eqz v0, :cond_197

    .line 16
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_197

    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzt()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()V

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznl;->zzK()Z

    move-result v5

    if-nez v5, :cond_79

    goto :goto_89

    .line 58
    :cond_79
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzic;->zzl:Lcom/google/android/gms/measurement/internal/zzpp;

    .line 24
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpp;->zzak()I

    move-result v3

    const v5, 0x392d8

    if-lt v3, v5, :cond_13f

    .line 23
    :goto_89
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzp:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 28
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzt()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznl;->zzz()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v3

    if-eqz v3, :cond_9f

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzao;->zza:Landroid/os/Bundle;

    :cond_9f
    const/4 v3, 0x1

    if-nez v2, :cond_df

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzE:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzE:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_ad

    move v10, v3

    :cond_ad
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 30
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x45

    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to retrieve DMA consent from the service, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v0, v1, :cond_c7

    const-string v0, "Retrying."

    goto :goto_c9

    .line 34
    :cond_c7
    const-string v0, "Skipping."

    .line 32
    :goto_c9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " retryCount"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzE:I

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 34
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return v10

    :cond_df
    const/16 v5, 0x64

    .line 35
    invoke-static {v2, v5}, Lcom/google/android/gms/measurement/internal/zzjl;->zze(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v6

    const-string v7, "&gcs="

    .line 36
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjl;->zzk()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {v2, v5}, Lcom/google/android/gms/measurement/internal/zzba;->zzh(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v5

    const-string v6, "&dma="

    .line 38
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzba;->zzj()Ljava/lang/Boolean;

    move-result-object v6

    .line 39
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzba;->zzk()Ljava/lang/String;

    move-result-object v6

    .line 40
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11e

    const-string v6, "&dma_cps="

    .line 41
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzba;->zzk()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_11e
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzba;->zzi(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    const-string v3, "&npa="

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 44
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Consent query parameters to Bow"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13f
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzl:Lcom/google/android/gms/measurement/internal/zzpp;

    .line 46
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzic;->zzg:Lcom/google/android/gms/measurement/internal/zzal;

    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzi()J

    .line 47
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzh:Lcom/google/android/gms/measurement/internal/zzhh;

    .line 49
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 50
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzhh;->zzp:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zza()J

    move-result-wide v7

    const-wide/16 v11, -0x1

    add-long/2addr v7, v11

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v4

    const-wide/32 v3, 0x274e8

    .line 51
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/measurement/internal/zzpp;->zzaw(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_196

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzr:Lcom/google/android/gms/measurement/internal/zzlo;

    .line 52
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzib;

    invoke-direct {v8, p0}, Lcom/google/android/gms/measurement/internal/zzib;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zzw()V

    .line 54
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v3, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzic;->zzj:Lcom/google/android/gms/measurement/internal/zzhz;

    .line 56
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzln;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v5

    move-object v5, v0

    .line 57
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzln;-><init>(Lcom/google/android/gms/measurement/internal/zzlo;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzll;)V

    .line 58
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhz;->zzm(Ljava/lang/Runnable;)V

    :cond_196
    return v10

    .line 25
    :cond_197
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    return v10

    .line 9
    :cond_1a6
    :goto_1a6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    return v10

    .line 18
    :cond_1b5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "ADID collection is disabled from Manifest. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    return v10
.end method

.method public final synthetic zzJ(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 23

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    const-string v4, "timestamp"

    const-string v5, "gad_source"

    const-string v6, "gbraid"

    const-string v7, "gclid"

    const-string v8, "deeplink"

    const-string v9, ""

    const/16 v10, 0xc8

    if-eq v0, v10, :cond_24

    const/16 v10, 0xcc

    if-eq v0, v10, :cond_24

    const/16 v10, 0x130

    if-ne v0, v10, :cond_21

    goto :goto_25

    :cond_21
    move v10, v0

    goto/16 :goto_159

    :cond_24
    move v10, v0

    :goto_25
    if-nez v2, :cond_159

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzic;->zzh:Lcom/google/android/gms/measurement/internal/zzhh;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzhh;->zzo:Lcom/google/android/gms/measurement/internal/zzhc;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Z)V

    if-eqz v3, :cond_14a

    array-length v0, v3

    if-nez v0, :cond_39

    goto/16 :goto_14a

    .line 4
    :cond_39
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 5
    :try_start_3e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5f

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Deferred Deep Link is empty."

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    return-void

    :catch_5c
    move-exception v0

    goto/16 :goto_13b

    .line 10
    :cond_5f
    invoke-virtual {v3, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual {v3, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-virtual {v3, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v12, 0x0

    .line 13
    invoke-virtual {v3, v4, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    new-instance v3, Landroid/os/Bundle;

    .line 14
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzic;->zzl:Lcom/google/android/gms/measurement/internal/zzpp;

    .line 15
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    iget-object v15, v14, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_85

    goto/16 :goto_12c

    .line 22
    :cond_85
    iget-object v15, v15, Lcom/google/android/gms/measurement/internal/zzic;->zzd:Landroid/content/Context;

    .line 17
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-wide/from16 p2, v12

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    move-object/from16 v16, v14

    .line 18
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_12c

    .line 19
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12c

    .line 23
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b0

    .line 24
    invoke-virtual {v3, v6, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_b0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b9

    .line 26
    invoke-virtual {v3, v5, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_b9
    invoke-virtual {v3, v7, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_cis"

    const-string v5, "ddp"

    .line 28
    invoke-virtual {v3, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzic;->zzp:Lcom/google/android/gms/measurement/internal/zzlj;

    const-string v5, "auto"

    const-string v6, "_cmp"

    .line 29
    invoke-virtual {v2, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzlj;->zzE(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_d3
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_d3} :catch_5c

    if-nez v2, :cond_12b

    :try_start_d5
    const-string v2, "google.analytics.deferred.deeplink.prefs"

    .line 32
    invoke-virtual {v15, v2, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 33
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 34
    invoke-interface {v2, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    .line 36
    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0
    :try_end_ed
    .catch Ljava/lang/RuntimeException; {:try_start_d5 .. :try_end_ed} :catch_118
    .catch Lorg/json/JSONException; {:try_start_d5 .. :try_end_ed} :catch_5c

    if-eqz v0, :cond_12b

    :try_start_ef
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.google.analytics.action.DEEPLINK_ACTION"

    .line 40
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v16

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzic;->zzd:Landroid/content/Context;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-ge v3, v4, :cond_106

    .line 41
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 42
    :cond_106
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzic$$ExternalSyntheticApiModelOutline0;->m()Landroid/app/BroadcastOptions;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzic$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/BroadcastOptions;Z)Landroid/app/BroadcastOptions;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzic$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/BroadcastOptions;)Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    .line 43
    invoke-static {v2, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzic$$ExternalSyntheticApiModelOutline3;->m(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :catch_118
    move-exception v0

    move-object/from16 v2, v16

    .line 45
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 38
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Failed to persist Deferred Deep Link. exception"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12b
    return-void

    .line 16
    :cond_12c
    :goto_12c
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 20
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Deferred Deep Link validation failed. gclid, gbraid, deep link"

    .line 22
    invoke-virtual {v2, v3, v10, v11, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13a
    .catch Lorg/json/JSONException; {:try_start_ef .. :try_end_13a} :catch_5c

    return-void

    .line 49
    :goto_13b
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 44
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_14a
    :goto_14a
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Deferred Deep Link response empty."

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    return-void

    .line 43
    :cond_159
    :goto_159
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    .line 48
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 49
    const-string v4, "Network Request for Deferred Deep Link failed. response, exception"

    invoke-virtual {v0, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic zzK(Lcom/google/android/gms/measurement/internal/zzjs;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzj:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzg:Lcom/google/android/gms/measurement/internal/zzal;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzb()Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzbb;

    .line 4
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjf;->zzx()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzv:Lcom/google/android/gms/measurement/internal/zzbb;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzjs;->zzd:Lcom/google/android/gms/internal/measurement/zzdb;

    if-nez v1, :cond_1f

    const-wide/16 v2, 0x0

    :goto_1d
    move-wide v8, v2

    goto :goto_22

    .line 6
    :cond_1f
    iget-wide v2, v1, Lcom/google/android/gms/internal/measurement/zzdb;->zza:J

    goto :goto_1d

    .line 5
    :goto_22
    const-string v2, ""

    if-eqz v1, :cond_31

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzdb;->zzd:Landroid/os/Bundle;

    if-nez v1, :cond_2b

    goto :goto_31

    .line 28
    :cond_2b
    const-string v3, "runtime_google_app_id"

    .line 6
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_31
    :goto_31
    move-object v10, v2

    .line 5
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzgi;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzjs;->zzc:J

    move-object v5, p0

    .line 7
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzgi;-><init>(Lcom/google/android/gms/measurement/internal/zzic;JJLjava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()V

    iput-object v4, v5, Lcom/google/android/gms/measurement/internal/zzic;->zzw:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 9
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzgl;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzgl;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()V

    iput-object p1, v5, Lcom/google/android/gms/measurement/internal/zzic;->zzt:Lcom/google/android/gms/measurement/internal/zzgl;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zznl;

    .line 11
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zznl;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()V

    iput-object p1, v5, Lcom/google/android/gms/measurement/internal/zzic;->zzu:Lcom/google/android/gms/measurement/internal/zznl;

    iget-object p1, v5, Lcom/google/android/gms/measurement/internal/zzic;->zzl:Lcom/google/android/gms/measurement/internal/zzpp;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjf;->zzy()V

    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/zzic;->zzh:Lcom/google/android/gms/measurement/internal/zzhh;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjf;->zzy()V

    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/zzic;->zzw:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()V

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzlq;

    .line 16
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzlq;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()V

    iput-object v1, v5, Lcom/google/android/gms/measurement/internal/zzic;->zzx:Lcom/google/android/gms/measurement/internal/zzlq;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()V

    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzi()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzi()J

    const-wide/32 v6, 0x274e8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v6, "App measurement initialized, version"

    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzi()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->zzj()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzpp;->zzad(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzi()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    .line 31
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto :goto_c5

    .line 26
    :cond_b1
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzi()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 32
    :goto_c5
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    iget p1, v5, Lcom/google/android/gms/measurement/internal/zzic;->zzD:I

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/zzic;->zzF:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq p1, v2, :cond_f5

    .line 35
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    iget v1, v5, Lcom/google/android/gms/measurement/internal/zzic;->zzD:I

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f5
    const/4 p1, 0x1

    iput-boolean p1, v5, Lcom/google/android/gms/measurement/internal/zzic;->zzy:Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzdb;)V
    .registers 14

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzj:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzx()Lcom/google/android/gms/measurement/internal/zzlq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzlq;->zzj()Lcom/google/android/gms/internal/measurement/zzin;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzin;->zzb:Lcom/google/android/gms/internal/measurement/zzin;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaif;->zza()Z

    .line 5
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzfy;->zzaP:Lcom/google/android/gms/measurement/internal/zzfx;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzg:Lcom/google/android/gms/measurement/internal/zzal;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v0, :cond_24

    move p1, v5

    goto :goto_25

    :cond_24
    move p1, v4

    :goto_25
    if-eqz v1, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzl:Lcom/google/android/gms/measurement/internal/zzpp;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpp;->zzU()Z

    move-result v0

    if-nez v0, :cond_35

    :cond_32
    if-eqz p1, :cond_7e

    move p1, v5

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzl:Lcom/google/android/gms/measurement/internal/zzpp;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    new-instance v1, Landroid/content/IntentFilter;

    .line 11
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    .line 12
    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    .line 13
    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzw;

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 14
    invoke-direct {v6, v7}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzic;->zzd:Landroid/content/Context;

    const/4 v8, 0x2

    .line 15
    invoke-static {v7, v6, v1, v8}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "Registered app receiver"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    if-eqz p1, :cond_7e

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzx()Lcom/google/android/gms/measurement/internal/zzlq;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfy;->zzB:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 19
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzlq;->zzh(J)V

    :cond_7e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzh:Lcom/google/android/gms/measurement/internal/zzhh;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhh;->zzl()Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjl;->zzb()I

    move-result v1

    const-string v6, "google_analytics_default_allow_ad_storage"

    .line 22
    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzw(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v6

    const-string v7, "google_analytics_default_allow_analytics_storage"

    .line 23
    invoke-virtual {v2, v7, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzw(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v7

    .line 24
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzji;->zza:Lcom/google/android/gms/measurement/internal/zzji;

    const/16 v9, 0x1e

    const/16 v10, -0xa

    if-ne v6, v8, :cond_a1

    if-eq v7, v8, :cond_af

    .line 25
    :cond_a1
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 26
    invoke-virtual {p1, v10}, Lcom/google/android/gms/measurement/internal/zzhh;->zzk(I)Z

    move-result v11

    if-eqz v11, :cond_af

    .line 27
    invoke-static {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/zzjl;->zza(Lcom/google/android/gms/measurement/internal/zzji;Lcom/google/android/gms/measurement/internal/zzji;I)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v1

    goto :goto_da

    .line 28
    :cond_af
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->zzk()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ca

    if-eqz v1, :cond_cc

    if-eq v1, v9, :cond_cc

    const/16 v6, 0xa

    if-eq v1, v6, :cond_cc

    const/16 v6, 0x28

    if-ne v1, v6, :cond_ca

    goto :goto_cc

    :cond_ca
    :goto_ca
    move-object v1, v3

    goto :goto_da

    :cond_cc
    :goto_cc
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzp:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzjl;

    .line 30
    invoke-direct {v6, v3, v3, v10}, Lcom/google/android/gms/measurement/internal/zzjl;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    .line 31
    invoke-virtual {v1, v6, v4}, Lcom/google/android/gms/measurement/internal/zzlj;->zzs(Lcom/google/android/gms/measurement/internal/zzjl;Z)V

    goto :goto_ca

    :goto_da
    if-eqz v1, :cond_e5

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzp:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 33
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzlj;->zzs(Lcom/google/android/gms/measurement/internal/zzjl;Z)V

    move-object v0, v1

    :cond_e5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzp:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 34
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 35
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzz(Lcom/google/android/gms/measurement/internal/zzjl;)V

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhh;->zzj()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzba;->zzb()I

    move-result v0

    const-string v6, "google_analytics_default_allow_ad_personalization_signals"

    .line 39
    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzw(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v6

    if-eq v6, v8, :cond_10e

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 40
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 41
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    const-string v11, "Default ad personalization consent from Manifest"

    .line 42
    invoke-virtual {v7, v11, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10e
    const-string v6, "google_analytics_default_allow_ad_user_data"

    .line 43
    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzw(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v6

    if-eq v6, v8, :cond_127

    invoke-static {v10, v0}, Lcom/google/android/gms/measurement/internal/zzjl;->zzu(II)Z

    move-result v7

    if-eqz v7, :cond_127

    .line 44
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 45
    invoke-static {v6, v10}, Lcom/google/android/gms/measurement/internal/zzba;->zza(Lcom/google/android/gms/measurement/internal/zzji;I)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    .line 46
    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/measurement/internal/zzlj;->zzq(Lcom/google/android/gms/measurement/internal/zzba;Z)V

    goto :goto_144

    .line 47
    :cond_127
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->zzk()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_144

    if-eqz v0, :cond_139

    if-ne v0, v9, :cond_144

    .line 48
    :cond_139
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzba;

    .line 49
    invoke-direct {v0, v3, v10, v3, v3}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/measurement/internal/zzlj;->zzq(Lcom/google/android/gms/measurement/internal/zzba;Z)V

    .line 46
    :cond_144
    :goto_144
    const-string v0, "google_analytics_tcf_data_enabled"

    .line 51
    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzr(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_152

    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16c

    :cond_152
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 53
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "TCF client enabled."

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 55
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzlj;->zzD()V

    .line 57
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzlj;->zzC()V

    .line 59
    :cond_16c
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 60
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzhh;->zzc:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zza()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_195

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 61
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzic;->zza:J

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "Persisting first open"

    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 64
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    .line 65
    :cond_195
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 66
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzlj;->zzb:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzx;->zzc()V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzH()Z

    move-result v2

    if-nez v2, :cond_229

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzB()Z

    move-result p1

    if-eqz p1, :cond_37d

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzl:Lcom/google/android/gms/measurement/internal/zzpp;

    .line 130
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    const-string v0, "android.permission.INTERNET"

    .line 131
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzpp;->zzab(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 132
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 133
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 134
    :cond_1c4
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 135
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzpp;->zzab(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1dd

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 136
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 137
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    :cond_1dd
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzd:Landroid/content/Context;

    .line 138
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v0

    if-nez v0, :cond_219

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzg:Lcom/google/android/gms/measurement/internal/zzal;

    .line 139
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzE()Z

    move-result v0

    if-nez v0, :cond_219

    .line 140
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzax(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_205

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 141
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 142
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 143
    :cond_205
    invoke-static {p1, v4}, Lcom/google/android/gms/measurement/internal/zzpp;->zzS(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_219

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 144
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 145
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v0, "AppMeasurementService not registered/enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    :cond_219
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 146
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 147
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    const-string v0, "Uploading is not possible. App measurement disabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto/16 :goto_37d

    .line 68
    :cond_229
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzl:Lcom/google/android/gms/measurement/internal/zzpp;

    .line 69
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->zzk()Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhh;->zzd()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "gmp_app_id"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-virtual {v2, v4, v6}, Lcom/google/android/gms/measurement/internal/zzpp;->zzD(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a6

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 75
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzi()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v4, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 79
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhh;->zzi()Ljava/lang/Boolean;

    move-result-object v2

    .line 80
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhh;->zzd()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 81
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v2, :cond_285

    .line 83
    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/zzhh;->zzh(Ljava/lang/Boolean;)V

    .line 84
    :cond_285
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzm()Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgl;->zzh()V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzu:Lcom/google/android/gms/measurement/internal/zznl;

    .line 85
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznl;->zzM()V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzu:Lcom/google/android/gms/measurement/internal/zznl;

    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznl;->zzI()V

    .line 87
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    iget-wide v8, p0, Lcom/google/android/gms/measurement/internal/zzic;->zza:J

    .line 88
    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    .line 89
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 90
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzhh;->zze:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;)V

    .line 91
    :cond_2a6
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzk()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhh;->zzd()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 95
    invoke-interface {v2, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    :cond_2c2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhh;->zzl()Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v0

    .line 99
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v0

    if-nez v0, :cond_2d9

    .line 100
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 101
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzhh;->zze:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;)V

    .line 102
    :cond_2d9
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 103
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 104
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzhh;->zze:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhg;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzlj;->zzQ(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzl:Lcom/google/android/gms/measurement/internal/zzpp;

    .line 105
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    :try_start_2ed
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzic;->zzd:Landroid/content/Context;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v0, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2fa
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2ed .. :try_end_2fa} :catch_2fb

    goto :goto_320

    .line 31
    :catch_2fb
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzh:Lcom/google/android/gms/measurement/internal/zzhh;

    .line 108
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 109
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzhh;->zzq:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhg;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_320

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 110
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 111
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v2, "Remote config removed with active feature rollouts"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 113
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;)V

    .line 114
    :cond_320
    :goto_320
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zzk()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_37d

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzB()Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzh:Lcom/google/android/gms/measurement/internal/zzhh;

    .line 116
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhh;->zzn()Z

    move-result v1

    if-nez v1, :cond_34d

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzg:Lcom/google/android/gms/measurement/internal/zzal;

    .line 118
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzt()Z

    move-result v1

    if-nez v1, :cond_34d

    .line 119
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    xor-int/lit8 v1, p1, 0x1

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhh;->zzm(Z)V

    :cond_34d
    if-eqz p1, :cond_357

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzp:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 121
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 122
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzlj;->zzT()V

    :cond_357
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzk:Lcom/google/android/gms/measurement/internal/zzoc;

    .line 123
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 124
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzoc;->zza:Lcom/google/android/gms/measurement/internal/zzob;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzob;->zza()V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzt()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object p1

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zznl;->zzC(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzt()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object p1

    .line 127
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 128
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzhh;->zzt:Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhd;->zza()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zznl;->zzH(Landroid/os/Bundle;)V

    .line 148
    :cond_37d
    :goto_37d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaif;->zza()Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzg:Lcom/google/android/gms/measurement/internal/zzal;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfy;->zzaP:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 149
    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result p1

    if-eqz p1, :cond_3dd

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzl:Lcom/google/android/gms/measurement/internal/zzpp;

    .line 150
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 151
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzU()Z

    move-result p1

    if-eqz p1, :cond_3dd

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzfy;->zzaw:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 152
    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 153
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x1388

    .line 154
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    int-to-long v2, p1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzn:Lcom/google/android/gms/common/util/Clock;

    add-long/2addr v0, v2

    .line 155
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-lez p1, :cond_3d5

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 156
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    .line 157
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 159
    const-string v3, "Waiting to fetch trigger URIs until some time after boot. Delay in millis"

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3d5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzp:Lcom/google/android/gms/measurement/internal/zzlj;

    .line 160
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 161
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzlj;->zzu(J)V

    :cond_3dd
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzh:Lcom/google/android/gms/measurement/internal/zzhh;

    .line 162
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 163
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzhh;->zzj:Lcom/google/android/gms/measurement/internal/zzhc;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Z)V

    return-void
.end method

.method public final zzaV()Lcom/google/android/gms/measurement/internal/zzae;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzf:Lcom/google/android/gms/measurement/internal/zzae;

    return-object v0
.end method

.method public final zzaW()Lcom/google/android/gms/measurement/internal/zzgu;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    return-object v0
.end method

.method public final zzaX()Lcom/google/android/gms/measurement/internal/zzhz;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzj:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    return-object v0
.end method

.method public final zzaZ()Landroid/content/Context;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzd:Landroid/content/Context;

    return-object v0
.end method

.method public final zzba()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzn:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzal;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzg:Lcom/google/android/gms/measurement/internal/zzal;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzhh;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzh:Lcom/google/android/gms/measurement/internal/zzhh;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzgu;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzi:Lcom/google/android/gms/measurement/internal/zzgu;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjf;->zzv()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzoc;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzk:Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzhz;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzj:Lcom/google/android/gms/measurement/internal/zzhz;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzlj;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzp:Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/measurement/internal/zzpp;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzl:Lcom/google/android/gms/measurement/internal/zzpp;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzN(Lcom/google/android/gms/measurement/internal/zzje;)V

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/measurement/internal/zzgn;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzm:Lcom/google/android/gms/measurement/internal/zzgn;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzgl;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzt:Lcom/google/android/gms/measurement/internal/zzgl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzt:Lcom/google/android/gms/measurement/internal/zzgl;

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/measurement/internal/zzlo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzr:Lcom/google/android/gms/measurement/internal/zzlo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    return-object v0
.end method

.method public final zzp()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zze:Z

    return v0
.end method

.method public final zzq()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzs:Ljava/lang/String;

    return-object v0
.end method

.method public final zzs()Lcom/google/android/gms/measurement/internal/zzmb;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzo:Lcom/google/android/gms/measurement/internal/zzmb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    return-object v0
.end method

.method public final zzt()Lcom/google/android/gms/measurement/internal/zznl;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzu:Lcom/google/android/gms/measurement/internal/zznl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzu:Lcom/google/android/gms/measurement/internal/zznl;

    return-object v0
.end method

.method public final zzu()Lcom/google/android/gms/measurement/internal/zzbb;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzv:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzP(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzv:Lcom/google/android/gms/measurement/internal/zzbb;

    return-object v0
.end method

.method public final zzv()Lcom/google/android/gms/measurement/internal/zzgi;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzw:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzO(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzw:Lcom/google/android/gms/measurement/internal/zzgi;

    return-object v0
.end method

.method public final zzw()Lcom/google/android/gms/measurement/internal/zzd;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzq:Lcom/google/android/gms/measurement/internal/zzd;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzM(Lcom/google/android/gms/measurement/internal/zzf;)V

    return-object v0
.end method

.method public final zzx()Lcom/google/android/gms/measurement/internal/zzlq;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzx:Lcom/google/android/gms/measurement/internal/zzlq;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzM(Lcom/google/android/gms/measurement/internal/zzf;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzx:Lcom/google/android/gms/measurement/internal/zzlq;

    return-object v0
.end method

.method public final zzz(Z)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzic;->zzB:Ljava/lang/Boolean;

    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzib (com.google.android.gms.measurement.internal.zzib)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzll;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzic;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzib;->zza:Lcom/google/android/gms/measurement/internal/zzic;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 12

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzib;->zza:Lcom/google/android/gms/measurement/internal/zzic;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzJ(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
