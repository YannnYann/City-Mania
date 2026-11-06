###### Class com.google.android.gms.internal.consent_sdk.zzhc (com.google.android.gms.internal.consent_sdk.zzhc)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzhc;
.super Lcom/google/android/gms/internal/consent_sdk/zzqm;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrr;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/consent_sdk/zzhc;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/consent_sdk/zzgy;

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/consent_sdk/zzha;

.field private zzh:Lcom/google/android/gms/internal/consent_sdk/zzgw;

.field private zzi:Lcom/google/android/gms/internal/consent_sdk/zzgt;

.field private zzj:Lcom/google/android/gms/internal/consent_sdk/zzqr;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzhc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzhc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzhc;

    const-class v1, Lcom/google/android/gms/internal/consent_sdk/zzhc;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzz(Ljava/lang/Class;Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzf:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzt()Lcom/google/android/gms/internal/consent_sdk/zzqr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzqr;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/consent_sdk/zzgu;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzhc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzp()Lcom/google/android/gms/internal/consent_sdk/zzqj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzgu;

    return-object v0
.end method

.method public static bridge synthetic zzc()Lcom/google/android/gms/internal/consent_sdk/zzhc;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzhc;

    return-object v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/consent_sdk/zzhc;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzqr;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqr;->zzc()Z

    move-result v1

    if-nez v1, :cond_16

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v1

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzqr;->zzd(I)Lcom/google/android/gms/internal/consent_sdk/zzqr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzqr;

    :cond_16
    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzqr;

    .line 5
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/consent_sdk/zzhc;Ljava/lang/String;)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/consent_sdk/zzhc;Lcom/google/android/gms/internal/consent_sdk/zzgt;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzi:Lcom/google/android/gms/internal/consent_sdk/zzgt;

    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/consent_sdk/zzhc;Lcom/google/android/gms/internal/consent_sdk/zzgw;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzgw;

    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/consent_sdk/zzhc;Lcom/google/android/gms/internal/consent_sdk/zzgy;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zze:Lcom/google/android/gms/internal/consent_sdk/zzgy;

    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    return-void
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/consent_sdk/zzhc;Lcom/google/android/gms/internal/consent_sdk/zzha;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzha;

    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_3c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_21

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1b

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_15

    const/4 p2, 0x5

    if-ne p1, p2, :cond_14

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzhc;

    return-object p1

    .line 5
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzgu;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/consent_sdk/zzgu;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzhb;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzhc;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/consent_sdk/zzhc;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-string v5, "zzi"

    const-string v6, "zzj"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzhc;

    const-string p3, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1009\u0000\u0002\u1208\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u1009\u0004\u0006\u021a"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzw(Lcom/google/android/gms/internal/consent_sdk/zzrq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3c
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
