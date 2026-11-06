###### Class com.google.android.gms.internal.consent_sdk.zzfh (com.google.android.gms.internal.consent_sdk.zzfh)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzfh;
.super Lcom/google/android/gms/internal/consent_sdk/zzqm;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrr;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/consent_sdk/zzfh;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/consent_sdk/zzff;

.field private zzf:Lcom/google/android/gms/internal/consent_sdk/zzlj;

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzfh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzfh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzfh;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzfh;

    const-class v1, Lcom/google/android/gms/internal/consent_sdk/zzfh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzz(Ljava/lang/Class;Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;-><init>()V

    return-void
.end method

.method public static bridge synthetic zza()Lcom/google/android/gms/internal/consent_sdk/zzfh;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzfh;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzfh;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_38

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
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzfh;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzfh;

    return-object p1

    .line 4
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzfb;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/consent_sdk/zzfb;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzfg;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzfh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/consent_sdk/zzfh;-><init>()V

    return-object p1

    .line 1
    :cond_21
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzig;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqp;

    const-string p2, "zzf"

    const-string p3, "zzd"

    const-string v0, "zze"

    const-string v1, "zzg"

    filled-new-array {p3, v0, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/consent_sdk/zzfh;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzfh;

    const-string p3, "\u0004\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0003\u180c\u0002\u0004\u1009\u0001"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzw(Lcom/google/android/gms/internal/consent_sdk/zzrq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_38
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
