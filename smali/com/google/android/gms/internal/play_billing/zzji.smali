###### Class com.google.android.gms.internal.play_billing.zzji (com.google.android.gms.internal.play_billing.zzji)
.class public final Lcom/google/android/gms/internal/play_billing/zzji;
.super Lcom/google/android/gms/internal/play_billing/zzfi;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgm;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzji;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:Lcom/google/android/gms/internal/play_billing/zzis;

.field private zzh:Lcom/google/android/gms/internal/play_billing/zziv;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzji;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzji;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzji;->zzb:Lcom/google/android/gms/internal/play_billing/zzji;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzji;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzw(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfi;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzfi;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzji;->zze:I

    return-void
.end method

.method public static synthetic zzA(Lcom/google/android/gms/internal/play_billing/zzji;Lcom/google/android/gms/internal/play_billing/zzhx;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzji;->zzf:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzji;->zze:I

    return-void
.end method

.method public static synthetic zzB(Lcom/google/android/gms/internal/play_billing/zzji;Lcom/google/android/gms/internal/play_billing/zzib;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzji;->zzf:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzji;->zze:I

    return-void
.end method

.method public static synthetic zzC(Lcom/google/android/gms/internal/play_billing/zzji;Lcom/google/android/gms/internal/play_billing/zzij;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzji;->zzf:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzji;->zze:I

    return-void
.end method

.method public static synthetic zzD(Lcom/google/android/gms/internal/play_billing/zzji;Lcom/google/android/gms/internal/play_billing/zzis;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzji;->zzg:Lcom/google/android/gms/internal/play_billing/zzis;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzji;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzji;->zzd:I

    return-void
.end method

.method public static synthetic zzE(Lcom/google/android/gms/internal/play_billing/zzji;Lcom/google/android/gms/internal/play_billing/zzjo;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzji;->zzf:Ljava/lang/Object;

    const/16 p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzji;->zze:I

    return-void
.end method

.method public static synthetic zzF(Lcom/google/android/gms/internal/play_billing/zzji;Lcom/google/android/gms/internal/play_billing/zzjs;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzji;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzji;->zze:I

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/play_billing/zzjg;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzji;->zzb:Lcom/google/android/gms/internal/play_billing/zzji;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzl()Lcom/google/android/gms/internal/play_billing/zzfe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjg;

    return-object v0
.end method

.method public static bridge synthetic zzd()Lcom/google/android/gms/internal/play_billing/zzji;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzji;->zzb:Lcom/google/android/gms/internal/play_billing/zzji;

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzji;->zzb:Lcom/google/android/gms/internal/play_billing/zzji;

    return-object p1

    .line 4
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzjg;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzjg;-><init>(Lcom/google/android/gms/internal/play_billing/zzjh;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzji;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzji;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-class v9, Lcom/google/android/gms/internal/play_billing/zzij;

    const-class v10, Lcom/google/android/gms/internal/play_billing/zzjo;

    const-string v0, "zzf"

    const-string v1, "zze"

    const-string v2, "zzd"

    const-string v3, "zzg"

    const-class v4, Lcom/google/android/gms/internal/play_billing/zzhx;

    const-class v5, Lcom/google/android/gms/internal/play_billing/zzib;

    const-class v6, Lcom/google/android/gms/internal/play_billing/zzjs;

    const-class v7, Lcom/google/android/gms/internal/play_billing/zzip;

    const-string v8, "zzh"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzji;->zzb:Lcom/google/android/gms/internal/play_billing/zzji;

    const-string p3, "\u0004\u0008\u0001\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1009\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006\u1009\u0001\u0007<\u0000\u0008<\u0000"

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
