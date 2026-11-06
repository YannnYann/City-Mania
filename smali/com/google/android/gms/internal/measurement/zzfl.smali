###### Class com.google.android.gms.internal.measurement.zzfl (com.google.android.gms.internal.measurement.zzfl)
.class public final Lcom/google/android/gms/internal/measurement/zzfl;
.super Lcom/google/android/gms/internal/measurement/zzadu;
.source "com.google.android.gms:play-services-measurement@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzafd;


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/zzfl;

.field private static volatile zzk:Lcom/google/android/gms/internal/measurement/zzafj;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:Z

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfl;->zzj:Lcom/google/android/gms/internal/measurement/zzfl;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcs(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzadu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzadu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static zzk()Lcom/google/android/gms/internal/measurement/zzfl;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfl;->zzj:Lcom/google/android/gms/internal/measurement/zzfl;

    return-object v0
.end method

.method public static synthetic zzl()Lcom/google/android/gms/internal/measurement/zzfl;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfl;->zzj:Lcom/google/android/gms/internal/measurement/zzfl;

    return-object v0
.end method


# virtual methods
.method public final zza()Z
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Z
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzb:I

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
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzf:Z

    return v0
.end method

.method public final zzd()Z
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzb:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Z
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzb:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_41

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3b

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_35

    const/4 p2, 0x5

    if-eq p1, p2, :cond_32

    const/4 p2, 0x6

    if-ne p1, p2, :cond_31

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfl;->zzk:Lcom/google/android/gms/internal/measurement/zzafj;

    if-nez p1, :cond_30

    const-class p2, Lcom/google/android/gms/internal/measurement/zzfl;

    monitor-enter p2

    :try_start_1b
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfl;->zzk:Lcom/google/android/gms/internal/measurement/zzafj;

    if-nez p1, :cond_2c

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzadq;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfl;->zzj:Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzadq;-><init>(Lcom/google/android/gms/internal/measurement/zzadu;)V

    sput-object p1, Lcom/google/android/gms/internal/measurement/zzfl;->zzk:Lcom/google/android/gms/internal/measurement/zzafj;

    goto :goto_2c

    :catchall_29
    move-exception v0

    move-object p1, v0

    goto :goto_2e

    .line 3
    :cond_2c
    :goto_2c
    monitor-exit p2

    return-object p1

    :goto_2e
    monitor-exit p2
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_29

    throw p1

    :cond_30
    return-object p1

    .line 6
    :cond_31
    throw p3

    .line 1
    :cond_32
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfl;->zzj:Lcom/google/android/gms/internal/measurement/zzfl;

    return-object p1

    .line 4
    :cond_35
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfi;

    .line 5
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>([B)V

    return-object p1

    :cond_3b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfl;-><init>()V

    return-object p1

    .line 1
    :cond_41
    const-string v0, "zzb"

    const-string v1, "zze"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfj;->zza:Lcom/google/android/gms/internal/measurement/zzadz;

    const-string v3, "zzf"

    const-string v4, "zzg"

    const-string v5, "zzh"

    const-string v6, "zzi"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfl;->zzj:Lcom/google/android/gms/internal/measurement/zzfl;

    const-string p3, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004"

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzadu;->zzct(Lcom/google/android/gms/internal/measurement/zzafc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5c
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Z
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzb:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzm()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfl;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zza(I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method
