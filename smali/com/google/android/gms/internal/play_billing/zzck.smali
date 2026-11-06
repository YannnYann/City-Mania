###### Class com.google.android.gms.internal.play_billing.zzck (com.google.android.gms.internal.play_billing.zzck)
.class abstract Lcom/google/android/gms/internal/play_billing/zzck;
.super Lcom/google/android/gms/internal/play_billing/zzdf;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/play_billing/zzdf;",
        "Lcom/google/android/gms/internal/play_billing/zzcz<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final zza:Ljava/lang/Object;

.field static final zzb:Lcom/google/android/gms/internal/play_billing/zzcy;

.field static final zzc:Z

.field private static final zzd:Lcom/google/android/gms/internal/play_billing/zzck$zza;


# instance fields
.field volatile listenersField:Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

.field volatile valueField:Ljava/lang/Object;

.field volatile waitersField:Lcom/google/android/gms/internal/play_billing/zzck$zze;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzck;->zza:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcy;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzcj;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcy;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzck;->zzb:Lcom/google/android/gms/internal/play_billing/zzcy;

    :try_start_10
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    .line 2
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_1c} :catch_1d

    goto :goto_1e

    :catch_1d
    const/4 v0, 0x0

    :goto_1e
    sput-boolean v0, Lcom/google/android/gms/internal/play_billing/zzck;->zzc:Z

    const-string v0, "java.runtime.name"

    const-string v1, ""

    .line 3
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    const-string v2, "Android"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_42

    .line 7
    :cond_34
    :try_start_34
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzck$zzb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzck$zzb;-><init>(Lcom/google/android/gms/internal/play_billing/zzco;)V
    :try_end_39
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_34 .. :try_end_39} :catch_3c

    :goto_39
    move-object v6, v1

    move-object v12, v6

    goto :goto_60

    .line 6
    :catch_3c
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzck$zzc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzck$zzc;-><init>(Lcom/google/android/gms/internal/play_billing/zzco;)V

    goto :goto_39

    .line 5
    :cond_42
    :goto_42
    :try_start_42
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzck$zzd;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzck$zzd;-><init>(Lcom/google/android/gms/internal/play_billing/zzco;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_47} :catch_4b
    .catch Ljava/lang/Error; {:try_start_42 .. :try_end_47} :catch_48

    goto :goto_39

    :catch_48
    move-exception v0

    :goto_49
    move-object v2, v0

    goto :goto_4d

    :catch_4b
    move-exception v0

    goto :goto_49

    .line 6
    :goto_4d
    :try_start_4d
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzck$zzb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzck$zzb;-><init>(Lcom/google/android/gms/internal/play_billing/zzco;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_57
    .catch Ljava/lang/Error; {:try_start_4d .. :try_end_52} :catch_55

    move-object v6, v1

    move-object v12, v2

    goto :goto_60

    :catch_55
    move-exception v0

    goto :goto_58

    :catch_57
    move-exception v0

    :goto_58
    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzck$zzc;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/play_billing/zzck$zzc;-><init>(Lcom/google/android/gms/internal/play_billing/zzco;)V

    move-object v6, v0

    move-object v12, v2

    move-object v0, v3

    .line 5
    :goto_60
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzck;->zzd:Lcom/google/android/gms/internal/play_billing/zzck$zza;

    if-eqz v6, :cond_83

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck;->zzb:Lcom/google/android/gms/internal/play_billing/zzcy;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcy;->zza()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v10, "<clinit>"

    const-string v11, "UnsafeAtomicHelper is broken!"

    const-string v9, "com.google.common.util.concurrent.AbstractFutureState"

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcy;->zza()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v4, "<clinit>"

    const-string v5, "AtomicReferenceFieldUpdaterAtomicHelper is broken!"

    .line 10
    const-string v3, "com.google.common.util.concurrent.AbstractFutureState"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_83
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzdf;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/play_billing/zzck$zze;)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzck$zze;->thread:Ljava/lang/Thread;

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzck;->waitersField:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzck$zze;->zza:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    if-eq p1, v1, :cond_28

    move-object v1, v0

    :goto_a
    if-eqz p1, :cond_28

    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/zzck$zze;->next:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/play_billing/zzck$zze;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_14

    move-object v1, p1

    goto :goto_26

    :cond_14
    if-eqz v1, :cond_1d

    iput-object v2, v1, Lcom/google/android/gms/internal/play_billing/zzck$zze;->next:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    iget-object p1, v1, Lcom/google/android/gms/internal/play_billing/zzck$zze;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_26

    goto :goto_3

    :cond_1d
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzck;->zzd:Lcom/google/android/gms/internal/play_billing/zzck$zza;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzck$zza;->zzg(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzck$zze;Lcom/google/android/gms/internal/play_billing/zzck$zze;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_3

    :cond_26
    :goto_26
    move-object p1, v2

    goto :goto_a

    :cond_28
    return-void
.end method

.method public static synthetic zzn(Lcom/google/android/gms/internal/play_billing/zzck$zze;Ljava/lang/Thread;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck;->zzd:Lcom/google/android/gms/internal/play_billing/zzck$zza;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzck$zza;->zzd(Lcom/google/android/gms/internal/play_billing/zzck$zze;Ljava/lang/Thread;)V

    return-void
.end method

.method public static zzq(Lcom/google/android/gms/internal/play_billing/zzck;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck;->zzd:Lcom/google/android/gms/internal/play_billing/zzck$zza;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzck$zza;->zzf(Lcom/google/android/gms/internal/play_billing/zzck;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zzk(Lcom/google/android/gms/internal/play_billing/zzcj$zzd;)Lcom/google/android/gms/internal/play_billing/zzcj$zzd;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck;->zzd:Lcom/google/android/gms/internal/play_billing/zzck$zza;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzck$zza;->zza(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;)Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    move-result-object p1

    return-object p1
.end method

.method public final zzl()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_66

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    move v3, v2

    goto :goto_f

    :cond_e
    move v3, v1

    .line 3
    :goto_f
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzh(Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1b

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzck;->waitersField:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzck$zze;->zza:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    if-eq v0, v3, :cond_5c

    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzck$zze;

    .line 5
    invoke-direct {v3}, Lcom/google/android/gms/internal/play_billing/zzck$zze;-><init>()V

    :cond_26
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzck;->zzd:Lcom/google/android/gms/internal/play_billing/zzck$zza;

    .line 6
    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzck$zza;->zzc(Lcom/google/android/gms/internal/play_billing/zzck$zze;Lcom/google/android/gms/internal/play_billing/zzck$zze;)V

    .line 7
    invoke-virtual {v4, p0, v0, v3}, Lcom/google/android/gms/internal/play_billing/zzck$zza;->zzg(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzck$zze;Lcom/google/android/gms/internal/play_billing/zzck$zze;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 8
    :cond_31
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    if-eqz v0, :cond_40

    move v4, v2

    goto :goto_41

    :cond_40
    move v4, v1

    :goto_41
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzh(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_31

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 10
    :cond_4d
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/play_billing/zzck;->zza(Lcom/google/android/gms/internal/play_billing/zzck$zze;)V

    new-instance v0, Ljava/lang/InterruptedException;

    .line 11
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 12
    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzck;->waitersField:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzck$zze;->zza:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    if-ne v0, v4, :cond_26

    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_66
    new-instance v0, Ljava/lang/InterruptedException;

    .line 2
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final zzm(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_180

    .line 3
    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_17

    move v9, v8

    goto :goto_18

    :cond_17
    const/4 v9, 0x0

    .line 4
    :goto_18
    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzh(Ljava/lang/Object;)Z

    move-result v10

    and-int/2addr v9, v10

    if-eqz v9, :cond_24

    .line 5
    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_24
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_30

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_31

    :cond_30
    move-wide v11, v9

    :goto_31
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_99

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/zzck;->waitersField:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    sget-object v15, Lcom/google/android/gms/internal/play_billing/zzck$zze;->zza:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    if-eq v6, v15, :cond_8f

    new-instance v15, Lcom/google/android/gms/internal/play_billing/zzck$zze;

    .line 7
    invoke-direct {v15}, Lcom/google/android/gms/internal/play_billing/zzck$zze;-><init>()V

    :cond_42
    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzck;->zzd:Lcom/google/android/gms/internal/play_billing/zzck$zza;

    .line 8
    invoke-virtual {v7, v15, v6}, Lcom/google/android/gms/internal/play_billing/zzck$zza;->zzc(Lcom/google/android/gms/internal/play_billing/zzck$zze;Lcom/google/android/gms/internal/play_billing/zzck$zze;)V

    .line 9
    invoke-virtual {v7, v0, v6, v15}, Lcom/google/android/gms/internal/play_billing/zzck$zza;->zzg(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzck$zze;Lcom/google/android/gms/internal/play_billing/zzck$zze;)Z

    move-result v6

    if-eqz v6, :cond_89

    :cond_4d
    const-wide v6, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    .line 10
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 11
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_80

    .line 14
    iget-object v4, v0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    if-eqz v4, :cond_65

    move v5, v8

    goto :goto_66

    :cond_65
    const/4 v5, 0x0

    :goto_66
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzh(Ljava/lang/Object;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_72

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 12
    :cond_72
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4d

    .line 16
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/play_billing/zzck;->zza(Lcom/google/android/gms/internal/play_billing/zzck$zze;)V

    goto :goto_99

    .line 13
    :cond_80
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/play_billing/zzck;->zza(Lcom/google/android/gms/internal/play_billing/zzck$zze;)V

    new-instance v1, Ljava/lang/InterruptedException;

    .line 14
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 18
    :cond_89
    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/zzck;->waitersField:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzck$zze;->zza:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    if-ne v6, v7, :cond_42

    :cond_8f
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 31
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_99
    :goto_99
    cmp-long v6, v4, v9

    if-lez v6, :cond_c3

    .line 16
    iget-object v4, v0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    if-eqz v4, :cond_a3

    move v5, v8

    goto :goto_a4

    :cond_a3
    const/4 v5, 0x0

    :goto_a4
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzh(Ljava/lang/Object;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_b0

    .line 19
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 17
    :cond_b0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_bd

    .line 18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_99

    .line 17
    :cond_bd
    new-instance v1, Ljava/lang/InterruptedException;

    .line 20
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 21
    :cond_c3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Waited "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v11, v11, v9

    if-gez v11, :cond_154

    const-string v11, " (plus "

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 25
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    sub-long v4, v4, v16

    cmp-long v3, v11, v9

    if-eqz v3, :cond_115

    cmp-long v9, v4, v13

    if-lez v9, :cond_114

    goto :goto_115

    :cond_114
    const/4 v8, 0x0

    :cond_115
    :goto_115
    if-lez v3, :cond_138

    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_134

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_134
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_138
    if-eqz v8, :cond_14e

    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_14e
    const-string v1, "delay)"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    :cond_154
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_166

    const-string v1, " but future completed as timeout expired"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_166
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2
    :cond_180
    new-instance v1, Ljava/lang/InterruptedException;

    .line 3
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public final zzo()V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zze;->zza:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzck;->zzd:Lcom/google/android/gms/internal/play_billing/zzck$zza;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/internal/play_billing/zzck$zza;->zzb(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzck$zze;)Lcom/google/android/gms/internal/play_billing/zzck$zze;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_17

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzck$zze;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_14

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzck$zze;->thread:Ljava/lang/Thread;

    .line 2
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_14
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzck$zze;->next:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    goto :goto_8

    :cond_17
    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/play_billing/zzcj$zzd;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck;->zzd:Lcom/google/android/gms/internal/play_billing/zzck$zza;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzck$zza;->zze(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;)Z

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.play_billing.zzck.zza (com.google.android.gms.internal.play_billing.zzck$zza)
.class abstract Lcom/google/android/gms/internal/play_billing/zzck$zza;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzco;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;)Lcom/google/android/gms/internal/play_billing/zzcj$zzd;
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzck$zze;)Lcom/google/android/gms/internal/play_billing/zzck$zze;
.end method

.method public abstract zzc(Lcom/google/android/gms/internal/play_billing/zzck$zze;Lcom/google/android/gms/internal/play_billing/zzck$zze;)V
.end method

.method public abstract zzd(Lcom/google/android/gms/internal/play_billing/zzck$zze;Ljava/lang/Thread;)V
.end method

.method public abstract zze(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;)Z
.end method

.method public abstract zzf(Lcom/google/android/gms/internal/play_billing/zzck;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract zzg(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzck$zze;Lcom/google/android/gms/internal/play_billing/zzck$zze;)Z
.end method

###### Class com.google.android.gms.internal.play_billing.zzck.zzb (com.google.android.gms.internal.play_billing.zzck$zzb)
.class final Lcom/google/android/gms/internal/play_billing/zzck$zzb;
.super Lcom/google/android/gms/internal/play_billing/zzck$zza;
.source "com.android.billingclient:billing@@8.0.0"


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/play_billing/zzck$zze;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/play_billing/zzck$zze;",
            "Lcom/google/android/gms/internal/play_billing/zzck$zze;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "-",
            "Lcom/google/android/gms/internal/play_billing/zzck<",
            "*>;",
            "Lcom/google/android/gms/internal/play_billing/zzck$zze;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "-",
            "Lcom/google/android/gms/internal/play_billing/zzck<",
            "*>;",
            "Lcom/google/android/gms/internal/play_billing/zzcj$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "-",
            "Lcom/google/android/gms/internal/play_billing/zzck<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-class v0, Ljava/lang/Thread;

    const-string v1, "thread"

    const-class v2, Lcom/google/android/gms/internal/play_billing/zzck$zze;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzb;->zza:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "next"

    .line 2
    invoke-static {v2, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzb;->zzb:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "waitersField"

    .line 3
    const-class v1, Lcom/google/android/gms/internal/play_billing/zzck;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzb;->zzc:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    const-string v2, "listenersField"

    .line 4
    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzb;->zzd:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "valueField"

    .line 5
    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzb;->zze:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzco;)V
    .registers 2

    .line 0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzck$zza;-><init>(Lcom/google/android/gms/internal/play_billing/zzco;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;)Lcom/google/android/gms/internal/play_billing/zzcj$zzd;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzb;->zzd:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzck$zze;)Lcom/google/android/gms/internal/play_billing/zzck$zze;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzb;->zzc:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzck$zze;

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/play_billing/zzck$zze;Lcom/google/android/gms/internal/play_billing/zzck$zze;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzb;->zzb:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/play_billing/zzck$zze;Ljava/lang/Thread;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzb;->zza:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;)Z
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzb;->zzd:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzcl;->zza(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/play_billing/zzck;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzb;->zze:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzcl;->zza(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzck$zze;Lcom/google/android/gms/internal/play_billing/zzck$zze;)Z
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzb;->zzc:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzcl;->zza(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.play_billing.zzck.zzc (com.google.android.gms.internal.play_billing.zzck$zzc)
.class final Lcom/google/android/gms/internal/play_billing/zzck$zzc;
.super Lcom/google/android/gms/internal/play_billing/zzck$zza;
.source "com.android.billingclient:billing@@8.0.0"


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzco;)V
    .registers 2

    .line 0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzck$zza;-><init>(Lcom/google/android/gms/internal/play_billing/zzco;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;)Lcom/google/android/gms/internal/play_billing/zzcj$zzd;
    .registers 4

    .line 1
    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzck;->listenersField:Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    if-eq v0, p2, :cond_a

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/zzck;->listenersField:Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    goto :goto_a

    :catchall_8
    move-exception p2

    goto :goto_c

    :cond_a
    :goto_a
    monitor-exit p1

    return-object v0

    .line 2
    :goto_c
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_8

    throw p2
.end method

.method public final zzb(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzck$zze;)Lcom/google/android/gms/internal/play_billing/zzck$zze;
    .registers 4

    .line 1
    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzck;->waitersField:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    if-eq v0, p2, :cond_a

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/zzck;->waitersField:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    goto :goto_a

    :catchall_8
    move-exception p2

    goto :goto_c

    :cond_a
    :goto_a
    monitor-exit p1

    return-object v0

    .line 2
    :goto_c
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_8

    throw p2
.end method

.method public final zzc(Lcom/google/android/gms/internal/play_billing/zzck$zze;Lcom/google/android/gms/internal/play_billing/zzck$zze;)V
    .registers 3

    .line 0
    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/zzck$zze;->next:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/play_billing/zzck$zze;Ljava/lang/Thread;)V
    .registers 3

    .line 0
    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/zzck$zze;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;)Z
    .registers 5

    .line 1
    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzck;->listenersField:Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    if-ne v0, p2, :cond_c

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/zzck;->listenersField:Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_a
    move-exception p2

    goto :goto_f

    .line 2
    :cond_c
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 3
    :goto_f
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_a

    throw p2
.end method

.method public final zzf(Lcom/google/android/gms/internal/play_billing/zzck;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    monitor-enter p1

    .line 2
    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    if-ne v0, p2, :cond_c

    .line 3
    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 4
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_a
    move-exception p2

    goto :goto_f

    .line 5
    :cond_c
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 6
    :goto_f
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_a

    throw p2
.end method

.method public final zzg(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzck$zze;Lcom/google/android/gms/internal/play_billing/zzck$zze;)Z
    .registers 5

    .line 1
    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzck;->waitersField:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    if-ne v0, p2, :cond_c

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/zzck;->waitersField:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_a
    move-exception p2

    goto :goto_f

    .line 2
    :cond_c
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 3
    :goto_f
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_a

    throw p2
.end method

###### Class com.google.android.gms.internal.play_billing.zzck.zzd (com.google.android.gms.internal.play_billing.zzck$zzd)
.class final Lcom/google/android/gms/internal/play_billing/zzck$zzd;
.super Lcom/google/android/gms/internal/play_billing/zzck$zza;
.source "com.android.billingclient:billing@@8.0.0"


# static fields
.field static final zza:Lsun/misc/Unsafe;

.field static final zzb:J

.field static final zzc:J

.field static final zzd:J

.field static final zze:J

.field static final zzf:J

.field public static final synthetic zzg:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/play_billing/zzck$zze;

    :try_start_2
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_12

    .line 2
    :catch_7
    :try_start_7
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzcn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/play_billing/zzcn;-><init>()V

    .line 3
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_12
    .catch Ljava/security/PrivilegedActionException; {:try_start_7 .. :try_end_12} :catch_5a

    .line 1
    :goto_12
    :try_start_12
    const-class v2, Lcom/google/android/gms/internal/play_billing/zzck;

    const-string v3, "waitersField"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zzc:J

    const-string v3, "listenersField"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zzb:J

    const-string v3, "valueField"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zzd:J

    const-string v2, "thread"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zze:J

    const-string v2, "next"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zzf:J

    sput-object v1, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zza:Lsun/misc/Unsafe;
    :try_end_52
    .catch Ljava/lang/NoSuchFieldException; {:try_start_12 .. :try_end_52} :catch_53

    return-void

    :catch_53
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    .line 10
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5a
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    .line 4
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzco;)V
    .registers 2

    .line 0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzck$zza;-><init>(Lcom/google/android/gms/internal/play_billing/zzco;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;)Lcom/google/android/gms/internal/play_billing/zzcj$zzd;
    .registers 5

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzck;->listenersField:Lcom/google/android/gms/internal/play_billing/zzcj$zzd;

    if-ne p2, v0, :cond_5

    goto :goto_b

    :cond_5
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zze(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_b
    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzck$zze;)Lcom/google/android/gms/internal/play_billing/zzck$zze;
    .registers 5

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzck;->waitersField:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    if-ne p2, v0, :cond_5

    goto :goto_b

    :cond_5
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zzg(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzck$zze;Lcom/google/android/gms/internal/play_billing/zzck$zze;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_b
    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/play_billing/zzck$zze;Lcom/google/android/gms/internal/play_billing/zzck$zze;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zza:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zzf:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/play_billing/zzck$zze;Ljava/lang/Thread;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zza:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zze:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;Lcom/google/android/gms/internal/play_billing/zzcj$zzd;)Z
    .registers 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zza:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zzb:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzcm;->zza(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/play_billing/zzck;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zza:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zzd:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzcm;->zza(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/play_billing/zzck;Lcom/google/android/gms/internal/play_billing/zzck$zze;Lcom/google/android/gms/internal/play_billing/zzck$zze;)Z
    .registers 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zza:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zzc:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzcm;->zza(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.play_billing.zzcn (com.google.android.gms.internal.play_billing.zzcn)
.class public final synthetic Lcom/google/android/gms/internal/play_billing/zzcn;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x1

    sget v1, Lcom/google/android/gms/internal/play_billing/zzck$zzd;->zzg:I

    .line 1
    const-class v1, Lsun/misc/Unsafe;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_26

    aget-object v5, v2, v4

    .line 2
    invoke-virtual {v5, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v6, 0x0

    .line 3
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 4
    invoke-virtual {v1, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 5
    invoke-virtual {v1, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;

    return-object v0

    :cond_24
    add-int/2addr v4, v0

    goto :goto_b

    :cond_26
    new-instance v0, Ljava/lang/NoSuchFieldError;

    const-string v1, "the Unsafe"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.google.android.gms.internal.play_billing.zzck.zze (com.google.android.gms.internal.play_billing.zzck$zze)
.class final Lcom/google/android/gms/internal/play_billing/zzck$zze;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzck$zze;


# instance fields
.field volatile next:Lcom/google/android/gms/internal/play_billing/zzck$zze;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzck$zze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzck$zze;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzck$zze;->zza:Lcom/google/android/gms/internal/play_billing/zzck$zze;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzn(Lcom/google/android/gms/internal/play_billing/zzck$zze;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
