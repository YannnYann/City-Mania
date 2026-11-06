###### Class com.google.android.gms.internal.measurement.zzadf (com.google.android.gms.internal.measurement.zzadf)
.class public final Lcom/google/android/gms/internal/measurement/zzadf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@23.2.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzadf;

.field public static final synthetic zzb:I = 0x0

.field private static volatile zzc:Z = false

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzadf;


# instance fields
.field private final zze:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzadf;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzadf;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzadf;->zza:Lcom/google/android/gms/internal/measurement/zzadf;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadf;->zze:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzadf;->zze:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzadf;
    .registers 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/measurement/zzacf;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzadf;->zza:Lcom/google/android/gms/internal/measurement/zzadf;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzadf;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzadf;->zzd:Lcom/google/android/gms/internal/measurement/zzadf;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-class v0, Lcom/google/android/gms/internal/measurement/zzadf;

    monitor-enter v0

    :try_start_8
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzadf;->zzd:Lcom/google/android/gms/internal/measurement/zzadf;

    if-eqz v1, :cond_10

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    goto :goto_1c

    .line 2
    :cond_10
    sget v1, Lcom/google/android/gms/internal/measurement/zzacf;->zza:I

    const-class v1, Lcom/google/android/gms/internal/measurement/zzadf;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzadn;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzadf;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzadf;->zzd:Lcom/google/android/gms/internal/measurement/zzadf;

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_e

    throw v1
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/measurement/zzafc;I)Lcom/google/android/gms/internal/measurement/zzadt;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzade;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzade;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzadf;->zze:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadt;

    return-object p1
.end method
