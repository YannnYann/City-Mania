###### Class com.google.android.gms.internal.measurement.zzlz (com.google.android.gms.internal.measurement.zzlz)
.class public final Lcom/google/android/gms/internal/measurement/zzlz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# direct methods
.method public static final varargs zza(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzlz;->zzc(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static final varargs zzb(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzlz;->zzc(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static final varargs zzc(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzly;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzly;-><init>(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxa;->zza(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    .line 2
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.google.android.gms.internal.measurement.zzly (com.google.android.gms.internal.measurement.zzly)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzly;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/util/logging/Level;

.field private final synthetic zzb:Ljava/lang/Throwable;

.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzly;->zza:Ljava/util/logging/Level;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzly;->zzb:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzly;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzly;->zzd:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlx;->zza:Lcom/google/android/gms/internal/measurement/zzxs;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzly;->zza:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzxs;->zze(Ljava/util/logging/Level;)Lcom/google/android/gms/internal/measurement/zzxp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzly;->zzb:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzyi;->zzo(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/measurement/zzyi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzxp;

    const/16 v1, 0x2c

    const-string v2, "Phlogger.java"

    const-string v3, "com/google/android/libraries/phenotype/client/Phlogger"

    const-string v4, "logInternal"

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyi;->zzn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/measurement/zzyi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzxp;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzly;->zzc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzly;->zzd:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzyi;->zzp(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
