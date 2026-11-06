###### Class com.google.android.gms.internal.measurement.zznk (com.google.android.gms.internal.measurement.zznk)
.class public final Lcom/google/android/gms/internal/measurement/zznk;
.super Lcom/google/android/gms/internal/measurement/zzadu;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzafd;


# static fields
.field private static final zzo:Lcom/google/android/gms/internal/measurement/zznk;

.field private static volatile zzp:Lcom/google/android/gms/internal/measurement/zzafj;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/measurement/zzacr;

.field private zzf:Z

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/measurement/zzaef;

.field private zzi:Lcom/google/android/gms/internal/measurement/zzaef;

.field private zzj:Lcom/google/android/gms/internal/measurement/zzaeb;

.field private zzk:Lcom/google/android/gms/internal/measurement/zznm;

.field private zzl:Z

.field private zzm:Z

.field private zzn:Lcom/google/android/gms/internal/measurement/zznf;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznk;->zzo:Lcom/google/android/gms/internal/measurement/zznk;

    const-class v1, Lcom/google/android/gms/internal/measurement/zznk;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zze:Lcom/google/android/gms/internal/measurement/zzacr;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzg:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcy()Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzh:Lcom/google/android/gms/internal/measurement/zzaef;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcy()Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzi:Lcom/google/android/gms/internal/measurement/zzaef;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcv()Lcom/google/android/gms/internal/measurement/zzaeb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzj:Lcom/google/android/gms/internal/measurement/zzaeb;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zznk;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznk;->zzo:Lcom/google/android/gms/internal/measurement/zznk;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/gms/internal/measurement/zznk;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznk;->zzo:Lcom/google/android/gms/internal/measurement/zznk;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_68

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zznk;->zzp:Lcom/google/android/gms/internal/measurement/zzafj;

    if-nez p1, :cond_30

    const-class p2, Lcom/google/android/gms/internal/measurement/zznk;

    monitor-enter p2

    :try_start_1b
    sget-object p1, Lcom/google/android/gms/internal/measurement/zznk;->zzp:Lcom/google/android/gms/internal/measurement/zzafj;

    if-nez p1, :cond_2c

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzadq;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zznk;->zzo:Lcom/google/android/gms/internal/measurement/zznk;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzadq;-><init>(Lcom/google/android/gms/internal/measurement/zzadu;)V

    sput-object p1, Lcom/google/android/gms/internal/measurement/zznk;->zzp:Lcom/google/android/gms/internal/measurement/zzafj;

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

    .line 7
    :cond_31
    throw p3

    .line 1
    :cond_32
    sget-object p1, Lcom/google/android/gms/internal/measurement/zznk;->zzo:Lcom/google/android/gms/internal/measurement/zznk;

    return-object p1

    .line 4
    :cond_35
    new-instance p1, Lcom/google/android/gms/internal/measurement/zznj;

    .line 5
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zznj;-><init>([B)V

    return-object p1

    :cond_3b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zznk;

    .line 6
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zznk;-><init>()V

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

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzabz;->zzc()Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v7

    const-string v8, "zzk"

    const-string v9, "zzl"

    const-string v10, "zzm"

    const-string v11, "zzn"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zznk;->zzo:Lcom/google/android/gms/internal/measurement/zznk;

    const-string p3, "\u0004\n\u0000\u0001\u0001\u000c\n\u0000\u0003\u0000\u0001\u100a\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u001a\u0005\u001a\u0007\u082c\u0008\u1009\u0003\n\u1007\u0004\u000b\u1007\u0005\u000c\u1009\u0006"

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzadu;->zzct(Lcom/google/android/gms/internal/measurement/zzafc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_68
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
