###### Class com.google.android.gms.internal.play_billing.zzip (com.google.android.gms.internal.play_billing.zzip)
.class public final Lcom/google/android/gms/internal/play_billing/zzip;
.super Lcom/google/android/gms/internal/play_billing/zzfi;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgm;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzip;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/play_billing/zzfm;

.field private zzh:Lcom/google/android/gms/internal/play_billing/zzfn;

.field private zzi:Lcom/google/android/gms/internal/play_billing/zzig;

.field private zzj:Z

.field private zzk:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzip;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzip;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lcom/google/android/gms/internal/play_billing/zzip;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzip;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzw(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfi;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzfi;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zze:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzq()Lcom/google/android/gms/internal/play_billing/zzfm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzg:Lcom/google/android/gms/internal/play_billing/zzfm;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzr()Lcom/google/android/gms/internal/play_billing/zzfn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzip;->zzh:Lcom/google/android/gms/internal/play_billing/zzfn;

    return-void
.end method

.method public static bridge synthetic zzc()Lcom/google/android/gms/internal/play_billing/zzip;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lcom/google/android/gms/internal/play_billing/zzip;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_44

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lcom/google/android/gms/internal/play_billing/zzip;

    return-object p1

    .line 5
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzim;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzim;-><init>(Lcom/google/android/gms/internal/play_billing/zzio;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzip;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzip;-><init>()V

    return-object p1

    .line 1
    :cond_21
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzin;->zza:Lcom/google/android/gms/internal/play_billing/zzfl;

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzik;->zza:Lcom/google/android/gms/internal/play_billing/zzfl;

    const-string v9, "zzj"

    const-string v10, "zzk"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v4, "zzg"

    const-string v6, "zzh"

    const-class v7, Lcom/google/android/gms/internal/play_billing/zzjl;

    const-string v8, "zzi"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzip;->zzb:Lcom/google/android/gms/internal/play_billing/zzip;

    const-string p3, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u180c\u0001\u0003\u082c\u0004\u001b\u0005\u1009\u0002\u0006\u1007\u0003\u0007\u1007\u0004"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzt(Lcom/google/android/gms/internal/play_billing/zzgl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_44
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
