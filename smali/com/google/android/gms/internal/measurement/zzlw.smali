###### Class com.google.android.gms.internal.measurement.zzlw (com.google.android.gms.internal.measurement.zzlw)
.class public final Lcom/google/android/gms/internal/measurement/zzlw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field public static final synthetic zza:I = 0x0

.field private static final zzb:Ljava/lang/Object;

.field private static volatile zzc:Lcom/google/android/gms/internal/measurement/zzlt; = null

.field private static volatile zzd:Z = false

.field private static final zze:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlw;->zzb:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlu;->zza:Lcom/google/android/gms/internal/measurement/zzlu;

    const-string v1, "BuildInfo must be non-null"

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlw;->zze:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static zza(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlw;->zzc:Lcom/google/android/gms/internal/measurement/zzlt;

    if-nez v0, :cond_4a

    if-nez p0, :cond_7

    goto :goto_4a

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlw;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzlw;->zzc:Lcom/google/android/gms/internal/measurement/zzlt;

    if-nez v1, :cond_46

    monitor-enter v0
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_44

    :try_start_f
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzlw;->zzc:Lcom/google/android/gms/internal/measurement/zzlt;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_18

    move-object p0, v2

    :cond_18
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlt;->zza()Landroid/content/Context;

    move-result-object v2

    if-eq v2, p0, :cond_40

    goto :goto_23

    :catchall_21
    move-exception p0

    goto :goto_42

    :cond_23
    :goto_23
    if-eqz v1, :cond_2b

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzld;->zza()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzma;->zza()V

    .line 4
    :cond_2b
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzlv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzlv;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {v1}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/measurement/zzlc;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzlw;->zzc:Lcom/google/android/gms/internal/measurement/zzlt;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzlw;->zze:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 7
    :cond_40
    monitor-exit v0

    goto :goto_46

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_21

    :try_start_43
    throw p0

    :catchall_44
    move-exception p0

    goto :goto_48

    .line 8
    :cond_46
    :goto_46
    monitor-exit v0

    return-void

    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_44

    throw p0

    :cond_4a
    :goto_4a
    return-void
.end method

###### Class com.google.android.gms.internal.measurement.zzlv (com.google.android.gms.internal.measurement.zzlv)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzlv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field private final synthetic zza:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlv;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    sget v0, Lcom/google/android/gms/internal/measurement/zzlw;->zza:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlv;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlf;->zza(Landroid/content/Context;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
