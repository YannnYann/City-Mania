###### Class com.google.android.gms.internal.measurement.zzni (com.google.android.gms.internal.measurement.zzni)
.class public final Lcom/google/android/gms/internal/measurement/zzni;
.super Lcom/google/android/gms/internal/measurement/zzadu;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzafd;


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/measurement/zzaec;

.field private static final zzq:Lcom/google/android/gms/internal/measurement/zzni;

.field private static volatile zzr:Lcom/google/android/gms/internal/measurement/zzafj;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/measurement/zzacr;

.field private zzf:Z

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:Lcom/google/android/gms/internal/measurement/zzaef;

.field private zzj:Lcom/google/android/gms/internal/measurement/zzaef;

.field private zzk:Lcom/google/android/gms/internal/measurement/zzaeb;

.field private zzm:Lcom/google/android/gms/internal/measurement/zznm;

.field private zzn:Z

.field private zzo:Z

.field private zzp:Lcom/google/android/gms/internal/measurement/zznf;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzng;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzng;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzl:Lcom/google/android/gms/internal/measurement/zzaec;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzni;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzni;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzq:Lcom/google/android/gms/internal/measurement/zzni;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzni;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcs(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzadu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzadu;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzacr;->zza:Lcom/google/android/gms/internal/measurement/zzacr;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zze:Lcom/google/android/gms/internal/measurement/zzacr;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzg:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcy()Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzi:Lcom/google/android/gms/internal/measurement/zzaef;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcy()Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzj:Lcom/google/android/gms/internal/measurement/zzaef;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcv()Lcom/google/android/gms/internal/measurement/zzaeb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzk:Lcom/google/android/gms/internal/measurement/zzaeb;

    return-void
.end method

.method public static zzo()Lcom/google/android/gms/internal/measurement/zznh;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzq:Lcom/google/android/gms/internal/measurement/zzni;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcn()Lcom/google/android/gms/internal/measurement/zzadp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    return-object v0
.end method

.method public static zzp()Lcom/google/android/gms/internal/measurement/zzni;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzq:Lcom/google/android/gms/internal/measurement/zzni;

    return-object v0
.end method

.method public static synthetic zzr()Lcom/google/android/gms/internal/measurement/zzni;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzq:Lcom/google/android/gms/internal/measurement/zzni;

    return-object v0
.end method


# virtual methods
.method public final zza()Z
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzacr;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zze:Lcom/google/android/gms/internal/measurement/zzacr;

    return-object v0
.end method

.method public final zzc()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzf:Z

    return v0
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzh:J

    return-wide v0
.end method

.method public final zzf()Ljava/util/List;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzi:Lcom/google/android/gms/internal/measurement/zzaef;

    return-object v0
.end method

.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 17

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_6a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_41

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3b

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_35

    const/4 v0, 0x5

    if-eq p1, v0, :cond_32

    const/4 v0, 0x6

    if-ne p1, v0, :cond_31

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzni;->zzr:Lcom/google/android/gms/internal/measurement/zzafj;

    if-nez p1, :cond_30

    const-class v1, Lcom/google/android/gms/internal/measurement/zzni;

    monitor-enter v1

    :try_start_1b
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzni;->zzr:Lcom/google/android/gms/internal/measurement/zzafj;

    if-nez p1, :cond_2c

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzadq;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzq:Lcom/google/android/gms/internal/measurement/zzni;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzadq;-><init>(Lcom/google/android/gms/internal/measurement/zzadu;)V

    sput-object p1, Lcom/google/android/gms/internal/measurement/zzni;->zzr:Lcom/google/android/gms/internal/measurement/zzafj;

    goto :goto_2c

    :catchall_29
    move-exception v0

    move-object p1, v0

    goto :goto_2e

    .line 3
    :cond_2c
    :goto_2c
    monitor-exit v1

    return-object p1

    :goto_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_29

    throw p1

    :cond_30
    return-object p1

    .line 7
    :cond_31
    throw v1

    .line 1
    :cond_32
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzni;->zzq:Lcom/google/android/gms/internal/measurement/zzni;

    return-object p1

    .line 4
    :cond_35
    new-instance p1, Lcom/google/android/gms/internal/measurement/zznh;

    .line 5
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/zznh;-><init>([B)V

    return-object p1

    :cond_3b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzni;

    .line 6
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzni;-><init>()V

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

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzabz;->zzc()Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v8

    const-string v9, "zzm"

    const-string v10, "zzn"

    const-string v11, "zzo"

    const-string v12, "zzp"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzni;->zzq:Lcom/google/android/gms/internal/measurement/zzni;

    const-string v1, "\u0004\u000b\u0000\u0001\u0001\u000c\u000b\u0000\u0003\u0000\u0001\u100a\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u001a\u0006\u001a\u0007\u082c\u0008\u1009\u0004\n\u1007\u0005\u000b\u1007\u0006\u000c\u1009\u0007"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzadu;->zzct(Lcom/google/android/gms/internal/measurement/zzafc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6a
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzj:Lcom/google/android/gms/internal/measurement/zzaef;

    return-object v0
.end method

.method public final zzi()Ljava/util/List;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaed$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzk:Lcom/google/android/gms/internal/measurement/zzaeb;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzni;->zzl:Lcom/google/android/gms/internal/measurement/zzaec;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaed$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzaeb;Lcom/google/android/gms/internal/measurement/zzaec;)V

    return-object v0
.end method

.method public final zzj()Z
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzb:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzk()Lcom/google/android/gms/internal/measurement/zznm;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzm:Lcom/google/android/gms/internal/measurement/zznm;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznm;->zzc()Lcom/google/android/gms/internal/measurement/zznm;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzl()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzn:Z

    return v0
.end method

.method public final zzm()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzo:Z

    return v0
.end method

.method public final zzn()Lcom/google/android/gms/internal/measurement/zznf;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzp:Lcom/google/android/gms/internal/measurement/zznf;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznf;->zzb()Lcom/google/android/gms/internal/measurement/zznf;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final synthetic zzq(J)V
    .registers 4

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzni;->zzh:J

    return-void
.end method
