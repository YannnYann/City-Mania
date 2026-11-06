###### Class com.google.android.gms.internal.measurement.zzxi (com.google.android.gms.internal.measurement.zzxi)
.class public Lcom/google/android/gms/internal/measurement/zzxi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<API::",
        "Lcom/google/android/gms/internal/measurement/zzyi<",
        "TAPI;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzzf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzzf;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxi;->zza:Lcom/google/android/gms/internal/measurement/zzzf;

    return-void
.end method

.method private static zzd(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzzd;)V
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzzd;->zzf()J

    move-result-wide v3

    .line 2
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    .line 3
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": logging error ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzzd;->zzg()Lcom/google/android/gms/internal/measurement/zzyc;

    move-result-object p1

    .line 6
    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/zzze;->zza(ILcom/google/android/gms/internal/measurement/zzyc;Ljava/lang/StringBuilder;)Z

    const-string p1, "]: "

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 8
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 9
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxi;->zza:Lcom/google/android/gms/internal/measurement/zzzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzzf;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/util/logging/Level;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxi;->zza:Lcom/google/android/gms/internal/measurement/zzzf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzf;->zzb(Ljava/util/logging/Level;)Z

    move-result p1

    return p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzzd;)V
    .registers 8

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzabt;->zzc()Lcom/google/android/gms/internal/measurement/zzabt;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_1d

    .line 2
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzabt;->zzb()I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzxi;->zza:Lcom/google/android/gms/internal/measurement/zzzf;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzzf;->zzc(Lcom/google/android/gms/internal/measurement/zzzd;)V

    goto :goto_19

    :catchall_12
    move-exception v1

    goto :goto_1f

    .line 5
    :cond_14
    const-string v1, "unbounded recursion in log statement"

    .line 4
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/zzxi;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzzd;)V
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_12

    .line 5
    :goto_19
    :try_start_19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzabt;->close()V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception v0

    goto :goto_2a

    :goto_1f
    if-eqz v0, :cond_29

    .line 1
    :try_start_21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzabt;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v0

    :try_start_26
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_29
    :goto_29
    throw v1
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_2a} :catch_1d

    .line 4
    :goto_2a
    :try_start_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzxi;->zza:Lcom/google/android/gms/internal/measurement/zzzf;

    .line 6
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/zzzf;->zzd(Ljava/lang/RuntimeException;Lcom/google/android/gms/internal/measurement/zzzd;)V
    :try_end_2f
    .catch Lcom/google/android/gms/internal/measurement/zzzg; {:try_start_2a .. :try_end_2f} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2f} :catch_30

    goto :goto_6b

    :catch_30
    move-exception v0

    goto :goto_34

    :catch_32
    move-exception p1

    goto :goto_6c

    .line 9
    :goto_34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/zzxi;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzzd;)V

    :try_start_66
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_6b
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_6b} :catch_6b

    :catch_6b
    :goto_6b
    return-void

    .line 9
    :goto_6c
    throw p1
.end method
