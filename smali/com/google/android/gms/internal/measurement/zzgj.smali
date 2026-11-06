###### Class com.google.android.gms.internal.measurement.zzgj (com.google.android.gms.internal.measurement.zzgj)
.class public final Lcom/google/android/gms/internal/measurement/zzgj;
.super Lcom/google/android/gms/internal/measurement/zzadu;
.source "com.google.android.gms:play-services-measurement@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzafd;


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzgj;

.field private static volatile zzj:Lcom/google/android/gms/internal/measurement/zzafj;


# instance fields
.field private zzb:I

.field private zze:Ljava/lang/String;

.field private zzf:Z

.field private zzg:Z

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgj;->zzi:Lcom/google/android/gms/internal/measurement/zzgj;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcs(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzadu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzadu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zze:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzj()Lcom/google/android/gms/internal/measurement/zzgj;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgj;->zzi:Lcom/google/android/gms/internal/measurement/zzgj;

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Z
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzf:Z

    return v0
.end method

.method public final zzd()Z
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzb:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzg:Z

    return v0
.end method

.method public final zzf()Z
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzb:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_57

    const/4 p2, 0x2

    if-eq p1, p2, :cond_40

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3a

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_34

    const/4 p2, 0x5

    if-eq p1, p2, :cond_31

    const/4 p2, 0x6

    if-ne p1, p2, :cond_30

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzj:Lcom/google/android/gms/internal/measurement/zzafj;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/measurement/zzgj;

    monitor-enter p2

    :try_start_1b
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzj:Lcom/google/android/gms/internal/measurement/zzafj;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzadq;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzgj;->zzi:Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzadq;-><init>(Lcom/google/android/gms/internal/measurement/zzadu;)V

    sput-object p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzj:Lcom/google/android/gms/internal/measurement/zzafj;

    goto :goto_2b

    :catchall_29
    move-exception p1

    goto :goto_2d

    .line 3
    :cond_2b
    :goto_2b
    monitor-exit p2

    return-object p1

    :goto_2d
    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_29

    throw p1

    :cond_2f
    return-object p1

    .line 6
    :cond_30
    throw p3

    .line 1
    :cond_31
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzi:Lcom/google/android/gms/internal/measurement/zzgj;

    return-object p1

    .line 4
    :cond_34
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgi;

    .line 5
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzgi;-><init>([B)V

    return-object p1

    :cond_3a
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgj;-><init>()V

    return-object p1

    .line 1
    :cond_40
    const-string p1, "zzb"

    const-string p2, "zze"

    const-string p3, "zzf"

    const-string v0, "zzg"

    const-string v1, "zzh"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgj;->zzi:Lcom/google/android/gms/internal/measurement/zzgj;

    const-string p3, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1004\u0003"

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzadu;->zzct(Lcom/google/android/gms/internal/measurement/zzafc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_57
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzh:I

    return v0
.end method

.method public final synthetic zzi(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zze:Ljava/lang/String;

    return-void
.end method
