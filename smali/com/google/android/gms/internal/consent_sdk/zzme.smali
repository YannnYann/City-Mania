###### Class com.google.android.gms.internal.consent_sdk.zzme (com.google.android.gms.internal.consent_sdk.zzme)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzme;
.super Lcom/google/android/gms/internal/consent_sdk/zzqm;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrr;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/consent_sdk/zzme;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/consent_sdk/zzqq;

.field private zzj:Ljava/lang/String;

.field private zzk:Lcom/google/android/gms/internal/consent_sdk/zzmc;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzme;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzme;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzme;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzme;

    const-class v1, Lcom/google/android/gms/internal/consent_sdk/zzme;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzz(Ljava/lang/Class;Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzs()Lcom/google/android/gms/internal/consent_sdk/zzqq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzme;->zzi:Lcom/google/android/gms/internal/consent_sdk/zzqq;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzme;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic zza()Lcom/google/android/gms/internal/consent_sdk/zzme;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzme;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzme;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4e

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
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzme;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzme;

    return-object p1

    .line 5
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzma;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/consent_sdk/zzma;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzmd;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzme;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/consent_sdk/zzme;-><init>()V

    return-object p1

    .line 1
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzos;->zza()Lcom/google/android/gms/internal/consent_sdk/zzqp;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzow;->zza()Lcom/google/android/gms/internal/consent_sdk/zzqp;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzou;->zza()Lcom/google/android/gms/internal/consent_sdk/zzqp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzoq;->zza()Lcom/google/android/gms/internal/consent_sdk/zzqp;

    move-result-object v9

    const-string v10, "zzk"

    const-string v11, "zzj"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v4, "zzg"

    const-string v6, "zzh"

    const-string v8, "zzi"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/consent_sdk/zzme;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzme;

    const-string p3, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u180c\u0001\u0003\u180c\u0002\u0004\u180c\u0003\u0005\u082c\u0006\u1009\u0005\u0007\u1208\u0004"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzw(Lcom/google/android/gms/internal/consent_sdk/zzrq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4e
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
