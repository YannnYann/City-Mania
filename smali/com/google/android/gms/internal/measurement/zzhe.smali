###### Class com.google.android.gms.internal.measurement.zzhe (com.google.android.gms.internal.measurement.zzhe)
.class public final Lcom/google/android/gms/internal/measurement/zzhe;
.super Lcom/google/android/gms/internal/measurement/zzadu;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzafd;


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/measurement/zzhe;

.field private static volatile zzm:Lcom/google/android/gms/internal/measurement/zzafj;


# instance fields
.field private zzb:I

.field private zze:Z

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzhe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhe;->zzl:Lcom/google/android/gms/internal/measurement/zzhe;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzhe;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcs(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzadu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzadu;-><init>()V

    return-void
.end method

.method public static zzi()Lcom/google/android/gms/internal/measurement/zzhd;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhe;->zzl:Lcom/google/android/gms/internal/measurement/zzhe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcn()Lcom/google/android/gms/internal/measurement/zzadp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhd;

    return-object v0
.end method

.method public static zzj()Lcom/google/android/gms/internal/measurement/zzhe;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhe;->zzl:Lcom/google/android/gms/internal/measurement/zzhe;

    return-object v0
.end method

.method public static synthetic zzr()Lcom/google/android/gms/internal/measurement/zzhe;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhe;->zzl:Lcom/google/android/gms/internal/measurement/zzhe;

    return-object v0
.end method


# virtual methods
.method public final zza()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zze:Z

    return v0
.end method

.method public final zzb()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzf:Z

    return v0
.end method

.method public final zzc()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzg:Z

    return v0
.end method

.method public final zzd()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzh:Z

    return v0
.end method

.method public final zze()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzi:Z

    return v0
.end method

.method public final zzf()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzj:Z

    return v0
.end method

.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5e

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzhe;->zzm:Lcom/google/android/gms/internal/measurement/zzafj;

    if-nez p1, :cond_30

    const-class p2, Lcom/google/android/gms/internal/measurement/zzhe;

    monitor-enter p2

    :try_start_1b
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzhe;->zzm:Lcom/google/android/gms/internal/measurement/zzafj;

    if-nez p1, :cond_2c

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzadq;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzhe;->zzl:Lcom/google/android/gms/internal/measurement/zzhe;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzadq;-><init>(Lcom/google/android/gms/internal/measurement/zzadu;)V

    sput-object p1, Lcom/google/android/gms/internal/measurement/zzhe;->zzm:Lcom/google/android/gms/internal/measurement/zzafj;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzhe;->zzl:Lcom/google/android/gms/internal/measurement/zzhe;

    return-object p1

    .line 4
    :cond_35
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhd;

    .line 5
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzhd;-><init>([B)V

    return-object p1

    :cond_3b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhe;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzhe;-><init>()V

    return-object p1

    .line 1
    :cond_41
    const-string v0, "zzb"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v5, "zzi"

    const-string v6, "zzj"

    const-string v7, "zzk"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzhe;->zzl:Lcom/google/android/gms/internal/measurement/zzhe;

    const-string p3, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005\u0007\u1007\u0006"

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzadu;->zzct(Lcom/google/android/gms/internal/measurement/zzafc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5e
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzk:Z

    return v0
.end method

.method public final synthetic zzk(Z)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zze:Z

    return-void
.end method

.method public final synthetic zzl(Z)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzf:Z

    return-void
.end method

.method public final synthetic zzm(Z)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzg:Z

    return-void
.end method

.method public final synthetic zzn(Z)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzh:Z

    return-void
.end method

.method public final synthetic zzo(Z)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzi:Z

    return-void
.end method

.method public final synthetic zzp(Z)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzb:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzj:Z

    return-void
.end method

.method public final synthetic zzq(Z)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzb:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhe;->zzk:Z

    return-void
.end method
