###### Class com.google.android.gms.internal.play_billing.zzjv (com.google.android.gms.internal.play_billing.zzjv)
.class public final Lcom/google/android/gms/internal/play_billing/zzjv;
.super Lcom/google/android/gms/internal/play_billing/zzfi;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgm;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzjv;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Z

.field private zzg:J

.field private zzh:Z

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzjv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzjv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzjv;->zzb:Lcom/google/android/gms/internal/play_billing/zzjv;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzjv;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzw(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfi;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzfi;-><init>()V

    return-void
.end method

.method public static synthetic zzA(Lcom/google/android/gms/internal/play_billing/zzjv;Z)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzjv;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzjv;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzjv;->zzh:Z

    return-void
.end method

.method public static synthetic zzB(Lcom/google/android/gms/internal/play_billing/zzjv;I)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzjv;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzjv;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjv;->zzi:I

    return-void
.end method

.method public static synthetic zzC(Lcom/google/android/gms/internal/play_billing/zzjv;J)V
    .registers 4

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzjv;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzjv;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/play_billing/zzjv;->zzg:J

    return-void
.end method

.method public static synthetic zzD(Lcom/google/android/gms/internal/play_billing/zzjv;Z)V
    .registers 2

    .line 0
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzjv;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjv;->zzd:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzjv;->zzf:Z

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/play_billing/zzjt;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjv;->zzb:Lcom/google/android/gms/internal/play_billing/zzjv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzl()Lcom/google/android/gms/internal/play_billing/zzfe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjt;

    return-object v0
.end method

.method public static bridge synthetic zzd()Lcom/google/android/gms/internal/play_billing/zzjv;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjv;->zzb:Lcom/google/android/gms/internal/play_billing/zzjv;

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjv;->zzb:Lcom/google/android/gms/internal/play_billing/zzjv;

    return-object p1

    .line 4
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzjt;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzjt;-><init>(Lcom/google/android/gms/internal/play_billing/zzju;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzjv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzjv;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-string v4, "zzh"

    const-string v5, "zzi"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjv;->zzb:Lcom/google/android/gms/internal/play_billing/zzjv;

    const-string p3, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1007\u0001\u0003\u1002\u0002\u0004\u1007\u0003\u0005\u1004\u0004"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzt(Lcom/google/android/gms/internal/play_billing/zzgl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3a
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
