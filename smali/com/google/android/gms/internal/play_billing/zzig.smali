###### Class com.google.android.gms.internal.play_billing.zzig (com.google.android.gms.internal.play_billing.zzig)
.class public final Lcom/google/android/gms/internal/play_billing/zzig;
.super Lcom/google/android/gms/internal/play_billing/zzfi;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgm;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzig;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzig;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzig;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzig;->zzb:Lcom/google/android/gms/internal/play_billing/zzig;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzig;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzw(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfi;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzfi;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzA(Lcom/google/android/gms/internal/play_billing/zzig;Ljava/lang/String;)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzB(Lcom/google/android/gms/internal/play_billing/zzig;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzC(Lcom/google/android/gms/internal/play_billing/zzig;I)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zzi:I

    return-void
.end method

.method public static synthetic zzD(Lcom/google/android/gms/internal/play_billing/zzig;Lcom/google/android/gms/internal/play_billing/zzie;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzie;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zzd:I

    return-void
.end method

.method public static synthetic zzE(Lcom/google/android/gms/internal/play_billing/zzig;I)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zze:I

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/play_billing/zzic;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzig;->zzb:Lcom/google/android/gms/internal/play_billing/zzig;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzl()Lcom/google/android/gms/internal/play_billing/zzfe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzic;

    return-object v0
.end method

.method public static bridge synthetic zzd()Lcom/google/android/gms/internal/play_billing/zzig;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzig;->zzb:Lcom/google/android/gms/internal/play_billing/zzig;

    return-object v0
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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzig;->zzb:Lcom/google/android/gms/internal/play_billing/zzig;

    return-object p1

    .line 4
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzic;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzic;-><init>(Lcom/google/android/gms/internal/play_billing/zzif;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzig;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzig;-><init>()V

    return-object p1

    .line 1
    :cond_21
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzid;->zza:Lcom/google/android/gms/internal/play_billing/zzfl;

    const-string v5, "zzh"

    const-string v6, "zzi"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzig;->zzb:Lcom/google/android/gms/internal/play_billing/zzig;

    const-string p3, "\u0004\u0005\u0000\u0001\u0001\u0007\u0005\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0004\u180c\u0002\u0005\u1008\u0003\u0007\u1004\u0004"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzt(Lcom/google/android/gms/internal/play_billing/zzgl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3c
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
