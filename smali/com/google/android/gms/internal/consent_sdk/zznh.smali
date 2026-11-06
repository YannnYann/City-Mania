###### Class com.google.android.gms.internal.consent_sdk.zznh (com.google.android.gms.internal.consent_sdk.zznh)
.class public final Lcom/google/android/gms/internal/consent_sdk/zznh;
.super Lcom/google/android/gms/internal/consent_sdk/zzqm;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrr;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/consent_sdk/zznh;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:I

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/consent_sdk/zzte;

.field private zzj:Lcom/google/android/gms/internal/consent_sdk/zzte;

.field private zzk:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zznh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zznh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zznh;->zzb:Lcom/google/android/gms/internal/consent_sdk/zznh;

    const-class v1, Lcom/google/android/gms/internal/consent_sdk/zznh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzz(Ljava/lang/Class;Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zznh;->zze:I

    return-void
.end method

.method public static bridge synthetic zza()Lcom/google/android/gms/internal/consent_sdk/zznh;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zznh;->zzb:Lcom/google/android/gms/internal/consent_sdk/zznh;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_46

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
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zznh;->zzb:Lcom/google/android/gms/internal/consent_sdk/zznh;

    return-object p1

    .line 4
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zznf;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/consent_sdk/zznf;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzno;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zznh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/consent_sdk/zznh;-><init>()V

    return-object p1

    .line 1
    :cond_21
    sget-object v4, Lcom/google/android/gms/internal/consent_sdk/zznd;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqp;

    sget-object v6, Lcom/google/android/gms/internal/consent_sdk/zzne;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqp;

    sget-object v10, Lcom/google/android/gms/internal/consent_sdk/zzng;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqp;

    const-class v11, Lcom/google/android/gms/internal/consent_sdk/zzqa;

    const-string v0, "zzf"

    const-string v1, "zze"

    const-string v2, "zzd"

    const-string v3, "zzg"

    const-string v5, "zzh"

    const-string v7, "zzi"

    const-string v8, "zzj"

    const-string v9, "zzk"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/consent_sdk/zznh;->zzb:Lcom/google/android/gms/internal/consent_sdk/zznh;

    const-string p3, "\u0004\u0007\u0001\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u180c\u0004\u00067\u0000\u0007<\u0000"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzw(Lcom/google/android/gms/internal/consent_sdk/zzrq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_46
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
