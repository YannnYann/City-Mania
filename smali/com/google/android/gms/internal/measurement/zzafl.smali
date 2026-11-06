###### Class com.google.android.gms.internal.measurement.zzafl (com.google.android.gms.internal.measurement.zzafl)
.class final Lcom/google/android/gms/internal/measurement/zzafl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@23.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzafl;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzaet;

.field private final zzc:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzafl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzafl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzafl;->zza:Lcom/google/android/gms/internal/measurement/zzafl;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzafl;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaet;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzafl;->zzb:Lcom/google/android/gms/internal/measurement/zzaet;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzafl;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzafl;->zza:Lcom/google/android/gms/internal/measurement/zzafl;

    return-object v0
.end method

.method private zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzafp;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/zzafp<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzafl;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzafl;->zzb:Lcom/google/android/gms/internal/measurement/zzaet;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzaet;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v1

    .line 2
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzafp;

    if-eqz p1, :cond_11

    return-object p1

    :cond_11
    return-object v1
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzafp;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzafl;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzafl;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object p1

    return-object p1

    .line 3
    :cond_d
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzafp;

    return-object v0
.end method
