###### Class com.google.android.gms.internal.consent_sdk.zzlf (com.google.android.gms.internal.consent_sdk.zzlf)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzlf;
.super Lcom/google/android/gms/internal/consent_sdk/zzqm;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrr;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/consent_sdk/zzlf;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/consent_sdk/zzrk;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzlf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzlf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzlf;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzlf;

    const-class v1, Lcom/google/android/gms/internal/consent_sdk/zzlf;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzz(Ljava/lang/Class;Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzrk;->zza()Lcom/google/android/gms/internal/consent_sdk/zzrk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzlf;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzrk;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzlf;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzlf;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzlf;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic zza()Lcom/google/android/gms/internal/consent_sdk/zzlf;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzlf;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzlf;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_3a

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
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzlf;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzlf;

    return-object p1

    .line 6
    :cond_14
    throw p3

    .line 3
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzld;

    .line 4
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/consent_sdk/zzld;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzli;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzlf;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/consent_sdk/zzlf;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-string v4, "zzh"

    .line 2
    sget-object v5, Lcom/google/android/gms/internal/consent_sdk/zzle;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrj;

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/consent_sdk/zzlf;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzlf;

    const-string p3, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0001\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u00042"

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzw(Lcom/google/android/gms/internal/consent_sdk/zzrq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3a
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
