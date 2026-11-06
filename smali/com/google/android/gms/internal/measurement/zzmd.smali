###### Class com.google.android.gms.internal.measurement.zzmd (com.google.android.gms.internal.measurement.zzmd)
.class public final Lcom/google/android/gms/internal/measurement/zzmd;
.super Lcom/google/android/gms/internal/measurement/zzadu;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzafd;


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzmd;

.field private static volatile zzh:Lcom/google/android/gms/internal/measurement/zzafj;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzmd;->zzg:Lcom/google/android/gms/internal/measurement/zzmd;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzmd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcs(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzadu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzadu;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzmc;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmd;->zzg:Lcom/google/android/gms/internal/measurement/zzmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzadu;->zzcn()Lcom/google/android/gms/internal/measurement/zzadp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmc;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzmd;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmd;->zzg:Lcom/google/android/gms/internal/measurement/zzmd;

    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/measurement/zzmd;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmd;->zzg:Lcom/google/android/gms/internal/measurement/zzmd;

    return-object v0
.end method


# virtual methods
.method public final synthetic zzd(I)V
    .registers 2

    .line 0
    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zze:I

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzb:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzb:I

    return-void
.end method

.method public final synthetic zze(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    add-int/lit8 p1, p1, -0x2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzb:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzb:I

    return-void

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get the number of an unknown enum value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_53

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzmd;->zzh:Lcom/google/android/gms/internal/measurement/zzafj;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/measurement/zzmd;

    monitor-enter p2

    :try_start_1b
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzmd;->zzh:Lcom/google/android/gms/internal/measurement/zzafj;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzadq;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzmd;->zzg:Lcom/google/android/gms/internal/measurement/zzmd;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzadq;-><init>(Lcom/google/android/gms/internal/measurement/zzadu;)V

    sput-object p1, Lcom/google/android/gms/internal/measurement/zzmd;->zzh:Lcom/google/android/gms/internal/measurement/zzafj;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzmd;->zzg:Lcom/google/android/gms/internal/measurement/zzmd;

    return-object p1

    .line 4
    :cond_34
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzmc;

    .line 5
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzmc;-><init>([B)V

    return-object p1

    :cond_3a
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzmd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzmd;-><init>()V

    return-object p1

    .line 1
    :cond_40
    const-string p1, "zzb"

    const-string p2, "zze"

    const-string p3, "zzf"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzmd;->zzg:Lcom/google/android/gms/internal/measurement/zzmd;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001"

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzadu;->zzct(Lcom/google/android/gms/internal/measurement/zzafc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_53
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
