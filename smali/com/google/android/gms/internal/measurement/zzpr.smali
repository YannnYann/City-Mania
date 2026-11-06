###### Class com.google.android.gms.internal.measurement.zzpr (com.google.android.gms.internal.measurement.zzpr)
.class public final Lcom/google/android/gms/internal/measurement/zzpr;
.super Lcom/google/android/gms/internal/measurement/zzadu;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzafd;


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/measurement/zzpr;

.field private static volatile zzm:Lcom/google/android/gms/internal/measurement/zzafj;


# instance fields
.field private zzb:I

.field private zze:Ljava/lang/String;

.field private zzf:Z

.field private zzg:Lcom/google/android/gms/internal/measurement/zzaef;

.field private zzh:I

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzpr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpr;->zzl:Lcom/google/android/gms/internal/measurement/zzpr;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzpr;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcs(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzadu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzadu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpr;->zze:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcy()Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpr;->zzg:Lcom/google/android/gms/internal/measurement/zzaef;

    return-void
.end method

.method public static zzh(Ljava/io/InputStream;Lcom/google/android/gms/internal/measurement/zzadf;)Lcom/google/android/gms/internal/measurement/zzpr;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpr;->zzl:Lcom/google/android/gms/internal/measurement/zzpr;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcB(Lcom/google/android/gms/internal/measurement/zzadu;Ljava/io/InputStream;Lcom/google/android/gms/internal/measurement/zzadf;)Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzpr;

    return-object p0
.end method

.method public static synthetic zzi()Lcom/google/android/gms/internal/measurement/zzpr;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpr;->zzl:Lcom/google/android/gms/internal/measurement/zzpr;

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpr;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzpr;->zzf:Z

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzabz;
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzpr;->zzh:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzabz;->zzb(I)Lcom/google/android/gms/internal/measurement/zzabz;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzabz;->zza:Lcom/google/android/gms/internal/measurement/zzabz;

    :cond_a
    return-object v0
.end method

.method public final zzd()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzpr;->zzi:Z

    return v0
.end method

.method public final zze()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzpr;->zzj:Z

    return v0
.end method

.method public final zzf()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzpr;->zzk:Z

    return v0
.end method

.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_62

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzpr;->zzm:Lcom/google/android/gms/internal/measurement/zzafj;

    if-nez p1, :cond_30

    const-class p2, Lcom/google/android/gms/internal/measurement/zzpr;

    monitor-enter p2

    :try_start_1b
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzpr;->zzm:Lcom/google/android/gms/internal/measurement/zzafj;

    if-nez p1, :cond_2c

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzadq;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzpr;->zzl:Lcom/google/android/gms/internal/measurement/zzpr;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzadq;-><init>(Lcom/google/android/gms/internal/measurement/zzadu;)V

    sput-object p1, Lcom/google/android/gms/internal/measurement/zzpr;->zzm:Lcom/google/android/gms/internal/measurement/zzafj;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzpr;->zzl:Lcom/google/android/gms/internal/measurement/zzpr;

    return-object p1

    .line 4
    :cond_35
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzpq;

    .line 5
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzpq;-><init>([B)V

    return-object p1

    :cond_3b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzpr;

    .line 6
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzpr;-><init>()V

    return-object p1

    .line 1
    :cond_41
    const-string v0, "zzb"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzabz;->zzc()Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v5

    const-string v6, "zzi"

    const-string v7, "zzk"

    const-string v8, "zzj"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzpr;->zzl:Lcom/google/android/gms/internal/measurement/zzpr;

    const-string p3, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0003\u001a\u0004\u180c\u0002\u0005\u1007\u0003\u0006\u1007\u0005\u0007\u1007\u0004"

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzadu;->zzct(Lcom/google/android/gms/internal/measurement/zzafc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_62
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
