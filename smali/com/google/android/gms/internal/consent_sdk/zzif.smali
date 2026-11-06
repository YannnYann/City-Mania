###### Class com.google.android.gms.internal.consent_sdk.zzif (com.google.android.gms.internal.consent_sdk.zzif)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzif;
.super Lcom/google/android/gms/internal/consent_sdk/zzqm;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrr;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/consent_sdk/zzif;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:J

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzif;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzif;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzif;

    const-class v1, Lcom/google/android/gms/internal/consent_sdk/zzif;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzz(Ljava/lang/Class;Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zze:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/consent_sdk/zzid;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzp()Lcom/google/android/gms/internal/consent_sdk/zzqj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzid;

    return-object v0
.end method

.method public static bridge synthetic zzc()Lcom/google/android/gms/internal/consent_sdk/zzif;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzif;

    return-object v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/consent_sdk/zzif;Lcom/google/android/gms/internal/consent_sdk/zzhc;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzf:Ljava/lang/Object;

    const/16 p1, 0x26

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zze:I

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/consent_sdk/zzif;J)V
    .registers 4

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzg:J

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 33

    add-int/lit8 v0, p1, -0x1

    if-eqz v0, :cond_66

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_15

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzif;

    return-object v0

    .line 4
    :cond_14
    throw v2

    .line 2
    :cond_15
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzid;

    .line 3
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/consent_sdk/zzid;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzie;)V

    return-object v0

    :cond_1b
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzif;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzif;-><init>()V

    return-object v0

    .line 1
    :cond_21
    const-class v27, Lcom/google/android/gms/internal/consent_sdk/zznu;

    const-class v28, Lcom/google/android/gms/internal/consent_sdk/zzhc;

    const-string v1, "zzf"

    const-string v2, "zze"

    const-string v3, "zzd"

    const-class v4, Lcom/google/android/gms/internal/consent_sdk/zzla;

    const-string v5, "zzg"

    const-class v6, Lcom/google/android/gms/internal/consent_sdk/zzlz;

    const-class v7, Lcom/google/android/gms/internal/consent_sdk/zziw;

    const-class v8, Lcom/google/android/gms/internal/consent_sdk/zzfa;

    const-class v9, Lcom/google/android/gms/internal/consent_sdk/zzkc;

    const-class v10, Lcom/google/android/gms/internal/consent_sdk/zzfo;

    const-class v11, Lcom/google/android/gms/internal/consent_sdk/zzic;

    const-class v12, Lcom/google/android/gms/internal/consent_sdk/zzfh;

    const-class v13, Lcom/google/android/gms/internal/consent_sdk/zzgg;

    const-class v14, Lcom/google/android/gms/internal/consent_sdk/zzjf;

    const-class v15, Lcom/google/android/gms/internal/consent_sdk/zzjo;

    const-class v16, Lcom/google/android/gms/internal/consent_sdk/zznp;

    const-class v17, Lcom/google/android/gms/internal/consent_sdk/zzlo;

    const-class v18, Lcom/google/android/gms/internal/consent_sdk/zzok;

    const-string v19, "zzh"

    const-class v20, Lcom/google/android/gms/internal/consent_sdk/zzoh;

    const-class v21, Lcom/google/android/gms/internal/consent_sdk/zzme;

    const-class v22, Lcom/google/android/gms/internal/consent_sdk/zzgr;

    const-class v23, Lcom/google/android/gms/internal/consent_sdk/zznb;

    const-class v24, Lcom/google/android/gms/internal/consent_sdk/zzmx;

    const-class v25, Lcom/google/android/gms/internal/consent_sdk/zzfr;

    const-class v26, Lcom/google/android/gms/internal/consent_sdk/zzoo;

    filled-new-array/range {v1 .. v28}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzif;

    const-string v2, "\u0004\u0019\u0001\u0001\u0008&\u0019\u0000\u0000\u0000\u0008<\u0000\t\u1002\u0000\u000b<\u0000\u000c<\u0000\r<\u0000\u000f<\u0000\u0011<\u0000\u0012<\u0000\u0013<\u0000\u0014<\u0000\u0015<\u0000\u0016<\u0000\u0019<\u0000\u001a<\u0000\u001b<\u0000\u001d\u1004\u0001\u001e<\u0000\u001f<\u0000 <\u0000!<\u0000\"<\u0000#<\u0000$<\u0000%<\u0000&<\u0000"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzw(Lcom/google/android/gms/internal/consent_sdk/zzrq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_66
    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
